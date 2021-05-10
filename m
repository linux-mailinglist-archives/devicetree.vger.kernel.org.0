Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF2543793D3
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:31:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231590AbhEJQcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:32:25 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:10145 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231561AbhEJQcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:32:24 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1F90C24000C;
        Mon, 10 May 2021 16:31:14 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 0/5] Bring GPIO CS support to the Arasan controller driver
Date:   Mon, 10 May 2021 18:31:09 +0200
Message-Id: <20210510163114.24965-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This is a short series bringing a useful feature for drivers which are a
little bit constrained regarding their number of native CS. As
manufacturer tend to group chips in arrays to enlarge the overall
available space, it might be useful to other controller drivers to make
use of the added DT property (cs-gpios) as well as the core helper which
is being introduced to parse this DT property and returned a CS array
with either empty cells (native CS are being used) or a GPIO descriptor
structure pointer (GPIO CS).

This is applied to the Arasan NAND controller driver which involved a
little bit more boilerplate than estimated I thought due to its internal
constraints regarding the bond between CS and RB.

Cheers,
Miquèl

Changes in v2:
* Added a missing MODULE_EXPORT() reported by kernel test robot.

Changes in v2:
* Rebased on top of v5.13-rc1
* This time I'm CC'ing Rob + DT ML...

Miquel Raynal (5):
  dt-binding: mtd: nand: Document gpio-cs property
  mtd: rawnand: Move struct gpio_desc declaration to the top
  mtd: rawnand: Add a helper to parse the gpio-cs DT property
  mtd: rawnand: arasan: Ensure proper configuration for the asserted
    target
  mtd: rawnand: arasan: Leverage additional GPIO CS

 .../bindings/mtd/nand-controller.yaml         |  16 +-
 drivers/mtd/nand/raw/arasan-nand-controller.c | 238 +++++++++++++-----
 drivers/mtd/nand/raw/nand_base.c              |  39 +++
 include/linux/mtd/rawnand.h                   |   6 +-
 4 files changed, 241 insertions(+), 58 deletions(-)

-- 
2.27.0

