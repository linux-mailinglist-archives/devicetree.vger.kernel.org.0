Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E20291F92BB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2020 11:08:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728852AbgFOJHu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jun 2020 05:07:50 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:48203 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729144AbgFOJHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Jun 2020 05:07:50 -0400
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 85C1920002;
        Mon, 15 Jun 2020 09:07:45 +0000 (UTC)
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
Subject: Re: [PATCH v7 11/20] mtd: nand: Drop useless 'depends on' in Kconfig
Date:   Mon, 15 Jun 2020 11:07:44 +0200
Message-Id: <20200615090744.26359-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529002517.3546-12-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 764cf0c82cb7573472dbcc4fef20c6639a3dd1a5
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2020-05-29 at 00:25:08 UTC, Miquel Raynal wrote:
> Both OneNAND and raw NAND bits can't be compiled if MTD is disabled
> because of the if/endif logic in drivers/mtd/Kconfig. There is no need
> for an extra "depends on MTD" in their respective Kconfig files.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
