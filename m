Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D544F391355
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 11:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233633AbhEZJFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 05:05:23 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:34461 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233648AbhEZJFO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 05:05:14 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 8CC824000C;
        Wed, 26 May 2021 09:03:39 +0000 (UTC)
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
Subject: Re: [PATCH v4] dt-binding: mtd: nand: Document the cs-gpios property
Date:   Wed, 26 May 2021 11:03:39 +0200
Message-Id: <20210526090339.181290-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510171800.27225-1-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'6b562738a22cfdbfedaaac7db5f83c11700ebb15'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-05-10 at 17:18:00 UTC, Miquel Raynal wrote:
> To reach higher capacities, arrays of chips are now pretty common.
> Unfortunately, most of the controllers have been designed a decade ago
> and did not all anticipate the need for several chip-selects. The new
> cs-gpios property allows to workaround this limitation by adding as many
> GPIO chip-select as needed.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
