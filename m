Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07AB533ECEE
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 10:26:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbhCQJ0T convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 17 Mar 2021 05:26:19 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:56209 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbhCQJ0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 05:26:02 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13 (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 3B8CAC0005;
        Wed, 17 Mar 2021 09:25:57 +0000 (UTC)
Date:   Wed, 17 Mar 2021 10:25:56 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Hauke Mehrtens <hauke@hauke-m.de>
Cc:     richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
Subject: Re: [PATCH 1/2] mtd: parsers: trx: Allow to specify trx-magic in DT
Message-ID: <20210317102556.68b76e96@xps13>
In-Reply-To: <20210315170711.567358-2-hauke@hauke-m.de>
References: <20210315170711.567358-1-hauke@hauke-m.de>
        <20210315170711.567358-2-hauke@hauke-m.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hauke,

Hauke Mehrtens <hauke@hauke-m.de> wrote on Mon, 15 Mar 2021 18:07:10
+0100:

> Buffalo uses a different TRX magic for every device, to be able to use
> this trx parser, make it possible to specify the TRX magic in device
> tree. If no TRX magic is specified in device tree, the standard value
> will be used. This value should only be specified if a vendor chooses to
> use a non standard TRX magic.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  .../bindings/mtd/partitions/brcm,trx.txt      |  5 +++++
>  drivers/mtd/parsers/parser_trx.c              | 21 ++++++++++++++++++-

Can you please split this patch:
1- dt-binding update
2- driver update

This way we can collect Rob's ack for the binding patch.

Thanks,
Miquèl
