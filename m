Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF9F15F1545
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 23:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbiI3V4L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 17:56:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231129AbiI3V4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 17:56:09 -0400
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC1FE2CDC
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 14:56:06 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id t62so6051736oie.10
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 14:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=8eiagTUk0dq8nINZQ6x8hwgIaRDOs5Q5Ub17AS+/0AA=;
        b=2YddtjTNyOxqr3Oi3J84x+7qEgGryW5WfJJsZzuU2MYWEwInPZ1B/CNm+1ULzJL6dr
         VrdOwbhti6096joNVadOPbiBCfxJly8Mlgaj1ayD1RU+LdlgjfxgRL5+V8dYyb1O8SFq
         qLCUHx7qncAdvJhxDVgcJGIG7+/PyY2oRnHFbeqIY2kR7O4IXdXYlQ8zqp2TutiZgsEU
         SX2edo24SxYw3BHFfuALFO0utriSddfh4QUOiygCSK9cYDAcsGSzbUi8YQKqQPB5oOFF
         ZE3m5ROw/X09XWoUF+Ytf4hdNeDfH4zx/L2k2kVJNnDNJ0NQ98wleVw9Pt6oiS20EOvS
         i3EQ==
X-Gm-Message-State: ACrzQf0NGExPL7GmnkcYo/bjKx4C2IQkUjWzZDgVx/d7VESD9QuXDuPX
        gjiw82Ch3v9autePifi+LQ==
X-Google-Smtp-Source: AMsMyM6T9ScHyplV8DUMmVXsYZJDlJy44ULOarxqKrJ0om+kfJu4gyKESM4hTCRect7aLq20aYkb5w==
X-Received: by 2002:a05:6808:bca:b0:350:b22b:1283 with SMTP id o10-20020a0568080bca00b00350b22b1283mr122648oik.82.1664574966172;
        Fri, 30 Sep 2022 14:56:06 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bx21-20020a056830601500b0065689e13f52sm805697otb.71.2022.09.30.14.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 14:56:05 -0700 (PDT)
Received: (nullmailer pid 1106680 invoked by uid 1000);
        Fri, 30 Sep 2022 21:56:04 -0000
Date:   Fri, 30 Sep 2022 16:56:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yang Yingliang <yangyingliang@huawei.com>
Cc:     devicetree@vger.kernel.org, frowand.list@gmail.com
Subject: Re: [PATCH -next 1/2] of/address: introduce of_address_count() helper
Message-ID: <20220930215604.GA1090758-robh@kernel.org>
References: <20220930090845.503815-1-yangyingliang@huawei.com>
 <20220930090845.503815-2-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930090845.503815-2-yangyingliang@huawei.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 30, 2022 at 05:08:44PM +0800, Yang Yingliang wrote:
> Introduce of_address_count() helper to count the IO resources
> instead of open-coding it.
> 
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  drivers/of/address.c       | 11 +++++++++++
>  include/linux/of_address.h |  7 +++++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 96f0a12e507c..e32846a9a8d5 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -848,6 +848,17 @@ int of_address_to_resource(struct device_node *dev, int index,
>  }
>  EXPORT_SYMBOL_GPL(of_address_to_resource);
>  
> +int of_address_count(struct device_node *np)
> +{
> +	struct resource res;
> +	int count = 0;
> +
> +	while (of_address_to_resource(np, count, &res) == 0)
> +		count++;
> +
> +	return count;
> +}

EXPORT?

However, I'd just make this always inline instead.

> +
>  /**
>   * of_iomap - Maps the memory mapped IO for a given device_node
>   * @np:		the device whose io range will be mapped
> diff --git a/include/linux/of_address.h b/include/linux/of_address.h
> index 45598dbec269..63027e8f3397 100644
> --- a/include/linux/of_address.h
> +++ b/include/linux/of_address.h
> @@ -43,6 +43,7 @@ extern u64 of_translate_dma_address(struct device_node *dev,
>  extern u64 of_translate_address(struct device_node *np, const __be32 *addr);
>  extern int of_address_to_resource(struct device_node *dev, int index,
>  				  struct resource *r);
> +extern int of_address_count(struct device_node *np);
>  extern void __iomem *of_iomap(struct device_node *device, int index);
>  void __iomem *of_io_request_and_map(struct device_node *device,
>  				    int index, const char *name);
> @@ -127,6 +128,7 @@ static inline bool of_dma_is_coherent(struct device_node *np)
>  #ifdef CONFIG_OF
>  extern int of_address_to_resource(struct device_node *dev, int index,
>  				  struct resource *r);
> +extern int of_address_count(struct device_node *np);

I'm pretty sure Sparc build is going to break. Sparc has its own 
implementation of of_address_to_resource().

>  void __iomem *of_iomap(struct device_node *node, int index);
>  #else
>  static inline int of_address_to_resource(struct device_node *dev, int index,
> @@ -139,6 +141,11 @@ static inline void __iomem *of_iomap(struct device_node *device, int index)
>  {
>  	return NULL;
>  }
> +
> +static inline int of_address_count(struct device_node *np)
> +{
> +	return 0;
> +}
>  #endif
>  #define of_range_parser_init of_pci_range_parser_init
>  
> -- 
> 2.25.1
> 
> 
