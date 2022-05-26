Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 564CF5354EF
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349157AbiEZUqT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:46:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345492AbiEZUqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:46:15 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA102248EA
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:45:59 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id rq11so5174730ejc.4
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6IYNJKDiS0GsxsIfjukniKUSVecFLdtV/BJTHhq/ubw=;
        b=owB1dleLPG3OEjVQ4kP49KUKmgZfacfRD5gYgPRUOIMN9K8eJhrh7WsqO81aI5JY2N
         opwnKxla+8MAlR9Zi7c0OeSV+2PWc5oTLpcFm2y1vOUusMOCPrLds6xD1tYc7QBFIKNP
         NE68c3ZMgmcJmtFzaxACWNdcQZvl/vkOqOuPSvPA+pMkuaXM0qU5gLLEcacIW8wWtSkZ
         0O03bC5+93aU6iKf/iKLvgxZeIwKJas1lslpIZFSBTUZLYBa+VCcOmniNQaLw7YLE1Ds
         dMVDslwWbvbc4TevZUSOthF+Q+C2aYrjyBUs604DXzMHMGAIJpNVcLMNW+JqKc4supIG
         /V8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6IYNJKDiS0GsxsIfjukniKUSVecFLdtV/BJTHhq/ubw=;
        b=7HRSfRvE1hwABcZ0PMarPi9u9xbrRhQ1V36fiRUd9pb5wSjiR6Qo+0Bt9xP+F2l/4e
         k+OOGX4WeSMf2T0b0xES8dD5TlxhWgsReAQz98xTPgVfpL7aVoM5JQOhn1SwSGdX71O3
         DdG73VAKiQpOsCvxLFBOj2oIx/Btr4f+jtJJ6I0oT8sB2/vc1+gNcZLe4LsYhOFjy1W0
         gVDTnwHXdDYAcVOt1nCb0Ez6H6A+T3x6MDRDZMxSXwlqO94nh4ApsQTPywyao5twTUac
         4K+YkekKFNY0H7JGaBxiBpFeIQnnH8Eq5xf2n+ZKBJ356Wl2OUz3WeLOl5yUbZVI8p1n
         sv8w==
X-Gm-Message-State: AOAM532pwLlzXAwzQiPQ+UAOke8YDC42w1aZ4fIRlJ2nlpZVTDTaD47z
        dTn1JpJswTrFWzFXS4dYiz0vCQ==
X-Google-Smtp-Source: ABdhPJz8AXnd6L8rAXQTGJvqOqAm1R+IiFsGG7//dQPGu4ApZsgRXYECTsCTneE4TJbZqANQfqfPlw==
X-Received: by 2002:a17:907:1c81:b0:6ff:335d:a0f7 with SMTP id nb1-20020a1709071c8100b006ff335da0f7mr845104ejc.182.1653597958016;
        Thu, 26 May 2022 13:45:58 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z1-20020a1709067e4100b006fe8ac6bc69sm827633ejr.140.2022.05.26.13.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:45:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: meson: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:45:52 +0200
Message-Id: <20220526204552.832961-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204552.832961-1-krzysztof.kozlowski@linaro.org>
References: <20220526204552.832961-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/meson.dtsi   | 4 ++--
 arch/arm/boot/dts/meson8.dtsi  | 2 +-
 arch/arm/boot/dts/meson8b.dtsi | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/meson.dtsi b/arch/arm/boot/dts/meson.dtsi
index 26eaba3fa96f..8e3860d5d916 100644
--- a/arch/arm/boot/dts/meson.dtsi
+++ b/arch/arm/boot/dts/meson.dtsi
@@ -214,14 +214,14 @@ aobus: aobus@c8100000 {
 			ranges = <0x0 0xc8100000 0x100000>;
 
 			ao_arc_rproc: remoteproc@1c {
-				compatible= "amlogic,meson-mx-ao-arc";
+				compatible = "amlogic,meson-mx-ao-arc";
 				reg = <0x1c 0x8>, <0x38 0x8>;
 				reg-names = "remap", "cpu";
 				status = "disabled";
 			};
 
 			ir_receiver: ir-receiver@480 {
-				compatible= "amlogic,meson6-ir";
+				compatible = "amlogic,meson6-ir";
 				reg = <0x480 0x20>;
 				interrupts = <GIC_SPI 15 IRQ_TYPE_EDGE_RISING>;
 				status = "disabled";
diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 9997a5d0333a..0f8bac8bac8b 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -430,7 +430,7 @@ mux {
 };
 
 &ao_arc_rproc {
-	compatible= "amlogic,meson8-ao-arc", "amlogic,meson-mx-ao-arc";
+	compatible = "amlogic,meson8-ao-arc", "amlogic,meson-mx-ao-arc";
 	amlogic,secbus2 = <&secbus2>;
 	sram = <&ao_arc_sram>;
 	resets = <&reset RESET_MEDIA_CPU>;
diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 94f1c03decce..cf9c04a61ba3 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -384,7 +384,7 @@ mux {
 };
 
 &ao_arc_rproc {
-	compatible= "amlogic,meson8b-ao-arc", "amlogic,meson-mx-ao-arc";
+	compatible = "amlogic,meson8b-ao-arc", "amlogic,meson-mx-ao-arc";
 	amlogic,secbus2 = <&secbus2>;
 	sram = <&ao_arc_sram>;
 	resets = <&reset RESET_MEDIA_CPU>;
-- 
2.34.1

