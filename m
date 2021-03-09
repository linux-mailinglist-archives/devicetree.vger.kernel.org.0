Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C677A332CD8
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 18:08:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230449AbhCIRIL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 12:08:11 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:40484 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231422AbhCIRHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 12:07:45 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 129H7ZMb106230;
        Tue, 9 Mar 2021 11:07:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1615309655;
        bh=sDFRupBvkMYD6qzYlcabpylb3qsQg4cCosFu+HC3zNQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=taFzPPZbKhyixwAAzrqCvAroRFdAEkLnkfe6kM4FGTH0HzinhNSjKyBahbLQ3Vmie
         ZHQjqYy6u6B43lOZ5+utMOhm0sH7JY2vg7XUX/mvUeOQ0W3p+HA7AXHVB5kSkNSPTt
         lNRuCSQqrKLO9b+w0x2Ce8SuTVg9SzOPz2e2eXBU=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 129H7ZIL046560
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 9 Mar 2021 11:07:35 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 9 Mar
 2021 11:07:35 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 9 Mar 2021 11:07:35 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 129H7Zew037541;
        Tue, 9 Mar 2021 11:07:35 -0600
Date:   Tue, 9 Mar 2021 11:07:35 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <kristo@kernel.org>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 0/2] Add ICSSG nodes on AM65x & J721E SoCs
Message-ID: <20210309170735.y7bh3mpsn3p6eaql@skipping>
References: <20210304160712.8452-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210304160712.8452-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10:07-20210304, Suman Anna wrote:
> Hi Nishanth,
> 
> The following series is a resend of the ICSSG DT nodes [1] for the 5.13
> merge window. Patches are just rebased on top of 5.12-rc1 + your latest
> ti-k3-dts-next branch HEAD commit 0d7571c36331 ("arm64: dts: ti: k3-am65-main:
> Add device_type to pcie*_rc nodes"). There are no code changes w.r.t v1, I
> have picked up Vignesh's Reviewed-by tags. 
> 
> Note that the interrupt nodes continue to generate a warning about missing
> '#address-cells' when compiled using W=2, and this was concluded to be not
> an issue [2]. The nodename for PRUSS INTC is now enforced as per the
> discussion in [2] and added in commit 5ab931402a17 ("dt-bindings: irqchip:
> Add node name to PRUSS INTC") in v5.12-rc1.
> 
> Boot logs:
> AM65x: https://pastebin.ubuntu.com/p/dVgBWB3xCv/
> J721E: https://pastebin.ubuntu.com/p/YpmRPyCkRn/
> 
> Please see the v1 cover-letter [1] for all the original details.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210114194805.8231-1-s-anna@ti.com/
> [2] https://patchwork.kernel.org/comment/23926133/
> 
> Suman Anna (2):
>   arm64: dts: ti: k3-am65-main: Add ICSSG nodes
>   arm64: dts: ti: k3-j721e-main: Add ICSSG nodes

Thanks, applied to ti-k3-dts-next.


PS: my -next branches are being rebased to 5.12-rc2 to keep a future bisect
clean.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
