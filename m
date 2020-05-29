Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB1B31E78A7
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2020 10:46:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725839AbgE2Iqp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 May 2020 04:46:45 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:36226 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726330AbgE2Iqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 May 2020 04:46:44 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 468C32A4304;
        Fri, 29 May 2020 09:46:43 +0100 (BST)
Date:   Fri, 29 May 2020 10:46:40 +0200
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
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
Message-ID: <20200529104640.1997434f@collabora.com>
In-Reply-To: <20200529104548.0038bbe7@collabora.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
        <20200529002517.3546-18-miquel.raynal@bootlin.com>
        <20200529104548.0038bbe7@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 May 2020 10:45:48 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Fri, 29 May 2020 02:25:14 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +const struct mtd_ooblayout_ops *nand_get_large_page_layout(void)  
> 
> nand_get_large_page_ooblayout() (same for the other helpers).
> 

And sorry if I got it wrong in my previous review :-/.

> > +{
> > +	return &nand_ooblayout_lp_ops;
> > +}
> > +EXPORT_SYMBOL_GPL(nand_get_large_page_layout);  

