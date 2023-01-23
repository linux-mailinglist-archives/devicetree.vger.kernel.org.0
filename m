Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D003F677F63
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:17:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232671AbjAWPR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:17:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232392AbjAWPRK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:17:10 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7DDB2943A
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:16:28 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so10872124wmb.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b9CV+yUJBq8ETRaFGXmwVdEJZEPhzygsxPAPrI9XL9o=;
        b=an4bu/X4dQl1it6mjZfiunC4hlB7tnosX5OHG3eT+bqLmB8UjTVHrx9DDUz8NHpeN6
         zIXBq+ibvVyTQAhRgjNXMqu3i+u2eaXTPh7ej3vc+KSSGIE5czevERG5lpoIrtVVqoSE
         MqJQuAfOfe/x6AOJS1hs28vH/a+hgWj1PEHdocLqrNQ/3i9qetmQMPYjURsEl+WW4iqK
         c/hDQtz01PEN9TBUSKtl3pQ+l9A8NYhGUjb3SEFPenRw71bVR8kCIHBef/NsVO8qW6nZ
         ScWQo4G+fUqfa75sZ5xnJoJvkVzjzNQmvq1lIwFJUixgfwZY/+VsoCqeVgRj8wNYPHcA
         Q/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b9CV+yUJBq8ETRaFGXmwVdEJZEPhzygsxPAPrI9XL9o=;
        b=ZOHhdKVCsWLCaNe1lUZz+T7RlzGsSidi8+f09UIMveWjr7OlxRHv4+AaPk2Sq4QSTs
         yPG0GagUzWX4rxtTJ+6t1oGIIUEH8K9GEuV3airvcP+MaqZorGbccT9xhukyp2kbWdOM
         Df45DAE9hpocf6QzpcdJkoCfOOFMxSvweQ2T50Zt6qQPtZwah4mpPkG0M9hqfciGT+4a
         i8AxSfhwQxRU8avc1LvnjJ7NsnC6ypDDMn3HVhbLt14cBNvQh/O59ygln3LNCZKU332x
         jA0G2FSpFxB5+aPm+Rq/gukFxOn6yxkpHEorJ0pcoOP6OK/PIGEnanFQVW3xB6xDgTHu
         X90g==
X-Gm-Message-State: AFqh2kqdJ3PwVCGZizuitbkc/kkGCxQfrfe8sn5hGS29xwceCgu9zQc4
        RhZReB9EBQtdbc96+U/T24MInw==
X-Google-Smtp-Source: AMrXdXtBzOrlrhFaUvAkApRf7Tgch6o5YxRKhqFsb4+kFu4yaJW90309vV/ChYkM2UoXa0Nz9IHvcw==
X-Received: by 2002:a05:600c:d2:b0:3da:f475:6480 with SMTP id u18-20020a05600c00d200b003daf4756480mr24604054wmm.7.1674486980573;
        Mon, 23 Jan 2023 07:16:20 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f13-20020a7bcc0d000000b003d9780466b0sm10697414wmh.31.2023.01.23.07.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:16:20 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: broadcom: align UART node name with bindings
Date:   Mon, 23 Jan 2023 16:16:16 +0100
Message-Id: <20230123151616.369963-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151616.369963-1-krzysztof.kozlowski@linaro.org>
References: <20230123151616.369963-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings expect UART/serial node names to be "serial".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/bcm11351.dtsi       | 8 ++++----
 arch/arm/boot/dts/bcm21664-garnet.dts | 2 +-
 arch/arm/boot/dts/bcm21664.dtsi       | 6 +++---
 arch/arm/boot/dts/bcm28155-ap.dts     | 2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/bcm11351.dtsi b/arch/arm/boot/dts/bcm11351.dtsi
index 53696078bbf0..ba75784d66a9 100644
--- a/arch/arm/boot/dts/bcm11351.dtsi
+++ b/arch/arm/boot/dts/bcm11351.dtsi
@@ -50,7 +50,7 @@ smc@3404c000 {
 		reg = <0x3404c000 0x400>; /* 1 KiB in SRAM */
 	};
 
-	uart@3e000000 {
+	serial@3e000000 {
 		compatible = "brcm,bcm11351-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e000000 0x1000>;
@@ -60,7 +60,7 @@ uart@3e000000 {
 		reg-io-width = <4>;
 	};
 
-	uart@3e001000 {
+	serial@3e001000 {
 		compatible = "brcm,bcm11351-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e001000 0x1000>;
@@ -70,7 +70,7 @@ uart@3e001000 {
 		reg-io-width = <4>;
 	};
 
-	uart@3e002000 {
+	serial@3e002000 {
 		compatible = "brcm,bcm11351-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e002000 0x1000>;
@@ -80,7 +80,7 @@ uart@3e002000 {
 		reg-io-width = <4>;
 	};
 
-	uart@3e003000 {
+	serial@3e003000 {
 		compatible = "brcm,bcm11351-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e003000 0x1000>;
diff --git a/arch/arm/boot/dts/bcm21664-garnet.dts b/arch/arm/boot/dts/bcm21664-garnet.dts
index 1854cd907a1b..cd03fa0c2aae 100644
--- a/arch/arm/boot/dts/bcm21664-garnet.dts
+++ b/arch/arm/boot/dts/bcm21664-garnet.dts
@@ -16,7 +16,7 @@ memory@80000000 {
 		reg = <0x80000000 0x40000000>; /* 1 GB */
 	};
 
-	uart@3e000000 {
+	serial@3e000000 {
 		status = "okay";
 	};
 
diff --git a/arch/arm/boot/dts/bcm21664.dtsi b/arch/arm/boot/dts/bcm21664.dtsi
index 2684c37cb3a0..ed4de031e48e 100644
--- a/arch/arm/boot/dts/bcm21664.dtsi
+++ b/arch/arm/boot/dts/bcm21664.dtsi
@@ -50,7 +50,7 @@ smc@3404e000 {
 		reg = <0x3404e000 0x400>; /* 1 KiB in SRAM */
 	};
 
-	uart@3e000000 {
+	serial@3e000000 {
 		compatible = "brcm,bcm21664-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e000000 0x118>;
@@ -60,7 +60,7 @@ uart@3e000000 {
 		reg-io-width = <4>;
 	};
 
-	uart@3e001000 {
+	serial@3e001000 {
 		compatible = "brcm,bcm21664-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e001000 0x118>;
@@ -70,7 +70,7 @@ uart@3e001000 {
 		reg-io-width = <4>;
 	};
 
-	uart@3e002000 {
+	serial@3e002000 {
 		compatible = "brcm,bcm21664-dw-apb-uart", "snps,dw-apb-uart";
 		status = "disabled";
 		reg = <0x3e002000 0x118>;
diff --git a/arch/arm/boot/dts/bcm28155-ap.dts b/arch/arm/boot/dts/bcm28155-ap.dts
index fce3d5260b00..60c8ab8a2855 100644
--- a/arch/arm/boot/dts/bcm28155-ap.dts
+++ b/arch/arm/boot/dts/bcm28155-ap.dts
@@ -16,7 +16,7 @@ memory@80000000 {
 		reg = <0x80000000 0x40000000>; /* 1 GB */
 	};
 
-	uart@3e000000 {
+	serial@3e000000 {
 		status = "okay";
 	};
 
-- 
2.34.1

