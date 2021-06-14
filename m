Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 638553A6A15
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233545AbhFNP2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233489AbhFNP2O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:14 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C57D6C0613A4
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:57 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id t3so47083350edc.7
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kQrvzT3HMIq/VUwAv4dTR2eeSkMJZ0iueuT25ug4iCA=;
        b=BCTPch/Zz2IvSimcHKlQbu+xczjdoFt17x3iNgJglVbKtQwucpN0M8w8MJbwaIUj1t
         ZBGkH2diKQeknOD15bYw6sK9I3Sr5LZTbr2rLiBotss6bbWBN0N/Mm2YlLTgU631xFtY
         Pn7R3hWUUvvEaP12BL/s50Nnv9oVv9fP1NcPtRdG4lafeWUqcMuwxDwhRPG53AdMwgex
         M8QDgFESd+rxQUzw9S0XnlVrlU9xRyxrnUylpvia521unEApzHBRw8id15vgFHT/Jb07
         h5Jb8s/fjLVmzc+nlTV4SfNUdhdFpT3ODGYK7L7blk+6pSI2N9vr0woJRYEkHNr1p9CM
         9IWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=kQrvzT3HMIq/VUwAv4dTR2eeSkMJZ0iueuT25ug4iCA=;
        b=OirNOKLTmw+hiG8sCrjkusS/VDsu+TcGvdxI84+NOd0NGZnQ6F2kYSGGu9mids6YjI
         HjoafeDNgcC/w9HVRQysTtZs+5bGomuFRai3atPpvttbQPB+AEtXC1T/y9CH6JCXD6rs
         0uCfQdeVb3Gro+Nxr349Qxt3LDfWdnodcuVy+HpRJJCzmP59haOOH/czNUX8moz2XgHM
         2xxisrw6ckIsEjyllVUcKxOVR6xKrWboeRfDhxxezMvHpfQbiooCajdfwZ0iryxvBuKP
         XmpnZ9jjHSSNn/WKa1OEv4YiIxgCcJyLANqo5Qul9lkbPyhT7xUtBZDZll1QXYO4Nx+W
         gqqQ==
X-Gm-Message-State: AOAM530pXAsk8lduCuefX8/HtZt3JDJ0UdhmhPvNKW9PPWE0Jy0NUCWs
        jOekvxiv3r1GR+kxBeJ4/kqfgIs0SdIqlZUw
X-Google-Smtp-Source: ABdhPJzx/0wJqNFGnfGuym0x8al3TBoobZMyUCqznLhmIV9ewv4+diD0kJ0rKPVC9XmW19qoS+Ii4A==
X-Received: by 2002:aa7:de1a:: with SMTP id h26mr17365903edv.176.1623684356457;
        Mon, 14 Jun 2021 08:25:56 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id a7sm7482393ejr.110.2021.06.14.08.25.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:56 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/33] arm64: zynqmp: Add phy description for usb3.0
Date:   Mon, 14 Jun 2021 17:25:17 +0200
Message-Id: <cd856e5f87bc967373691d04e79de3d0022ef424.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

usb3.0 requires serdes setting that's why also wire it up.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 6 ++++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 3 +++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 3 +++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts | 3 +++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 3 +++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 3 +++
 6 files changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index 4622e173d262..80415e202814 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -538,6 +538,9 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "peripheral";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 0>;
+	maximum-speed = "super-speed";
 };
 
 /* ULPI SMSC USB3320 */
@@ -546,6 +549,9 @@ &usb1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb1_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 3 PHY_TYPE_USB3 1 0>;
+	maximum-speed = "super-speed";
 };
 
 &watchdog0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index b37aee2d85b9..719a9e5e1b01 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -979,6 +979,9 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
 
 &watchdog0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 7e1b024f71e1..d7ecfcadd08b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -469,6 +469,9 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
 
 &watchdog0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index b140fd2c86aa..403a8ea6a36f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -491,6 +491,9 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
 
 &watchdog0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 4919cdec835b..186d2e00d4a0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -985,6 +985,9 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
 
 &watchdog0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index b0c2eae1b4b3..0bf29ff9c714 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -811,6 +811,9 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
 
 &zynqmp_dpdma {
-- 
2.32.0

