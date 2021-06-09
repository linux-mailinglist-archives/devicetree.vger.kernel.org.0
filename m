Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A6D53A132E
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:46:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239023AbhFILrz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:47:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238039AbhFILry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:47:54 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A179FC06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:45:46 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id o3so6753272wri.8
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TgZ5B4J502ii7Dy6GCLNVKtli/unOViiMaRQaClYuVI=;
        b=rSYkJPLEqoeYbB3sXP+5MCnQ0t70j4u5kRk1ljAgJyOul11NvFJwZynxEWANTep7v+
         1sdzv3ypm3QWK9y3kig3skcYg++N0UZlcG4STMM+zsMJwO/+A3f+OUaFEhWJdNbGwg6p
         rlfforaloP0ks6bVk5dbiHjgr8u68Hfzpd8Y4u9R4Ir3f2bd5E6JXeWBtYqWBQ7ChTqy
         UTXzgQT6JQOyN4qrpuhdbgINq0049UFQr8MbDv30zQXimKISyH3JxhYtPBnr0MSW+6G5
         zGbrpTHVmunlB2bOj8NAtLCTmnoFuV2o0wuVxUGsqFQPNzHBQ0fD8sH+Oc5ThsQPVlrj
         ZcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=TgZ5B4J502ii7Dy6GCLNVKtli/unOViiMaRQaClYuVI=;
        b=hEhdR5yhbJSg6/F0YsvdADAARX7F2eIl7l1276mRLaR7FpzIOhBPykM5Wm04zoYAB0
         4fxpkBgelkTT1PPZB6z11g2vMjBtKrqwX2teadMw0pikPogrT/AMcjyZschIf+DlJmpg
         vnhpSWuARz+k7fkuJS6hkZTaHeIcyivSoZeSccQFJio6z0MF6IYjTT6TD+DClsAVNFaN
         d+so5oBTApBHZmBzW94CLRCJljSZvhyqn9WwvLEhzAub0Nf5Y6iM5UdLVWDSJY8UgurF
         YqsaTIXI0BdwqgapTYdyhOQJJPQrL43cCo0EbDai73UuCNYAKPGe7f9ZZVliLUk/9ouy
         bPcQ==
X-Gm-Message-State: AOAM531y3d7ZrcwnXLlj3+0tZpOy0t0TlMj9G0Bk0IuBGCCo2m/K2snW
        dBeLVMzwzdmD/IZIZnlulgJWtQ==
X-Google-Smtp-Source: ABdhPJx+JfhhubBypEm5y+nRpda2i6WKRLjb8dclWxrl36b65HCEpQGNaUCkimjH85vz8bNMEeTyow==
X-Received: by 2002:adf:e5c7:: with SMTP id a7mr27471448wrn.117.1623239145245;
        Wed, 09 Jun 2021 04:45:45 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id k11sm5911750wmj.1.2021.06.09.04.45.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:44 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 14/31] arm64: zynqmp: Enable nand driver for dc2 and dc3
Date:   Wed,  9 Jun 2021 13:44:50 +0200
Message-Id: <e103821bdb717132559e780f1a4f4f6fefc95688.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add description for nand devices on zc1751 dc2 and dc3 boards.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    | 26 +++++++++++++++++++
 .../dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |  9 ++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index 1ac105a82e1b..4b4c19034fe1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -127,6 +127,32 @@ rtc@68 {
 	};
 };
 
+&nand0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nand0_default>;
+	arasan,has-mdma;
+
+	nand@0 {
+		reg = <0x0>;
+		#address-cells = <0x2>;
+		#size-cells = <0x1>;
+		nand-ecc-mode = "soft";
+		nand-ecc-algo = "bch";
+		nand-rb = <0>;
+		label = "main-storage-0";
+	};
+	nand@1 {
+		reg = <0x1>;
+		#address-cells = <0x2>;
+		#size-cells = <0x1>;
+		nand-ecc-mode = "soft";
+		nand-ecc-algo = "bch";
+		nand-rb = <0>;
+		label = "main-storage-1";
+	};
+};
+
 &pinctrl0 {
 	status = "okay";
 	pinctrl_can0_default: can0-default {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
index 4ea6ef5a7f2b..ba7f1f21c579 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm017-dc3
  *
- * (C) Copyright 2016 - 2019, Xilinx, Inc.
+ * (C) Copyright 2016 - 2021, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -107,6 +107,13 @@ &i2c1 {
 	clock-frequency = <400000>;
 };
 
+/* MT29F64G08AECDBJ4-6 */
+&nand0 {
+	status = "okay";
+	arasan,has-mdma;
+	num-cs = <2>;
+};
+
 &rtc {
 	status = "okay";
 };
-- 
2.31.1

