Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C63C2389556
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231417AbhESSaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:24 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:36473 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231422AbhESSaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:21 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id 9E2ABC5E4D
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:17 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5BF4AC000F;
        Wed, 19 May 2021 18:26:55 +0000 (UTC)
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
Subject: [PATCH v20 09/19] dt-binding: memory: pl353-smc: Detail the main reg property content
Date:   Wed, 19 May 2021 20:26:26 +0200
Message-Id: <20210519182636.1110080-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe the two reg entries: the first one will receive the
subcontroller configuration, the second one is for the regular cycles on
the memory bus (eg. CMD, ADDR, DATA for a NAND device).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/memory-controllers/pl353-smc.txt        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
index 9d220d4cb39d..d388bb87365f 100644
--- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
@@ -6,6 +6,8 @@ of memory interfaces: NAND and memory mapped interfaces (such as SRAM or NOR).
 Required properties:
 - compatible		: Should be "arm,pl353-smc-r2p1", "arm,primecell".
 - reg			: Controller registers map and length.
+			  First entry is for the configuration registers,
+			  second entry covers the memory bus transfers.
 - clock-names		: List of input clock names - "memclk", "apb_pclk"
 			  (See clock bindings for details).
 - clocks		: Clock phandles (see clock bindings for details).
-- 
2.27.0

