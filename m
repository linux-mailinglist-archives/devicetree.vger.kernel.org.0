Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3292F53C784
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237274AbiFCJ0W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:26:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243060AbiFCJ0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:26:21 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A6473A1B9
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:26:20 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id y19so14790163ejq.6
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ul5kl3xkOBddCK6BZmBUL37TSKlFrzs4FlZ0lPWju6E=;
        b=Ois8e1psuQKU/vL+ZZ2WfE2Yt78mnui0q5PLO8u67c9bYrB1rcazPSj9flPXInIXii
         nBZlzOcBLDpYGo4rgvLTRuaFGgWIj47malQftngol/m/MWpBoorH9x5vd91bv+KO8FJJ
         qdHvvLj3a6CVqzlNOaI1HKmIDYpUCgr0JT3hLOet0Ewvkv5UDbCjhN0cZiMZQYD6aD8p
         37WQc2Mm8aPK8EnhFhlHKqC+1CbEj3SjdcadoU1Qx59b1qH0NhS2R6c89WCMsAe0duOi
         l04FubgcTsL/M108tDRa2mSkuQ24+v9Qfd5LZaeLvgjLaGiqN3e9xIbKrDFW06Orpxjk
         ohmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ul5kl3xkOBddCK6BZmBUL37TSKlFrzs4FlZ0lPWju6E=;
        b=mjWrFf1k/MmBHqX/Qtt4ziZa0kmtrJVoJKvkDI9+1T/VAVDB+mpMY+ComRbi9hSjKz
         nCzYf/yg+dBIj2MePVw1h9Ae8cFiz+iht2dSZZl3Ch2lRNtMLohc9Q73TCsSIJ2+dPku
         iwHOFxjKioKy5qDZuMUGdNoQH1r9NHqd10+69BsVcbvT/ml++kQ7OiGQssjWJWNA/b0M
         zIIYmZyHc3j29R7XMyP1xkQRjFromgMCPNwWDOYNyrKMzUrSsz7fvRhQjOORe2R9CTv2
         koj8byLCxIZue0jUly21B1Px+wYpylM/v+Z64xCUIdINkORDiH5VrKzZcc/k8fKl9Ter
         UqOg==
X-Gm-Message-State: AOAM533adrND1agnWisowV6OjSAQ+H1/V6N4GLnFF+Sl9cDxx8wvBixy
        YbDvbFN+cB04YPWPkngZeiSQypwzNM1LOQ==
X-Google-Smtp-Source: ABdhPJyB/WV+eEvN1uLE1B454uXjO9+6jxoRuQ9KICIHvdfB1Hz+zTnHqm6rnXfD6SFeB+ZE8ahgUw==
X-Received: by 2002:a17:907:a406:b0:703:db59:35a with SMTP id sg6-20020a170907a40600b00703db59035amr7723403ejc.321.1654248379038;
        Fri, 03 Jun 2022 02:26:19 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id b5-20020a17090691c500b006feaa22e367sm2617672ejx.165.2022.06.03.02.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:26:18 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v6 4/6] ARM: dts: bcm2711: Enable V3D
Date:   Fri,  3 Jun 2022 10:26:08 +0100
Message-Id: <20220603092610.1909675-5-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220603092610.1909675-1-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the entry for V3D for bcm2711 (used in the Raspberry Pi 4)
and the associated firmware clock entry.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
Changes since v5:
- Update the compatible to match the other updated ones

Changes since v4:
- Move the firmware clock to bcm2711-rpi.dtsi

 arch/arm/boot/dts/bcm2711-rpi.dtsi |  4 ++++
 arch/arm/boot/dts/bcm2711.dtsi     | 11 +++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
index ca266c5d9f9b..98817a6675b9 100644
--- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
@@ -69,6 +69,10 @@ blconfig: nvram@0 {
 	};
 };
 
+&v3d {
+	clocks = <&firmware_clocks 5>;
+};
+
 &vchiq {
 	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 };
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 89af57482bc8..20e6771e8b1f 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -601,6 +601,17 @@ genet_mdio: mdio@e14 {
 				#size-cells = <0x0>;
 			};
 		};
+
+		v3d: gpu@7ec00000 {
+			compatible = "brcm,2711-v3d";
+			reg = <0x0 0x7ec00000 0x4000>,
+			      <0x0 0x7ec04000 0x4000>;
+			reg-names = "hub", "core0";
+
+			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
+			resets = <&pm BCM2835_RESET_V3D>;
+			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
 
-- 
2.36.1

