Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 710F954D69D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356209AbiFPAzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350629AbiFPAzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:55:14 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F6458389
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:38 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id 187so97936pfu.9
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cm99/QV8MCKPId9CWvCx5513sd3/VdteWTSHrf5MAuA=;
        b=NImzwtWbzdvjUciZzZ75bBK/ifBtQCZkTq+I1tvB5kYDZlwJY1su2Do4UoxE5UiHgj
         O2LtXBlTm7opVfjpc+JOpFzW8+XVh+884mDVoYKN5JBJpgOtuLx4ETAYlnjLNR5uwVIe
         TVkK5bo/jcOh4muVk0zCtb0jZ4IVrOoxpiOF59CgcR5ceEHdH7h1VavQansFMHD9vckL
         qSXsnirrqPtGftr9HkreIf43CjEYNXotGKzTqNJj86AoqFeHs7nWihktHu2x4b2dkKIk
         WGvIET3t7Pzh7cJeUwZxj4vLfWp4s1dRuzxAnxq+hCq9MHzFrfZNY1unyrgqjkWgkNYy
         DofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cm99/QV8MCKPId9CWvCx5513sd3/VdteWTSHrf5MAuA=;
        b=AYm2VwGfNH69Mr+keCwRcMk5HCbRRyxIf/b3uEnktJy0VCpr5HlMNDmB5Bjk+rhpLV
         qIQ7UycqKzkObEIdixUqDzyECggQFzicb1iEPf3/nc8e7k6jUWhRC2Z3166gmlDgdkFM
         PffVHQcDDCcU+n/UhNeW0hfJm7aqLjxwPOFRINHc1hTiCJz0iemVFQNZYlXEBS11UjwI
         QaXKjOs6RdO2kGXCp/mr0mIuu4jTDTxpvE7Sf6X0Odrfyl3zMZuWBQL+etpWQ5kI1ZVq
         1OnytFpH8vquPl2Tl28kmnQG/RZB/bFuUvF6TXixDeuGYUJZOcH/d9Q3iElsGPx/j62o
         0SZg==
X-Gm-Message-State: AJIora/H7HFh/Xh8GOS4GbT/d73+IRYFTgJWkUhfQ+0039J1DF5J4HFm
        ed72MtrTBqWblJrNKzIgdr7MeQ==
X-Google-Smtp-Source: AGRyM1ug3gEOXzVVQQttqWJAvEAq5QpOxIQ2fPNT12FaVtr4iUPT5YzVyIzHD563V5L5mFFB8He6wA==
X-Received: by 2002:a63:8a4b:0:b0:408:ab3d:4af3 with SMTP id y72-20020a638a4b000000b00408ab3d4af3mr2150393pgd.72.1655340877628;
        Wed, 15 Jun 2022 17:54:37 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 29/40] arm64: dts: ti: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:22 -0700
Message-Id: <20220616005333.18491-29-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts        | 4 ++--
 arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 57497cb1ed68..31039f7e36ac 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -73,13 +73,13 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&push_button_pins_default>;
 
-		sw5 {
+		switch-5 {
 			label = "GPIO Key USER1";
 			linux,code = <BTN_0>;
 			gpios = <&wkup_gpio0 24 GPIO_ACTIVE_LOW>;
 		};
 
-		sw6 {
+		switch-6 {
 			label = "GPIO Key USER2";
 			linux,code = <BTN_1>;
 			gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 2bc26a296496..b1691ac3442d 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -26,13 +26,13 @@ gpio_keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&sw10_button_pins_default &sw11_button_pins_default>;
 
-		sw10: sw10 {
+		sw10: switch-10 {
 			label = "GPIO Key USER1";
 			linux,code = <BTN_0>;
 			gpios = <&main_gpio0 0 GPIO_ACTIVE_LOW>;
 		};
 
-		sw11: sw11 {
+		sw11: switch-11 {
 			label = "GPIO Key USER2";
 			linux,code = <BTN_1>;
 			gpios = <&wkup_gpio0 7 GPIO_ACTIVE_LOW>;
-- 
2.34.1

