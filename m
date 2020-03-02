Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13B9017579A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 10:48:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727130AbgCBJsA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 2 Mar 2020 04:48:00 -0500
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:45393 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726956AbgCBJsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Mar 2020 04:48:00 -0500
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5FD5040006;
        Mon,  2 Mar 2020 09:47:55 +0000 (UTC)
Date:   Mon, 2 Mar 2020 10:47:54 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc:     richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Message-ID: <20200302104754.61204e72@xps13>
In-Reply-To: <20200302024744.28185-2-yifeng.zhao@rock-chips.com>
References: <20200302024744.28185-1-yifeng.zhao@rock-chips.com>
        <20200302024744.28185-2-yifeng.zhao@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Yifeng,

Yifeng Zhao <yifeng.zhao@rock-chips.com> wrote on Mon,  2 Mar 2020
10:47:42 +0800:

> This driver supports Rockchip NFC (NAND Flash Controller) found on RK3308,
> RK3368, RKPX30, RV1108 and other SOCs. The driver has been tested using
> 8-bit NAND interface on the ARM based RK3308 platform.

I missed this series, you should have it prefixed "v2". Please use
git-format-patch to generate your series. This time you miss the cover
letter (or at least your second and third patches should be answers to
the first one) otherwise it is not easy to follow when people start
discussing:

	git format-patch --cover-letter -v<x> [commits]
	git send-email v<x>-*.patch --to ... --cc ...

For the next iteration, <x> should be 3.

Also, mind the title change for the bindings changes.

Good luck,
Miquèl
