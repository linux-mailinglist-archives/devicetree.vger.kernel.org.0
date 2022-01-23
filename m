Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E92E8497138
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:17:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236366AbiAWLRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:17:13 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38516
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236322AbiAWLRF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:17:05 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CF11E3F32C
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936621;
        bh=dx9J171TH9ajdx0PBtS6Tdib7oh/eqVqsvAw3pSWKnc=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=sduG3gwZ2xEICj2A/ORCQGYpVJrq4XRouhALKgyjo2azLsVJ8s53w7okmJOkwMkXA
         KZJqgZpmWYakvWyVy8tjCwCjkxbk71s3/GS/8AUD5oRR7WQOLjZ8b+okQHiwMvcolr
         KNL5KzFRg0RVV+OvRMtgIBQub8bB+6LWkXZxWx6pWN/AAnPTls+02rZlBLGJWiHpk3
         YXnOJ1vwSGDMa23abGGPlxa6rxQWCCfLdjEUjMzpEfthstirPN8Ke08X+z4mux6drE
         F2DmzLjgaRm0RR5tgsQGsOlZ6w412QlRxe5xaffABbdA3ITokfP8CyyWWvU6xk44JZ
         8iiDND63y+sjA==
Received: by mail-wm1-f72.google.com with SMTP id v185-20020a1cacc2000000b0034906580813so12949781wme.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:17:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dx9J171TH9ajdx0PBtS6Tdib7oh/eqVqsvAw3pSWKnc=;
        b=RmQyfDCkVsmig+JOJptzGbmVF4cTA5Kwq/N6uC1/vfbawTm2fECDJ4e85bAWqglVsN
         D/omNSCZk3JjFGvCDv70uDoz/SoDNFGi0+s+y40lwex1ZcUlQ1beaOS8vF8KDgUFUX+X
         8RtStTGlKBRsjmxnAhe/hg/EIjqtBFArZsbAFET+b5egOWz4xUIONvEDWEA9ct9J0G89
         a76IgBX6A4mFq/6DALttcRQUzhFvDeR3LNbVxcU9QC/7nteQFAvMhwhnI4Ytmz2rIhSI
         MD9tVj8VujSty+ssY6obRrA1wve2WqYoVs4immyulaicXNO1SWQ4+oiH35A1vDAdSoxd
         x6Vg==
X-Gm-Message-State: AOAM533QlneReiYL9cSR/TNlJGfHE11FOYoo2yMhswxLl7M3Sbl2FWfr
        zK1cr6eOPv+pvjhHyLW1SD6qRz925jhVb201yLCUzNryrcERPBu9hF0LzsRlWUpZyBcm1NJ3cof
        V9Atc1PDvCwaMz5WxnqTQG+VP/kO7o7btX4pQ9TI=
X-Received: by 2002:a05:600c:4f93:: with SMTP id n19mr7602130wmq.64.1642936620704;
        Sun, 23 Jan 2022 03:17:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzYjK0VxAe/EwPuFaJgl6CLlYcZziFBrDEE3OaETwss+bus0ChDXjO9A4TMNzg/RoD3ooiJnQ==
X-Received: by 2002:a05:600c:4f93:: with SMTP id n19mr7602112wmq.64.1642936620519;
        Sun, 23 Jan 2022 03:17:00 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:17:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 10/12] ARM: dts: exynos: add fake USB DWC3 supplies to SMDK5410
Date:   Sun, 23 Jan 2022 12:16:42 +0100
Message-Id: <20220123111644.25540-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dummy/fake voltage regulators for USB DWC3 block on Exynos5410
SMDK5410 board.  These regulators are required by dtschema, however the
SMDK5410 board does not define the PMIC providing regulators.  Use dummy
fixed-regulators just to satisfy the dtschema checks.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5410-smdk5410.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5410-smdk5410.dts b/arch/arm/boot/dts/exynos5410-smdk5410.dts
index 2a3ade77a2de..eae69e857247 100644
--- a/arch/arm/boot/dts/exynos5410-smdk5410.dts
+++ b/arch/arm/boot/dts/exynos5410-smdk5410.dts
@@ -41,6 +41,19 @@ firmware@2037000 {
 		reg = <0x02037000 0x1000>;
 	};
 
+	vdd10_usb3: voltage-regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD10_USB3";
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+	};
+
+	vdd33_usb3: voltage-regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD33_USB3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
 };
 
 &mmc_0 {
@@ -121,3 +134,13 @@ &serial_1 {
 &serial_2 {
 	status = "okay";
 };
+
+&usbdrd3_0 {
+	vdd10-supply = <&vdd10_usb3>;
+	vdd33-supply = <&vdd33_usb3>;
+};
+
+&usbdrd3_1 {
+	vdd10-supply = <&vdd10_usb3>;
+	vdd33-supply = <&vdd33_usb3>;
+};
-- 
2.32.0

