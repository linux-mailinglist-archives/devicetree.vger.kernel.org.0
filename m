Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 922542D0D78
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 10:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726753AbgLGJys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 04:54:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726637AbgLGJyr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 04:54:47 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 397CDC0613D3
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 01:54:01 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id a12so5311436wrv.8
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 01:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UN6aA93vC/SD1YPAlyO4uMMoWkJ3/yWMdTSHUtoRruw=;
        b=Ngjq0VL1bGmIacQy8lD1k+mnd2pOVCuiQowuKH23U05X0K6xGYSmPPDoff2IOyaTD5
         lP5irBVNsOIAzXuCsEWw+Nv5H8BQM32H0/dLssasSlAIPIT9E8WnppPURWE9Ou0/Iz7u
         g0047BFjLgGkufv41sfwaTLxWfBY52mGddcJ6ZtaIhLc3oUF2PlEAuYsnarqRHJuP2N/
         IW0kRQ14Mkl0fMzGb9LjlphMRzlXvM99J9SNd4lgPKmEjuhuYulpM8XivmTbltHVgSzs
         x8tQmN5SJCRI//UKSAJwGoVqYKWAqAgJU3mTU0o0/t+7kG8uMR//D0g+Se8q5CRPCfAq
         JUqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UN6aA93vC/SD1YPAlyO4uMMoWkJ3/yWMdTSHUtoRruw=;
        b=AlmXUIu2IMtjuj2VaIe1S4reXBRmw6Ku4me9hCG2/wDOr3DarDtanI5mifSbEbna3O
         Od2kkwa0B9B0vnRJK7MR6mOEnFCfPLddyZmRuojXL3FQy8slLWqUPpHttdozbwrA5xgI
         CLtZMO/g8uZ+WTKCQb8m9eV1AZknsRkkNVXU39LLvajbwH4GLjQAHF1O1APYE0KYYpw4
         DzJQ/dQfvZng4cDJHh6u5X8l4VmhyxLxBMDp73ImveRuOr7/ogLSDXJ/yHt0IE7P0b1M
         inMG+be9gWBtcGby4xzLjxKBlhL1cWmyq2L1EH1+kRHc8qgmYtwI6ZGnKJoelDKwzL7/
         TdvQ==
X-Gm-Message-State: AOAM532x4ntPiWSCuWp/O+m7BZcFTatnuAzsdvImL6Myt+MB2mG+BR9A
        57/rb9nrSpRwSk3b7QWszOHIcw==
X-Google-Smtp-Source: ABdhPJz4OF1tVrrRgNAaVkaq9+EQ2tLGO5ijsEk4DKSFcpZF86rWp2XsV1fs+9Znyx+o4qdaXtgMWw==
X-Received: by 2002:a5d:5643:: with SMTP id j3mr18403591wrw.43.1607334839917;
        Mon, 07 Dec 2020 01:53:59 -0800 (PST)
Received: from starbuck.lan (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id t188sm13558066wmf.9.2020.12.07.01.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 01:53:59 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: meson: vim3: whitespace fixups
Date:   Mon,  7 Dec 2020 10:53:45 +0100
Message-Id: <20201207095346.26297-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201207095346.26297-1-jbrunet@baylibre.com>
References: <20201207095346.26297-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Spaces have been used to indent 2 nodes.
Replace those with tabs and remove one extra newline

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 7b46555ac55a..12465c4becc7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -278,12 +278,12 @@ external_phy: ethernet-phy@0 {
 };
 
 &ethmac {
-        pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
-        pinctrl-names = "default";
-        status = "okay";
-        phy-mode = "rgmii";
-        phy-handle = <&external_phy>;
-        amlogic,tx-delay-ns = <2>;
+	pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-handle = <&external_phy>;
+	amlogic,tx-delay-ns = <2>;
 };
 
 &frddr_a {
@@ -349,9 +349,9 @@ &pcie {
 };
 
 &pwm_ef {
-        status = "okay";
-        pinctrl-0 = <&pwm_e_pins>;
-        pinctrl-names = "default";
+	status = "okay";
+	pinctrl-0 = <&pwm_e_pins>;
+	pinctrl-names = "default";
 };
 
 &saradc {
@@ -445,7 +445,6 @@ w25q128: spi-flash@0 {
 	};
 };
 
-
 &tdmif_a {
 	status = "okay";
 };
-- 
2.28.0

