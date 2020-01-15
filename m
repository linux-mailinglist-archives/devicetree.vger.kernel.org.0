Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5FC013B63C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 00:56:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728877AbgANXzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 18:55:21 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:36014 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728757AbgANXzV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 18:55:21 -0500
Received: by mail-ot1-f67.google.com with SMTP id m2so9627421otq.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 15:55:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=odqqUFTuUS3R752w1Ono+r4G/xaTNWl9voQP5TwOR8o=;
        b=mIelBUqzug7T1SGflCSDV8SFAtA0rZZhXIQgtKydvQ01TbcISTmG0q2Gq0T2DYEKVt
         l4COSmnkMAGv7xxX6gCvy2E80SoBeqAYYbgeqf3tL1S3Nqui3X0gg7N8qy9gzKv2aKMi
         DN6FxWY6tsWaCd69/pBepWGKUoASxU97BEEjmVcfLhwjLvxhFpYccdcG9ztPsfsRGwNl
         EOpK4HbRQblaxldrzLt+pyQI882oEoQS2z7kwE4dnZ96Xy40mmOGowXCtw9AnT6TZhKh
         FRlAevVSxfgycbOYvQ59HpLculv4LaMFQs0T/mrkbst0UiET9R6+An4CZTzx6yhOexs2
         DZYQ==
X-Gm-Message-State: APjAAAVOiWZr1yAXw55kil8ufzZKrdmsgdskhRfyl0C513aoYZmNmuhX
        RNeyvLzwudj+39z7/aEau70HfjM=
X-Google-Smtp-Source: APXvYqxTx7LhnLWvujAT0d7VmMRpqqfsEkWlEgD3IHgduP3N6Jp33e29n36JGX1QeHeR7hoMSeZf3w==
X-Received: by 2002:a9d:6d81:: with SMTP id x1mr762946otp.9.1579046120375;
        Tue, 14 Jan 2020 15:55:20 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v200sm5121961oie.35.2020.01.14.15.55.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 15:55:20 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220a2e
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 17:55:18 -0600
Date:   Tue, 14 Jan 2020 17:55:18 -0600
From:   Rob Herring <robh@kernel.org>
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Jyri Sarha <jsarha@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] [v2] of: add more dummy helper functions
Message-ID: <20200114235518.GA11575@bogus>
References: <20200108134936.3617013-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108134936.3617013-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 08, 2020 at 02:49:28PM +0100, Arnd Bergmann wrote:
> The new phy-j721e-wiz driver causes a link failure without CONFIG_OF:
> 
> drivers/phy/ti/phy-j721e-wiz.o: In function `wiz_remove':
> phy-j721e-wiz.c:(.text+0x40): undefined reference to `of_platform_device_destroy'
> 
> Add a dummy version of of_platform_device_destroy to avoid having to add
> Kconfig dependencies for the driver. As there are a few other functions
> without dummy implementations, add those as well for completeness.
> 
> Fixes: 42440de5438a ("phy: ti: j721e-wiz: Add support for WIZ module present in TI J721E SoC")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  include/linux/of_platform.h | 39 ++++++++++++++++++++++++++++---------
>  1 file changed, 30 insertions(+), 9 deletions(-)
> 
> diff --git a/include/linux/of_platform.h b/include/linux/of_platform.h
> index 84a966623e78..f5dea3de4856 100644
> --- a/include/linux/of_platform.h
> +++ b/include/linux/of_platform.h
> @@ -48,28 +48,49 @@ struct of_dev_auxdata {
>  
>  extern const struct of_device_id of_default_bus_match_table[];
>  
> +#ifdef CONFIG_OF
>  /* Platform drivers register/unregister */
>  extern struct platform_device *of_device_alloc(struct device_node *np,
>  					 const char *bus_id,
>  					 struct device *parent);
> -#ifdef CONFIG_OF
>  extern struct platform_device *of_find_device_by_node(struct device_node *np);
> -#else
> -static inline struct platform_device *of_find_device_by_node(struct device_node *np)
> -{
> -	return NULL;
> -}
> -#endif
> -
>  /* Platform devices and busses creation */
>  extern struct platform_device *of_platform_device_create(struct device_node *np,
>  						   const char *bus_id,
>  						   struct device *parent);
> -
>  extern int of_platform_device_destroy(struct device *dev, void *data);
>  extern int of_platform_bus_probe(struct device_node *root,
>  				 const struct of_device_id *matches,
>  				 struct device *parent);
> +#else
> +static inline struct platform_device *of_device_alloc(struct device_node *np,
> +						      const char *bus_id,
> +						      struct device *parent)
> +{
> +	return NULL;
> +}
> +static inline struct platform_device *of_find_device_by_node(struct device_node *np)
> +{
> +	return NULL;
> +}
> +static inline struct platform_device *of_platform_device_create(struct device_node *np,
> +								const char *bus_id,
> +								struct device *parent)
> +{
> +	return NULL;
> +}
> +static inline int of_platform_device_destroy(struct device *dev, void *data)
> +{
> +	return 0;
> +}
> +static inline int of_platform_bus_probe(struct device_node *root,
> +					const struct of_device_id *matches,
> +					struct device *parent)
> +{
> +	return -ENODEV;
> +}

This and of_device_alloc are pretty much only powerpc functions, so I 
want things to break if there are new users. There's one user of 
of_device_alloc() and a couple for of_platform_bus_probe() which is 
deprecated in favor of of_platform_populate(). I think we can get rid of 
the remaining x86 callers.

(I have the same opinion on of_platform_device_create too, but I've 
given up on that).

Rob

