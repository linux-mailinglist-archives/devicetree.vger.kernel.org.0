Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E620C3CAF88
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 01:08:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231633AbhGOXLi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 19:11:38 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:54791 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbhGOXLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 19:11:38 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 99606100005;
        Thu, 15 Jul 2021 23:08:41 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        "Ryan J . Barnett" <ryan.barnett@collins.com>
Subject: Re: [PATCH] dt-bindings: mtd: gpmc: Fix the ECC bytes vs. OOB bytes equation
Date:   Fri, 16 Jul 2021 01:08:41 +0200
Message-Id: <20210715230841.222881-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210610143945.3504781-1-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'778cb8e39f6ec252be50fc3850d66f3dcbd5dd5a'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2021-06-10 at 14:39:45 UTC, Miquel Raynal wrote:
> "PAGESIZE / 512" is the number of ECC chunks.
> "ECC_BYTES" is the number of bytes needed to store a single ECC code.
> "2" is the space reserved by the bad block marker.
> 
> "2 + (PAGESIZE / 512) * ECC_BYTES" should of course be lower or equal
> than the total number of OOB bytes, otherwise it won't fit.
> 
> Fix the equation by substituting s/>=/<=/.
> 
> Suggested-by: Ryan J. Barnett <ryan.barnett@collins.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Acked-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
