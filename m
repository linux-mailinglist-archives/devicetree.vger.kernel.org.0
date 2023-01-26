Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC3D167C531
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 08:57:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230244AbjAZH5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 02:57:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjAZH5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 02:57:24 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C48E66EEA
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:57:22 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m14so422298wrg.13
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=j7bKuxz9/q6B7L9b7W4NH5HpkfAWyixOSveAwekdQNk=;
        b=UhOdRcytBPiWbC3nMRyH4vV2wvoDhYlk8QaJUky7mkejFO11MjxMBKdTnQLyqQKwMh
         fBjaHsm3m0g/nMD4cWj31UsYLhlPrg/5aQ5PBwc9N3kt/OXcvXUuY35mQK/7l63gFO9k
         itIQJMuvQzeP5h722L0+9x5fxxilyncqDHQ1SXP2aGrwD5NZ9PD2CkXPLdbQspRFo5Vw
         GYUgCXb2RdYKFKc9eERsQ05M6TcWf2/HfyE1qgYsKe8nT8U6giElGa4m6auPxwP3bCaH
         RPZqSTLGMIdBClJDB0t1pwq5TPz8DF/0j+XkdXtGofOfhA8jCsjZV+57QmpTF2gTNZxz
         N1Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j7bKuxz9/q6B7L9b7W4NH5HpkfAWyixOSveAwekdQNk=;
        b=5HhTufWUJGDlZTZkFsHsgS6rqG2pSgJtQPlIiIw0Mde3LYakNpoCu9LQo4pqogpXhX
         SsIe8AfV6U5GKAXZo0PkgB2vdcVfatfsOIpDiKTsOjR2EVC0LzfyJaCKkGWmNTRGy3/B
         GH3zn+O/Y/WhvPHwBqbMCiEU8Bf0qEIDONz+ILnqLt3+Fd1AP+qsfqBPNkyjfiO3vQvJ
         KwF5HJu4uZxUuVud3P+KjthwvHP4sgKVduxshquSmTm3e/3DtUoTU8i/vw/kaIAIuGrk
         KwwBqZf1Kua8F8vyQD9PvFAUVeAiaaMJKLeXheZ71Rl1+FWBqL8NA78GuMFJvAyu0LjV
         QKXw==
X-Gm-Message-State: AFqh2kq1kzjQPRcm8cd/tJiy2IoGn0NfWRQhF+ENGVFysi58/iZ7FmI7
        mVjpz+UAfWAiv8u/pWUC+mu+Aw==
X-Google-Smtp-Source: AMrXdXuUDPhLuBdPEv34MAe+K+6Z1KfnZZ9Nqnykj2Lafe5uX4QhwnKLoQg3XRq5QNeF8QrIT0Nk3w==
X-Received: by 2002:adf:eacd:0:b0:2bb:f4bf:e763 with SMTP id o13-20020adfeacd000000b002bbf4bfe763mr40833520wrn.51.1674719841074;
        Wed, 25 Jan 2023 23:57:21 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8586:171d:1523:4f41? ([2a01:e0a:982:cbb0:8586:171d:1523:4f41])
        by smtp.gmail.com with ESMTPSA id n6-20020adff086000000b002bdbead763csm537107wro.95.2023.01.25.23.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 23:57:20 -0800 (PST)
Message-ID: <6055791c-68d8-987b-0f2c-0526fde9686e@linaro.org>
Date:   Thu, 26 Jan 2023 08:57:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: amlogic: Fix SDIO interrupt and make it
 level-sensitive
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiner,

On 25/01/2023 08:00, Heiner Kallweit wrote:
> SDIO specification defines that the interrupt is level-sensitive.
> Fix the interrupt trigger type for emmc_a accordingly.
> See comment at beginning of the file wrt which is the SDIO port.
> mmc2 = &sd_emmc_a; /* SDIO */
> 
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> 
> Note:
> SDIO interrupt support was added in Linux just recently, however other
> users of this dts may be affected too.

Switching from edge to level has already fixed performance issues on ethernet,
so I think this would be the right direction, but since the SDIO, eMMC and SD controllers
are basically the same IP, they should have the same interrupt setup.

It makes no sense to have level only for SDIO, so perhaps it would be right to
switch every controllers to LEVEL (including AXG) and test to see if there's no regressions.

Neil

> 
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
> 
> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - rebase considering recent node name change sd -> mmc for sd_emmc_a
> ---
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
>   arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 1a931d5c2..c09eb9f6f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>   		sd_emmc_a: mmc@ffe03000 {
>   			compatible = "amlogic,meson-axg-mmc";
>   			reg = <0x0 0xffe03000 0x0 0x800>;
> -			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>   			status = "disabled";
>   			clocks = <&clkc CLKID_SD_EMMC_A>,
>   				 <&clkc CLKID_SD_EMMC_A_CLK0>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index a79a35e84..ae1a5a568 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -603,7 +603,7 @@ apb: apb@d0000000 {
>   			sd_emmc_a: mmc@70000 {
>   				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>   				reg = <0x0 0x70000 0x0 0x800>;
> -				interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>   				status = "disabled";
>   			};
>   

