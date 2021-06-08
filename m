Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D6B239F99D
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 16:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233530AbhFHOxa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 10:53:30 -0400
Received: from foss.arm.com ([217.140.110.172]:60936 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233403AbhFHOx3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Jun 2021 10:53:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3CE16D;
        Tue,  8 Jun 2021 07:51:36 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 03E2B3F73D;
        Tue,  8 Jun 2021 07:51:35 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: juno: Update SCPI nodes as per the YAML schema
Date:   Tue,  8 Jun 2021 15:51:33 +0100
Message-Id: <20210608145133.2088631-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SCPI YAML schema expects standard node names for clocks and
power domain controllers. Fix those as per the schema for Juno
platforms.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 1cc7fdcec51b..8e7a66943b01 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -568,13 +568,13 @@ scpi {
 		clocks {
 			compatible = "arm,scpi-clocks";
 
-			scpi_dvfs: scpi-dvfs {
+			scpi_dvfs: clocks-0 {
 				compatible = "arm,scpi-dvfs-clocks";
 				#clock-cells = <1>;
 				clock-indices = <0>, <1>, <2>;
 				clock-output-names = "atlclk", "aplclk","gpuclk";
 			};
-			scpi_clk: scpi-clk {
+			scpi_clk: clocks-1 {
 				compatible = "arm,scpi-variable-clocks";
 				#clock-cells = <1>;
 				clock-indices = <3>;
@@ -582,7 +582,7 @@ scpi_clk: scpi-clk {
 			};
 		};
 
-		scpi_devpd: scpi-power-domains {
+		scpi_devpd: power-controller {
 			compatible = "arm,scpi-power-domains";
 			num-domains = <2>;
 			#power-domain-cells = <1>;
-- 
2.25.1

