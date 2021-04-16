Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC21A362374
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 17:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240740AbhDPPEA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 16 Apr 2021 11:04:00 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:43799 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243051AbhDPPD5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 11:03:57 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13 (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7BD1E20015;
        Fri, 16 Apr 2021 15:03:31 +0000 (UTC)
Date:   Fri, 16 Apr 2021 17:03:30 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] mtd: parsers: trx: parse "firmware" MTD partitions only
Message-ID: <20210416170330.65c267f4@xps13>
In-Reply-To: <20210413163700.12215-1-zajec5@gmail.com>
References: <20210413163700.12215-1-zajec5@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rafał,

Rafał Miłecki <zajec5@gmail.com> wrote on Tue, 13 Apr 2021 18:37:00
+0200:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Parsing every partition with "compatible" set to "brcm,trx" results in
> parsing both: firmware partition and failsafe partition on devices that
> implement failsafe booting. This affects e.g. Linksys EA9500 which has:
> 
> partition@200000 {
> 	reg = <0x0200000 0x01d00000>;
> 	compatible = "linksys,ns-firmware", "brcm,trx";
> };
> 
> partition@1f00000 {
> 	reg = <0x01f00000 0x01d00000>;
> 	compatible = "linksys,ns-firmware", "brcm,trx";
> };
> 
> Check for MTD partition name "firmware" before parsing. Recently added
> ofpart_linksys_ns.c creates "firmware" and "failsafe" depending on
> bootloader setup.

I don't like very much the matching against a partition name, this is
and should probably remain free text. Why not matching against the
entire linksys,ns-firmware compatible instead?

> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> Vivek has recently reported this problem to me and this is soltuion I
> came up with.
> 
> One alternative I thought of could be marking "failsafe" MTD partition
> node as disabled (using of_update_property() + "status" + "disabled") and
> then using of_device_is_available() in the parser_trx.c.
> 
> Let me know if you prefer the other (or any other) solution over this
> patch.
> ---
>  drivers/mtd/parsers/parser_trx.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mtd/parsers/parser_trx.c b/drivers/mtd/parsers/parser_trx.c
> index 8541182134d4..0063791e164d 100644
> --- a/drivers/mtd/parsers/parser_trx.c
> +++ b/drivers/mtd/parsers/parser_trx.c
> @@ -58,6 +58,10 @@ static int parser_trx_parse(struct mtd_info *mtd,
>  	uint8_t curr_part = 0, i = 0;
>  	int err;
>  
> +	/* Don't parse any failsafe / backup partitions */
> +	if (strcmp(mtd->name, "firmware"))
> +		return -EINVAL;
> +
>  	parts = kcalloc(TRX_PARSER_MAX_PARTS, sizeof(struct mtd_partition),
>  			GFP_KERNEL);
>  	if (!parts)




Thanks,
Miquèl
