Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 03BBA95F24
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:49:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728993AbfHTMtN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:49:13 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49102 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727006AbfHTMtN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:49:13 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KCmrE9122637;
        Tue, 20 Aug 2019 07:48:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1566305333;
        bh=E33Q32/sJ/D45VMCfWvp175yRMTgabkhgTtXK+udqvY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=aKfS9GQwuu5TqUg1HhsbeIlHvAL1qJto5tGe31gGT1pl3FH6nYIoGIckBnM6K+a6m
         y0/1aPcMz5ZTfyyRDBrrCXZGJcNfrVYLlVhYNDRpImSMF/7Rf/JgHyFupMSGKLDNwH
         /zqKev+lt6/HGr7XKrWk2cjTyt22ragShHukilio=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KCmr6h023994
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 20 Aug 2019 07:48:53 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 07:48:53 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 07:48:53 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KCmoLj032104;
        Tue, 20 Aug 2019 07:48:51 -0500
Subject: Re: [PATCH v5 0/3] soc: ti: k3: Allow for exclusive and shared device
 requests
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190729122453.32252-1-lokeshvutla@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
Date:   Tue, 20 Aug 2019 18:18:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190729122453.32252-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/07/19 5:54 PM, Lokesh Vutla wrote:
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

Gentle Ping on this series.

Thanks and regards,
Lokesh

> 
> Changes since v4: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=148371
> - Split the driver and arch changes into a separate series.
> - Added Reviewed-by from Nishanth M
> - Rebased on top of v5.3-rc2
> 
> Lokesh Vutla (3):
>   firmware: ti_sci: Allow for device shared and exclusive requests
>   dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
>     access
>   soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
>     access
> 
>  .../bindings/soc/ti/sci-pm-domain.txt         | 11 ++++-
>  MAINTAINERS                                   |  1 +
>  drivers/firmware/ti_sci.c                     | 45 ++++++++++++++++++-
>  drivers/soc/ti/ti_sci_pm_domains.c            | 23 +++++++++-
>  include/dt-bindings/soc/ti,sci_pm_domain.h    |  9 ++++
>  include/linux/soc/ti/ti_sci_protocol.h        |  3 ++
>  6 files changed, 86 insertions(+), 6 deletions(-)
>  create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h
> 
