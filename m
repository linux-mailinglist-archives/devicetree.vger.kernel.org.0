Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D73829AC52
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 13:41:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2900158AbgJ0Mla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 08:41:30 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60072 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2900153AbgJ0MlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 08:41:22 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RCfGPQ052965;
        Tue, 27 Oct 2020 07:41:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603802476;
        bh=TjbEhpZHElrY65Cxck+e45+jNNikQlke86LvzScrg6M=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=AbFMw2Yy3B4YgyDTmVKcefUlTgP917nmZJTsaSZPVKSgrM9Lp7i1edhyI/xxhJta0
         I6H9Dzhbv2ph6W0/FXg735UbgodlH5PIeg25W91CB8G7/1gn0iF4Zdu5ozwXN5YRO6
         361hZvnkQaA6rC7ucw6tuDk9MK4tbUAbnNltb2Ww=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RCfGIB072026
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 07:41:16 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 07:41:16 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 07:41:16 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RCfGcT120240;
        Tue, 27 Oct 2020 07:41:16 -0500
Date:   Tue, 27 Oct 2020 07:41:16 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/3] Add HwSpinlock & Mailbox nodes on J7200 SoCs
Message-ID: <20201027124116.2k5jit7nsgz6mvza@gainfully>
References: <20201026232637.15681-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201026232637.15681-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:26-20201026, Suman Anna wrote:
> Hi Nishanth,
> 
> The following series adds the HwSpinlock and Mailbox nodes for the J7200
> series. The sub-mailbox nodes that will be used by the K3 R5F remoteproc
> nodes are also added to the k3-j7200-som-p0.dtsi file in sync with the
> convention used on J721E SoCs.
> 
> Patches are based on 5.10-rc1 and your current staged branch commit 
> 9dcd17be61e4 ("arm64: dts: ti: k3-am65: ringacc: drop 
> ti,dma-ring-reset-quirk")
> 
> FYI, the HwSpinlock binding has been converted to YAML in 5.10-rc1, but
> the Mailbox bindings are still in text format.
> 
> regards
> Suman
> 
> Suman Anna (3):
>   arm64: dts: ti: k3-j7200-main: Add hwspinlock node
>   arm64: dts: ti: k3-j7200-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-j7200-som-p0: Add IPC sub-mailbox nodes
> 
>  arch/arm64/boot/dts/ti/k3-j7200-main.dtsi   | 114 ++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi |  68 ++++++++++++
>  2 files changed, 182 insertions(+)
> 
> -- 
> 2.28.0
> 

I dont personally see a specific issue in this series, but will
appreciate additional reviewed-by before I pick this series up.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
