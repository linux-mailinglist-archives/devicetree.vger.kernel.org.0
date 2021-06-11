Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C3BE3A48F6
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 21:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230526AbhFKTCC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 15:02:02 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:41105 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230334AbhFKTCB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 15:02:01 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 59BBA60007;
        Fri, 11 Jun 2021 19:00:00 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Heiko Schocher <hs@denx.de>, linux-mtd@lists.infradead.org
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Fabio Estevam <festevam@denx.de>,
        kernel test robot <lkp@intel.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] mtd: devices: add support for microchip 48l640 EERAM
Date:   Fri, 11 Jun 2021 20:59:59 +0200
Message-Id: <20210611185959.225258-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210607033909.1424605-3-hs@denx.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'88d1250267535b26106ca9582701bbad940cec01'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-06-07 at 03:39:09 UTC, Heiko Schocher wrote:
> The Microchip 48l640 is a 8KByte EERAM connected via SPI.
> 
> Signed-off-by: Heiko Schocher <hs@denx.de>
> Tested-by: Fabio Estevam <festevam@denx.de>
> Reported-by: kernel test robot <lkp@intel.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
