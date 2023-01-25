Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA8FF67AA8B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 07:53:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234083AbjAYGw7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 01:52:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233425AbjAYGw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 01:52:57 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35DAB298DB
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 22:52:55 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id vw16so44949627ejc.12
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 22:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcRWz+wlux3+r5w9OU0gEpUewRtO5xydPlFIEWNqMqk=;
        b=ZB8XDp6C6562DC2Hg+9qfoCV27AdhPI++unNOigC82ZWrZq+Rtkv1TDkn9zdDk4dTK
         IS21ArtIyBMnHsa1z4prbONlWo3E6oyAec4e1zCJoXxDED+PDnqf3al09r71zxOwLjRB
         /T9jD5dz2DJVM7NCmJQ3ZpQBzwlxfqfd9INbLHUWnqS6vHNiRD9CXQ1f5tL5kDgUtbwF
         mImYbM0ad4iswkPsYpSSbNgq74SSuP+EOIljKDjo4XO4Nz1NZjCjT5ffr/10Odc9mNm6
         IYSEZpeOrcIocKm/LfSXBD6+qIVyXWIm7CjEmMpvdLT0rPIHrIOhBvI9tgeTcfQdrwtM
         ewvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kcRWz+wlux3+r5w9OU0gEpUewRtO5xydPlFIEWNqMqk=;
        b=PYRjlZaczOck1kNFcu/oPvsxawBgcuSmQgEJgPbAx0trk7pUKgUJVzHmycbfXe3cOZ
         fOuYvbdyVwQkflh2bHggiz9vxv1cr9FuuU0DUpE0QPoMrdzzviNtPtpI80cl+ci3D6v8
         wjzFBIWCYjvrhFgfBZsBOSQchNwQmGJY3bothrvG1VsGW3fNYsWcIgaBfCb0e7zLnMN1
         PKerx7yzeK0PAJhb6+DP+TOi1Aq9O+OY621ieKhpJnIZ8lwqfhFo193AkYodu3W4zVak
         gyFuS4YHuwK/m/fapCbA8q5+OrP3rgVvNR+uu2HnXKWwffOinHSHRp9EQj4VRKop3Yfo
         DT4w==
X-Gm-Message-State: AFqh2krw48jLVUBm5S18HjL6K3MDovCXTji1rk8OdXIxo7JULLW+X20H
        7h2NUR1FgKD/B3WE+0m8uxecDIg88gA=
X-Google-Smtp-Source: AMrXdXsU0BQfMNqCbQWqvGPRzN2+dYPKj90qH8Q+WPYWIbRhtcSyiCEydPajRl+H1TS5C9aLij6ngg==
X-Received: by 2002:a17:907:75cf:b0:7aa:76a:fb3 with SMTP id jl15-20020a17090775cf00b007aa076a0fb3mr31698961ejc.66.1674629573497;
        Tue, 24 Jan 2023 22:52:53 -0800 (PST)
Received: from ?IPV6:2a01:c22:720f:5a00:9008:755f:20dd:1de8? (dynamic-2a01-0c22-720f-5a00-9008-755f-20dd-1de8.c22.pool.telefonica.de. [2a01:c22:720f:5a00:9008:755f:20dd:1de8])
        by smtp.googlemail.com with ESMTPSA id b4-20020aa7cd04000000b00487fc51c532sm1967994edw.33.2023.01.24.22.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 22:52:52 -0800 (PST)
Message-ID: <e635fee3-f5c4-2819-d6f3-a50dac55e979@gmail.com>
Date:   Wed, 25 Jan 2023 07:52:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH] arm64: dts: amlogic: Fix SDIO interrupt and make it
 level-sensitive
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SDIO specification defines that the interrupt is level-sensitive.
Fix the interrupt trigger type for emmc_a accordingly.
See comment at beginning of the file wrt which is the SDIO port.
mmc2 = &sd_emmc_a; /* SDIO */

The usage of edge-triggered interrupts lead to lost interrupts under load,
see [0]. This was confirmed to be fixed by using level-triggered
interrupts.

Note:
SDIO interrupt support was added in Linux just recently, however other
users of this dts may be affected too.

[0] https://www.spinics.net/lists/linux-mmc/msg73991.html

Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
Reported-by: Peter Suti <peter.suti@streamunlimited.com>
Tested-by: Peter Suti <peter.suti@streamunlimited.com>
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 1a931d5c2..c09eb9f6f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
 		sd_emmc_a: sd@ffe03000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe03000 0x0 0x800>;
-			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_A>,
 				 <&clkc CLKID_SD_EMMC_A_CLK0>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index a79a35e84..ae1a5a568 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -603,7 +603,7 @@ apb: apb@d0000000 {
 			sd_emmc_a: mmc@70000 {
 				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
 				reg = <0x0 0x70000 0x0 0x800>;
-				interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
-- 
2.39.1

