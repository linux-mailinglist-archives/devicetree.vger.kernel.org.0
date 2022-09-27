Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5475ECBF8
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 20:15:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233218AbiI0SPu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 14:15:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233163AbiI0SP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 14:15:29 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A20831EF8
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 11:15:28 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id b23so6528634qtr.13
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 11:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VtlxbydhQjgWgpgouWsh8NLEbTbPq5l+5EJhsDIVqbs=;
        b=cWR+ey9ikOo1TnN6dICAdxSw04B4o7CY3QqdqNG/uIfuv/zG38JsWnLuoIcW6VFtEj
         Vdb/UfiVmleSxvGrdai22+tKICEvdYSFoLMFEW5o4yeAVTRMQHY1fs/WP5h6Gg2kqfkQ
         ZSdVWvw24XSQTZefJfHiaVXKMXuN8UhWTS15dodXOPsrDz1NIq8poo9N/Y1YlrZiyA7Y
         p9KbGKAGCJ9p7MYY6+GK7Ee/0L8vCKdpHULxvkJNU+xsZPfHkcWunnnuM8x+eOoJLgIG
         fs3Rp2L1QSwQXKJwG7hWo0LNqAYfjbFutgcGXUYZaxgGUZQDsaiBAq0L+O0RhFUAAALK
         oprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VtlxbydhQjgWgpgouWsh8NLEbTbPq5l+5EJhsDIVqbs=;
        b=4WgZFtIQteK98js9aZHtdKoOI6deg8/jHwqVYrXDoqMbh/pa15S3LkB00BYl6tpSTn
         owYYtKsoP50v+W68aCb+dc/4FO5B1FGA4JmLPaVyuD536Tva2m62gIqVFLV4rOymLGgR
         Srp8+5yAzEV0uSUfhzOPippk2SMKn0vRcjCTSyxIPEATMWrTJSvqmE1TtNIes6tUQ387
         9lEk6+xQMMQXVLzoak4djf7gMoph0vm8ALOvERcCblfp6GmHAPJSIzmeYWhe0mdf4Taw
         GUMjM6FXXYY9CLmvO4+AsrnnjqzvfByCUrDbZDp9g65Nze3dth4ghzNZScy6lKlbgsbJ
         uq+A==
X-Gm-Message-State: ACrzQf2CzoSEjE3sE6lbANakycEPG3SJwSi0HHxWYtNl5j8I8eai8eMR
        uk9fc8t3G+LZqof7R0Zjk9/5Noj9k74=
X-Google-Smtp-Source: AMsMyM41qz2ymlIPp9C2uI5RoKeynfi+mIvk09IdctSjqcILA6rhMzNqsEO15ry1HoAj1SPijEh6bQ==
X-Received: by 2002:a05:622a:19a7:b0:35c:2ad3:c117 with SMTP id u39-20020a05622a19a700b0035c2ad3c117mr23679416qtc.220.1664302527313;
        Tue, 27 Sep 2022 11:15:27 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:406d:d6ec:6b28:f2e5? ([2600:1700:2442:6db0:406d:d6ec:6b28:f2e5])
        by smtp.gmail.com with ESMTPSA id x19-20020a05622a001300b0033b30e8e7a5sm1365254qtw.58.2022.09.27.11.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 11:15:26 -0700 (PDT)
Message-ID: <70de6f5c-37c4-5318-3855-bcb03d61508f@gmail.com>
Date:   Tue, 27 Sep 2022 13:15:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] of: fdt: Remove unused struct fdt_scan_status
Content-Language: en-US
To:     Yuan Can <yuancan@huawei.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org
References: <20220927133739.98493-1-yuancan@huawei.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <20220927133739.98493-1-yuancan@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/27/22 08:37, Yuan Can wrote:
> After commit bba04d965d06("of/fdt: remove unused of_scan_flat_dt_by_path"), no
> one use struct fdt_scan_status, so remove it.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>  drivers/of/fdt.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 8e359e75efd8..7b571a631639 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -828,15 +828,6 @@ uint32_t __init of_get_flat_dt_phandle(unsigned long node)
>  	return fdt_get_phandle(initial_boot_params, node);
>  }
>  
> -struct fdt_scan_status {
> -	const char *name;
> -	int namelen;
> -	int depth;
> -	int found;
> -	int (*iterator)(unsigned long node, const char *uname, int depth, void *data);
> -	void *data;
> -};
> -
>  const char * __init of_flat_dt_get_machine_name(void)
>  {
>  	const char *name;


Reviewed-by: Frank Rowand <frank.rowand@sony.com>
