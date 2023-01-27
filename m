Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B85367F06B
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 22:28:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjA0V2A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 16:28:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231686AbjA0V1b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 16:27:31 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16F4A39BB6
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:27:30 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id m15so4324986wms.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wufxP51EWGGk9HXvgWg83TOisM7XYlAWLVo728uV5hA=;
        b=TNh0kQVqhFnNqu+G4pM9Oc4M6cePC/63S8gdsyMqkTslrWbQDlS/J9kJFWBMD1uYQq
         GC8WJIGE+wIbDdmM20nqVIGiSx2tV1fXN9W0yoVcq18u46qVw/Y1aIxbkPjlL8CV2gbP
         X7UfnZFWSCxDk8Z5VmyGvbZ0HnT+9b2idsd3AvkP3853iFpWojQFHF4njPIeOdDQp0nz
         zJFF1xQWjcZ5Sqfw0KQCRzwFvmndDMTDTVrExJt7qMNa+Z6/DAONPWkeCzaIoVCs0bZ0
         IaKQzSVcBq0jXX5ckuKrSgK3YPg5bUb8I/W0u5zWZliCUxuOWJN0ApMETnFd9MrV++Z6
         8meQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wufxP51EWGGk9HXvgWg83TOisM7XYlAWLVo728uV5hA=;
        b=Dc1Q7N/Hsg325kqiIVsWrWyZBDWMVrDhWR+sxneWjD3R2vZG5gJWUK932tgFbHCfxm
         UdujJmS1GAd8tFD+8K84jjKvqybv4A36VAFPxjxmr/q8MWiAs1UjpsAi3WiASc2BNgxd
         BDsrRmyso0yO0qL0GBcyBlExy9rr0ksI9mHI+lRNkoB/ALeilfj2hjDXht0cmYEEJQqm
         KDYHiJcvJd29GA5FsD+uKv/sNkUBdXFf7j4ZNEKNv09M4zIXg+YyCt3H01daYTQHfkcU
         ztkgZ6D4Q/9y6xBj07fBlFQGKIE0XaZE+iXCtiiYPYYrqlm7nZU36zyUeyt77SJNGX5e
         JY+A==
X-Gm-Message-State: AFqh2krx6Sz23emH8zM88ASFxCMdiQlpQtrKdHY/Hyiyc4oHZniREt4r
        cErEOoI53GfE2JcXlO5wYC97FA==
X-Google-Smtp-Source: AMrXdXuxJSnrinJ8RLzt8CTuozc6iwrAzQwFHVN8Hco1FzCN0sBy5xGjIVn+L+D1CcmXgSb3sQWagg==
X-Received: by 2002:a05:600c:35d0:b0:3db:c4c:9224 with SMTP id r16-20020a05600c35d000b003db0c4c9224mr40221166wmq.3.1674854849674;
        Fri, 27 Jan 2023 13:27:29 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d11-20020a05600c3acb00b003db30be4a54sm8645303wms.38.2023.01.27.13.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 13:27:29 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v3 4/4] arm64: dts: exynos: add unit address to DWC3 node wrapper in Exynos7
Date:   Fri, 27 Jan 2023 22:27:13 +0100
Message-Id: <20230127212713.267014-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127212713.267014-1-krzysztof.kozlowski@linaro.org>
References: <20230127212713.267014-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neither simple-bus bindings nor dtc W=1 accept device nodes in soc@ node
which do not have unit address.  Therefore usethe address space
of child device (actual DWC3 Controller) as the wrapper's address to
fix:

  exynos7-espresso.dtb: soc@0: usb: {'compatible': ['samsung,exynos7-dwusb3'], ...
    should not be valid under {'type': 'object'}

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 arch/arm64/boot/dts/exynos/exynos7.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 82fee1b7caab..b1fa68835b09 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -690,7 +690,7 @@ usbdrd_phy: phy@15500000 {
 			#phy-cells = <1>;
 		};
 
-		usbdrd: usb {
+		usbdrd: usb@15400000 {
 			compatible = "samsung,exynos7-dwusb3";
 			clocks = <&clock_fsys0 ACLK_USBDRD300>,
 			       <&clock_fsys0 SCLK_USBDRD300_SUSPENDCLK>,
@@ -699,11 +699,11 @@ usbdrd: usb {
 				"usbdrd30_axius_clk";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x0 0x15400000 0x10000>;
 
-			usb@15400000 {
+			usb@0 {
 				compatible = "snps,dwc3";
-				reg = <0x15400000 0x10000>;
+				reg = <0x0 0x10000>;
 				interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usbdrd_phy 0>, <&usbdrd_phy 1>;
 				phy-names = "usb2-phy", "usb3-phy";
-- 
2.34.1

