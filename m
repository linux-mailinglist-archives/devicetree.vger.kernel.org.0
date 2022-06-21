Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 738455531D2
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 14:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348291AbiFUMUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 08:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344495AbiFUMUf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 08:20:35 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791C6101F3
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:20:33 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id u12so27069417eja.8
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FqXRBoWYjZEUDh9NP8NDg9hGa7Z+YCO68X9tbRPRfAY=;
        b=U2psEGjiEB6aDgr4BC2Pvn4cA98M35o8czCPFGOoQ0kv0jNBOKMsd4in3lJIya44Nc
         UqP13NIyjBiN3+HQG2sGzKR04QF++cozPZObBscKTi+dNbQuQMJ6U3ZHOe86Dmewvl2m
         ceOPy7gQRTgCWiQ168F5z9za/Y3Lhvaf9RUzCAHRXz9N3MoDvaY3Ooa3ElYbwUWu2hPl
         8sOuMP9fok3rdSWwfrTFwS2nkOvVQv/tAmrPD71w3E1DXMT/ysgIY2zTtcVcPEo+zMgz
         B9t+ftUEp+C3subGkT2MwJQcafLieUrmeFF2lZPeSODzkR8LFOAfJxDM1q78SoyF0DHs
         eaRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FqXRBoWYjZEUDh9NP8NDg9hGa7Z+YCO68X9tbRPRfAY=;
        b=Q/2WZ9iiZh8l3UCEQtsOqih4IjsAqUKUcuXhYDZXnvYD+vCHJdv5SEVC215fO4EtQ8
         VGB6t2TyzE+bdQD57VXURGVhuD0kvECJ8rFMEreWgrRQSCP3hI1oXrCQIxlznk+8W/PK
         AKbffCDV+hcME6W3l5+GX1I7nrQJ1WanQorvEsUyBz+J627qpT8y0qrdLc+HWG57i+4i
         OnmNtNGxAiOyk69ZruG7yv4P8Yeacyc1O2PZP140SqW1vwPaExUEt7uD048QnbLRZrA0
         VQ1E+pnQ/JYxPU4M37rqbP1wdxHDTIBqqq/SqMC9ljDdG7QPAnAufB+/Dtg1K2KRSjjH
         ZiQw==
X-Gm-Message-State: AJIora84O6L/18+FQXgthhZLb2tyToBnVbsqSSKM4tzEEP60eEedyruk
        3xr9Jku8+vi0W2+CETa5ussDaw==
X-Google-Smtp-Source: AGRyM1uAz2TCiWXc4bm0hIjEoI/vEDZwkP9e/hQxnyf2PwWpbtubuPKMpAhnsMet2JbboOPhk5rQXQ==
X-Received: by 2002:a17:907:3d8a:b0:70e:6b1:b004 with SMTP id he10-20020a1709073d8a00b0070e06b1b004mr26052667ejc.61.1655814032028;
        Tue, 21 Jun 2022 05:20:32 -0700 (PDT)
Received: from [192.168.0.220] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cf20-20020a170906b2d400b006f3ef214e42sm7593503ejb.168.2022.06.21.05.20.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 05:20:31 -0700 (PDT)
Message-ID: <4097c29a-0630-d4a1-e5bb-f8446aa54d73@linaro.org>
Date:   Tue, 21 Jun 2022 14:20:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 2/3] ARM: dts: stm32: add STM32MP1-based Phytec board
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        kernel@pengutronix.de
References: <20220621101538.481143-1-s.trumtrar@pengutronix.de>
 <20220621101538.481143-2-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220621101538.481143-2-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2022 12:15, Steffen Trumtrar wrote:
> Add the Phytec STM32MP1-3 Dev board. The devboard uses a Phytec stm32m15-som.

Use Linux coding style.

> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  .../dts/stm32mp157c-phycore-stm32mp1-3.dts    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
> new file mode 100644
> index 000000000000..e91c0ef499c9
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
> @@ -0,0 +1,56 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
> + * Author: Dom VOVARD <dom.vovard@linrt.com>.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/stm32-pinfunc.h>
> +#include "stm32mp157.dtsi"
> +#include "stm32mp15xc.dtsi"
> +#include "stm32mp15xxac-pinctrl.dtsi"
> +#include "stm32mp157c-phycore-stm32mp15-som.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyCORE-STM32MP1-3 Dev Board";
> +	compatible = "phytec,phycore-stm32mp1-3", "st,stm32mp157";

Confusing approach. Either this is Som or dev board. If this is Som,
name it (so not "Dev Board"), although usually SoMs cannot boot by
themself, so this is a board.

If this is board, then phytec,phycore-stm32mp1-3 compatible is not
enough - you should have:
1. board compatible
2. SoM compatible
3. SoC compatible

> +};
> +
> +&cryp1 {
> +	status = "okay";
> +};
> +
> +&dts {
> +	status = "okay";
> +};
> +
> +&fmc {
> +	status = "disabled";
> +};
> +
> +&gpu {
> +	status = "okay";
> +	contiguous-area = <&gpu_reserved>;
> +};
> +
> +&i2c4_eeprom {
> +	status = "okay";
> +};
> +
> +&i2c4_rtc {
> +	status = "okay";
> +};
> +
> +&qspi {
> +	status = "okay";
> +};
> +
> +&sdmmc1 {
> +	secure-status = "disabled";
> +};
> +
> +&sdmmc2 {
> +	status = "okay";
> +	secure-status = "disabled";
> +};

Which proves that aliases for MMC should be here.


Best regards,
Krzysztof
