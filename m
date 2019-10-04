Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3A4D1CBD16
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388776AbfJDO1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:27:47 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:56069 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388625AbfJDO1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:27:47 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9E997C000E;
        Fri,  4 Oct 2019 14:27:44 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Ben Peled <bpeled@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 03/21] dt-bindings: ap80x: replace AP806 with AP80x
Date:   Fri,  4 Oct 2019 16:27:20 +0200
Message-Id: <20191004142738.7370-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ben Peled <bpeled@marvell.com>

Rename the text file and update "AP806" into "AP806/AP807" where
relevant.

Signed-off-by: Ben Peled <bpeled@marvell.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 ...-controller.txt => ap80x-system-controller.txt} | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)
 rename Documentation/devicetree/bindings/arm/marvell/{ap806-system-controller.txt => ap80x-system-controller.txt} (91%)

diff --git a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt b/Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
similarity index 91%
rename from Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
rename to Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
index 26410fbb85be..098d932fc963 100644
--- a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
@@ -1,15 +1,15 @@
-Marvell Armada AP806 System Controller
+Marvell Armada AP80x System Controller
 ======================================
 
-The AP806 is one of the two core HW blocks of the Marvell Armada 7K/8K
-SoCs. It contains system controllers, which provide several registers
-giving access to numerous features: clocks, pin-muxing and many other
-SoC configuration items. This DT binding allows to describe these
-system controllers.
+The AP806/AP807 is one of the two core HW blocks of the Marvell Armada
+7K/8K/931x SoCs. It contains system controllers, which provide several
+registers giving access to numerous features: clocks, pin-muxing and
+many other SoC configuration items. This DT binding allows to describe
+these system controllers.
 
 For the top level node:
  - compatible: must be: "syscon", "simple-mfd";
- - reg: register area of the AP806 system controller
+ - reg: register area of the AP80x system controller
 
 SYSTEM CONTROLLER 0
 ===================
-- 
2.20.1

