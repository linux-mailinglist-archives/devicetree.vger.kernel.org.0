Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 86B072D863
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 10:59:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725911AbfE2I71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 04:59:27 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:52320 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726012AbfE2I70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 04:59:26 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4T8xK6s004264;
        Wed, 29 May 2019 03:59:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559120360;
        bh=/+w+mZZzuWRILKJdXMOWaJzNhHy6P1T9tsqIDoioDRU=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=gfOOnodYqTyN9qCF0xTiFfcngdoyIbGEM7aqPBIeZ1DZ7/TSHzVqFE5+/PubApA5O
         ycMkH7fIUH8eaUS2Yc3M4HIxQS/RWy4+mxzAZFXkZ9a3OGMfaSikwrsvBUSqj3CVnW
         HAwe8sFJQB5ImYRslcLgH0WpuqGWUzsuJ8bYe9PY=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4T8xKq8007904
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 29 May 2019 03:59:20 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 03:59:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 03:59:19 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4T8xGTd112812;
        Wed, 29 May 2019 03:59:17 -0500
Subject: Re: [PATCH v3 0/5] soc: ti: k3-am654: Allow for exclusive and shared
 device requests
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190410053728.17374-1-lokeshvutla@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <3f8e15a0-af8f-c91c-5401-826460726a7d@ti.com>
Date:   Wed, 29 May 2019 14:28:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190410053728.17374-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob, Tero,

On 10/04/19 11:07 AM, Lokesh Vutla wrote:
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

If there are no comments on this series, can this be merged?

Thanks and regards,
Lokesh

> Changes since v2:
> - Added macros for new power-domain cell
> - Rebased on top of v5.1-rc4
> - Updated commit messages.
> 
> Lokesh Vutla (5):
>   firmware: ti_sci: Allow for device shared and exclusive requests
>   dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
>     access
>   soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
>     access
>   soc: ti: ti_sci_pm_domains: Switch to SPDX Licensing
>   arm64: dts: ti: k3-am654: Update the power domain cells
> 
>  .../bindings/soc/ti/sci-pm-domain.txt         | 11 ++++-
>  MAINTAINERS                                   |  1 +
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 32 ++++++-------
>  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 10 ++---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  6 +--
>  arch/arm64/boot/dts/ti/k3-am65.dtsi           |  1 +
>  drivers/firmware/ti_sci.c                     | 45 ++++++++++++++++++-
>  drivers/soc/ti/ti_sci_pm_domains.c            | 33 +++++++++-----
>  include/dt-bindings/soc/ti,sci_pm_domain.h    |  9 ++++
>  include/linux/soc/ti/ti_sci_protocol.h        |  3 ++
>  10 files changed, 112 insertions(+), 39 deletions(-)
>  create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h
> 
