Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE5D1E603C
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 14:09:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389688AbgE1MI7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 08:08:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389685AbgE1MI5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 May 2020 08:08:57 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A496CC05BD1E
        for <devicetree@vger.kernel.org>; Thu, 28 May 2020 05:08:57 -0700 (PDT)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9E32A2A2E33;
        Thu, 28 May 2020 13:08:55 +0100 (BST)
Date:   Thu, 28 May 2020 14:08:52 +0200
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
Subject: Re: [PATCH v6 02/18] mtd: rawnand: Create a new enumeration to
 describe OOB placement
Message-ID: <20200528140852.51f19794@collabora.com>
In-Reply-To: <20200528113113.9166-3-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
        <20200528113113.9166-3-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 May 2020 13:30:57 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

In the subject s/OOB placement/ECC placement/

> There is currently a confusion between the ECC type/mode/provider
> (eg. on-host, software, on-die or none) and the ECC bytes placement.
> 
> Create a new enumeration to describe this placement.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c |  5 +++++
>  include/linux/mtd/rawnand.h      | 14 ++++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index bd3f5a875e39..4d2d444f9db9 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5018,6 +5018,11 @@ static const char * const nand_ecc_modes[] = {
>  	[NAND_ECC_ON_DIE]	= "on-die",
>  };
>  
> +static const char * const nand_ecc_placement[] = {
> +	[NAND_ECC_PLACEMENT_OOB] = "oob",
> +	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
> +};
> +
>  static int of_get_nand_ecc_mode(struct device_node *np)
>  {
>  	const char *pm;
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 65b1c1c18b41..5e014807e050 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -92,6 +92,20 @@ enum nand_ecc_mode {
>  	NAND_ECC_ON_DIE,
>  };
>  
> +/**
> + * enum nand_ecc_placement - NAND ECC bytes placement
> + * @NAND_ECC_PLACEMENT_UNKNOWN: The actual position of the ECC bytes is unknown
> + * @NAND_ECC_PLACEMENT_OOB: The ECC bytes are located in the OOB area
> + * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout, there are ECC bytes
> + *                                  interleaved with regular data in the main
> + *                                  area
> + */
> +enum nand_ecc_placement {
> +	NAND_ECC_PLACEMENT_UNKNOWN,
> +	NAND_ECC_PLACEMENT_OOB,
> +	NAND_ECC_PLACEMENT_INTERLEAVED,
> +};
> +
>  enum nand_ecc_algo {
>  	NAND_ECC_UNKNOWN,
>  	NAND_ECC_HAMMING,

