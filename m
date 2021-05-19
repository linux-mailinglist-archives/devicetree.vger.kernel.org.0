Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3461389553
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231445AbhESSaX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:23 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:36391 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbhESSaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:20 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id E2EE8CB94D
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:11 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 0B2D2C000D;
        Wed, 19 May 2021 18:26:48 +0000 (UTC)
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
Subject: [PATCH v20 06/19] dt-binding: memory: pl353-smc: Drop unsupported nodes from the example
Date:   Wed, 19 May 2021 20:26:23 +0200
Message-Id: <20210519182636.1110080-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These nodes are given as examples and are not described nor used
anywhere else. There is also no hardware of my knowledge compatible with
these yet. If we want to be backward compatible, then we should avoid
partially describing nodes and their content while there are no users.
Plus, the examples are wrong (the addresses should be updated) so
let's drop them before converting this file to yaml (only the NAND node,
which will be fixed in the example and described somewhere else is
kept).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/memory-controllers/pl353-smc.txt          | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
index 9f65df034b45..f67715d95852 100644
--- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
@@ -38,14 +38,4 @@ Example:
 			compatible = "arm,pl353-nand-r2p1";
 			reg = <0 0 0x1000000>;
 		};
-
-		nor0: flash@e2000000 {
-			compatible = "cfi-flash";
-			reg = <1 0 0x2000000>;
-		};
-
-		nor1: flash@e4000000 {
-			compatible = "cfi-flash";
-			reg = <2 0 0x2000000>;
-		};
 	};
-- 
2.27.0

