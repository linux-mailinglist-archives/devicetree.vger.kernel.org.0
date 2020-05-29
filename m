Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4051E7927
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2020 11:17:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725821AbgE2JRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 May 2020 05:17:43 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:52387 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgE2JRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 May 2020 05:17:43 -0400
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 59CD8200004;
        Fri, 29 May 2020 09:17:36 +0000 (UTC)
Date:   Fri, 29 May 2020 11:17:35 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Boris Brezillon <boris.brezillon@collabora.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Chuanhong Guo <gch981213@gmail.com>,
        Weijie Gao <weijie.gao@mediatek.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Mason Yang <masonccyang@mxic.com.tw>,
        Julien Su <juliensu@mxic.com.tw>
Subject: Re: [PATCH v7 17/20] mtd: rawnand: Hide the generic OOB layout
 objects behind helpers
Message-ID: <20200529111735.61f87c22@xps13>
In-Reply-To: <20200529104640.1997434f@collabora.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
        <20200529002517.3546-18-miquel.raynal@bootlin.com>
        <20200529104548.0038bbe7@collabora.com>
        <20200529104640.1997434f@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri, 29 May
2020 10:46:40 +0200:

> On Fri, 29 May 2020 10:45:48 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > On Fri, 29 May 2020 02:25:14 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > +const struct mtd_ooblayout_ops *nand_get_large_page_layout(void)    
> > 
> > nand_get_large_page_ooblayout() (same for the other helpers).
> >   
> 
> And sorry if I got it wrong in my previous review :-/.

Haha, no pb ;)
