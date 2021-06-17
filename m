Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 363263ABDC9
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 23:08:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232853AbhFQVKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 17:10:43 -0400
Received: from foss.arm.com ([217.140.110.172]:60160 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232580AbhFQVKn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 17 Jun 2021 17:10:43 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D147813A1;
        Thu, 17 Jun 2021 14:08:34 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2655C3F694;
        Thu, 17 Jun 2021 14:08:34 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: versatile: Fix up interrupt controller node names
Date:   Thu, 17 Jun 2021 22:08:24 +0100
Message-Id: <20210617210825.3064367-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Once the new schema interrupt-controller/arm,vic.yaml is added, we get
the below warnings:

        arch/arm/boot/dts/versatile-ab.dt.yaml:
        intc@10140000: $nodename:0: 'intc@10140000' does not match
        '^interrupt-controller(@[0-9a-f,]+)*$'

	arch/arm/boot/dts/versatile-ab.dt.yaml:
	intc@10140000: 'clear-mask' does not match any of the regexes

Fix the node names for the interrupt controller to conform
to the standard node name interrupt-controller@.. Also drop invalid
clear-mask property.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/boot/dts/versatile-ab.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/versatile-ab.dts b/arch/arm/boot/dts/versatile-ab.dts
index 37bd41ff8dff..151c0220047d 100644
--- a/arch/arm/boot/dts/versatile-ab.dts
+++ b/arch/arm/boot/dts/versatile-ab.dts
@@ -195,16 +195,15 @@ amba {
 		#size-cells = <1>;
 		ranges;
 
-		vic: intc@10140000 {
+		vic: interrupt-controller@10140000 {
 			compatible = "arm,versatile-vic";
 			interrupt-controller;
 			#interrupt-cells = <1>;
 			reg = <0x10140000 0x1000>;
-			clear-mask = <0xffffffff>;
 			valid-mask = <0xffffffff>;
 		};
 
-		sic: intc@10003000 {
+		sic: interrupt-controller@10003000 {
 			compatible = "arm,versatile-sic";
 			interrupt-controller;
 			#interrupt-cells = <1>;
-- 
2.25.1

