Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 122064447BF
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 18:50:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230463AbhKCRxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 13:53:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229888AbhKCRx3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 13:53:29 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD833C061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 10:50:52 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id k2so3133210pff.11
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 10:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cec1IkGMyor9VWmtx4jxePpP/Ury3qWcerMb8kIcD10=;
        b=O3z2y09w9dx+iV6Qr5gJ98blbky1rfmN7YLMMxfIfhxNjTy5u1uuiOOcNenEJIHEGu
         XUJMzbtjN4O04iwjKDTNuTUtDBeR1rtHgd2v6Zzrjb7P/vzaTAM4L7m0BKXRpKOc16Ux
         TsuJJFZqENF9TyOjHHY/dSG7O+yn862e96nU5iB0M6yBxlcggVwzRmHP5+ZVSYXQaPQT
         vYxsCJbUKA0CcAIDxeWMUkSn473dUUiTsbLp30zeTaQWpvtLWQ4VuimyjqGmcVbLcgQm
         guiURi0D0S1fMkfTOVLg77JBZsHTzUGjxVyWAMAajtKBGiylFbmxBAfb711JFSEKVxbj
         enRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cec1IkGMyor9VWmtx4jxePpP/Ury3qWcerMb8kIcD10=;
        b=MoGrAMI+i4V8uoN2h4q8CetYoQos2hUwYo70CH5YLLJIX/1KErN/widWfxWaN3wmmK
         Rm2vut7mGVAFkXBBJVFRA7sKVnrGHithzf+ujatj/hiQKYemLHcVvFD6iu00BG1G2WxT
         fgRhoXziU4RuwvHpI1bnr/pDc+BMIOsObfdKn7dJfxfOhOC1C1bk7MHuWCs+wF1ZfQKf
         Ua3p0AapO/KVTcZbEA/CJ/ZQKdykTD7NWLMVKxuj6iPJD1jIVuvv4RrPLy9vBWzqoXVV
         xQYbIlgqhczJKVPOjOzs+T+omSnn6yjt9WJz5+HY79xTxIxZxbFf5YDojAZ4+FQt3Ed0
         jcAg==
X-Gm-Message-State: AOAM531SwYknOIFOjHK2HOFBDN9opovvsaq9W/jFJWd9TrzLQEcHdslm
        20w6w3075vyDm5sEXRS9NMX3o/xw0do=
X-Google-Smtp-Source: ABdhPJziEKjMSokadyHzCpjSZKz9g11QPkrnoRXfNJa4HHDydIbiElCjq/m9KN2WmMeXUinShR1MaQ==
X-Received: by 2002:a05:6a00:b48:b0:47c:23e:ecb7 with SMTP id p8-20020a056a000b4800b0047c023eecb7mr45757989pfo.42.1635961852304;
        Wed, 03 Nov 2021 10:50:52 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id r25sm2287533pge.61.2021.11.03.10.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 10:50:51 -0700 (PDT)
Subject: Re: [PATCH 2/2] mtd: rawnand: brcmnand: support "no-wp" DT property
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20211103151117.18690-1-zajec5@gmail.com>
 <20211103151117.18690-2-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c59157a1-2c15-928f-f5a7-fab7128e8dd2@gmail.com>
Date:   Wed, 3 Nov 2021 10:50:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211103151117.18690-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/3/21 8:11 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Some boards may use WP-capable controller but still have WP not
> connected. This change fixes:
> [    1.175550] bcm63138_nand ff801800.nand: timeout on status poll (expected c0000040 got c00000c0)
> [    1.184524] bcm63138_nand ff801800.nand: nand #WP expected on
> [    1.285547] bcm63138_nand ff801800.nand: timeout on status poll (expected c0000040 got c00000c0)
> [    1.294516] bcm63138_nand ff801800.nand: nand #WP expected on
> [    1.395548] bcm63138_nand ff801800.nand: timeout on status poll (expected c0000040 got c00000c0)
> [    1.404517] bcm63138_nand ff801800.nand: nand #WP expected on
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> index f75929783b94..8b6167457f0c 100644
> --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> @@ -714,7 +714,8 @@ static int brcmnand_revision_init(struct brcmnand_controller *ctrl)
>  	if (ctrl->nand_version >= 0x0500)
>  		ctrl->features |= BRCMNAND_HAS_1K_SECTORS;
>  
> -	if (ctrl->nand_version >= 0x0700)
> +	if (ctrl->nand_version >= 0x0700 &&
> +	    !of_property_read_bool(ctrl->dev->of_node, "no-wp"))
>  		ctrl->features |= BRCMNAND_HAS_WP;

Should not this be a logical OR here or rather, should it be moved out
of the check on ctrl->nand_version entirely? What revision of the NAND
controller do you have on that chip?

>  	else if (of_property_read_bool(ctrl->dev->of_node, "brcm,nand-has-wp"))
>  		ctrl->features |= BRCMNAND_HAS_WP;
> 


-- 
Florian
