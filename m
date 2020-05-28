Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E08B21E5E4D
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 13:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388414AbgE1Lbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 07:31:43 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:36717 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388412AbgE1Lbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 May 2020 07:31:41 -0400
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 50EE9200013;
        Thu, 28 May 2020 11:31:38 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>
Cc:     Boris Brezillon <boris.brezillon@collabora.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Chuanhong Guo <gch981213@gmail.com>,
        Weijie Gao <weijie.gao@mediatek.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Mason Yang <masonccyang@mxic.com.tw>,
        Julien Su <juliensu@mxic.com.tw>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v6 10/18] mtd: nand: Add an extra level in the Kconfig hierarchy
Date:   Thu, 28 May 2020 13:31:05 +0200
Message-Id: <20200528113113.9166-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528113113.9166-1-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use an extra level in Kconfig for all NAND related entries.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index a5d8a211cb8a..c1a45b071165 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -1,7 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+menu "NAND"
+
 config MTD_NAND_CORE
 	tristate
 
 source "drivers/mtd/nand/onenand/Kconfig"
 source "drivers/mtd/nand/raw/Kconfig"
 source "drivers/mtd/nand/spi/Kconfig"
+
+endmenu
-- 
2.20.1

