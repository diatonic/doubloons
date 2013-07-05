// Copyright (c) 2009-2012 The Bitcoin developers
// Copyright (c) 2011-2012 Litecoin Developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <boost/assign/list_of.hpp> // for 'map_list_of()'
#include <boost/foreach.hpp>

#include "checkpoints.h"

#include "main.h"
#include "uint256.h"

namespace Checkpoints
{
    typedef std::map<int, uint256> MapCheckpoints;

    static MapCheckpoints mapCheckpoints =
        boost::assign::map_list_of 
        (         0, uint256("0xbbd01e417e370842498a91038fd40da95f4a6166a231a3bed3c4671207bd8296"))
	(        25, uint256("0x52424ba26dd18c2da10170054c8c39ec649d0ac2630585e53099ac70dc360721"))
	(       125, uint256("0xa13b9e454a00927f6b6fd59eda118d76b270f09f80ff848e7f3cb9a2f47837ed"))
	(      1025, uint256("0xa59d07caeca8b8601803a72729dabb846e4a2adda0022ea212e4911824ff85ae"))
	(      5025, uint256("0xdc5ea38e4b4f68e66ec4fe3c7b742f02388bca5d90f3c340675229f8ae23f8ca"))
	(     10025, uint256("0x5fac2e11b6ab636534d0dc557f86f302b71647c9084eae6fe2ca389a37bb4e68"))
	(     11025, uint256("0xb68d83930c52a880326fdda93fa6963e95133c1592cab5c8488b8aaebb4206b3"))
	(     13025, uint256("0x5d5eb98932c5d81a1bac5fc653c2d95e648d089b2a607ca6ac15975bf05af009"))
	(     15025, uint256("0x2c4305a5e070e1f470fa3289653db98bd7dd6eb847780d6d32e65d5b901b429f"))
	(     20025, uint256("0x38d3027035e4725852203ee4a38768ce3fd12cc8d3d9ee1c00467d17d81c42be"))
	(     25025, uint256("0x005df538003a40bc5f83c299397dce6a4d2a736ab4fdf46752a8fcec5a45cf7f"))
	(     30025, uint256("0x0c3a6a48a8811b9c1683d86148b40384e0920a4020e0229bb7d3928e4c1e3168"))
	(     35000, uint256("0xbc86cab2bf3c1dba06e511b7a0830dd1252b5b860cae1ae90c61c0ff117d191a"))
	(     40025, uint256("0xafc48c6b0414bdc09ab31033ed4dd56d76c3fb29bc775060f2e393d58683625a"))
	(     43665, uint256("0xa77dbe7205f122896e3f172a0fc7e99d662cf15cf4e92324cbf69a472160a1bd"))
	(     43869, uint256("0xa55c9f9c892dc84fc97a670e79d79c3bec8f9dd9e32647fae8d8dcf13351f395"))
        ;

    bool CheckBlock(int nHeight, const uint256& hash)
    {
        if (fTestNet) return true; // Testnet has no checkpoints

        MapCheckpoints::const_iterator i = mapCheckpoints.find(nHeight);
        if (i == mapCheckpoints.end()) return true;
        return hash == i->second;
    }

    int GetTotalBlocksEstimate()
    {
        if (fTestNet) return 0;
        return mapCheckpoints.rbegin()->first;
    }

    CBlockIndex* GetLastCheckpoint(const std::map<uint256, CBlockIndex*>& mapBlockIndex)
    {
        if (fTestNet) return NULL;

        BOOST_REVERSE_FOREACH(const MapCheckpoints::value_type& i, mapCheckpoints)
        {
            const uint256& hash = i.second;
            std::map<uint256, CBlockIndex*>::const_iterator t = mapBlockIndex.find(hash);
            if (t != mapBlockIndex.end())
                return t->second;
        }
        return NULL;
    }
}
