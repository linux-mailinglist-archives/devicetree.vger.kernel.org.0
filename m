Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B09F41E01A3
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2020 21:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388109AbgEXTDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 May 2020 15:03:34 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:51197 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388085AbgEXTDe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 May 2020 15:03:34 -0400
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A2A69C0004;
        Sun, 24 May 2020 19:03:31 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Harvey Hunt <harveyhuntnexus@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-mtd@lists.infradead.org
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/4] mtd: rawnand: ingenic: Fix the RB gpio active-high property on qi, lb60
Date:   Sun, 24 May 2020 21:03:30 +0200
Message-Id: <20200524190330.3754-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519232454.374081-3-boris.brezillon@collabora.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 46a67c911733eeecaedd3d6f85c1cd7a481dbb8e
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2020-05-19 at 23:24:53 UTC, Boris Brezillon wrote:
> The rb-gpios semantics was undocumented and qi,lb60 (along with the
> ingenic driver) got it wrong. The active state encodes the NAND ready
> state, which is high level. Since there's no signal inverter on this
> board, it should be active-high. Let's fix that here for older DTs so
> we can re-use the generic nand_gpio_waitrdy() helper, and be consistent
> with what other drivers do.
> 
> Suggested-by: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
