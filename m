Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B431B59FA38
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 14:46:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235714AbiHXMqF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 08:46:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234401AbiHXMqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 08:46:04 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1FC48E4E0
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:46:03 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id k22so1636441ljg.2
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=dXFjQXYaPJ46EayRA2wpurWIqnj56CjvFObMeKjmkMA=;
        b=LQSTB1N12x2Sd3b2rKnPafmKwxLt4CtyJO+j53ZUc5VvbmvBgZ5T1CGB0F9vhxDvwS
         P4Uzq6IyaFB1KD5CCPo9wbXrH9I4obs/OjzdnxwJE5zqoiWpWZy0kdD/qOv1JOnvB2og
         vM1Un4TmYPQDUMflDuHUdhUTBGCtSY3LNjh7j+LfZIJAgoz0gUF6rsIP997c7q2IBJgk
         QLT5wVv6zX7Gp1dy6M35VphqrgGSqGpCZrIFv1GcBNLsI6M/uoKmmU+or2Qp3aMs7Ev4
         eMYU6IgB3flwrJa53zCPo7ZsrEoAcG5tMn517Fjb9QLIo6P6xKhH5FCIEDD9SjyfdG2I
         Tvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=dXFjQXYaPJ46EayRA2wpurWIqnj56CjvFObMeKjmkMA=;
        b=AkPLkfTitysoFUTlzzX3/VxtVeGTWp8BnmiQszJcZRSdoCVMCtyVSpTdWK8Dhq7uk9
         iFdLtpVbqejDLcCvMNzyt5Y+97yRY84blNQK7OqDQ0E7MXhMzx0imoDqWL3ZdRK+SmFz
         OvgWdEecpFpUYeAeisePqoskbDURC8AKOkn+Rz8yLz3JNrJ6lrYHRP96ystg2qh/j7gp
         U9whXF9h5KQe0GeefGUJQZvrgY1y5m7BT6yeV+sueF9XB6hprSZwk16aQb7mIWkKozgz
         16OVoQr5k8d2RsW38ExVtp1XJ4ggq4GZ5FphI4+jHljZp9Rj+7AXuNjjQn8M+NnURKNS
         dqtg==
X-Gm-Message-State: ACgBeo0UJhpGgcz7WJvLPAqFenJpEejnmrbfErXpWjWujQvnVdbklTwC
        mAxZboLeji35BKnDbr/Jmm0A16Aj3lfX/OQCVyk=
X-Google-Smtp-Source: AA6agR5Pq9pAbrdBD5aMavgVhWFd6VwsZKTDZor8XxxZmc6LSAMOC7EWj20VfflsO7ik7OkpNMvffQ==
X-Received: by 2002:a2e:a801:0:b0:261:91a3:bc44 with SMTP id l1-20020a2ea801000000b0026191a3bc44mr7980077ljq.497.1661345161950;
        Wed, 24 Aug 2022 05:46:01 -0700 (PDT)
Received: from [10.243.4.185] (213-212-21-103.static.ip-only.net. [213.212.21.103])
        by smtp.gmail.com with ESMTPSA id o3-20020ac24e83000000b00492d7a7b4e3sm2226191lfr.4.2022.08.24.05.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 05:46:01 -0700 (PDT)
Message-ID: <cb52fd9d-6b34-b0f7-ec00-0f821ca51d3c@linaro.org>
Date:   Wed, 24 Aug 2022 15:46:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Stephen Chen <stephen@radxa.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
References: <20220824080903.3696847-1-jagan@amarulasolutions.com>
 <20220824080903.3696847-2-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824080903.3696847-2-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2022 11:09, Jagan Teki wrote:
> Add support for Radxa ROCK 4C+ SBC.
> 
> 4C+ replaced DP with HDMI and updated FPC connectors
> for MIPI DSI/CSI compared to 4C revision.
> 
> Also, an official naming convention from Radxa mention
> to remove Pi from board name, so this 4C+ is named as
> Radxa ROCK 4C+ not Radxa ROCK Pi 4C+.
> 
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 641 ++++++++++++++++++
>  2 files changed, 642 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..f92637eb6f90 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -46,6 +46,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-plus.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> new file mode 100644
> index 000000000000..cf9997c011d2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> @@ -0,0 +1,641 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2019 Radxa Limited
> + * Copyright (c) 2022 Amarula Solutions(India)
> + */
> +
> +/dts-v1/;
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "Radxa ROCK 4C+";
> +	compatible = "radxa,rock-4c-plus", "rockchip,rk3399";
> +
> +	aliases {
> +		mmc0 = &sdmmc;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk809 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	vcc5v0_sys: vcc-sys {

Use consistent prefixes or suffixes, so vcc-sys-regulator.

(...)

> +	vdd_gpu: syr828@41 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof
