Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B7C567F065
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 22:28:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232036AbjA0V17 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 16:27:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbjA0V13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 16:27:29 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05E031205D
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:27:27 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id m15so4324836wms.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FziN2ciblGO11V/qPlwYKnDFHaO/t/ie6w/sKp8lvIY=;
        b=N5guwWJWen5Q4oVKz/GeT/1TUE+Jw+G7ivy4U93zxbKSKQsjWYIXROOYJMrBIpL5gV
         SCuvyT0uP4C9iDazVP2GA17mpH08l/fOfm79q8a3qhBYxQzfiS6wWsEzP4Xj6XLq9SJt
         BFKJd5n6qm3TFZuVu7pjo5e6YjT3CfvU3u7aUXNzInJU0MYOmGLAKH/DFdDvTCqDuB/Z
         NY4/3J7Ox3ZG53XJxbGvn/+AlkOYZR1SE7OaBtbDGTS/U1NqHzqGSZ0LY9s6VrCk23ht
         gSyt9CfU6frLCV04WEkyqC+9JrDcj9H5JqujC70oA7sNX+glF90CCZjJ/ne1d0I7AqMB
         l1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FziN2ciblGO11V/qPlwYKnDFHaO/t/ie6w/sKp8lvIY=;
        b=oXUKgs623S1LwjhZOTmxclrvhxrnf8lzMK1Y3bV1++abtDZbRWdXAGhUI1Y1+1ol4H
         5zf4N7wXxCPSJ0u+SIBYaQ+25kepJ5rT2clo9BYjNvQ64GJUdMHSefrftP2EtyDQjlMF
         mHCZiLxmHNwHecupAn5e7MdYsUvvMK5wV/dbTAX5Ol9rliMNwxbCpkj1h54m3l4JC3re
         4mMw7v6KQ0NbBzqV+Sovv5bX47vqe6H1DjtwAdT6w0dFhYzeLjWjiC0T9mSSSkuPTM01
         zuDcAnFnVbs3QItRXtDKvAyenjt2aFLUM6OlogUqTC4sNRRX4Us0yJoeX5GNcha9m+7j
         5PUQ==
X-Gm-Message-State: AFqh2kqHKTNztZ9s6ie3+olOqFLdOD7xnwN+7lYKhfnt2k4y17te1AlU
        qyr/p/KptF/tDxMSMQB+T33paA==
X-Google-Smtp-Source: AMrXdXuY5SMA/dKhjnrAUlpcIrhPqzACOI3ljE8LgURBOm2QjMgP1jIE+khRhcPdsq+ngi9ejn+Ctg==
X-Received: by 2002:a05:600c:1695:b0:3cf:9d32:db67 with SMTP id k21-20020a05600c169500b003cf9d32db67mr41159228wmn.3.1674854845576;
        Fri, 27 Jan 2023 13:27:25 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d11-20020a05600c3acb00b003db30be4a54sm8645303wms.38.2023.01.27.13.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 13:27:25 -0800 (PST)
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
Subject: [RFT PATCH v3 2/4] ARM: dts: exynos: add unit address to DWC3 node wrapper in Exynos54xx
Date:   Fri, 27 Jan 2023 22:27:11 +0100
Message-Id: <20230127212713.267014-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127212713.267014-1-krzysztof.kozlowski@linaro.org>
References: <20230127212713.267014-1-krzysztof.kozlowski@linaro.org>
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

Neither simple-bus bindings nor dtc W=1 accept device nodes in soc@ node
which do not have unit address.  Therefore usethe address space
of child device (actual DWC3 Controller) as the wrapper's address to
fix:

  exynos5422-odroidhc1.dtb: soc: usb3-0: {'compatible': ['samsung,exynos5250-dwusb3'],
    ... } should not be valid under {'type': 'object'}

  exynos54xx.dtsi:145.21-159.5: Warning (simple_bus_reg): /soc/usb3-0: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Use ranges with values and drop reg from usb-wrapper node.
2. Keep "usb" as wrapper's node name.
---
 arch/arm/boot/dts/exynos54xx.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 3ec43761d8b9..5c799886c275 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -142,15 +142,15 @@ hsi2c_7: i2c@12cd0000 {
 			status = "disabled";
 		};
 
-		usbdrd3_0: usb3-0 {
+		usbdrd3_0: usb@12000000 {
 			compatible = "samsung,exynos5250-dwusb3";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x0 0x12000000 0x10000>;
 
-			usbdrd_dwc3_0: usb@12000000 {
+			usbdrd_dwc3_0: usb@0 {
 				compatible = "snps,dwc3";
-				reg = <0x12000000 0x10000>;
+				reg = <0x0 0x10000>;
 				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usbdrd_phy0 0>, <&usbdrd_phy0 1>;
 				phy-names = "usb2-phy", "usb3-phy";
@@ -164,15 +164,15 @@ usbdrd_phy0: phy@12100000 {
 			#phy-cells = <1>;
 		};
 
-		usbdrd3_1: usb3-1 {
+		usbdrd3_1: usb@12400000 {
 			compatible = "samsung,exynos5250-dwusb3";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+			ranges = <0x0 0x12400000 0x10000>;
 
-			usbdrd_dwc3_1: usb@12400000 {
+			usbdrd_dwc3_1: usb@0 {
 				compatible = "snps,dwc3";
-				reg = <0x12400000 0x10000>;
+				reg = <0x0 0x10000>;
 				phys = <&usbdrd_phy1 0>, <&usbdrd_phy1 1>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,dis_u3_susphy_quirk;
-- 
2.34.1

