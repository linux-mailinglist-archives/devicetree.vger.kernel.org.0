Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ACE4391354
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 11:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233621AbhEZJFT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 05:05:19 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:50555 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233662AbhEZJFH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 05:05:07 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A1E20C001D;
        Wed, 26 May 2021 09:03:30 +0000 (UTC)
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
Subject: Re: [PATCH v2 3/5] mtd: rawnand: Add a helper to parse the gpio-cs DT property
Date:   Wed, 26 May 2021 11:03:30 +0200
Message-Id: <20210526090330.181161-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510104051.9701-4-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'edc0c2ab124703631cbdd95706dc450b6dce912c'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-05-10 at 10:40:49 UTC, Miquel Raynal wrote:
> New chips may feature a lot of CS because of their extended length. As
> many controllers have been designed a decade ago, they usually only
> feature just a couple. This does not mean that the entire range of
> these chips cannot be accessed: it is just a matter of adding more
> GPIO CS in the hardware design. A DT property has been added to
> describe the CS array: cs-gpios.
> 
> Here is the code parsing it this new property, allocating what needs to
> be, requesting the GPIOs and returning an array with the additional
> available CS. The first entries of this array are left empty and are
> reserved for native CS.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
