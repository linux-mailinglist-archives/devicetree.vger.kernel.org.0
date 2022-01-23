Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C821497112
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:16:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236230AbiAWLQx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:16:53 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:55970
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236203AbiAWLQu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:16:50 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DD1133F1C4
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936609;
        bh=XKeSGyC9ItmJqAyykgNV42LPM38fJ31nboSTLUTfyvc=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Fao8QoAfJkClA7pkwg4uaKxqQg0Q40FXPx5T8Z1/iZ2ja6zuUl9TMSkizZ1axUKL2
         et74ZifzmcFIaYYJtpKOJrRZfrPXPTa9/cpUp5xKIzBd3mOAtVK9r0ypCNVXxhqzFQ
         HfwXymQ5mLeZ/Th4hMl4zTSxJxA5LWybVZpm7NR/r1TQFjxK9BP+VxofY47bstwPol
         MonU6G6H0QGhNvEbKtEbo/imwHs6OeEovARYZ/pHMcp7qvXcSjgz8HjRQWq5YOOCzX
         1HY6vu0YV3pKs6tHRJ1m1QmxTbPrdA+dkcW02v+w2y1Wur309xVD/22PtaRDiQ3PHQ
         7tk1saF93mX1w==
Received: by mail-wm1-f72.google.com with SMTP id a3-20020a05600c348300b0034a0dfc86aaso12951758wmq.6
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XKeSGyC9ItmJqAyykgNV42LPM38fJ31nboSTLUTfyvc=;
        b=3S28FptkSsF9TCyaaNH5WnAYp5k8glrtaTKgqG1CkYtjSnpmutWJQtR1SoqO8Z6Ub7
         rLs8vwo3MsuNR6IbMPiGJl2nzUslbGs6g+h8wmzk3a7VIf2tXNStrXOHutyI35hl3mii
         TJlNJg2jQdUsYNYjNepxNjeJviM+LHSpU53emQUNbVxIbMqxuNY1B3ovExP3id6lNctY
         NP+X8GhzTLv+JUHqXTYy5G+wj1L5lwCo7AaBruYuW2IwOwDWhVggkyb31DRpO4U70k40
         y0GkFVUMw57HKYg7/TuYZTfhdaOtAMUWKu9diViBFdBGRC+NHzH6G1CFeB2pKagoNf4d
         LzJw==
X-Gm-Message-State: AOAM531TI+T3wBboi61s3rGmJGwvYFlZCGdy6Y0Ng3EoqVwh2GaUiFoh
        GK36dUAwUlRJspHd4Jc6KiFKEZGtRr9BGVMyqMH0VeVGFH7LLwkc+QCsPVtH2KoXg3L1v7Klk3i
        7/EtuJ9qi0WXzlqQYAcUTImzehGe2PyW0G1juRGI=
X-Received: by 2002:adf:f686:: with SMTP id v6mr9080080wrp.568.1642936609611;
        Sun, 23 Jan 2022 03:16:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwQBteHKoyyNnf4rlz2MD505Wn16oOqHwd91HINqnK/froSXkyccBpxKSM0tEJs7mrQYEKfxw==
X-Received: by 2002:adf:f686:: with SMTP id v6mr9080070wrp.568.1642936609419;
        Sun, 23 Jan 2022 03:16:49 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:48 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 01/12] arm64: dts: exynos: add USB DWC3 supplies to Espresso board
Date:   Sun, 23 Jan 2022 12:16:33 +0100
Message-Id: <20220123111644.25540-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos7 Espresso
board.  Due to lack of schematics of Espresso board, the choice of
regulators is approximate.  What bindings call VDD10, for Exynos7 should
be actually called VDD09 (0.9 V).  Use regulators with a matching
voltage range based on vendor sources for Meizu Pro 5 M576 handset (also
with Exynos7420).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos7-espresso.dts | 5 +++++
 arch/arm64/boot/dts/exynos/exynos7.dtsi         | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
index 125c03f351d9..4c45e689d34a 100644
--- a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
@@ -412,6 +412,11 @@ &ufs {
 	status = "okay";
 };
 
+&usbdrd {
+	vdd10-supply = <&ldo4_reg>;
+	vdd33-supply = <&ldo6_reg>;
+};
+
 &usbdrd_phy {
 	vbus-supply = <&usb30_vbus_reg>;
 	vbus-boost-supply = <&usb3drd_boost_5v>;
diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index c3efbc8add38..01b4210d8b62 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -672,7 +672,7 @@ usbdrd_phy: phy@15500000 {
 			#phy-cells = <1>;
 		};
 
-		usbdrd3 {
+		usbdrd: usb {
 			compatible = "samsung,exynos7-dwusb3";
 			clocks = <&clock_fsys0 ACLK_USBDRD300>,
 			       <&clock_fsys0 SCLK_USBDRD300_SUSPENDCLK>,
-- 
2.32.0

