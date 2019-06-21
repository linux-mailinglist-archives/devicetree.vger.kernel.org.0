Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F1E24E015
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 07:37:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726204AbfFUFhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 01:37:13 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:54104 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726030AbfFUFhN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 01:37:13 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5L5b5sM126526;
        Fri, 21 Jun 2019 00:37:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1561095425;
        bh=8diaZVISe78TvanU7PS9i0c3d61mFTyroR0loZtPEJE=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=RLnuUOqjpCscTYffzyoQyZnLJW6NDz2siR+bSu7yGckF0E8RWvgJHQ0wFmS4TnmZ3
         DZYcw6b1pc1sTyzJ0fyu/KuC6UkNDKAcYgSvOcEZNwWBqI0QhWFg9Ewshn8XLS+9UQ
         a0gVW0vqY4Vs+gPniXnYQ5I+tVYods3NklKtmvfs=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5L5b5ok030606
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 21 Jun 2019 00:37:05 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 21
 Jun 2019 00:37:05 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 21 Jun 2019 00:37:05 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5L5b28o083510;
        Fri, 21 Jun 2019 00:37:02 -0500
Subject: Re: [PATCH] drivers: mtd: spi-nor: Add flash property for mt25qu512a
 and mt35xu02g
To:     Ashish Kumar <Ashish.Kumar@nxp.com>, <devicetree@vger.kernel.org>
CC:     Kuldeep Singh <kuldeep.singh@nxp.com>, <broonie@kernel.org>,
        <linux-mtd@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <bbrezillon@kernel.org>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <f28085b6-7c0a-1a0c-cc01-c41f35c9ecae@ti.com>
Date:   Fri, 21 Jun 2019 11:07:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19/06/19 4:41 PM, Ashish Kumar wrote:
> From: Kuldeep Singh <kuldeep.singh@nxp.com>
> 

Please add a suitable commit message. Like, which boards have these
flashes and how was it tested? What modes were tested?

> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>

Need submitter's Sign off as well.

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 73172d7..34e33a7 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1880,6 +1880,7 @@ static const struct flash_info spi_nor_ids[] = {
>  	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
>  	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
> +	{ "mt25qu512a", INFO6(0x20bb20, 0x104400, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_4B_OPCODES) },

How is this flash/entry different from n25q512a that has same initial
JEDEC ID bytes? Would be good to have that documented in the commit message

>  	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
>  
>  	/* Micron */
> @@ -1888,6 +1889,7 @@ static const struct flash_info spi_nor_ids[] = {
>  			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
>  			SPI_NOR_4B_OPCODES)
>  	},
> +	{ "mt35xu02g",   INFO(0x2c5b1c, 0, 128 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ | SPI_NOR_4B_OPCODES) },
>  
>  	/* PMC */
>  	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
> 

Also, patch numbering isn't right. Moreover other patches in the series
are independent of this patch. Please resubmit this patch separately
after addressing all the comments.

-- 
Regards
Vignesh
