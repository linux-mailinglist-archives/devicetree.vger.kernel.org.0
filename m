Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D33C638DC3A
	for <lists+devicetree@lfdr.de>; Sun, 23 May 2021 19:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231857AbhEWRp4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 May 2021 13:45:56 -0400
Received: from first.geanix.com ([116.203.34.67]:42540 "EHLO first.geanix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231853AbhEWRpz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 May 2021 13:45:55 -0400
Received: from [192.168.16.66] (unknown [185.233.254.173])
        by first.geanix.com (Postfix) with ESMTPSA id 0C510464730;
        Sun, 23 May 2021 17:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
        t=1621791867; bh=r90inEtjWd9AjzY5mLdqb1g/jrp5nd0OK1t03R2zr1M=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To;
        b=DWC3igPN4m9tG/hWAMwhYXra7xLIrJE3w4T6RUnDm5mVmPm027GGiA2vi8McWge7D
         wnFq/E9Ib/oHHSL79sShU3e1PhAiov9S2vcupr9ckm3SOwO6CGf29FPhdEoQFphC7c
         jNZMTUaA3JIuuhRRW9QHdU+QBeKJHkSEkGZMviLEHJsPELRUhZmdPRhowzLI/7Jb2/
         55U4riTZpYkVJyt3q6BfR6HdMgZeGwsr0D3y+dkK+O9jZ8IdxNNxc3PX+Vl4wUyZvc
         og8wrQz4BUb2JReFprJv2MCyn4GjjZ3hdQgNw3kqZGaYS8UWb3zzuj/pKktKQ7Bp0q
         AmuBiyQ7DRliw==
Subject: Re: [PATCH 1/2] mtd: nand: raw: gpmi: new bch geometry settings
To:     Han Xu <han.xu@nxp.com>, miquel.raynal@bootlin.com, richard@nod.at,
        vigneshr@ti.com, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
References: <20210522205136.19465-1-han.xu@nxp.com>
From:   Sean Nyekjaer <sean@geanix.com>
Message-ID: <13c975bc-b37b-8708-9ac7-acdc62ef7108@geanix.com>
Date:   Sun, 23 May 2021 19:44:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210522205136.19465-1-han.xu@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        URIBL_BLOCKED autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 93bd6fdb21b5
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2021 22.51, Han Xu wrote:
> The code change updates the gpmi driver bch geometry settings, the NAND
> chips required minimum ecc strength and step size will be the default
> value. It also proposes a new way to set bch geometry for large oob NAND
> and provides an option to keep the legacy bch geometry setting for
> backward compatibility.

This will break all existing devicetree's. (this happened to us with the same style already merged u-boot patch)

> 
> - For the legacy bch geometry settings
> The driver uses legacy bch geometry settings if explicitly enabled it in
> DT with fsl, legacy-bch-geometry flag, or the NAND chips are too old
> that do NOT provide any required ecc info.

NAND's are providing the minimum required ecc, the now legacy method
actually gives more ecc bits and quite cheap when using hw ecc.

> 
> The legacy_set_geometry() sets the data chunk size(step_size) larger
> than oob size to make sure BBM locates in data chunk, then set the
> maximum ecc stength oob can hold. It always use unbalanced ECC layout,
> which ecc0 will cover both meta and data0 chunk.
> 
> This algorithm can NOT provide strong enough ecc for some NAND chips,
> such as some 8K+744 MLC NAND. We still leave it here just for backward
> compatibility and als for some quite old version NAND chips support. It
> should be en/disabled in both u-boot and kernel at the same time.
> 
> - For the large oob bch geometry settings
> This type of setting will be used for NAND chips, which oob size is
> larger than 1024B OR NAND required step size is small than oob size,
> the general idea is,
> 
>     1.Try all ECC strength from the minimum value required by NAND chip
>       to the maximum one that works, any ECC makes the BBM locate in
>       data chunk can be eligible.
> 
>     2.If none of them works, using separate ECC for meta, which will add
>       one extra ecc with the same ECC strength as other data chunks.
>       This extra ECC can guarantee BBM located in data chunk, also we
>       need to check if oob can afford it.
> 
> - For all other common cases
> set the bch geometry by chip required strength and step size, which uses
> the minimum ecc strength chip required.
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>

One further point, u-boot older than v2020.04 will not be aligned with the way ecc bits is
calculated with this patch applied(without the legacy option set).

It's quite a mess :/
I would recommend to use the legacy mode as default, and add the new style as "modern" option.
(Also in u-boot)

/Sean
