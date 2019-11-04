Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 09C42EE4C9
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2019 17:39:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728876AbfKDQjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Nov 2019 11:39:02 -0500
Received: from foss.arm.com ([217.140.110.172]:46842 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727861AbfKDQjC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Nov 2019 11:39:02 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 062151F1;
        Mon,  4 Nov 2019 08:39:02 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7681B3F71A;
        Mon,  4 Nov 2019 08:39:00 -0800 (PST)
From:   Andrew Murray <andrew.murray@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Chris Zankel <chris@zankel.net>,
        Max Filippov <jcmvbkbc@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-xtensa@linux-xtensa.org
Subject: [PATCH v1 4/7] xtensa: dts: Use IRQ flags for legacy PCI IRQ interrupts
Date:   Mon,  4 Nov 2019 16:38:18 +0000
Message-Id: <20191104163834.8932-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191104163834.8932-1-andrew.murray@arm.com>
References: <20191104163834.8932-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace magic numbers used to describe legacy PCI IRQ interrupts
with #define.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/xtensa/boot/dts/virt.dts | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/xtensa/boot/dts/virt.dts b/arch/xtensa/boot/dts/virt.dts
index 611b98a02a65..14e9a7beac2d 100644
--- a/arch/xtensa/boot/dts/virt.dts
+++ b/arch/xtensa/boot/dts/virt.dts
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
+#include <dt-bindings/interrupt-controller/irq.h>
+
 / {
 	compatible = "cdns,xtensa-iss";
 	#address-cells = <1>;
@@ -61,12 +63,12 @@
 
 		     // PCI_DEVICE(3)  INT#(1)  CONTROLLER(PHANDLE)  CONTROLLER_DATA(2)
 		interrupt-map = <
-			0x0000 0x0 0x0  0x1  &pic  0x0 0x1
-			0x0800 0x0 0x0  0x1  &pic  0x1 0x1
-			0x1000 0x0 0x0  0x1  &pic  0x2 0x1
-			0x1800 0x0 0x0  0x1  &pic  0x3 0x1
+			0x0000 0x0 0x0  IRQ_INTA  &pic  0x0 0x1
+			0x0800 0x0 0x0  IRQ_INTA  &pic  0x1 0x1
+			0x1000 0x0 0x0  IRQ_INTA  &pic  0x2 0x1
+			0x1800 0x0 0x0  IRQ_INTA  &pic  0x3 0x1
 			>;
 
-		interrupt-map-mask = <0x1800 0x0 0x0  0x7>;
+		interrupt-map-mask = <0x1800 0x0 0x0 IRQ_INT_ALL>;
 	};
 };
-- 
2.21.0

