Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D206639134F
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 11:03:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233484AbhEZJFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 05:05:09 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:52189 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233627AbhEZJEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 05:04:55 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 33A7BC0007;
        Wed, 26 May 2021 09:03:21 +0000 (UTC)
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
Subject: Re: [PATCH v2 5/5] mtd: rawnand: arasan: Leverage additional GPIO CS
Date:   Wed, 26 May 2021 11:03:20 +0200
Message-Id: <20210526090320.181032-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510104051.9701-6-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'33396174ce5bfcbfffcd8f5332d0ceab2589e520'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-05-10 at 10:40:51 UTC, Miquel Raynal wrote:
> Make use of the cs-gpios DT property as well as the core helper to parse
> it so that the Arasan controller driver can now assert many more chips
> than natively.
> 
> The Arasan controller has an internal limitation: RB0 is tied to CS0 and
> RB1 is tied to CS1. Hence, it is possible to use external GPIOs as long
> as one or the other native CS is not used (or configured to be driven as
> a GPIO) and that all additional CS are physically wired on its
> corresponding RB line. Eg. CS0 is used as a native CS, CS1 is not used
> as native CS and may be used as a GPIO CS, CS2 is an additional GPIO
> CS. Then the target asserted by CS0 should also be wired to RB0, while
> the targets asserted by CS1 and CS2 should be wired to RB1.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reported-by: kernel test robot <lkp@intel.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
