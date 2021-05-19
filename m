Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 084DC389550
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231420AbhESSaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:22 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:58585 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbhESSaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:19 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id CC466CB932
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:00 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A58C5C0003;
        Wed, 19 May 2021 18:26:36 +0000 (UTC)
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
Subject: [PATCH v20 00/19] ARM Primecell PL35x support
Date:   Wed, 19 May 2021 20:26:17 +0200
Message-Id: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I am taking over Naga's series, here are the major changes:
* Cleaning of the SMC bus binding file (and yaml conversion)
* Superficial cleaning and great simplification of the SMC bus driver
* Addition of a yaml file describing the NAND controller
* Full rework of the NAND controller driver. JFFS2 and UBIFS not tested
  yet, only bare test tools have been used to proove basic correctness
  of the helpers.
* Addition of a couple of MAINTAINERS entries.

Helmut, would you be willing to test this series with JFFS2? I will do
the UBIFS testing later on my side.

A Github branch named pl353 is available on my repository:
https://github.com/miquelraynal/linux/

Thanks,
Miquèl

Miquel Raynal (19):
  dt-binding: memory: pl353-smc: Rephrase the binding
  dt-binding: memory: pl353-smc: Document the range property
  dt-binding: memory: pl353-smc: Drop the partitioning section
  dt-binding: memory: pl353-smc: Describe the child reg property
  dt-binding: memory: pl353-smc: Fix the example syntax and style
  dt-binding: memory: pl353-smc: Drop unsupported nodes from the example
  dt-binding: memory: pl353-smc: Fix the NAND controller node in the
    example
  dt-binding: memory: pl353-smc: Fix the reg property in the example
  dt-binding: memory: pl353-smc: Detail the main reg property content
  dt-binding: memory: pl353-smc: Convert to yaml
  memory: pl353-smc: Fix style
  memory: pl353-smc: Rename goto labels
  memory: pl353-smc: Let lower level controller drivers handle inits
  memory: pl353-smc: Avoid useless acronyms in descriptions
  memory: pl353-smc: Declare variables following a reverse christmas
    tree order
  MAINTAINERS: Add PL353 SMC entry
  MAINTAINERS: Add PL353 NAND controller entry
  dt-bindings: mtd: pl353-nand: Describe this hardware controller
  mtd: rawnand: pl353: Add support for the ARM PL353 SMC NAND controller

 .../memory-controllers/arm,pl353-smc.yaml     |  124 ++
 .../bindings/memory-controllers/pl353-smc.txt |   47 -
 .../bindings/mtd/arm,pl353-nand-r2p1.yaml     |   45 +
 MAINTAINERS                                   |   16 +
 drivers/memory/pl353-smc.c                    |  314 +----
 drivers/mtd/nand/raw/Kconfig                  |    8 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 drivers/mtd/nand/raw/pl35x-nand-controller.c  | 1194 +++++++++++++++++
 include/linux/pl353-smc.h                     |   30 -
 9 files changed, 1398 insertions(+), 381 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
 create mode 100644 drivers/mtd/nand/raw/pl35x-nand-controller.c
 delete mode 100644 include/linux/pl353-smc.h

-- 
2.27.0

