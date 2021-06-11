Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50ABD3A48F8
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 21:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230334AbhFKTCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 15:02:06 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:44285 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231202AbhFKTCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 15:02:05 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 812F860008;
        Fri, 11 Jun 2021 19:00:05 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Heiko Schocher <hs@denx.de>, linux-mtd@lists.infradead.org
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] mtd: devices: add devicetree documentation for microchip 48l640
Date:   Fri, 11 Jun 2021 21:00:04 +0200
Message-Id: <20210611190004.225351-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210607033909.1424605-2-hs@denx.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'9fd795eab2dbe90ee21cb3774892ba9a7ec73ff4'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-06-07 at 03:39:08 UTC, Heiko Schocher wrote:
> The Microchip 48l640 is a 8KByte EERAM connected via SPI.
> Add devicetree bindings documentation.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Heiko Schocher <hs@denx.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
