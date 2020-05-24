Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E086F1E019F
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2020 21:04:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388086AbgEXTD3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 May 2020 15:03:29 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:42321 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387823AbgEXTD2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 May 2020 15:03:28 -0400
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id EF200C0003;
        Sun, 24 May 2020 19:03:22 +0000 (UTC)
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
Subject: Re: [PATCH v2 4/4] mtd: rawnand: ingenic: Convert the driver to exec_op()
Date:   Sun, 24 May 2020 21:03:21 +0200
Message-Id: <20200524190321.3662-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519232454.374081-4-boris.brezillon@collabora.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: d56129defd7174ddcc56a28905ec81f136e79948
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2020-05-19 at 23:24:54 UTC, Boris Brezillon wrote:
> Let's convert the driver to exec_op() to have one less driver relying
> on the legacy interface.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Tested-by: Paul Cercueil <paul@crapouillou.net>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
