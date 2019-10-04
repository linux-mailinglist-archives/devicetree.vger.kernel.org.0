Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8198ACBA2F
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 14:18:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725826AbfJDMSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 08:18:37 -0400
Received: from 3.mo6.mail-out.ovh.net ([178.33.253.26]:35951 "EHLO
        3.mo6.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727587AbfJDMSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 08:18:37 -0400
Received: from player792.ha.ovh.net (unknown [10.109.146.211])
        by mo6.mail-out.ovh.net (Postfix) with ESMTP id 1AA901E4512
        for <devicetree@vger.kernel.org>; Fri,  4 Oct 2019 14:02:50 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
        (Authenticated sender: clg@kaod.org)
        by player792.ha.ovh.net (Postfix) with ESMTPSA id 830B8AA662A3;
        Fri,  4 Oct 2019 12:02:32 +0000 (UTC)
From:   =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To:     linux-mtd@lists.infradead.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>
Cc:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        linux-aspeed@lists.ozlabs.org,
        David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Marek Vasut <marek.vasut@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 11/16] dt-bindings: mtd: aspeed-smc: Add new comptatible for AST2600
Date:   Fri,  4 Oct 2019 13:59:14 +0200
Message-Id: <20191004115919.20788-12-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 3812860034892991411
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SMC controllers on the AST2600 SoC are very similar to the the
AST2500. The SoC has one Firmware Memory Controller and two SPI flash
memory controllers.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Cédric Le Goater <clg@kaod.org>
---
 Documentation/devicetree/bindings/mtd/aspeed-smc.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/aspeed-smc.txt b/Documentation/devicetree/bindings/mtd/aspeed-smc.txt
index 49f6528ef547..c2373d9cfd90 100644
--- a/Documentation/devicetree/bindings/mtd/aspeed-smc.txt
+++ b/Documentation/devicetree/bindings/mtd/aspeed-smc.txt
@@ -14,6 +14,8 @@ Required properties:
 	"aspeed,ast2400-spi" for the AST2400 SPI Flash memory Controller
 	"aspeed,ast2500-fmc" for the AST2500 Firmware Memory Controller
 	"aspeed,ast2500-spi" for the AST2500 SPI flash memory controllers
+	"aspeed,ast2600-fmc" for the AST2600 Firmware Memory Controller
+	"aspeed,ast2600-spi" for the AST2600 SPI flash memory controllers
 
   - reg : the first contains the control register location and length,
           the second contains the memory window mapping address and length
-- 
2.21.0

