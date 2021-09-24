Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82D4A417D3A
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 23:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbhIXVuU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 17:50:20 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:43889 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235048AbhIXVuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 17:50:20 -0400
Received: by mail-oi1-f175.google.com with SMTP id w19so16355081oik.10
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 14:48:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EqB/107ryJNK8IwVLNIcwTeFh3xrVqVT6kfeO/feeU8=;
        b=U8jzfWkKS9vRnmPFAo7vbVkj1iC1f8jzBWdfgiZe+MMGH/2da3Xoz1032qB4HmIf7z
         WzrS61tphnZ3/G+nCUf7lEiKJmVQ2igBinRJ0gIe4dAQm9LvdwlUqArwLf1uTfrTEA5T
         jFR2yt5dU7bgVYj0CADF1E8DmUHbGliNOFHtLDNU9xlYt+cN1tsm2Q02Uo/Tnfr9P2mG
         5n3+FzuZxBTytMLDaZ7upXbRIQmcjbPVeIEuT72QgsqiJKYy2IMSQ+BLicCW65qyTJf1
         Ik3cgPJbk9zxedEb5CvLp7D9vawfWNIjYiDCUiShIMOYtzHfS6AXbJNfHgCX/mHfTt9b
         rsfA==
X-Gm-Message-State: AOAM533EqDwUd5qOibK6XTx96nI++cCgcdknEAON8SqLALWwoIE2VsI7
        NmWcBY9mewCwKnoUQtt9DQio/pzVwA==
X-Google-Smtp-Source: ABdhPJxe7F0OWG/DIar2q7i89R+dVko0XmssiHHsoP6kHTJtSVh7Upp6xn5FRQGUjLpQfOXm4KUxGA==
X-Received: by 2002:a05:6808:2113:: with SMTP id r19mr3191993oiw.69.1632520126389;
        Fri, 24 Sep 2021 14:48:46 -0700 (PDT)
Received: from xps15.herring.priv (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.googlemail.com with ESMTPSA id d23sm2441909ook.47.2021.09.24.14.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 14:48:45 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH] arm: dts: vexpress: Set chosen 'stdout-path'
Date:   Fri, 24 Sep 2021 16:48:44 -0500
Message-Id: <20210924214844.1890478-1-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Using chosen 'stdout-path' is the preferred way to set the console, but
several Arm, Ltd. platforms don't set it. Set it to the 1st serial port.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
RFC because I don't have any idea what the baud rate is for real boards. 
If anyone knows, please comment and I'll add it.

 arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts | 4 +++-
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts  | 4 +++-
 arch/arm/boot/dts/vexpress-v2p-ca5s.dts     | 4 +++-
 arch/arm/boot/dts/vexpress-v2p-ca9.dts      | 4 +++-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi  | 4 +++-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts   | 4 +++-
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts  | 4 +++-
 7 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
index 679537e17ff5..c296a3677447 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
@@ -20,7 +20,9 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 511e87cc2bc5..7b7c1ec2f542 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -20,7 +20,9 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
index 3b88209bacea..9b70ae1d3e35 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
@@ -20,7 +20,9 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
index 5916e4877eac..4eef3db16b3d 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
@@ -20,7 +20,9 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index fbf13f7c2baf..6eb14717cb4d 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -18,7 +18,9 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 5f519affe728..a6165a472a7b 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -24,7 +24,9 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
index 258991ad7cc0..f8dee952cefc 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
@@ -23,7 +23,9 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	chosen { };
+	chosen {
+		stdout-path = "serial0";
+	};
 
 	aliases {
 		serial0 = &v2m_serial0;
-- 
2.30.2

