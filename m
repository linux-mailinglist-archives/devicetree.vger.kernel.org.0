Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C57357B8D8
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 16:49:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236519AbiGTOsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 10:48:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236032AbiGTOsr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 10:48:47 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C81751A3A
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 07:48:43 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id n12so13615108wrc.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 07:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:date:subject:mime-version:content-transfer-encoding:message-id
         :references:in-reply-to:to:cc;
        bh=VGUb9DmOvoGv8nh5rqV1xHbR9kL6IKYbqd/qwv1q+CA=;
        b=jRL5JcT9oKaeo7HwZrYobK/YmXLf7T2OTvQbB+5Tt4Ej73xiicgN2WuAV9zlw2rEKj
         gBD1wR+vAFAyQ36BarOC42aGFh0Z+CUVKmoz8jocS+Sr1oFSoZdpIpLnfx+p6ZO2A1ou
         AAcutHoNxH3HiLedSavddURbO+/DeoJdbuK1UKbsYvq/AEfupOK/Luj7ZiWHbwkOSZy2
         aHRgAVTfYYziWX4EbaYfxDteMDi0fDZibAkzqfnGLqb6TtdUDY9XJZimypikQHHkA/RS
         HwXgTHe4cGSkZD6UzZkh/rw9pNfYj2qyAa5Grv7CnZLvskr1FGDTqRsjvNQ4XaQ9hQ0Y
         SVRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:date:subject:mime-version
         :content-transfer-encoding:message-id:references:in-reply-to:to:cc;
        bh=VGUb9DmOvoGv8nh5rqV1xHbR9kL6IKYbqd/qwv1q+CA=;
        b=T30dYfdJ69CpI2E/xIjEu73As3Zs9zxriymp6Fn3vZg0Q5smFmA6M0zfm5qNxqksda
         ich8qwi1DshLEpgjL4z3z82pe6dyGu5daTrzUkVanEVnKamn0X+J1lN6CW3txkthlgPW
         3E8+Dh1vPxrWmy5WdxLl5V74i6Eiy2iTfWcdL0bUnkeGcRCCcTFFVBeEqw+sSR9w8ATP
         ZYENI30cpBvbtYa4DxPsIhLyUnDgOfO6RGlGlFez6u+lO+6FLnEqc4dx3X2zlQ53DBxK
         Nw7C/Sm+h/dt9fkcPqS51HUfzaYVXroUuyKNJvJOIHzH74PmRjBn9EekwLu1sx64/uHA
         VbEw==
X-Gm-Message-State: AJIora+n/3nVhwLe5+5u/PzbEY4XEJqSNeRfEkZoXsvABkm8AHI0fFbG
        X93EkWXAFvJgitiOAZbdmJ5UnA==
X-Google-Smtp-Source: AGRyM1vTy640y2iV3Q5noFGBYMKVc349uYWye3eyUbUhWj27qZA/i9aPmd4vKm57vaVf4wNmnxmupw==
X-Received: by 2002:a5d:648a:0:b0:21d:b684:9c76 with SMTP id o10-20020a5d648a000000b0021db6849c76mr30956265wri.463.1658328522794;
        Wed, 20 Jul 2022 07:48:42 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb19:85e6:1900:c639:22f8:bed9:44dd])
        by smtp.gmail.com with ESMTPSA id f8-20020a05600c4e8800b003a31673515bsm3321121wmq.7.2022.07.20.07.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 07:48:42 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
Date:   Wed, 20 Jul 2022 16:48:41 +0200
Subject: [PATCH v1 5/6] arm64: dts: mediatek: mt8183: add keyboard node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220720-mt8183-keypad-v1-5-ef9fc29dbff4@baylibre.com>
References: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
In-Reply-To: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.10.0-dev-54fef
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

MT8183 has an on-SoC keyboard controller commonly used for volume
up/down buttons.

List it in the SoC dts so that boards can enable/use it.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 9d32871973a2..9d8fdebaabe3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -943,6 +943,15 @@ pwrap: pwrap@1000d000 {
 			clock-names = "spi", "wrap";
 		};
 
+		keyboard: keyboard@10010000 {
+			compatible = "mediatek,mt6779-keypad";
+			reg = <0 0x10010000 0 0x1000>;
+			interrupts = <GIC_SPI 186 IRQ_TYPE_EDGE_FALLING>;
+			clocks = <&clk26m>;
+			clock-names = "kpd";
+			status = "disabled";
+		};
+
 		scp: scp@10500000 {
 			compatible = "mediatek,mt8183-scp";
 			reg = <0 0x10500000 0 0x80000>,

-- 
b4 0.10.0-dev-54fef
