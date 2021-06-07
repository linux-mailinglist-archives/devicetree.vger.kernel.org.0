Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4555839DFDB
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 16:58:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230411AbhFGPAd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 11:00:33 -0400
Received: from mail-wm1-f53.google.com ([209.85.128.53]:35713 "EHLO
        mail-wm1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbhFGPAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 11:00:32 -0400
Received: by mail-wm1-f53.google.com with SMTP id k5-20020a05600c1c85b02901affeec3ef8so2583080wms.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 07:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nuviainc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=VlCXU9+MFpUy7SArdgNYI/tiU14CG8Xgo06o1Uxsr38=;
        b=rggAUTyKTufq+dvlwzacJo9pgOVEdDk5fs3Ote0eHa9Ikr22ppYaRz2a4Jb4/ToGE9
         pJkiZO7GFVstggttfUpKJid5MIj7MBT1ehm0kb1rXd+jJXGbHfBu1nJAIo31+xmCh7U/
         qb+/J8pqkPvJ6Ej8kejnhPDprATZqkAHu1JjTInwUK9LZVOHnCjoQltUVh0qxxonZAQc
         Fu0WUKtDF2ECtEiAb9FDHkz7hTvmHveDDsQt3NyItj3IsxEReE4aEjQ5lm5VTo+Zkzbu
         lzBFaZn6VV0tk1fhsqtHtys6OoAI3vchKxv3CWnDoo4Gf3/RInJRII3o9R4/UDEFbizy
         vVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VlCXU9+MFpUy7SArdgNYI/tiU14CG8Xgo06o1Uxsr38=;
        b=f3O7FnTQVsqiVxZFFV9p+Qz6BKbcM93KkZoWo5uV6L5vCykBIAML43KfMczLgudIfs
         cmIPkpxJOdPGEcFgJ4OIXp4uxgLNddvxQnqqYDZhdtDZw7MoPJFS1ArEk+2als0F+Ot7
         gaI83jkBVd1Zz3TbwfY/MZDHzWtxv/5uIM9U1UsaIeOswQxO6XgVkBQwhE9Gw9R/orxM
         9aaAnQDzEiuO8smZbKTF2I2/ofHvYYP/7Az9cHqRtbdp6mU4qdEaLhCF4BpemwP6Jfsq
         y6mhz8ANGGSmHE89h3f8qapb36sAw9nxEKqViwW+SD91xiualiScenNKhYtooVY/qudG
         bXsw==
X-Gm-Message-State: AOAM532MAj+bYMUyp6/1HSVLH5ktTMilOJOGg0dPiaw9kq4nnSVwpXb+
        3or5kdPtd76DAPWRI1ccUM8HRQ==
X-Google-Smtp-Source: ABdhPJx6fGlVL5stxlu2ekuhuN/NXsWIomGXGgkt/9+9iT+k+wju9j4eewvseyJ0aY+TeXuGEd/cuQ==
X-Received: by 2002:a7b:c7cd:: with SMTP id z13mr16901621wmk.54.1623077844897;
        Mon, 07 Jun 2021 07:57:24 -0700 (PDT)
Received: from ggregory-linuxws ([2a02:8010:64d6:5343:6309:485e:2524:388a])
        by smtp.gmail.com with ESMTPSA id f14sm15953806wry.40.2021.06.07.07.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 07:57:24 -0700 (PDT)
Date:   Mon, 7 Jun 2021 15:57:22 +0100
From:   Graeme Gregory <graeme@nuviainc.com>
To:     Quan Nguyen <quan@os.amperecomputing.com>
Cc:     Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Brendan Higgins <brendanhiggins@google.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Wolfram Sang <wsa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        openipmi-developer@lists.sourceforge.net,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Open Source Submission <patches@amperecomputing.com>,
        "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
        Phong Vo <phong@os.amperecomputing.com>,
        openbmc@lists.ozlabs.org
Subject: Re: [PATCH v3 5/7] i2c: aspeed: Add aspeed_set_slave_busy()
Message-ID: <20210607145722.GA2682@ggregory-linuxws>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-6-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519074934.20712-6-quan@os.amperecomputing.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 02:49:32PM +0700, Quan Nguyen wrote:
> Slave i2c device on AST2500 received a lot of slave irq while it is
> busy processing the response. To handle this case, adds and exports
> aspeed_set_slave_busy() for controller to temporary stop slave irq
> while slave is handling the response, and re-enable them again when
> the response is ready.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v3:
>   + First introduce in v3 [Quan]
> 
>  drivers/i2c/busses/i2c-aspeed.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index b2e9c8f0ddf7..9926d04831a2 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -944,6 +944,26 @@ static int aspeed_i2c_init(struct aspeed_i2c_bus *bus,
>  	return 0;
>  }
>  
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +void aspeed_set_slave_busy(struct i2c_adapter *adap, bool busy)
> +{
> +	struct aspeed_i2c_bus *bus = i2c_get_adapdata(adap);
> +	unsigned long current_mask, flags;
> +
> +	spin_lock_irqsave(&bus->lock, flags);

This as far as I can see is still a recursive spinlock, and the spinlock
debugger seems to agree with me.

Graeme

> +
> +	current_mask = readl(bus->base + ASPEED_I2C_INTR_CTRL_REG);
> +	if (busy)
> +		current_mask &= ~(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_SLAVE_MATCH);
> +	else
> +		current_mask |= ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_SLAVE_MATCH;
> +	writel(current_mask, bus->base + ASPEED_I2C_INTR_CTRL_REG);
> +
> +	spin_unlock_irqrestore(&bus->lock, flags);
> +}
> +EXPORT_SYMBOL_GPL(aspeed_set_slave_busy);
> +#endif
> +
>  static int aspeed_i2c_reset(struct aspeed_i2c_bus *bus)
>  {
>  	struct platform_device *pdev = to_platform_device(bus->dev);
> -- 
> 2.28.0
> 
