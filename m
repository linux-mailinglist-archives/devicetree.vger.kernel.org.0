Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 195471E6360
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 16:10:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390847AbgE1OKT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 10:10:19 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:35329 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390727AbgE1OKS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 May 2020 10:10:18 -0400
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id CC22720000F;
        Thu, 28 May 2020 14:10:12 +0000 (UTC)
Date:   Thu, 28 May 2020 16:10:11 +0200
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
Subject: Re: [PATCH v6 02/18] mtd: rawnand: Create a new enumeration to
 describe OOB placement
Message-ID: <20200528161011.2a402f79@xps13>
In-Reply-To: <20200528140852.51f19794@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
        <20200528113113.9166-3-miquel.raynal@bootlin.com>
        <20200528140852.51f19794@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
2020 14:08:52 +0200:

> On Thu, 28 May 2020 13:30:57 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> In the subject s/OOB placement/ECC placement/

That's a leftover. Fixed in patch 2 and 3.
