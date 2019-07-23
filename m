Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E8BE571452
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 10:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728030AbfGWIso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 04:48:44 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:59547 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727994AbfGWIsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 04:48:43 -0400
X-Originating-IP: 86.250.200.211
Received: from bootlin.com (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.chevallier@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E827EFF809;
        Tue, 23 Jul 2019 08:48:37 +0000 (UTC)
Date:   Tue, 23 Jul 2019 10:48:49 +0200
From:   Maxime Chevallier <maxime.chevallier@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v2 03/19] phy: mvebu-cp110-comphy: Add SMC call support
Message-ID: <20190723104849.7158f634@bootlin.com>
In-Reply-To: <20190627095104.22529-4-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
        <20190627095104.22529-4-miquel.raynal@bootlin.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

Thanks for this, I gave it a quick test and it looks good.

On Thu, 27 Jun 2019 11:50:48 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

>From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
>Keep the exact same list of supported configurations but first try to
>use the firmware's implementation. If it fails, try the legacy method:
>Linux implementation.
>
>Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
>[miquel.raynal@bootlin.com: adapt the content to the mainline driver]
>Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

[...]

>+	dev_warn(priv->dev,
>+		 "Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\n",
>+		 ret, lane->id, lane->mode);

Small nit, you've got your parameters in the wrong order in that
dev_warn.

Besides that,

Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

