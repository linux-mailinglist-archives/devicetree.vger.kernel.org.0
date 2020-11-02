Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE30E2A3036
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 17:47:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727172AbgKBQrJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 11:47:09 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47456 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727157AbgKBQrI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 11:47:08 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0A2GkpXv025329;
        Mon, 2 Nov 2020 10:46:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1604335611;
        bh=GFPEmNM0/3sqf1cC6BEhFkWNJeGhExRfHcUeL3ZChy8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=wS60PvJH6EXcRCLFhQKOHamGlclQME2cHaDdPKZeY1c7zbGRAooA9t87M1lbNFyMu
         qEfrzZMUZe/hKBRzhVEXDwsHWHkyBKqmMSO0D9xY9K0PjV4evYUedFcHDkExw8i9JU
         eqOu3XemVNSNUvRbVxvDlZoEeNxmHO8y3A74Lg74=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0A2GkpQM028419
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 2 Nov 2020 10:46:51 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 2 Nov
 2020 10:46:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 2 Nov 2020 10:46:50 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0A2Gknvi002923;
        Mon, 2 Nov 2020 10:46:50 -0600
Date:   Mon, 2 Nov 2020 10:46:49 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Robin Murphy <robin.murphy@arm.com>,
        Nikhil Devshatwar <nikhil.nd@ti.com>,
        Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Message-ID: <20201102164649.npl22f27psrwbxzo@outwit>
References: <20201029141159.190621-1-tomi.valkeinen@ti.com>
 <20201029144100.bf35vierhfignips@NiksLab>
 <20201029145217.zjazhjvylgwez4do@husked>
 <8532a1c0-29db-d67a-441f-b58b232f7c98@ti.com>
 <59747093-4171-937d-70a3-ce6ee788cf79@arm.com>
 <4998118a-f8ec-fc8c-2535-729bb0b68ec9@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4998118a-f8ec-fc8c-2535-729bb0b68ec9@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15:42-20201102, Tomi Valkeinen wrote:
> Hi,
> 
> On 02/11/2020 15:01, Robin Murphy wrote:
> > On 2020-10-30 14:08, Tomi Valkeinen wrote:
> >> On 29/10/2020 16:52, Nishanth Menon wrote:
> >>> On 20:11-20201029, Nikhil Devshatwar wrote:
> >>>> On 16:11-20201029, Tomi Valkeinen wrote:
> >>>>> DSS is IO coherent on AM65, so we can mark it as such with
> >>>>> 'dma-coherent' property in the DT file.
> >>>>>
> >>>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> >>>> Acked-by: Nikhil Devshatwar <nikhil.nd@ti.com>
> >>>>
> >>>
> >>> Tomi: Do you need to add Fixes: tag to percolate this to stable? if
> >>> yes, please comment, makes it easier for me to queue for 5.10 if
> >>> possible
> >>
> >> I don't see this as a fix, but an optimization. Nothing is broken without this.
> > 
> > Note that if the driver doesn't have explicit control over what type of memory access the device
> > makes, that's not necessarily true.
> > 
> > If coherent DMA buffers are allocated from regular kernel memory, there's still a cacheable alias
> > kicking around that can be speculatively fetched into a cache somewhere. If the device is genuinely
> > non-coherent, or configured to make non-snooping accesses, then that's not an issue, but it it's
> > hard-wired to make snooping accesses it can start hitting that cached alias and not see subsequent
> > updates to the buffer, since those are written straight to RAM via the non-cacheable mapping. At
> > that point it becomes an actual problem (and it's not just theoretical - we've hit a real-world
> > example of this recently with GPUs on certain Amlogic devices).
> 
> Ok, thanks. I don't know if that the case here, but better safe than sorry. I'll send a new one with
> appropriate tags.


Yes - the default AM65 MAT tables do force a snoop into the clusters
when using DDR based buffers. Deal with display is when you dont get to
see the artifacts unless you are closely monitoring frame by frame and
transitions.. which in the middle of all other automatic backend cache
operations tends to be rather something easy to miss..

Will let the next rev cook for a few days unless folks have some
additional comments..


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
