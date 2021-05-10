Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 857CE378118
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbhEJKUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:20:25 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:55685 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbhEJKUU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:20:20 -0400
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id 3EC40240002;
        Mon, 10 May 2021 10:19:12 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Hauke Mehrtens <hauke@hauke-m.de>, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
Subject: Re: [PATCH v2 3/3] mtd: parsers: trx: Allow to use TRX parser on Mediatek SoCs
Date:   Mon, 10 May 2021 12:19:09 +0200
Message-Id: <20210510101909.7869-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210418214616.239574-4-hauke@hauke-m.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'81bb218c829246962a6327c64eec18ddcc049936'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2021-04-18 at 21:46:16 UTC, Hauke Mehrtens wrote:
> Buffalo uses the TRX partition format also on Mediatek MT7622 SoCs.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
