Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D91A37811B
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbhEJKUo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:20:44 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:46885 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230342AbhEJKUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:20:37 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 392BC1BF203;
        Mon, 10 May 2021 10:19:23 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Hauke Mehrtens <hauke@hauke-m.de>, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
Subject: Re: [PATCH v2 2/3] mtd: parsers: trx: Allow to specify brcm, trx-magic in DT
Date:   Mon, 10 May 2021 12:19:20 +0200
Message-Id: <20210510101920.7947-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210418214616.239574-3-hauke@hauke-m.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'd7f7e04f8b67571a4bf5a0dcd4f9da4214f5262c'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2021-04-18 at 21:46:15 UTC, Hauke Mehrtens wrote:
> Buffalo uses a different TRX magic for every device, to be able to use
> this trx parser, make it possible to specify the TRX magic in device
> tree. If no TRX magic is specified in device tree, the standard value
> will be used. This value should only be specified if a vendor chooses to
> use a non standard TRX magic.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
