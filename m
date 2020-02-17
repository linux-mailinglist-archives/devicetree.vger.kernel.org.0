Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0B35160B3C
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2020 07:56:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725855AbgBQG4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Feb 2020 01:56:49 -0500
Received: from twhmllg3.macronix.com ([122.147.135.201]:39294 "EHLO
        TWHMLLG3.macronix.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726633AbgBQG4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Feb 2020 01:56:48 -0500
Received: from localhost.localdomain ([172.17.195.96])
        by TWHMLLG3.macronix.com with ESMTP id 01H6ug7P005796;
        Mon, 17 Feb 2020 14:56:42 +0800 (GMT-8)
        (envelope-from masonccyang@mxic.com.tw)
From:   Mason Yang <masonccyang@mxic.com.tw>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, tglx@linutronix.de,
        juliensu@mxic.com.tw, frieder.schrempf@kontron.de,
        allison@lohutok.net, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org, yuehaibing@huawei.com,
        Mason Yang <masonccyang@mxic.com.tw>
Subject: [PATCH v5 0/2] mtd: rawnand: Add support for Macronix NAND randomizer
Date:   Mon, 17 Feb 2020 14:56:38 +0800
Message-Id: <1581922600-25461-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG3.macronix.com 01H6ug7P005796
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
changelog
v5:
coding patch & add more description in DTS by Miquel's comments.

v4:
coding patch & add a new DTS for randomizer enabled.

v3:
To enable randomizer by specific DT property in children nodes,
mxic,enable-randomizer-otp;

v2:
To enable randomizer by checking chip options NAND_NO_SUBPAGE_WRITE

v1:
To enable randomizer by sys-fs

thanks for your time & review.
Mason


Mason Yang (2):
  mtd: rawnand: Add support for Macronix NAND randomizer
  dt-bindings: mtd: Document Macronix NAND device bindings

 .../devicetree/bindings/mtd/nand-macronix.txt      | 28 ++++++++
 drivers/mtd/nand/raw/nand_macronix.c               | 81 ++++++++++++++++++++++
 2 files changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/nand-macronix.txt

-- 
1.9.1

