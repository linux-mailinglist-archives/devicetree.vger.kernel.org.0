Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0E4C391353
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 11:03:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233583AbhEZJFT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 05:05:19 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:43919 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233629AbhEZJFI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 05:05:08 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E75A6C0003;
        Wed, 26 May 2021 09:03:34 +0000 (UTC)
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
Subject: Re: [PATCH v2 2/5] mtd: rawnand: Move struct gpio_desc declaration to the top
Date:   Wed, 26 May 2021 11:03:34 +0200
Message-Id: <20210526090334.181225-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510104051.9701-3-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'31df6381cfad18fef295e8cb2997d02d037c1d73'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-05-10 at 10:40:48 UTC, Miquel Raynal wrote:
> The struct gpio_desc is declared in the middle of the rawnand.h header,
> right before the first function using it (nand_gpio_waitrdy). Before
> adding a new function and to make it clear: move the declaration to the
> top of the file.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
