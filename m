Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E466F1ED581
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2020 19:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbgFCR6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jun 2020 13:58:16 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:38187 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726207AbgFCR6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jun 2020 13:58:15 -0400
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5D956240007;
        Wed,  3 Jun 2020 17:58:12 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>
Cc:     Boris Brezillon <boris.brezillon@collabora.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Mason Yang <masonccyang@mxic.com.tw>,
        Julien Su <juliensu@mxic.com.tw>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v10 04/20] mtd: nand: Add a NAND page I/O request type
Date:   Wed,  3 Jun 2020 19:57:43 +0200
Message-Id: <20200603175759.19948-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603175759.19948-1-miquel.raynal@bootlin.com>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use an enum to differentiate the type of I/O (reading or writing a
page). Also update the request iterator.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/spi/core.c |  4 ++--
 include/linux/mtd/nand.h    | 18 ++++++++++++++++--
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 4b2619d853e2..6f6ec8aa143d 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -497,7 +497,7 @@ static int spinand_mtd_read(struct mtd_info *mtd, loff_t from,
 
 	mutex_lock(&spinand->lock);
 
-	nanddev_io_for_each_page(nand, from, ops, &iter) {
+	nanddev_io_for_each_page(nand, NAND_PAGE_READ, from, ops, &iter) {
 		ret = spinand_select_target(spinand, iter.req.pos.target);
 		if (ret)
 			break;
@@ -545,7 +545,7 @@ static int spinand_mtd_write(struct mtd_info *mtd, loff_t to,
 
 	mutex_lock(&spinand->lock);
 
-	nanddev_io_for_each_page(nand, to, ops, &iter) {
+	nanddev_io_for_each_page(nand, NAND_PAGE_WRITE, to, ops, &iter) {
 		ret = spinand_select_target(spinand, iter.req.pos.target);
 		if (ret)
 			break;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 986c7de83326..e754a6fc8a4b 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -82,8 +82,19 @@ struct nand_pos {
 	unsigned int page;
 };
 
+/**
+ * enum nand_page_io_req_type - Direction of an I/O request
+ * @NAND_PAGE_READ: from the chip, to the controller
+ * @NAND_PAGE_WRITE: from the controller, to the chip
+ */
+enum nand_page_io_req_type {
+	NAND_PAGE_READ = 0,
+	NAND_PAGE_WRITE,
+};
+
 /**
  * struct nand_page_io_req - NAND I/O request object
+ * @type: the type of page I/O: read or write
  * @pos: the position this I/O request is targeting
  * @dataoffs: the offset within the page
  * @datalen: number of data bytes to read from/write to this page
@@ -99,6 +110,7 @@ struct nand_pos {
  * specific commands/operations.
  */
 struct nand_page_io_req {
+	enum nand_page_io_req_type type;
 	struct nand_pos pos;
 	unsigned int dataoffs;
 	unsigned int datalen;
@@ -638,11 +650,13 @@ static inline void nanddev_pos_next_page(struct nand_device *nand,
  * layer.
  */
 static inline void nanddev_io_iter_init(struct nand_device *nand,
+					enum nand_page_io_req_type reqtype,
 					loff_t offs, struct mtd_oob_ops *req,
 					struct nand_io_iter *iter)
 {
 	struct mtd_info *mtd = nanddev_to_mtd(nand);
 
+	iter->req.type = reqtype;
 	iter->req.mode = req->mode;
 	iter->req.dataoffs = nanddev_offs_to_pos(nand, offs, &iter->req.pos);
 	iter->req.ooboffs = req->ooboffs;
@@ -712,8 +726,8 @@ static inline bool nanddev_io_iter_end(struct nand_device *nand,
  *
  * Should be used for iterate over pages that are contained in an MTD request.
  */
-#define nanddev_io_for_each_page(nand, start, req, iter)		\
-	for (nanddev_io_iter_init(nand, start, req, iter);		\
+#define nanddev_io_for_each_page(nand, type, start, req, iter)		\
+	for (nanddev_io_iter_init(nand, type, start, req, iter);	\
 	     !nanddev_io_iter_end(nand, iter);				\
 	     nanddev_io_iter_next_page(nand, iter))
 
-- 
2.20.1

