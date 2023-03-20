Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF16A6C1A89
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 16:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232569AbjCTP6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 11:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231868AbjCTP5f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 11:57:35 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76B02132C9
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 08:49:03 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id l12so10809655wrm.10
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 08:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1679327335;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x6CTb+E4iu+Wlou9LJQ1pTKkWHscAfoc40/YJaJmIXE=;
        b=qUfLrUyhH2rLg+UyNN/4l1+SWqTgH5QXoHzlKS6UjDttBZfYR7KNeFz3t4U0WyxbZ4
         otnRIS8jlvcoin2AyJDDNU6/umzPDpy0+wm8G0nwy6aOEaEWVNKT0zFBk9dGucXcgfkq
         w/5KE+J+CBmkpwP7D0MY7rd73nP0cKsCoalXQIhE087NP7wK/aN7ZjRs/T5N1yZIXUuC
         yP8/pfLdMz5B1hlPdQFfwCwjbwKscuCzN0UKmFfzTB5eutCByqcAjyz6/nFtUjsts4mI
         5tchU7eixBmlUREN8mcrMJeLUU8aujcAtrfGmoVfVSnnCLGvyPQAIm53LJcJb28z2Uwc
         FIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679327335;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6CTb+E4iu+Wlou9LJQ1pTKkWHscAfoc40/YJaJmIXE=;
        b=p37/Z/qd4XHxF7mB1IwLPhWoO73WuPuu1sYs4xR5iTIkqCKmo1iTn5xYD+qI/WM10Q
         6w38dvZD9dBi07tljo6+M7sToJGhYhdU40Js1JaKrtaF2xelkxAh6Jh/H3Fm/9DHVat9
         OHAPnZWghqnrykxxRPJ9hDfC/Z90YROGByUaTYf0pnXWaQ1Oqyo7B9kbxae0eLBZe5lT
         FlpY1+2JTQ2bk2dLlz71mM0Q+6+YFGZoOtyFbT80FYFGqYMCW9ANbF02+DHofuhNVLq2
         s5eICFMABYedxiL8V5J9iu9JwH3JWSd7gVNEN9/6g15as49nEKRfazOtRS7SyKbD7FBR
         kljA==
X-Gm-Message-State: AO0yUKV+Wbt+WlVgdEpQAus8qQqz9VSHll0vvTON84QCqOf1FDnXXEyv
        LtFRhbLc70BVpj/xJcXJINE64Q==
X-Google-Smtp-Source: AK7set/IoNEYCxHdPIJraTb1CpVMDBaM19UEOSkiNAtltgpUlmbwPk1OO+YfqqEFuStU41x+1Xb0UA==
X-Received: by 2002:adf:e344:0:b0:2d6:6d24:7636 with SMTP id n4-20020adfe344000000b002d66d247636mr3825979wrj.7.1679327335615;
        Mon, 20 Mar 2023 08:48:55 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d7d9:4f38:38b4:82b4])
        by smtp.gmail.com with ESMTPSA id o6-20020adfeac6000000b002c71a32394dsm9202578wrn.64.2023.03.20.08.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 08:48:55 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 05/15] arm64: dts: qcom: sa8775p: add the spmi node
Date:   Mon, 20 Mar 2023 16:48:31 +0100
Message-Id: <20230320154841.327908-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230320154841.327908-1-brgl@bgdev.pl>
References: <20230320154841.327908-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the SPMI PMIC Arbiter node for SA8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 797af99227e4..8218abb78ace 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -632,6 +632,28 @@ pdc: interrupt-controller@b220000 {
 			interrupt-controller;
 		};
 
+		spmi_bus: spmi@c440000 {
+			compatible = "qcom,spmi-pmic-arb";
+			reg = <0x0 0x0c440000 0x0 0x1100>,
+			      <0x0 0x0c600000 0x0 0x2000000>,
+			      <0x0 0x0e600000 0x0 0x100000>,
+			      <0x0 0x0e700000 0x0 0xa0000>,
+			      <0x0 0x0c40a000 0x0 0x26000>;
+			reg-names = "core",
+				    "chnls",
+				    "obsrvr",
+				    "intr",
+				    "cnfg";
+			qcom,channel = <0>;
+			qcom,ee = <0>;
+			interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "periph_irq";
+			interrupt-controller;
+			#interrupt-cells = <4>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
 		tlmm: pinctrl@f000000 {
 			compatible = "qcom,sa8775p-tlmm";
 			reg = <0x0 0x0f000000 0x0 0x1000000>;
-- 
2.37.2

