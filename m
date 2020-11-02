Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78BFF2A2BDB
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 14:44:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725796AbgKBNoe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 08:44:34 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56812 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725789AbgKBNoe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 08:44:34 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0A2DiRk8088826;
        Mon, 2 Nov 2020 07:44:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1604324667;
        bh=r/YlXtNITCgo4GkTlzG2uADjCbJc3vs67h2nz6jE7G0=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Ge6e9BIam1fF+LBrf/h/e//TaAYC4F4tLSExSYOzqqX22BEO84KjTkySv3dhTajfz
         Y5+fDbQChQhy2DP0YS/Qhsc+K+Bq61swCoxfGfTmMdjk/7zUHD+1je6bueE/FzvmEA
         Kb02iz2w1JRwoWNHLdevVrpNGmn5wQNZroal1gGM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0A2DiRMP128636
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 2 Nov 2020 07:44:27 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 2 Nov
 2020 07:42:52 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 2 Nov 2020 07:42:52 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0A2DgoCO105658;
        Mon, 2 Nov 2020 07:42:51 -0600
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
To:     Robin Murphy <robin.murphy@arm.com>, Nishanth Menon <nm@ti.com>,
        Nikhil Devshatwar <nikhil.nd@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201029141159.190621-1-tomi.valkeinen@ti.com>
 <20201029144100.bf35vierhfignips@NiksLab>
 <20201029145217.zjazhjvylgwez4do@husked>
 <8532a1c0-29db-d67a-441f-b58b232f7c98@ti.com>
 <59747093-4171-937d-70a3-ce6ee788cf79@arm.com>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <4998118a-f8ec-fc8c-2535-729bb0b68ec9@ti.com>
Date:   Mon, 2 Nov 2020 15:42:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <59747093-4171-937d-70a3-ce6ee788cf79@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 02/11/2020 15:01, Robin Murphy wrote:
> On 2020-10-30 14:08, Tomi Valkeinen wrote:
>> On 29/10/2020 16:52, Nishanth Menon wrote:
>>> On 20:11-20201029, Nikhil Devshatwar wrote:
>>>> On 16:11-20201029, Tomi Valkeinen wrote:
>>>>> DSS is IO coherent on AM65, so we can mark it as such with
>>>>> 'dma-coherent' property in the DT file.
>>>>>
>>>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>>>> Acked-by: Nikhil Devshatwar <nikhil.nd@ti.com>
>>>>
>>>
>>> Tomi: Do you need to add Fixes: tag to percolate this to stable? if
>>> yes, please comment, makes it easier for me to queue for 5.10 if
>>> possible
>>
>> I don't see this as a fix, but an optimization. Nothing is broken without this.
> 
> Note that if the driver doesn't have explicit control over what type of memory access the device
> makes, that's not necessarily true.
> 
> If coherent DMA buffers are allocated from regular kernel memory, there's still a cacheable alias
> kicking around that can be speculatively fetched into a cache somewhere. If the device is genuinely
> non-coherent, or configured to make non-snooping accesses, then that's not an issue, but it it's
> hard-wired to make snooping accesses it can start hitting that cached alias and not see subsequent
> updates to the buffer, since those are written straight to RAM via the non-cacheable mapping. At
> that point it becomes an actual problem (and it's not just theoretical - we've hit a real-world
> example of this recently with GPUs on certain Amlogic devices).

Ok, thanks. I don't know if that the case here, but better safe than sorry. I'll send a new one with
appropriate tags.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
