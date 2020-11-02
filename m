Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CA772A2B23
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 14:01:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728719AbgKBNBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 08:01:38 -0500
Received: from foss.arm.com ([217.140.110.172]:59220 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728687AbgKBNBi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Nov 2020 08:01:38 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FA7930E;
        Mon,  2 Nov 2020 05:01:37 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 886703F66E;
        Mon,  2 Nov 2020 05:01:36 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>, Nishanth Menon <nm@ti.com>,
        Nikhil Devshatwar <nikhil.nd@ti.com>
Cc:     Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20201029141159.190621-1-tomi.valkeinen@ti.com>
 <20201029144100.bf35vierhfignips@NiksLab>
 <20201029145217.zjazhjvylgwez4do@husked>
 <8532a1c0-29db-d67a-441f-b58b232f7c98@ti.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <59747093-4171-937d-70a3-ce6ee788cf79@arm.com>
Date:   Mon, 2 Nov 2020 13:01:34 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <8532a1c0-29db-d67a-441f-b58b232f7c98@ti.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-10-30 14:08, Tomi Valkeinen wrote:
> On 29/10/2020 16:52, Nishanth Menon wrote:
>> On 20:11-20201029, Nikhil Devshatwar wrote:
>>> On 16:11-20201029, Tomi Valkeinen wrote:
>>>> DSS is IO coherent on AM65, so we can mark it as such with
>>>> 'dma-coherent' property in the DT file.
>>>>
>>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>>> Acked-by: Nikhil Devshatwar <nikhil.nd@ti.com>
>>>
>>
>> Tomi: Do you need to add Fixes: tag to percolate this to stable? if
>> yes, please comment, makes it easier for me to queue for 5.10 if
>> possible
> 
> I don't see this as a fix, but an optimization. Nothing is broken without this.

Note that if the driver doesn't have explicit control over what type of 
memory access the device makes, that's not necessarily true.

If coherent DMA buffers are allocated from regular kernel memory, 
there's still a cacheable alias kicking around that can be speculatively 
fetched into a cache somewhere. If the device is genuinely non-coherent, 
or configured to make non-snooping accesses, then that's not an issue, 
but it it's hard-wired to make snooping accesses it can start hitting 
that cached alias and not see subsequent updates to the buffer, since 
those are written straight to RAM via the non-cacheable mapping. At that 
point it becomes an actual problem (and it's not just theoretical - 
we've hit a real-world example of this recently with GPUs on certain 
Amlogic devices).

Robin.
