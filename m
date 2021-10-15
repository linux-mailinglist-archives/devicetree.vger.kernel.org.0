Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A3EA42EEC9
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 12:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238026AbhJOKdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 06:33:25 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:47161 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237984AbhJOKdZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 06:33:25 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 21D7740010;
        Fri, 15 Oct 2021 10:31:16 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Cai Huoqing <caihuoqing@baidu.com>, vigneshr@ti.com,
        miquel.raynal@bootlin.com, richard@nod.at, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Update the devicetree documentation path of hyperbus
Date:   Fri, 15 Oct 2021 12:31:16 +0200
Message-Id: <20211015103116.948934-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211014110614.3320-1-caihuoqing@baidu.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'8a057b5fb480f231b6944ebe01114ceb6a297422'
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2021-10-14 at 11:06:14 UTC, Cai Huoqing wrote:
> Change the devicetree documentation path
> to "Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml"
> since 'cypress,hyperflash.txt' and 'ti,am654-hbmc.txt' have
> been converted to 'ti,am654-hbmc.yaml'.
> 
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
