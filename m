Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5F0E4282AA
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 19:33:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231699AbhJJRff (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 13:35:35 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33844
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231134AbhJJRfe (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Oct 2021 13:35:34 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9FA8B3F044
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 17:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633887214;
        bh=L7H427TdDssMIyyzD3EBCbr/XIAGBP70maTtVSea3ww=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=s2gZZ3uunjo44ET4c0gEoPnTVUZhMDNjQp9q9uHyL/gJfLisPpTY3fmvMdO4CscL6
         CVxkdKOcFNM53/b5u5kzPcCNQ70485n3UkZWvwFBqXVMZ3xPP6yyXe6eqvyjdlkcwc
         bXUGueFbnTrJYWQuO4FL9eiip+Z/eR3dutjLKSHPsWIpdAs4yk2apmW3Tn54AY1Fht
         Y/mZSzXJJrNvdlevbr9urrDgP3Y6Ok0E94/d/BwX0nJR2+YjYrESdWmdJ9jacuBXJj
         9ttqCMvxi5X+3S1Lc6RxP4M3osHdJRXxAj5oLs5hGfu+OTu5k1bQBCWBPMzKZO/LyP
         GX9sZSchWCLOg==
Received: by mail-ed1-f69.google.com with SMTP id p13-20020a056402044d00b003db3256e4f2so13774275edw.3
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 10:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L7H427TdDssMIyyzD3EBCbr/XIAGBP70maTtVSea3ww=;
        b=STnTi65Taxr6A8JWK0Luusnxv22X7jBK9sZo4mExRLBFVOWoGwbwAoMMPUGm6JSat6
         n9ACdudk/vcZ5l9O3IBEm4+Nc10UPMNorYIgVOZbJ4gLINNv8tAXbSw+ik++FgfNv6oA
         BfgJ5JDxRvWoe5ZaubByLzIVF8s8CMt3WEAMBkiW7huIvf8kObggbrktJav/IKo04t6o
         FohVzIgCc4sYXMoP4WBeRqOE3X/zSs/wWKDoJfecs0p3c52z6/MILib4cDDgzdfxokOT
         9EKzMUFvMTIoz82l6SlHW4RjBwyCOos8aYsdEyP24aBwb3jYkthORDCVysbcX1wz1vXG
         IVwg==
X-Gm-Message-State: AOAM531R0Gab+5r62wUBe7Pz/kdkrTpciM8YtFtcNwO1k64evmqKkwNs
        lHzFLmEaJKLM9hBcC5Bin6Lf9VzLy8jekLsf+D139sHR97zAIxxdGqS/Lboh43rNNjGdBQV6cuz
        Az0U3u9RQz8e1eRLJnl2O5qTQoDo9vf4Gi1l+2b4=
X-Received: by 2002:a17:906:d979:: with SMTP id rp25mr19539841ejb.355.1633887213926;
        Sun, 10 Oct 2021 10:33:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYMKrtkcymacB/hgymVrpxpiVOZ9ylhc5L379/+4Eg8WpCcatMMT34e3DJf/WjWmjyv66hJw==
X-Received: by 2002:a17:906:d979:: with SMTP id rp25mr19539826ejb.355.1633887213720;
        Sun, 10 Oct 2021 10:33:33 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l13sm2802337eds.92.2021.10.10.10.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 10:33:33 -0700 (PDT)
Subject: Re: (subset) [PATCH v3 2/3] arm64: dts: exynos: add initial support
 for exynosautov9 SoC
To:     Linus Walleij <linus.walleij@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Tomasz Figa <tomasz.figa@gmail.com>
References: <20211010032246.146939-1-chanho61.park@samsung.com>
 <CGME20211010032456epcas2p29de8e098493cbe21a08db86d8253787e@epcas2p2.samsung.com>
 <20211010032246.146939-3-chanho61.park@samsung.com>
 <163388622664.8712.13686604427243111750.b4-ty@canonical.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <f5905ed6-31fe-f7da-8af3-e1a0965b0ce6@canonical.com>
Date:   Sun, 10 Oct 2021 19:33:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <163388622664.8712.13686604427243111750.b4-ty@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/10/2021 19:17, Krzysztof Kozlowski wrote:
> On Sun, 10 Oct 2021 12:22:45 +0900, Chanho Park wrote:
>> Add minimal support for ExynosAuto v9 SoC[1].
>>
>> - Enumarate all pinctrl nodes
>> - UART with exynos850 compatible
>> - UFS0 HCI + Phy
>>
>> Like exynos850, this also uses fixed-rate clock nodes until clock driver
>> has been supported. The clock nodes are initialized on bootloader stage
>> thus we don't need to control them so far.
>>
>> [...]
> 
> Applied, thanks!
> 
> [2/3] arm64: dts: exynos: add initial support for exynosautov9 SoC
>       commit: f695b3f4c45d0051416fa7315cf553bec70198d8

... and dropped as build system found dtc W=1 warnings:

../arch/arm64/boot/dts/exynos/exynosautov9.dtsi:78.20-83.5: Warning
(unit_address_format): /cpus/cpu@000000: unit name should not have
leading 0s
../arch/arm64/boot/dts/exynos/exynosautov9.dtsi:85.20-90.5: Warning
(unit_address_format): /cpus/cpu@000100: unit name should not have
leading 0s
../arch/arm64/boot/dts/exynos/exynosautov9.dtsi:92.20-97.5: Warning
(unit_address_format): /cpus/cpu@000200: unit name should not have
leading 0s
../arch/arm64/boot/dts/exynos/exynosautov9.dtsi:99.20-104.5: Warning
(unit_address_format): /cpus/cpu@000300: unit name should not have
leading 0s
../arch/arm64/boot/dts/exynos/exynosautov9.dtsi:187.38-198.5: Warning
(simple_bus_reg): /soc@0/interrupt-controller@11001000: simple-bus unit
address format error, expected "10101000"
../arch/arm64/boot/dts/exynos/exynosautov9.dtsi:255.28-264.5: Warning
(simple_bus_reg): /soc@0/uart@103000000: simple-bus unit address format
error, expected "10300000"

Please fix them plus these fixes:


--- a/arch/arm64/boot/dts/exynos/exynosautov9-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9-pinctrl.dtsi
@@ -570,14 +570,14 @@ hsi2c1_bus: hsi2c1-bus-pins {
        };

        /* PERIC0 USI01 */
-       hsi2c2_bus_pins: hsi2c2-bus-pins {
+       hsi2c2_bus: hsi2c2-bus-pins {
                samsung,pins = "gpp0-4", "gpp0-5";
                samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
                samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
        };

        /* PERIC0 USI01_I2C */
-       hsi2c3_bus_pins: hsi2c3-bus-pins {
+       hsi2c3_bus: hsi2c3-bus-pins {
                samsung,pins = "gpp0-6", "gpp0-7";
                samsung,pin-function = <EXYNOS_PIN_FUNC_3>;
                samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
@@ -1066,7 +1066,7 @@ spi9_cs_func: spi9-cs-func-pins {
        };

        /* PERIC1 USI10_SPI */
-       spi10_pins: spi10-pins {
+       spi10_bus: spi10-bus-pins {
                samsung,pins = "gpp5-2", "gpp5-1", "gpp5-0";
                samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
                samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
@@ -1088,7 +1088,7 @@ spi10_cs_func: spi10-cs-func-pins {
        };

        /* PERIC1 USI11_SPI */
-       spi11_pins: spi11-pins {
+       spi11_bus: spi11-bus-pins {
                samsung,pins = "gpp3-6", "gpp3-5", "gpp3-4";
                samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
                samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index d884ae421e12..1dd1d73a52b8 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -171,7 +171,7 @@ uart_clock: uart-clock {
                 * Keep the stub clock for ufs driver, until proper clock
                 * driver is implemented.
                 */
-               ufs_core_clock: uart-core-clock {
+               ufs_core_clock: ufs-core-clock {


Best regards,
Krzysztof
