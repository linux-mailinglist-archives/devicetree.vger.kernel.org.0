Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF3A596B8E
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 10:47:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235341AbiHQIpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 04:45:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbiHQIpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 04:45:07 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF17674B81
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 01:45:04 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id a4so3669114wrq.1
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 01:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=kd42aySVbpZFSpcfHHVkY7NPeQJt3LS1TsDiYLJVxXo=;
        b=HRtblAfEMpXetk49nTtSp/cZFUf4gydkmQ90itmyjNa74g1h+D+09SyYz90hDfiJrc
         EWRBzK/Dw++Qn2kKsAvRjfXtI3LpyQHWc328PgxgQ4ZpRdjtJk7gfc3frbYAyAckV4rc
         MFg5lEcrXhs7LQVy14PhL4NFP4nMgJICEEeLePOTwZNfAyMCdbVdB9QtTJChuZzcLUZP
         zyPeqkCyzvFAPFVeyqU70OOoQLk8lVj/jIweEnKIRJ0RJiiQUKtRqlMpfu8sEGIDAPcy
         Yi0yaQr4IeFrh1jP1pwhnAlPc7qwz3qVzOUdOCwYgGNcIIK7u7+OWnBcYd7bsi3k8eKg
         ZIaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=kd42aySVbpZFSpcfHHVkY7NPeQJt3LS1TsDiYLJVxXo=;
        b=eBpbyXS0OfUuv5ugkEGxmciy4MwGceWKKktb6IIcKdKKYN1GOnmN7ixrOSztewlPwu
         SGLi/PforeiRj6HtMGkTGi/N6bO2ZRlvS9cBV2xwg+RNOv3fiZmtlb4/cLd5e4XTyJ+a
         /Z1GZ5H/M4T+AiA8aJcTAXZPArquQD39o97QWCq2InUXk9ZdimhC7gXER8WIduaDase/
         /wtfNxr30zOO24pHzz1XwHQercv2F8Anc4DTgFstB6k3WNAMC89fZZ4tER3nDaq29WFA
         hAJbMd/ZK01u7Dc8Biv2ItNVYGS5+63dffgO3m07x+0oXwZwwBN++jRHDUVnaC+tLy1G
         wJLA==
X-Gm-Message-State: ACgBeo1xyaE3QfLkRSd7lnL2NjW1XRa7gbA127AREgPevWFXII2DSSaj
        bkQSPtaQpc5U84qqrFBReODGLQ==
X-Google-Smtp-Source: AA6agR5zVjKZPFz5XYQ6BzcpHd9aGYa5QzkH4q76SMTqQt6ql4sqOrJIyw6ehraB+G9tP9SoV8+nyQ==
X-Received: by 2002:adf:d1e8:0:b0:223:bca:8019 with SMTP id g8-20020adfd1e8000000b002230bca8019mr13509448wrd.562.1660725903362;
        Wed, 17 Aug 2022 01:45:03 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id j18-20020a05600c191200b003a5f54e3bbbsm1579993wmq.38.2022.08.17.01.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 01:45:02 -0700 (PDT)
Message-ID: <a34e8e37-0aad-e092-1138-45ad9ce790a2@linaro.org>
Date:   Wed, 17 Aug 2022 09:45:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH V4 1/2] mtd: allow getting MTD device associated with a
 specific DT node
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Tom Rini <trini@konsulko.com>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, u-boot@lists.denx.de,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220615194300.13358-1-zajec5@gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220615194300.13358-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15/06/2022 20:42, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> MTD subsystem API allows interacting with MTD devices (e.g. reading,
> writing, handling bad blocks). So far a random driver could get MTD
> device only by its name (get_mtd_device_nm()). This change allows
> getting them also by a DT node.
> 
> This API is required for drivers handling DT defined MTD partitions in a
> specific way (e.g. U-Boot (sub)partition with environment variables).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Applied along with nvmem provider thanks,
--srini
> V3: First introduction of of_get_mtd_device_by_node()
> V4: Use EPROBE_DEFER
> 
> Srinivas: in V3 Miquel said it's OK to push this patch through NVMEM
> ---
>   drivers/mtd/mtdcore.c   | 28 ++++++++++++++++++++++++++++
>   include/linux/mtd/mtd.h |  1 +
>   2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
> index 9eb0680db312..3613cc142f25 100644
> --- a/drivers/mtd/mtdcore.c
> +++ b/drivers/mtd/mtdcore.c
> @@ -1154,6 +1154,34 @@ int __get_mtd_device(struct mtd_info *mtd)
>   }
>   EXPORT_SYMBOL_GPL(__get_mtd_device);
>   
> +/**
> + * of_get_mtd_device_by_node - obtain an MTD device associated with a given node
> + *
> + * @np: device tree node
> + */
> +struct mtd_info *of_get_mtd_device_by_node(struct device_node *np)
> +{
> +	struct mtd_info *mtd = NULL;
> +	struct mtd_info *tmp;
> +	int err;
> +
> +	mutex_lock(&mtd_table_mutex);
> +
> +	err = -EPROBE_DEFER;
> +	mtd_for_each_device(tmp) {
> +		if (mtd_get_of_node(tmp) == np) {
> +			mtd = tmp;
> +			err = __get_mtd_device(mtd);
> +			break;
> +		}
> +	}
> +
> +	mutex_unlock(&mtd_table_mutex);
> +
> +	return err ? ERR_PTR(err) : mtd;
> +}
> +EXPORT_SYMBOL_GPL(of_get_mtd_device_by_node);
> +
>   /**
>    *	get_mtd_device_nm - obtain a validated handle for an MTD device by
>    *	device name
> diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> index 955aee14b0f7..6fc841ceef31 100644
> --- a/include/linux/mtd/mtd.h
> +++ b/include/linux/mtd/mtd.h
> @@ -677,6 +677,7 @@ extern int mtd_device_unregister(struct mtd_info *master);
>   extern struct mtd_info *get_mtd_device(struct mtd_info *mtd, int num);
>   extern int __get_mtd_device(struct mtd_info *mtd);
>   extern void __put_mtd_device(struct mtd_info *mtd);
> +extern struct mtd_info *of_get_mtd_device_by_node(struct device_node *np);
>   extern struct mtd_info *get_mtd_device_nm(const char *name);
>   extern void put_mtd_device(struct mtd_info *mtd);
>   
