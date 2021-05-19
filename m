Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9033438954F
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231423AbhESSaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:21 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:41755 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230242AbhESSaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:19 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id E07BACB6E0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:01 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 89F86C0008;
        Wed, 19 May 2021 18:26:39 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Helmut Grohne <helmut.grohne@intenta.de>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v20 01/19] dt-binding: memory: pl353-smc: Rephrase the binding
Date:   Wed, 19 May 2021 20:26:18 +0200
Message-Id: <20210519182636.1110080-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reword this document before converting it to yaml.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/memory-controllers/pl353-smc.txt         | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
index d56615fd343a..f0b7fe173668 100644
--- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
@@ -1,8 +1,7 @@
 Device tree bindings for ARM PL353 static memory controller
 
-PL353 static memory controller supports two kinds of memory
-interfaces.i.e NAND and SRAM/NOR interfaces.
-The actual devices are instantiated from the child nodes of pl353 smc node.
+PL353 Static Memory Controller is a bus where you can connect two kinds
+of memory interfaces: NAND and memory mapped interfaces (such as SRAM or NOR).
 
 Required properties:
 - compatible		: Should be "arm,pl353-smc-r2p1", "arm,primecell".
@@ -13,9 +12,9 @@ Required properties:
 - address-cells		: Must be 2.
 - size-cells		: Must be 1.
 
-Child nodes:
- For NAND the "arm,pl353-nand-r2p1" and for NOR the "cfi-flash" drivers are
-supported as child nodes.
+The child device node represents the controller connected to the SMC
+bus. Only one between: NAND controller, NOR controller and SRAM controller
+is allowed in a single system.
 
 for NAND partition information please refer the below file
 Documentation/devicetree/bindings/mtd/partition.txt
-- 
2.27.0

