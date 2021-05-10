Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20CE03780C8
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbhEJKDd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:03:33 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:49177 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230300AbhEJKD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:03:29 -0400
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id 70102240012;
        Mon, 10 May 2021 10:02:22 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V4] dt-bindings: mtd: brcm, brcmnand: convert to the json-schema
Date:   Mon, 10 May 2021 12:02:21 +0200
Message-Id: <20210510100221.6737-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210423050536.29504-1-zajec5@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'27736ddd24cb99b9bef2b36b42381eb41da15958'
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2021-04-23 at 05:05:36 UTC, =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Changes that require mentioning:
> 1. Property "clock" was renamed to "clocks"
> 2. Duplicated properties (defined in nand-controller.yaml) were dropped
> 3. Compatible "brcm,nand-bcm63168" was added
> 4. SoC specific "compatible" cases got limited controller versions
> 
> Examples changes:
> 1. Nodes "nand" were renamed to "nand-controller"
> 2. Nodes "nandcs" were renamed to "nand"
> 3. Dropped partitions as they were using old syntax and are well
>    documented elsewhere anyway
> 
> This rewritten binding validates cleanly using the "dt_binding_check".
> Some Linux stored DTS files will require updating to make "dtbs_check"
> happy.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Brian Norris <computersforpeace@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
