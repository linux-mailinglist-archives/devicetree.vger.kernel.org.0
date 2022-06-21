Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85C7B553208
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 14:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349409AbiFUM2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 08:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350585AbiFUM2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 08:28:48 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C3F36270
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:28:46 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25L8gmGJ024243;
        Tue, 21 Jun 2022 14:28:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=lxZ7oSgrcpwprhuAEXFleT6BnNeU/lXEpqaOmXXHMi4=;
 b=yFU4ZVdYEgFg2WycVhMRi6AFbeJtMsusAfS02fwtMFNmZrmBzZp9gxv7nkufGb0/mkz9
 +CAA8fSX9cQqa1S6637ike9aCq0g+z/6OMWTlj+YybuMoYMhSW0GKafFutINXksOBCFt
 aiqRU4wTw8n526fKOApzVe+gwlF+Xf6qzbLZs9RPSfUqr6lAZxfCy6kwMGVshabRYNtY
 c6ay3VhJs9d2kVpGgo/I9LYS+kM5s4FT+hFePljDV35pfLRS4Xm7OWPLHoIhvaCltv2T
 XQMTDDl61QGIxkbpxgiKqRw86WSqCfbIgP30EkY/7i3phXYwbOisH0+qJRy8zwMf49TH FA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3guaqh9gqk-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 21 Jun 2022 14:28:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BBD93100039;
        Tue, 21 Jun 2022 14:27:36 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B6EF922178E;
        Tue, 21 Jun 2022 14:27:36 +0200 (CEST)
Received: from [10.201.21.93] (10.75.127.117) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Tue, 21 Jun
 2022 14:27:36 +0200
Message-ID: <184f3802-79af-206b-5b59-e063b9d12868@foss.st.com>
Date:   Tue, 21 Jun 2022 14:27:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/3] ARM: dts: stm32: add STM32MP1-based Phytec SoM
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
CC:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <kernel@pengutronix.de>
References: <20220621101538.481143-1-s.trumtrar@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20220621101538.481143-1-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.117]
X-ClientProxiedBy: GPXDAG2NODE5.st.com (10.75.127.69) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-21_04,2022-06-21_01,2022-02-23_01
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/21/22 12:15, Steffen Trumtrar wrote:
> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to 1 GB eMMC,
> up to 16 MB QSPI and up to 128 GB NAND flash.
> 
> As multiple default pinctrls are overwritten, collect them in one place
> in stm32mp157c-phycore-stm32mp15-pinctrl.dtsi.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Changes since v2:
>    - /delete-property/dmas
>    - fix dtbs_checks warnings
>    - remove problematic+unused nodes
> 
> 
>   arch/arm/boot/dts/Makefile                    |   3 +-
>   ...stm32mp157c-phycore-stm32mp15-pinctrl.dtsi | 317 +++++++++
>   .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 634 ++++++++++++++++++
>   3 files changed, 953 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
>   create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 184899808ee7..de5c3cadb01a 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1213,7 +1213,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
>   	stm32mp157c-ev1.dtb \
>   	stm32mp157c-ev1-scmi.dtb \
>   	stm32mp157c-lxa-mc1.dtb \
> -	stm32mp157c-odyssey.dtb
> +	stm32mp157c-odyssey.dtb \
> +	stm32mp157c-phycore-stm32mp1-3.dtb
>   dtb-$(CONFIG_MACH_SUN4I) += \
>   	sun4i-a10-a1000.dtb \
>   	sun4i-a10-ba10-tvbox.dtb \
> diff --git a/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
> new file mode 100644
> index 000000000000..b0b590df43b6
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
> @@ -0,0 +1,317 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
> + * Author: Dom VOVARD <dom.vovard@linrt.com>.
> + */
> +#include "stm32mp15-pinctrl.dtsi"
> +

Why do you create a dedicated file for Phytec ? all other SOM providers 
or board providers add their pinctrl groups in stm32mp15-pinctrl.dtsi file.

Apart that, Krzysztof did all the review :) (thanks for that)

Alex
