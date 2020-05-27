Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23AC01E454B
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 16:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726542AbgE0OLM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 10:11:12 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:49571 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726330AbgE0OLL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 May 2020 10:11:11 -0400
X-Originating-IP: 93.23.196.54
Received: from localhost.localdomain (54.196.23.93.rev.sfr.net [93.23.196.54])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 87B531BF210;
        Wed, 27 May 2020 14:11:08 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RESEND v5 05/21] mtd: rawnand: Return an enum from of_get_nand_ecc_algo()
Date:   Wed, 27 May 2020 16:11:07 +0200
Message-Id: <20200527141107.23830-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526195633.11543-6-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 5b948c5de9487cee175163e9e3acef475e5363b3
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2020-05-26 at 19:56:17 UTC, Miquel Raynal wrote:
> There is an enumeration to list ECC algorithm, let's use it instead of
> returning an int.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
