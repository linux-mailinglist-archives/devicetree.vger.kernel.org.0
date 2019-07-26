Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E917E76622
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726086AbfGZMqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:46:54 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:46975 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726871AbfGZMqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:46:52 -0400
Received: by mail-wr1-f67.google.com with SMTP id z1so54295472wru.13
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 05:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=20qFoI2zAcPj/2YkU+y26itShjeGgYjqahabkwiHIZo=;
        b=d8QZIZxg3qalk8cFoc3e6Svi1f1hjZPya7iD801QTZ6MeKg8ghkNFcSYyjgKo1/fyF
         2iUDoTmf7nkIXIeYwpgXuV6aWSBACiYoJKgOM7zwAuX5NJEJD7eh2RFTWcOLZSJY8db2
         /nun0C+jShXsTAOfFCkBO4v8xgSwa9c+Hc5i/kDmTZiOnjqm0U3qL1T44a1ZPqQORRDg
         lNXiiAjurl9dM+VmxMFWAZ7sKRBcocVAiNHj3U1yWCh5yMfP52f+zH1HUtfaZpDnw+Fq
         jEISIgjgDgCYC0YBVIehl/Q4KuzWnytfTwtRfQnfZYYH3Qg8odBhB+WqizrLnxpKRLT2
         EBcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=20qFoI2zAcPj/2YkU+y26itShjeGgYjqahabkwiHIZo=;
        b=icK7Ll9W4ko2zrbtMNUbNfEdV6znoxiscK0szKRnB7yreRZv4J+iOhCi1n4/maRWkT
         vTjsv/v1qEhFrW+wJvbGs2rFIsPRtW0TMDdi3sqlPO3pk7apF7rZVohMiZZzXqWTr6P4
         rgNg8Be3ZHI/e/daCwCfc3K8AIeJQkzfwK+SirWAqi8MA0w7vFcH5FrHf19Wa6IDXpyV
         7ltOkHspI9k8BMEucX2RFdFT7ANJFQB/QpiRg6cg1ZMCrWWp/axDWQ6+IR0zX3iRAZjL
         xqbLeLCgOeKQk6+dc35MBKeloxq80XELMG5lfpqoxeyhlDQ+ytdoLRNZBBkVcDiuN2Db
         OyGA==
X-Gm-Message-State: APjAAAXH17nXykFI+Qk+u6950w/7i8CZWrztk1aVSdmHSx33I7LFe4qZ
        Czmlrtg1d+c/SBo1wHjx/kG3CaKnCes=
X-Google-Smtp-Source: APXvYqzLBzFzlo7nLvJmt4fKbevNt+r1fN1E5ZFnZOsl8lhgIl0SZeLHq4xpPKRJt37hUlte8hZ+zA==
X-Received: by 2002:a5d:4ecc:: with SMTP id s12mr21563wrv.157.1564145211051;
        Fri, 26 Jul 2019 05:46:51 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
        by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.50
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 26 Jul 2019 05:46:50 -0700 (PDT)
From:   Maxime Jourdan <mjourdan@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: meson: add video decoder entries
Date:   Fri, 26 Jul 2019 14:46:39 +0200
Message-Id: <20190726124639.7713-4-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726124639.7713-1-mjourdan@baylibre.com>
References: <20190726124639.7713-1-mjourdan@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This enables the video decoder for GXBB, GXL and GXM chips

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi  |  4 ++++
 3 files changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index f734faaf7b78..0cb40326b0d3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -845,3 +845,14 @@
 	compatible = "amlogic,meson-gxbb-vpu", "amlogic,meson-gx-vpu";
 	power-domains = <&pwrc_vpu>;
 };
+
+&vdec {
+	compatible = "amlogic,gxbb-vdec", "amlogic,gx-vdec";
+	clocks = <&clkc CLKID_DOS_PARSER>,
+		 <&clkc CLKID_DOS>,
+		 <&clkc CLKID_VDEC_1>,
+		 <&clkc CLKID_VDEC_HEVC>;
+	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+	resets = <&reset RESET_PARSER>;
+	reset-names = "esparser";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index c959456bacc6..a09c53aaa0e8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -848,3 +848,14 @@
 	compatible = "amlogic,meson-gxl-vpu", "amlogic,meson-gx-vpu";
 	power-domains = <&pwrc_vpu>;
 };
+
+&vdec {
+	compatible = "amlogic,gxl-vdec", "amlogic,gx-vdec";
+	clocks = <&clkc CLKID_DOS_PARSER>,
+		 <&clkc CLKID_DOS>,
+		 <&clkc CLKID_VDEC_1>,
+		 <&clkc CLKID_VDEC_HEVC>;
+	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+	resets = <&reset RESET_PARSER>;
+	reset-names = "esparser";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
index 7a85a82bf65d..a0e677d5a8f7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
@@ -144,3 +144,7 @@
 &dwc3 {
 	phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>, <&usb2_phy2>;
 };
+
+&vdec {
+	compatible = "amlogic,gxm-vdec", "amlogic,gx-vdec";
+};
-- 
2.22.0

