Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 49E807174C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 13:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727805AbfGWLmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 07:42:40 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:44544 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726575AbfGWLmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 07:42:40 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NBgad7089998;
        Tue, 23 Jul 2019 06:42:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563882156;
        bh=hHqEb6WqqOWvxYq7IGLLcdSIIDxJbA2QmoI51k0Osmc=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=LuvOhq764KqneG41Fllk8uQ0ByaqxROVsarjgI43PxOBTUEbph2TUvws8bSesnG7m
         FPpPVhqUrqsdmHXVE/p0wyWb8tyQt9weamqNoc/yJIeQ2Qqv9xmrhYCdGTsAv52eEu
         C0HIlw8osUIyP5zEFnAZKNiKUhCsVHCmslI5pfEc=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NBgaLI033246
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 23 Jul 2019 06:42:36 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 06:42:36 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 06:42:35 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NBgaCw043934;
        Tue, 23 Jul 2019 06:42:36 -0500
Date:   Tue, 23 Jul 2019 06:42:13 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 0/5] soc: ti: k3: Allow for exclusive and shared
 device requests
Message-ID: <20190723114213.ogypuwcp3mw3vmcn@kahuna>
References: <20190722050757.29893-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20190722050757.29893-1-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10:37-20190722, Lokesh Vutla wrote:
> Sysfw provides an option for requesting exclusive access for a
> device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
> not used, the device is meant to be shared across hosts. Once a device
> is requested from a host with this flag set, any request to this
> device from a different host will be nacked by sysfw.
> 
> Current tisci firmware and pm drivers always requests for device with
> exclusive permissions set. But this is not be true for certain devices
> that are expcted to be shared across different host contexts.
> So add support for getting the shared or exclusive permissions from DT
> and request firmware accordingly.
> 
> Changes since v3: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=103447
> - Rebased on top of v5.3-rc1
> - Updated power-domain cells for j721e.
> - Mark the console uart as shared in am65x-base-board
> - Added Reviewed-by from Rob

[...]

Looks good to me.

Reviewed-by: Nishanth Menon <nm@ti.com>

-- 
Regards,
Nishanth Menon
