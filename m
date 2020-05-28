Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 531781E643A
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 16:42:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725846AbgE1OmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 10:42:24 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:54990 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725808AbgE1OmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 May 2020 10:42:22 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 764022A0FBF;
        Thu, 28 May 2020 15:42:20 +0100 (BST)
Date:   Thu, 28 May 2020 16:42:17 +0200
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
Subject: Re: [PATCH v6 17/18] mtd: rawnand: Write a compatibility layer
Message-ID: <20200528164217.4eec33ae@collabora.com>
In-Reply-To: <20200528113113.9166-18-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
        <20200528113113.9166-18-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 May 2020 13:31:12 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> +static enum nand_ecc_engine_type
> +of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
> +{
> +	enum nand_ecc_legacy_mode {
> +		NAND_ECC_INVALID,
> +		NAND_ECC_NONE,
> +		NAND_ECC_SOFT,
> +		NAND_ECC_SOFT_BCH,
> +		NAND_ECC_HW,
> +		NAND_ECC_HW_SYNDROME,
> +		NAND_ECC_ON_DIE,
> +	};

You're redefining an enum, but I don't see the old enum/defines being
removed, is that expected?
