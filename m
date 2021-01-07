Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3D362EE82E
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 23:15:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727107AbhAGWP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 17:15:27 -0500
Received: from mail.kernel.org ([198.145.29.99]:39628 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726646AbhAGWP1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 Jan 2021 17:15:27 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5093A235FD;
        Thu,  7 Jan 2021 22:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610057686;
        bh=YwZkqDS6D3/GJ/dUJLr6pzBaV1SyqJYkZ16uF/RPKuo=;
        h=From:To:Cc:Subject:Date:From;
        b=IBnJ2qdh83l2ucWuF+ySdS9FSUXQcigDqmPiixgzWN2bOgjNULTcSZ5sR8nYyI3vT
         QSOnhjCi4I5aSzB7pG0s8nJu57yi8vcHJeqFNkxvCaHNQnZiUH/hMFl/vV3Ll6m/OK
         gl++55veq1JbnXDgxo7J8vT5/KU0uh/9pcDZA06XgfJe09p/b7neItZlTVKLhz49jR
         QeqnC/QxWGNwfiBdDvB0o2E1cIUwFzlOIuZq47byUlTfbIKoic96K6MBQt4WDCdDxy
         e+g7Eos/ZuPKnsc8emyv5pXtFEuZqUWIOy804z4GW46cklGVRBXWLM05GCbf0RJbnN
         H10zGfjNaal1g==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: arria10: add PMU node
Date:   Thu,  7 Jan 2021 16:14:40 -0600
Message-Id: <20210107221440.2473188-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the PMU node for Arria10.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 0013ec3463c4..a574ea91d9d3 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -15,13 +15,13 @@ cpus {
 		#size-cells = <0>;
 		enable-method = "altr,socfpga-a10-smp";
 
-		cpu@0 {
+		cpu0: cpu@0 {
 			compatible = "arm,cortex-a9";
 			device_type = "cpu";
 			reg = <0>;
 			next-level-cache = <&L2>;
 		};
-		cpu@1 {
+		cpu1: cpu@1 {
 			compatible = "arm,cortex-a9";
 			device_type = "cpu";
 			reg = <1>;
@@ -29,6 +29,15 @@ cpu@1 {
 		};
 	};
 
+	pmu: pmu@ff111000 {
+		compatible = "arm,cortex-a9-pmu";
+		interrupt-parent = <&intc>;
+		interrupts = <0 124 4>, <0 125 4>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+		reg = <0xff111000 0x1000>,
+		      <0xff113000 0x1000>;
+	};
+
 	intc: intc@ffffd000 {
 		compatible = "arm,cortex-a9-gic";
 		#interrupt-cells = <3>;
-- 
2.30.0

