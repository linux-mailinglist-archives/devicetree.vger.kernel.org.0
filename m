Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA3637811C
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbhEJKUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:20:48 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:34725 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230165AbhEJKUn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:20:43 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 697BB1BF208;
        Mon, 10 May 2021 10:19:37 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Hauke Mehrtens <hauke@hauke-m.de>, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: brcm,trx: Add brcm,trx-magic
Date:   Mon, 10 May 2021 12:19:37 +0200
Message-Id: <20210510101937.8013-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210418214616.239574-2-hauke@hauke-m.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'a4d82940ff85a7e307953dfa715f65d5ab487e10'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2021-04-18 at 21:46:14 UTC, Hauke Mehrtens wrote:
> This adds the description of an additional property which allows to
> specify a custom partition parser magic to detect a trx partition.
> Buffalo has multiple device which are using the trx format, but with
> different magic values.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> Acked-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
