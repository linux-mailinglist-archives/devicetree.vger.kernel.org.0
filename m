Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 503A71E454F
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 16:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726330AbgE0OL2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 10:11:28 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:44587 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726069AbgE0OL2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 May 2020 10:11:28 -0400
X-Originating-IP: 93.23.196.54
Received: from localhost.localdomain (54.196.23.93.rev.sfr.net [93.23.196.54])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id C2A0960008;
        Wed, 27 May 2020 14:11:23 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RESEND v5 03/21] mtd: rawnand: Drop OOB_FIRST placement scheme
Date:   Wed, 27 May 2020 16:11:22 +0200
Message-Id: <20200527141122.24019-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526195633.11543-4-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 8d4b52e8e24b96dbddf30eff7b9d36d6d4c7eaa4
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2020-05-26 at 19:56:15 UTC, Miquel Raynal wrote:
> This scheme has been introduced for the Davinci controller and means
> that the OOB area must be read *before* the rest of the data. This has
> nothing to do with the ECC in OOB placement as it could be understood
> and most importantly, there is no point in having this function out of
> the Davinci NAND controller driver. A DT property for this scheme has
> been added but never used, even by the Davinci driver which only uses
> this scheme to change the default nand_read_page().
> 
> Move the main read_page() helper into the Davinci driver and remove
> the remaining boilerplate.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
