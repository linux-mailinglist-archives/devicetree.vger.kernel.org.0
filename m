Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4449E489C2B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jan 2022 16:27:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232210AbiAJP1f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 10:27:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236150AbiAJP1f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 10:27:35 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E24A9C061756
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 07:27:34 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id m13so13855507pji.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 07:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GWnNxTMfFecLV6thOlvHXz2pzzBbjvSm6gRGLnOvDek=;
        b=adAwyqYKiqQBR3iAnuPrl9HsqSWVMAyCNeCwcsMEiGf+khhIBKSq8bewnZ66ztUuoZ
         kg2LQ6xQp+84sx22whoT3dhvjvA/gYkacf+09iRso4uvkjQqKF5FT/uVGZQrT6e1PhTx
         Ifoi+F79/4dQ5J4UYwa4I5tLitw3iXtSWHOEQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GWnNxTMfFecLV6thOlvHXz2pzzBbjvSm6gRGLnOvDek=;
        b=8DfuO/fuqPq3qjNIMetHnwmUKOBwu155IIcu6QfCUKIWL/cihbmSsmzvdyWg3aRB1f
         H5IEDj6vXq1Qnq0O8SAvXHZPM/7F+nUsoxbt7RJP/LjeHb2xKakwDbbqXQgbdgE2eFiP
         +alMYytAN9QylNuZvs8FWyEUMd+PyVRNvompYs679Ws/JELj9FAUgPD40SUW0WRSL3S8
         hYFEQenJWPDgsIlZiW3Cg7DRnrmYxIAVj7wwuivzqExfS+2bcXRX/rSfC+3TcmAo7cs4
         6u0j7qmexyLO41RyGQcPSRyAx9uXt2aPYb0V60hRkKTQ0wIa+T22n3AYnlYLM/5VupU5
         rOoQ==
X-Gm-Message-State: AOAM532b8hxdoOfgQJ2MKvRwVCxKBzXw2KAFzObjp/TMAT5KixVUNoXa
        sTvWb8u0/VUkxr/auMtOSgCvk99CbJP5Lg==
X-Google-Smtp-Source: ABdhPJyGkqB1MMZcJH39JIEqJL53oJGtqzofu3A1NFxvUUWWVTks1ciDaeNRghX0Dvi5cWxbTfNBkw==
X-Received: by 2002:a17:902:d484:b0:149:95f1:fcd8 with SMTP id c4-20020a170902d48400b0014995f1fcd8mr56861404plg.41.1641828454447;
        Mon, 10 Jan 2022 07:27:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:98b9:3ff7:5eda:a7cc])
        by smtp.gmail.com with ESMTPSA id s207sm6087638pgs.74.2022.01.10.07.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jan 2022 07:27:34 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/2] arm64: dts: exynos: Link DSI panel at port@1 for TM2E board
Date:   Mon, 10 Jan 2022 20:57:14 +0530
Message-Id: <20220110152714.58220-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220110152714.58220-1-jagan@amarulasolutions.com>
References: <20220110152714.58220-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TM2E board DSI pipeline has input from MIC and output to
s6e3ha2 panel.

The existing pipeline has child nodes of ports, panel and
MIC is remote-endpoint reference of port@0 of ports. 

Adding panel as another child node to DSI is unconventional
as pipeline has ports child. However it can be true if MIC
is added inside port node like this.

dsi {
	compatible = "samsung,exynos5433-mipi-dsi";
	#address-cells = <1>;
	#size-cells = <0>;

	port {
		dsi_to_mic: endpoint {
			remote-endpoint = <&mic_to_dsi>;
		};
	};

	panel@0 {
		compatible = "samsung,s6e3hf2";
                reg = <0>;
                vdd3-supply = <&ldo27_reg>;
                vci-supply = <&ldo28_reg>;
                reset-gpios = <&gpg0 0 GPIO_ACTIVE_LOW>;
                enable-gpios = <&gpf1 5 GPIO_ACTIVE_HIGH>;
	};
};

The above pipeline is proper but it requires the DSI input MIC
pipeline to update.

This patch is trying to add panel at port@1 so-that the entire
pipeline before to panel output is untouched.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts b/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
index 22d26460f3dd..09418fe30353 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
@@ -51,6 +51,16 @@ &cmu_disp {
 };
 
 &dsi {
+	ports {
+		port@1 {
+			reg = <1>;
+
+			dsi_out_panel: endpoint {
+				remote-endpoint = <&dsi_in_panel>;
+			};
+		};
+	};
+
 	panel@0 {
 		compatible = "samsung,s6e3hf2";
 		reg = <0>;
@@ -58,6 +68,12 @@ panel@0 {
 		vci-supply = <&ldo28_reg>;
 		reset-gpios = <&gpg0 0 GPIO_ACTIVE_LOW>;
 		enable-gpios = <&gpf1 5 GPIO_ACTIVE_HIGH>;
+
+		port {
+			dsi_in_panel: endpoint {
+				remote-endpoint = <&dsi_out_panel>;
+			};
+		};
 	};
 };
 
-- 
2.25.1

