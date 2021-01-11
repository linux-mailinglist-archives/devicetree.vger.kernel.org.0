Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE5D52F17EF
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 15:18:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729929AbhAKOSF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 09:18:05 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:45478 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727304AbhAKOSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 09:18:04 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10BEGPGC032776;
        Mon, 11 Jan 2021 08:16:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610374585;
        bh=o87wtgpwZsd9ZnzUu9cCL+cnq2owrrtefUWBlboXNbw=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=yFkrCKVXwNbUk7FZsw3w+n6qzvoDALzFlDP7uaArKT1Tl38oD41sLeT5wZDgnlsEF
         neGS6mbCb/UXPwtPqFNgfQ5HES79fvCNPwjeR7yQcB6WbxxzxGGwqv7eAdxLIGE2C1
         pnziyYAlpRuv53B0HPKw5FlAo8aCMZKoKK31qdQ4=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10BEGPcw021393
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 11 Jan 2021 08:16:25 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 Jan 2021 08:16:25 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 Jan 2021 08:16:25 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10BEGP94028551;
        Mon, 11 Jan 2021 08:16:25 -0600
Date:   Mon, 11 Jan 2021 08:16:24 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/5] Add R5F nodes on TI K3 J7200 SoCs
Message-ID: <20210111141624.lcouqzvkfwbzks7h@passage>
References: <20210107183907.6545-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210107183907.6545-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:39-20210107, Suman Anna wrote:
> Hi Nishanth,
> 
> The TI K3 R5F remoteproc driver support for the R5F instances on J7200
> SoCs is merged in 5.11-rc1, and this series adds the follow-on base
> dt nodes for the R5F remote processors on TI K3 J7200 SoCs. The R5F
> nodes on J7200 slightly differ from those on J721E SoCs highlighted
> in the driver changes [1]. Additional memory nodes were also added to
> boot these processors successfully on applicable TI K3 J7200 EVM boards.
> The series uses previously merged mailbox nodes.
> 
> The patches follow the same style to similar patches added for J721E
> SoCs [2]. Patches are on top of the latest v5.11-rc2 tag.
> 
> I have validated the IPC functionality using System Firmware
> v2020.07-rc3 and corresponding IPC example firmwares.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20201119010531.21083-1-s-anna@ti.com/
> [2] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=372749&state=%2A&archive=both
> 
> Suman Anna (5):
>   arm64: dts: ti: k3-j7200-mcu: Add MCU domain R5F cluster node
>   arm64: dts: ti: k3-j7200-main: Add MAIN domain R5F cluster node
	^^ Please squash these two.

>   arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs

>   arm64: dts: ti: k3-j7200-som-p0: Add DDR carveout memory nodes for
>     R5Fs
>   arm64: dts: ti: k3-j7200-som-p0: Reserve memory for IPC between RTOS
>     cores

The DDR carveouts and reservations could be a single patch. These seem
trivial enough


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
