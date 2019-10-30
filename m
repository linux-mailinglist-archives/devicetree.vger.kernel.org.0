Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32CD8E9816
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 09:25:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726047AbfJ3IZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 04:25:37 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:49681 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725923AbfJ3IZh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 04:25:37 -0400
X-Originating-IP: 81.185.173.67
Received: from localhost.localdomain (67.173.185.81.rev.sfr.net [81.185.173.67])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id EE32F20006;
        Wed, 30 Oct 2019 08:25:33 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Marek Vasut <marek.vasut@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2 v4] mtd: add DT bindings for the Intel IXP4xx Flash
Date:   Wed, 30 Oct 2019 09:25:34 +0100
Message-Id: <20191030082534.12960-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191020230042.7364-1-linus.walleij@linaro.org>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 8b3cc926223be73bb2ab5f9465f157fc27e06eca
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2019-10-20 at 23:00:41 UTC, Linus Walleij wrote:
> This adds device tree bindings for the Intel IXP4xx
> flash controller, a simple physmap which however need a
> specific big-endian or mixed-endian access pattern to the
> memory.
> 
> Cc: devicetree@vger.kernel.org
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
