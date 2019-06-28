Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22378591F0
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 05:25:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727054AbfF1DZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 23:25:55 -0400
Received: from anchovy1.45ru.net.au ([203.30.46.145]:34258 "EHLO
        anchovy1.45ru.net.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726918AbfF1DZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 23:25:55 -0400
X-Greylist: delayed 399 seconds by postgrey-1.27 at vger.kernel.org; Thu, 27 Jun 2019 23:25:54 EDT
Received: (qmail 16939 invoked by uid 5089); 28 Jun 2019 03:19:13 -0000
Received: by simscan 1.2.0 ppid: 16837, pid: 16839, t: 0.0327s
         scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL:  $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au) (preid@electromag.com.au@203.59.235.95)
  by anchovy1.45ru.net.au with ESMTPA; 28 Jun 2019 03:19:13 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
        id F303C2007789A; Fri, 28 Jun 2019 11:19:11 +0800 (AWST)
From:   Phil Reid <preid@electromag.com.au>
To:     mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, preid@electromag.com.au,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: cdce925: Add regulator documentation
Date:   Fri, 28 Jun 2019 11:19:09 +0800
Message-Id: <1561691950-42154-2-git-send-email-preid@electromag.com.au>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1561691950-42154-1-git-send-email-preid@electromag.com.au>
References: <1561691950-42154-1-git-send-email-preid@electromag.com.au>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cdce925 has two separate supply pins. Document the bindings
for them.

Signed-off-by: Phil Reid <preid@electromag.com.au>
---
 Documentation/devicetree/bindings/clock/ti,cdce925.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/ti,cdce925.txt b/Documentation/devicetree/bindings/clock/ti,cdce925.txt
index 0d01f2d..26544c8 100644
--- a/Documentation/devicetree/bindings/clock/ti,cdce925.txt
+++ b/Documentation/devicetree/bindings/clock/ti,cdce925.txt
@@ -24,6 +24,8 @@ Required properties:
 Optional properties:
  - xtal-load-pf: Crystal load-capacitor value to fine-tune performance on a
                  board, or to compensate for external influences.
+- vdd-supply: A regulator node for Vdd
+- vddout-supply: A regulator node for Vddout
 
 For all PLL1, PLL2, ... an optional child node can be used to specify spread
 spectrum clocking parameters for a board.
@@ -41,6 +43,8 @@ Example:
 		clocks = <&xtal_27Mhz>;
 		#clock-cells = <1>;
 		xtal-load-pf = <5>;
+		vdd-supply = <&1v8-reg>;
+		vddout-supply = <&3v3-reg>;
 		/* PLL options to get SSC 1% centered */
 		PLL2 {
 			spread-spectrum = <4>;
-- 
1.8.3.1

