Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAFA075A61D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 08:15:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjGTGPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 02:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230028AbjGTGP2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 02:15:28 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 712A219B2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 23:15:26 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fdd31bf179so616498e87.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 23:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689833725; x=1692425725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M9fxsL8k8YdgPOdv48SC9Nmsg2LypY+WGWHD2QI6dI4=;
        b=TjazXSZ/mUV4wGJU0KCYiC11Uw/a4eTT15H2sG8/TBGEoXDtPyYuQIBDnPPgq6DwXI
         pG08Ism0wSEIeLGzpw6NYA+h5DeX6dtiWzxYKq6NCzyrlUhK3yGgAgCUR1NDZd72a3KD
         1UEJh4zxLX6r6GjTCGaQpdJzeTQfBD3d4OcBawjWqzpL629NYzr7IEdR2ctPZm49rdCx
         07ZJ54G43LKPpyNYJDhOD04efYKq7KLNf+HDWUthoT8Zkwc785fFotPDfkI68eUj5WEN
         axYB77WBqSupOaAOcZLn+QMFl9l6niXIqyQbl1XX7xmH1E0CBVJecIhNene68UEaZDsB
         FuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689833725; x=1692425725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M9fxsL8k8YdgPOdv48SC9Nmsg2LypY+WGWHD2QI6dI4=;
        b=YLNHjeGQ+30larhR+nZoSm+1AYc1ivtxK68BoI7lpJfAOOEisIFTfAhLRmnM/9jQKG
         Mn51m3439lxOHG2rtxBNbVdF8jbTs+VZnQmkSeGFkzsXMgrP7/qXbqyGDjhs5Co/h+Cx
         7Ta3rWSTqWnQvE7SQ9nNHy9Y1Ph6RzapdtuJau+GglE9jJIAKp3QkDr7sDWuxkOq4GuQ
         w9aP3iPZWiEVKMnau/PEyrvVFev3+789MReKDgfLlcYINVJMwUdoMsLRwLLVBIXcHvrl
         SDmPrXcTXGjTbAP/agXihCJVj6GpNVQ3ejdEZOyGn8DOnoEsUSmUji73gH8vEibOoDgD
         fpzA==
X-Gm-Message-State: ABy/qLaqdFxKo7c+tgFg4pL/sAa6Cj3T8M+blqB0Fy6RvgJdbUTjqdKz
        cIWMAtDz3SeFk0r3svt3EoV/ng==
X-Google-Smtp-Source: APBJJlHszO1YbD5dV8Rn+jDt9WtRCRTXo3wgoJH/O5hHJHOegDkIT3+x0aDYMvZrOv2LNN8NtzpbAw==
X-Received: by 2002:a05:6512:3191:b0:4f8:6627:7983 with SMTP id i17-20020a056512319100b004f866277983mr1827667lfe.5.1689833724641;
        Wed, 19 Jul 2023 23:15:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l14-20020a1c790e000000b003fbd04ecdc6sm3086939wme.5.2023.07.19.23.15.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 23:15:24 -0700 (PDT)
Message-ID: <0ad5a223-d70f-deaa-6261-a2bd2b2af40d@linaro.org>
Date:   Thu, 20 Jul 2023 08:15:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/2] ARM: dts: imx6q: Add Variscite MX6 Custom board
 support
Content-Language: en-US
To:     James Hilliard <james.hilliard1@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Andreas Kemnade <andreas@kemnade.info>,
        =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Jesse Taube <mr.bossman075@gmail.com>,
        Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230719224141.3716815-1-james.hilliard1@gmail.com>
 <20230719224141.3716815-2-james.hilliard1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230719224141.3716815-2-james.hilliard1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2023 00:41, James Hilliard wrote:
> This patch adds support for the Variscite MX6 SoM Carrier Board.
> 
> This Carrier-Board has the following :
> - LVDS interface for the VLCD-CAP-GLD-LVDS 7" LCD 800 x 480 touch display
> - HDMI Connector
> - USB Host + USB OTG Connector
> - 10/100/1000 Mbps Ethernet
> - miniPCI-Express slot
> - SD Card connector
> - Audio Headphone/Line In jack connectors
> - S-ATA
> - On-board DMIC
> - RS485 Header
> - CAN bus header
> - SPI header
> - Camera Interfaces header
> - OnBoard RTC with Coin Backup battery socket
> - RS232 Debug Header (IDC10)
> - RS232 DTE
> 
> Product Page : https://www.variscite.com/product/single-board-computers/var-mx6customboard
> 
> The dts file based on the ones provided by Variscite on their own
> kernel, but adapted for mainline.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +

Please run scripts/checkpatch.pl and fix reported warnings. Some
warnings can be ignored, but the code here looks like it needs a fix.
Feel free to get in touch if the warning is not clear.

>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../arm/boot/dts/imx6q-var-mx6customboard.dts | 279 ++++++++++++++++++
>  3 files changed, 281 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6q-var-mx6customboard.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 15d411084065..0f583852de8a 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -298,6 +298,7 @@ properties:
>                - udoo,imx6q-udoo           # Udoo i.MX6 Quad Board
>                - uniwest,imx6q-evi         # Uniwest Evi
>                - variscite,dt6customboard
> +              - variscite,mx6customboard
>                - wand,imx6q-wandboard      # Wandboard i.MX6 Quad Board
>                - ysoft,imx6q-yapp4-crux    # i.MX6 Quad Y Soft IOTA Crux board
>                - ysoft,imx6q-yapp4-pegasus # i.MX6 Quad Y Soft IOTA Pegasus board
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 59829fc90315..9cfc3d3e91ea 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -665,6 +665,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>  	imx6q-udoo.dtb \
>  	imx6q-utilite-pro.dtb \
>  	imx6q-var-dt6customboard.dtb \
> +	imx6q-var-mx6customboard.dtb \
>  	imx6q-vicut1.dtb \
>  	imx6q-wandboard.dtb \
>  	imx6q-wandboard-revb1.dtb \
> diff --git a/arch/arm/boot/dts/imx6q-var-mx6customboard.dts b/arch/arm/boot/dts/imx6q-var-mx6customboard.dts
> new file mode 100644
> index 000000000000..66047dff11ec
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6q-var-mx6customboard.dts
> @@ -0,0 +1,279 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Support for Variscite MX6 Carrier-board
> + *
> + * Copyright 2016 Variscite, Ltd. All Rights Reserved
> + * Copyright 2022 Bootlin
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6qdl-var-som.dtsi"
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	model = "Variscite i.MX6 QUAD/DUAL VAR-SOM-MX6 Custom Board";
> +	compatible = "variscite,mx6customboard", "fsl,imx6q";

Where is the SoM compatible?

Best regards,
Krzysztof

