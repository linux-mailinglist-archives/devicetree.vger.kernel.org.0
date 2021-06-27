Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 052A03B5325
	for <lists+devicetree@lfdr.de>; Sun, 27 Jun 2021 13:46:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230327AbhF0LtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Jun 2021 07:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230339AbhF0LtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Jun 2021 07:49:11 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10CCDC061574
        for <devicetree@vger.kernel.org>; Sun, 27 Jun 2021 04:46:47 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id m2so12786125pgk.7
        for <devicetree@vger.kernel.org>; Sun, 27 Jun 2021 04:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O4ese8Y4+WSHdRNE0+R9rpSzI0msBCg5RrtNbTiIqXM=;
        b=nVb5stkeaeNQ8buPNs61WvCH1er+AICUAQcXdQdLxnb5sk7nQdcvGDjRyvDxo6d5Z3
         c1Iiaokbd+JaLkjKK+n4n9Dx1nndITendOSzmr0rEXsM9nXABIfFyd9sWNyt3Tnq+b8G
         +TTf4guAndZpHSlPnceiwYDlw5WieSbf7ThGgIerUOEoswo0sddjXsj2nZRtw3Qcn/2i
         dyixK72zMEdmlDpwM7TQDL2IpUElV3LhmoXlnwixnycPu3b8/mXGFRrNNSEXbs7L49tD
         PPYwruMvYD9q9Ki0vG2q257pp/pXF/HUBMNGio7eTsLcLtMeWBTUS8Q1QLEsDgKuUZ+Y
         T1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O4ese8Y4+WSHdRNE0+R9rpSzI0msBCg5RrtNbTiIqXM=;
        b=B+Daeiug805twZV5i7JFZyBpH+HTkgGNdxc3gD3V27N0kwOEY0GxmL/2sEnneOr9ba
         TGuhbQJ3S5lFxCepirR9VCXiXpiVQvKjLACOqlEeibJ1K3BkrX/zcH1++lnd2fXM+8Bc
         9NeD52WpJLzmTvKDm2rOvYdQDq8Jdc7dVN0XJggdBDpSmRHgLrEDKmRmhPXTa3pcGB3J
         JzgJWN2XGmj5RfUef9NPe3DYgsPmeerKanF56aES5bkvYFMXaIa9vr7ZCHpfW8vqSEWF
         cOjpNVVyq+Q/2wi1n4TJhqK7TQnkNpvEa4+yI3uCIS+a5HXkj9NVhXib8hc4YZBiaFgL
         ZDsg==
X-Gm-Message-State: AOAM531tjXVlDaSQEhCXPt0VRQrvp4wN3o61xqEcwdvRd4xU1S8Fekeo
        mIomExKgizt8v5fgBSY1F1qQJA==
X-Google-Smtp-Source: ABdhPJx3LZcJukcrbcfsvVeDaJoyiQ/nfSzhVWYY535qQUouD5lbapa7I6R4eHxKtQsFr1o+utk9LQ==
X-Received: by 2002:a62:4e01:0:b029:30b:fba7:1b62 with SMTP id c1-20020a624e010000b029030bfba71b62mr1489514pfb.66.1624794406628;
        Sun, 27 Jun 2021 04:46:46 -0700 (PDT)
Received: from localhost.localdomain.name ([182.69.217.12])
        by smtp.gmail.com with ESMTPSA id x21sm10768762pfu.211.2021.06.27.04.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 04:46:46 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        balbi@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 3/3] arm64: dts: qcom: Fix usb entries for SA8155p adp board
Date:   Sun, 27 Jun 2021 17:16:16 +0530
Message-Id: <20210627114616.717101-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210627114616.717101-1-bhupesh.sharma@linaro.org>
References: <20210627114616.717101-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SA8155p adp board has two USB A-type receptacles called
USB-portB and USB-portC respectively.

While USB-portB is a USB High-Speed connector/interface, the
USB-portC one is a USB 3.1 Super-Speed connector/interface.

Also the USB-portB is used as the USB emergency
download port (for image download purposes).

Enable both the ports on the board in USB Host mode (since all
the USB interfaces are brought out to USB Type A
connectors).

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 60 ++++++++++++++++++++----
 1 file changed, 51 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 0da7a3b8d1bf..5ae2ddc65f7e 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -307,10 +307,6 @@ &qupv3_id_1 {
 	status = "okay";
 };
 
-&tlmm {
-	gpio-reserved-ranges = <0 4>;
-};
-
 &uart2 {
 	status = "okay";
 };
@@ -337,6 +333,16 @@ &ufs_mem_phy {
 	vdda-pll-max-microamp = <18300>;
 };
 
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "host";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb2phy_ac_en1_default>;
+};
 
 &usb_1_hsphy {
 	status = "okay";
@@ -346,15 +352,51 @@ &usb_1_hsphy {
 };
 
 &usb_1_qmpphy {
+	status = "disabled";
+};
+
+&usb_2 {
 	status = "okay";
-	vdda-phy-supply = <&vreg_l8c_1p2>;
-	vdda-pll-supply = <&vdda_usb_ss_dp_core_1>;
 };
 
-&usb_1 {
+&usb_2_dwc3 {
+	dr_mode = "host";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb2phy_ac_en2_default>;
+};
+
+&usb_2_hsphy {
 	status = "okay";
+	vdda-pll-supply = <&vdd_usb_hs_core>;
+	vdda33-supply = <&vdda_usb_hs_3p1>;
+	vdda18-supply = <&vdda_usb_hs_1p8>;
 };
 
-&usb_1_dwc3 {
-	dr_mode = "peripheral";
+&usb_2_qmpphy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l8c_1p2>;
+	vdda-pll-supply = <&vdda_usb_ss_dp_core_1>;
+};
+
+&tlmm {
+	gpio-reserved-ranges = <0 4>;
+
+	usb2phy_ac_en1_default: usb2phy_ac_en1_default {
+		mux {
+			pins = "gpio113";
+			function = "usb2phy_ac";
+			bias-disable;
+			drive-strength = <2>;
+		};
+	};
+
+	usb2phy_ac_en2_default: usb2phy_ac_en2_default {
+		mux {
+			pins = "gpio123";
+			function = "usb2phy_ac";
+			bias-disable;
+			drive-strength = <2>;
+		};
+	};
 };
-- 
2.31.1

