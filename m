Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3BA7417D13
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 23:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343960AbhIXVn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 17:43:58 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:43720 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344112AbhIXVn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 17:43:58 -0400
Received: by mail-ot1-f43.google.com with SMTP id x33-20020a9d37a4000000b0054733a85462so14997062otb.10
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 14:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+/fvQg20iBFDiPz9bOlXZXEzpE1Xs1+ILaT2iSh2gFc=;
        b=Px2JW7sNRGeqXPIPZ+KOPe2tAu05F6LsIbLIZYXAFOnwAgXTxrVimpEQlqtFGcKV6M
         hEsIb+kv0ctbLOixD71cANuL/86wURMjwXKTXymBi2XyTy3COWP6Mfs+BeVQLHAPakL3
         15cws/nTF6Qzh057fRJ8Rb2Y4EpjXd4NvJi7VQEnu7hOZwm1QsGQJ+ZjGmT89OnaamZk
         AW3Usum0z27pauUoB90kFqbOfq+uXa7SGd94MRPUgeluHSrZW9XsODBvs9yeaBGZkmpL
         wzy5spXv+tEI9ne/GkoQEiDwe+VzLy0sNXQE0O8jZgV7b+UMLy//mFW6fmvCSYn4O5Mw
         9Vhg==
X-Gm-Message-State: AOAM530JtmpCPQ0HkFvs33bMPdBVtA5Y7y+NCgrv4HQnYZ9ic/ZHgj/s
        s0wotD4LHe2nXLKX8I8sww==
X-Google-Smtp-Source: ABdhPJx1W2Y2tF4H1uvlymq8s0AqGX2e6hiULRU5lq5SUI3XeBl01ijgBFP27QqDSBqhm81P4/JbPw==
X-Received: by 2002:a9d:72d5:: with SMTP id d21mr6263981otk.181.1632519743104;
        Fri, 24 Sep 2021 14:42:23 -0700 (PDT)
Received: from xps15.herring.priv (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.googlemail.com with ESMTPSA id d14sm2341799otq.65.2021.09.24.14.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 14:42:22 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org,
        Guillaume Tucker <guillaume.tucker@collabora.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: dts: vexpress: Fix motherboard bus 'interrupt-map'
Date:   Fri, 24 Sep 2021 16:42:21 -0500
Message-Id: <20210924214221.1877686-1-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 078fb7aa6a83 ("arm: dts: vexpress: Fix addressing issues with
'motherboard-bus' nodes") broke booting on a couple of 32-bit VExpress
boards. The problem is #address-cells size changed, but interrupt-map
was not updated. This results in the timer interrupt (and all the
other motherboard interrupts) not getting mapped.

As the 'interrupt-map' properties are all just duplicates across boards,
just move them into vexpress-v2m.dtsi and vexpress-v2m-rs1.dtsi.
Strictly speaking, 'interrupt-map' is dependent on the parent
interrupt controller, but it's not likely we'll ever have a different
parent than GICv2 on these old platforms. If there was one,
'interrupt-map' can still be overridden.

Fixes: 078fb7aa6a83 ("arm: dts: vexpress: Fix addressing issues with 'motherboard-bus' nodes")
Reported-by: Reported-by: "kernelci.org bot" <bot@kernelci.org>
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
I tested this on QEMU VExpress CA9. I also added a check to dtc for 
'interrupt-map' to catch this kind of error. I need to run it on the 
rest of the tree and upstream it before enabling in the kernel.

Rob

 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi       | 47 ++++++++++++++++++
 arch/arm/boot/dts/vexpress-v2m.dtsi           | 47 ++++++++++++++++++
 arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts   | 46 ------------------
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts    | 46 ------------------
 arch/arm/boot/dts/vexpress-v2p-ca5s.dts       | 46 ------------------
 arch/arm/boot/dts/vexpress-v2p-ca9.dts        | 48 -------------------
 .../boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts | 45 -----------------
 7 files changed, 94 insertions(+), 231 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index fba456bb741a..16cb54c21aef 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -17,6 +17,7 @@
  * TAKE CARE WHEN MAINTAINING THIS FILE TO PROPAGATE ANY RELEVANT
  * CHANGES TO vexpress-v2m.dtsi!
  */
+#include <dt-bindings/interrupt-controller/arm-gic.h>
 
 / {
 	v2m_fixed_3v3: fixed-regulator-0 {
@@ -105,6 +106,52 @@ bus@8000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 63>;
+		interrupt-map = <0  0 &gic GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
+				<0  1 &gic GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
+				<0  2 &gic GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
+				<0  3 &gic GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
+				<0  4 &gic GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
+				<0  5 &gic GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
+				<0  6 &gic GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
+				<0  7 &gic GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
+				<0  8 &gic GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
+				<0  9 &gic GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
+				<0 10 &gic GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				<0 11 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+				<0 12 &gic GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				<0 13 &gic GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+				<0 14 &gic GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+				<0 15 &gic GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+				<0 16 &gic GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+				<0 17 &gic GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+				<0 18 &gic GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+				<0 19 &gic GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+				<0 20 &gic GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+				<0 21 &gic GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+				<0 22 &gic GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+				<0 23 &gic GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
+				<0 24 &gic GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+				<0 25 &gic GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
+				<0 26 &gic GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+				<0 27 &gic GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+				<0 28 &gic GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
+				<0 29 &gic GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
+				<0 30 &gic GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				<0 31 &gic GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				<0 32 &gic GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+				<0 33 &gic GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+				<0 34 &gic GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+				<0 35 &gic GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+				<0 36 &gic GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+				<0 37 &gic GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+				<0 38 &gic GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+				<0 39 &gic GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+				<0 40 &gic GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+				<0 41 &gic GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+				<0 42 &gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+
 		motherboard-bus@8000000 {
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index 0547f633764f..f434fe5cf4a1 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -17,6 +17,7 @@
  * TAKE CARE WHEN MAINTAINING THIS FILE TO PROPAGATE ANY RELEVANT
  * CHANGES TO vexpress-v2m-rs1.dtsi!
  */
+#include <dt-bindings/interrupt-controller/arm-gic.h>
 
 / {
 	bus@40000000 {
@@ -26,6 +27,52 @@ bus@40000000 {
 		ranges = <0x40000000 0x40000000 0x10000000>,
 			 <0x10000000 0x10000000 0x00020000>;
 
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 63>;
+		interrupt-map = <0  0 &gic GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
+				<0  1 &gic GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
+				<0  2 &gic GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
+				<0  3 &gic GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
+				<0  4 &gic GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
+				<0  5 &gic GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
+				<0  6 &gic GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
+				<0  7 &gic GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
+				<0  8 &gic GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
+				<0  9 &gic GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
+				<0 10 &gic GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				<0 11 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+				<0 12 &gic GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				<0 13 &gic GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+				<0 14 &gic GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+				<0 15 &gic GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+				<0 16 &gic GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+				<0 17 &gic GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+				<0 18 &gic GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+				<0 19 &gic GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+				<0 20 &gic GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+				<0 21 &gic GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+				<0 22 &gic GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+				<0 23 &gic GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
+				<0 24 &gic GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+				<0 25 &gic GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
+				<0 26 &gic GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+				<0 27 &gic GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+				<0 28 &gic GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
+				<0 29 &gic GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
+				<0 30 &gic GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				<0 31 &gic GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				<0 32 &gic GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+				<0 33 &gic GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+				<0 34 &gic GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+				<0 35 &gic GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+				<0 36 &gic GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+				<0 37 &gic GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+				<0 38 &gic GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+				<0 39 &gic GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+				<0 40 &gic GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+				<0 41 &gic GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+				<0 42 &gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+
 		motherboard-bus@40000000 {
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
index 7fb387a7f81b..679537e17ff5 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
@@ -238,52 +238,6 @@ energy {
 
 	bus@8000000 {
 		ranges = <0x8000000 0 0x8000000 0x18000000>;
-
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic 0  0 4>,
-				<0 0  1 &gic 0  1 4>,
-				<0 0  2 &gic 0  2 4>,
-				<0 0  3 &gic 0  3 4>,
-				<0 0  4 &gic 0  4 4>,
-				<0 0  5 &gic 0  5 4>,
-				<0 0  6 &gic 0  6 4>,
-				<0 0  7 &gic 0  7 4>,
-				<0 0  8 &gic 0  8 4>,
-				<0 0  9 &gic 0  9 4>,
-				<0 0 10 &gic 0 10 4>,
-				<0 0 11 &gic 0 11 4>,
-				<0 0 12 &gic 0 12 4>,
-				<0 0 13 &gic 0 13 4>,
-				<0 0 14 &gic 0 14 4>,
-				<0 0 15 &gic 0 15 4>,
-				<0 0 16 &gic 0 16 4>,
-				<0 0 17 &gic 0 17 4>,
-				<0 0 18 &gic 0 18 4>,
-				<0 0 19 &gic 0 19 4>,
-				<0 0 20 &gic 0 20 4>,
-				<0 0 21 &gic 0 21 4>,
-				<0 0 22 &gic 0 22 4>,
-				<0 0 23 &gic 0 23 4>,
-				<0 0 24 &gic 0 24 4>,
-				<0 0 25 &gic 0 25 4>,
-				<0 0 26 &gic 0 26 4>,
-				<0 0 27 &gic 0 27 4>,
-				<0 0 28 &gic 0 28 4>,
-				<0 0 29 &gic 0 29 4>,
-				<0 0 30 &gic 0 30 4>,
-				<0 0 31 &gic 0 31 4>,
-				<0 0 32 &gic 0 32 4>,
-				<0 0 33 &gic 0 33 4>,
-				<0 0 34 &gic 0 34 4>,
-				<0 0 35 &gic 0 35 4>,
-				<0 0 36 &gic 0 36 4>,
-				<0 0 37 &gic 0 37 4>,
-				<0 0 38 &gic 0 38 4>,
-				<0 0 39 &gic 0 39 4>,
-				<0 0 40 &gic 0 40 4>,
-				<0 0 41 &gic 0 41 4>,
-				<0 0 42 &gic 0 42 4>;
 	};
 
 	site2: hsb@40000000 {
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index f81d14753273..511e87cc2bc5 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -610,52 +610,6 @@ etm2_out_port: endpoint {
 
 	smb: bus@8000000 {
 		ranges = <0x8000000 0 0x8000000 0x18000000>;
-
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic 0  0 4>,
-				<0 0  1 &gic 0  1 4>,
-				<0 0  2 &gic 0  2 4>,
-				<0 0  3 &gic 0  3 4>,
-				<0 0  4 &gic 0  4 4>,
-				<0 0  5 &gic 0  5 4>,
-				<0 0  6 &gic 0  6 4>,
-				<0 0  7 &gic 0  7 4>,
-				<0 0  8 &gic 0  8 4>,
-				<0 0  9 &gic 0  9 4>,
-				<0 0 10 &gic 0 10 4>,
-				<0 0 11 &gic 0 11 4>,
-				<0 0 12 &gic 0 12 4>,
-				<0 0 13 &gic 0 13 4>,
-				<0 0 14 &gic 0 14 4>,
-				<0 0 15 &gic 0 15 4>,
-				<0 0 16 &gic 0 16 4>,
-				<0 0 17 &gic 0 17 4>,
-				<0 0 18 &gic 0 18 4>,
-				<0 0 19 &gic 0 19 4>,
-				<0 0 20 &gic 0 20 4>,
-				<0 0 21 &gic 0 21 4>,
-				<0 0 22 &gic 0 22 4>,
-				<0 0 23 &gic 0 23 4>,
-				<0 0 24 &gic 0 24 4>,
-				<0 0 25 &gic 0 25 4>,
-				<0 0 26 &gic 0 26 4>,
-				<0 0 27 &gic 0 27 4>,
-				<0 0 28 &gic 0 28 4>,
-				<0 0 29 &gic 0 29 4>,
-				<0 0 30 &gic 0 30 4>,
-				<0 0 31 &gic 0 31 4>,
-				<0 0 32 &gic 0 32 4>,
-				<0 0 33 &gic 0 33 4>,
-				<0 0 34 &gic 0 34 4>,
-				<0 0 35 &gic 0 35 4>,
-				<0 0 36 &gic 0 36 4>,
-				<0 0 37 &gic 0 37 4>,
-				<0 0 38 &gic 0 38 4>,
-				<0 0 39 &gic 0 39 4>,
-				<0 0 40 &gic 0 40 4>,
-				<0 0 41 &gic 0 41 4>,
-				<0 0 42 &gic 0 42 4>;
 	};
 
 	site2: hsb@40000000 {
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
index 42dbf606b1e2..3b88209bacea 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
@@ -208,52 +208,6 @@ temp-dcc {
 
 	smb: bus@8000000 {
 		ranges = <0 0x8000000 0x18000000>;
-
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic 0  0 4>,
-				<0 0  1 &gic 0  1 4>,
-				<0 0  2 &gic 0  2 4>,
-				<0 0  3 &gic 0  3 4>,
-				<0 0  4 &gic 0  4 4>,
-				<0 0  5 &gic 0  5 4>,
-				<0 0  6 &gic 0  6 4>,
-				<0 0  7 &gic 0  7 4>,
-				<0 0  8 &gic 0  8 4>,
-				<0 0  9 &gic 0  9 4>,
-				<0 0 10 &gic 0 10 4>,
-				<0 0 11 &gic 0 11 4>,
-				<0 0 12 &gic 0 12 4>,
-				<0 0 13 &gic 0 13 4>,
-				<0 0 14 &gic 0 14 4>,
-				<0 0 15 &gic 0 15 4>,
-				<0 0 16 &gic 0 16 4>,
-				<0 0 17 &gic 0 17 4>,
-				<0 0 18 &gic 0 18 4>,
-				<0 0 19 &gic 0 19 4>,
-				<0 0 20 &gic 0 20 4>,
-				<0 0 21 &gic 0 21 4>,
-				<0 0 22 &gic 0 22 4>,
-				<0 0 23 &gic 0 23 4>,
-				<0 0 24 &gic 0 24 4>,
-				<0 0 25 &gic 0 25 4>,
-				<0 0 26 &gic 0 26 4>,
-				<0 0 27 &gic 0 27 4>,
-				<0 0 28 &gic 0 28 4>,
-				<0 0 29 &gic 0 29 4>,
-				<0 0 30 &gic 0 30 4>,
-				<0 0 31 &gic 0 31 4>,
-				<0 0 32 &gic 0 32 4>,
-				<0 0 33 &gic 0 33 4>,
-				<0 0 34 &gic 0 34 4>,
-				<0 0 35 &gic 0 35 4>,
-				<0 0 36 &gic 0 36 4>,
-				<0 0 37 &gic 0 37 4>,
-				<0 0 38 &gic 0 38 4>,
-				<0 0 39 &gic 0 39 4>,
-				<0 0 40 &gic 0 40 4>,
-				<0 0 41 &gic 0 41 4>,
-				<0 0 42 &gic 0 42 4>;
 	};
 
 	site2: hsb@40000000 {
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
index 99b2f339cc04..5916e4877eac 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
@@ -295,54 +295,6 @@ power-vd10-s3 {
 		};
 	};
 
-	smb: bus@40000000 {
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic 0  0 4>,
-				<0 0  1 &gic 0  1 4>,
-				<0 0  2 &gic 0  2 4>,
-				<0 0  3 &gic 0  3 4>,
-				<0 0  4 &gic 0  4 4>,
-				<0 0  5 &gic 0  5 4>,
-				<0 0  6 &gic 0  6 4>,
-				<0 0  7 &gic 0  7 4>,
-				<0 0  8 &gic 0  8 4>,
-				<0 0  9 &gic 0  9 4>,
-				<0 0 10 &gic 0 10 4>,
-				<0 0 11 &gic 0 11 4>,
-				<0 0 12 &gic 0 12 4>,
-				<0 0 13 &gic 0 13 4>,
-				<0 0 14 &gic 0 14 4>,
-				<0 0 15 &gic 0 15 4>,
-				<0 0 16 &gic 0 16 4>,
-				<0 0 17 &gic 0 17 4>,
-				<0 0 18 &gic 0 18 4>,
-				<0 0 19 &gic 0 19 4>,
-				<0 0 20 &gic 0 20 4>,
-				<0 0 21 &gic 0 21 4>,
-				<0 0 22 &gic 0 22 4>,
-				<0 0 23 &gic 0 23 4>,
-				<0 0 24 &gic 0 24 4>,
-				<0 0 25 &gic 0 25 4>,
-				<0 0 26 &gic 0 26 4>,
-				<0 0 27 &gic 0 27 4>,
-				<0 0 28 &gic 0 28 4>,
-				<0 0 29 &gic 0 29 4>,
-				<0 0 30 &gic 0 30 4>,
-				<0 0 31 &gic 0 31 4>,
-				<0 0 32 &gic 0 32 4>,
-				<0 0 33 &gic 0 33 4>,
-				<0 0 34 &gic 0 34 4>,
-				<0 0 35 &gic 0 35 4>,
-				<0 0 36 &gic 0 36 4>,
-				<0 0 37 &gic 0 37 4>,
-				<0 0 38 &gic 0 38 4>,
-				<0 0 39 &gic 0 39 4>,
-				<0 0 40 &gic 0 40 4>,
-				<0 0 41 &gic 0 41 4>,
-				<0 0 42 &gic 0 42 4>;
-	};
-
 	site2: hsb@e0000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
index 5f6a5951adef..5b6d9d8e934d 100644
--- a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
+++ b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
@@ -146,50 +146,5 @@ temp-fpga {
 
 	smb: bus@8000000 {
 		ranges = <0x8000000 0 0x8000000 0x18000000>;
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  1 &gic GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  2 &gic GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  3 &gic GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  4 &gic GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  5 &gic GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  6 &gic GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  7 &gic GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  8 &gic GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  9 &gic GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 10 &gic GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 11 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 12 &gic GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 13 &gic GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 14 &gic GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 15 &gic GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 16 &gic GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 17 &gic GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 18 &gic GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 19 &gic GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 20 &gic GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 21 &gic GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 22 &gic GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 23 &gic GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 24 &gic GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 25 &gic GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 26 &gic GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 27 &gic GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 28 &gic GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 29 &gic GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 30 &gic GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 31 &gic GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 32 &gic GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 33 &gic GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 34 &gic GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 35 &gic GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 36 &gic GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 37 &gic GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 38 &gic GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 39 &gic GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 40 &gic GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 41 &gic GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 42 &gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 	};
 };
-- 
2.30.2

