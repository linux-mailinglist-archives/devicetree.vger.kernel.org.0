Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 938DA255EC
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 18:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728103AbfEUQok (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 12:44:40 -0400
Received: from foss.arm.com ([217.140.101.70]:38642 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727990AbfEUQok (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 12:44:40 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D50715A2;
        Tue, 21 May 2019 09:44:39 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com [10.1.196.75])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6D88F3F73F;
        Tue, 21 May 2019 09:44:38 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/2] dt-bindings: arm: Clean up CPU binding examples
Date:   Tue, 21 May 2019 17:44:27 +0100
Message-Id: <fe070f591d5e07042062b6b07a701feab324ee2c.1558456785.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
References: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Following commit 31af04cd60d3 ("arm64: dts: Remove inconsistent use of
'arm,armv8' compatible string"), clean up these binding examples in case
anyone is tempted to copy them.

CC: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/arm/arm-boards     |  4 ++--
 .../devicetree/bindings/arm/cpu-capacity.txt         | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm-boards b/Documentation/devicetree/bindings/arm/arm-boards
index b6e810c2781a..abff8d834a6a 100644
--- a/Documentation/devicetree/bindings/arm/arm-boards
+++ b/Documentation/devicetree/bindings/arm/arm-boards
@@ -216,7 +216,7 @@ Example:
 		#size-cells = <0>;
 
 		A57_0: cpu@0 {
-			compatible = "arm,cortex-a57","arm,armv8";
+			compatible = "arm,cortex-a57";
 			reg = <0x0 0x0>;
 			device_type = "cpu";
 			enable-method = "psci";
@@ -225,7 +225,7 @@ Example:
 		.....
 
 		A53_0: cpu@100 {
-			compatible = "arm,cortex-a53","arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0x0 0x100>;
 			device_type = "cpu";
 			enable-method = "psci";
diff --git a/Documentation/devicetree/bindings/arm/cpu-capacity.txt b/Documentation/devicetree/bindings/arm/cpu-capacity.txt
index 96fa46cb133c..380e21c5fc7e 100644
--- a/Documentation/devicetree/bindings/arm/cpu-capacity.txt
+++ b/Documentation/devicetree/bindings/arm/cpu-capacity.txt
@@ -118,7 +118,7 @@ cpus {
 	};
 
 	A57_0: cpu@0 {
-		compatible = "arm,cortex-a57","arm,armv8";
+		compatible = "arm,cortex-a57";
 		reg = <0x0 0x0>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -129,7 +129,7 @@ cpus {
 	};
 
 	A57_1: cpu@1 {
-		compatible = "arm,cortex-a57","arm,armv8";
+		compatible = "arm,cortex-a57";
 		reg = <0x0 0x1>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -140,7 +140,7 @@ cpus {
 	};
 
 	A53_0: cpu@100 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x100>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -151,7 +151,7 @@ cpus {
 	};
 
 	A53_1: cpu@101 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x101>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -162,7 +162,7 @@ cpus {
 	};
 
 	A53_2: cpu@102 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x102>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -173,7 +173,7 @@ cpus {
 	};
 
 	A53_3: cpu@103 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x103>;
 		device_type = "cpu";
 		enable-method = "psci";
-- 
2.21.0.dirty

