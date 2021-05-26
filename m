Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3C7F391352
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 11:03:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233528AbhEZJFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 05:05:13 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:42663 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233494AbhEZJFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 05:05:01 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A777FC0017;
        Wed, 26 May 2021 09:03:26 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 4/5] mtd: rawnand: arasan: Ensure proper configuration for the asserted target
Date:   Wed, 26 May 2021 11:03:26 +0200
Message-Id: <20210526090326.181097-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510104051.9701-5-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'435a225acd6dba2d1d69f0c924412e4e69c95736'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-05-10 at 10:40:50 UTC, Miquel Raynal wrote:
> The controller being always asserting one CS or the other, there is no
> need to actually select the right target before doing a page read/write.
> However, the anfc_select_target() helper actually also changes the
> timing configuration and clock in the case were two different NAND chips
> with different timing requirements would be used. In this situation, we
> must ensure proper configuration of the controller by calling it.
> 
> As a consequence of this change, the anfc_select_target() helper is
> being moved earlier in the driver.
> 
> Fixes: 88ffef1b65cf ("mtd: rawnand: arasan: Support the hardware BCH ECC engine")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
