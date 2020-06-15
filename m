Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E03931F92B5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2020 11:07:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729017AbgFOJHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jun 2020 05:07:39 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:19465 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728852AbgFOJHj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Jun 2020 05:07:39 -0400
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 3D1DF240004;
        Mon, 15 Jun 2020 09:07:35 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Cc:     Julien Su <juliensu@mxic.com.tw>,
        Weijie Gao <weijie.gao@mediatek.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Mason Yang <masonccyang@mxic.com.tw>,
        Chuanhong Guo <gch981213@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 13/20] mtd: nand: Rename a core structure
Date:   Mon, 15 Jun 2020 11:07:34 +0200
Message-Id: <20200615090734.26297-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529002517.3546-14-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 8ea52c976c9f5ba7d8adbbc46733be5a0abbf5fd
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2020-05-29 at 00:25:10 UTC, Miquel Raynal wrote:
> Prepare the migration to a generic ECC engine by renaming the
> nand_ecc_req structure into nand_ecc_props. This structure will be the
> base of a wider 'nand_ecc' structure.
> 
> In nand_device, these properties are still named "eccreq" even if
> "eccprops" might be more descriptive. This is just a transition step,
> this field is being replaced very soon by a much wider structure. The
> impact of renaming this field would be huge compared to its interest.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
