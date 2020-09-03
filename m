Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C7AB25B9E8
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 06:49:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725943AbgICEtw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 00:49:52 -0400
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:42411 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725843AbgICEtw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 00:49:52 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 315275C01AA;
        Thu,  3 Sep 2020 00:49:51 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute3.internal (MEProxy); Thu, 03 Sep 2020 00:49:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm3; bh=05SWJLotmdvCJDcdh94+gFiA3KVL9br
        7SHzW1A/LNHc=; b=kXlyMg0jXkUa1i2ofTbAwVaAj9DFM5AtFXJDQRZXdqfYkvk
        nvN9D+0p+cgAS3UiJo8COubV/avjqdAokQlbSOYU6MjEZGYFDxsy3f71lG+qrjPc
        MMSvviZv4tS6atHXRYlQ9ccPyy8ZTTC/7uF3wVTo7G4ZiLIlxI7hSigdYrWFs4MD
        fJILlrdakPOfz2qpl4qRXAletL3N27PnrUOaUD3wxS7/TJRNQMPfab2AO+AMz3x8
        D+KZ9FKCvtRH+XUmKU3rjLKPWMoqGRJpn6oHBJieeyQ6lZA3P0pyZy1XNDM214xy
        KdchMaPptiyh8ilw1v8cUwOWRv+DUBWE1/hW8Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=05SWJL
        otmdvCJDcdh94+gFiA3KVL9br7SHzW1A/LNHc=; b=mqV49qp/V+MD0gF+OoFs4F
        0Mcx7VvKlP6VMnxEHcaYUOiMjhh+ZiUibt99oqlBGjTvs/1aySgSN9PQzgjsTHS2
        MBR7IWHDIXQTMfvk6nlGrrzWtPx/8coInYi1OP82yaMG4TVFAKlfbHRjSIIJQbch
        ixrUZ5aipB+E4NiPwlnhbiQJismfASrmdfX9NSdxGHzukDM6ScUG3/UA0pEVGClC
        2jV68Bl6UoWY7CzqjCXdJViObwYN/GXQqdD9q9i9LkxixlJETJKyOQ56oJmFuZSU
        Tl0nCsmfG4hqKL+0V492YY1TQ5CDbbTG+kuWLzLwayeN7qimUMpFMQLXnO5GJpAg
        ==
X-ME-Sender: <xms:7nVQXzCwkTJrQ88albNexYNykRne8x1YN06NE6p2rhoQkKRu0yyj0g>
    <xme:7nVQX5hAicAUztC2kqdbYvN3SaIhpdrMvYxRXzD8hm6RWkoPrybmtEn-doqmMa1TC
    l3HSJU8jCrOzkiWFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudegtddgkeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:7nVQX-lo-Z1nTIH6FBib3_b8IqBCIiJv0yHDvvminbKSeQBuO2hv4Q>
    <xmx:7nVQX1xtImFjN6MgSqSfxLMrjct7wYJ9a2kzcsv3tvZmKlBXJ__jSQ>
    <xmx:7nVQX4T8_B4XQVhHZkPk7UmBK8k9c7qWUoDcSmE6Mu-h58R1ycIclA>
    <xmx:73VQX-doZbbqCZFIxkNmQNo5jRxamnw59mBoj2J5kXIswCjPCc7ADw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 45478E00DF; Thu,  3 Sep 2020 00:49:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-257-g770afc8-fm-20200903.002-g770afc8a
Mime-Version: 1.0
Message-Id: <d1fb6ecb-6343-40b9-b05c-dfb73e8bb058@www.fastmail.com>
In-Reply-To: <20200728025527.174503-3-joel@jms.id.au>
References: <20200728025527.174503-1-joel@jms.id.au>
 <20200728025527.174503-3-joel@jms.id.au>
Date:   Thu, 03 Sep 2020 14:19:29 +0930
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Joel Stanley" <joel@jms.id.au>, linux-fsi@lists.ozlabs.org,
        "Rob Herring" <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        "Eddie James" <eajames@linux.ibm.com>
Subject: Re: [PATCH 2/5] fsi: aspeed: Support cabled FSI
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Tue, 28 Jul 2020, at 12:25, Joel Stanley wrote:
> Some FSI capable systems have internal FSI signals, and some have
> external cabled FSI. Software can detect which machine this is by
> reading a jumper GPIO, and also control which pins the signals are
> routed to through a mux GPIO.
> 
> This attempts to find the GPIOs at probe time. If they are not present
> in the device tree the driver will not error and continue as before.
> 
> The mux GPIO is owned by the FSI driver to ensure it is not modified at
> runtime. The routing jumper obtained as non-exclusive to allow other
> software to inspect it's state.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/fsi/fsi-master-aspeed.c | 46 +++++++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
> index 2b8ca72baeb5..c282de76e6e7 100644
> --- a/drivers/fsi/fsi-master-aspeed.c
> +++ b/drivers/fsi/fsi-master-aspeed.c
> @@ -13,6 +13,7 @@
>  #include <linux/regmap.h>
>  #include <linux/slab.h>
>  #include <linux/iopoll.h>
> +#include <linux/gpio/consumer.h>
>  
>  #include "fsi-master.h"
>  
> @@ -417,6 +418,45 @@ static int aspeed_master_init(struct 
> fsi_master_aspeed *aspeed)
>  	return 0;
>  }
>  
> +static int tacoma_cabled_fsi_fixup(struct device *dev)
> +{
> +	struct gpio_desc *routing_gpio, *mux_gpio;
> +	int gpio;
> +
> +	/*
> +	 * The routing GPIO is a jumper indicating we should mux for the
> +	 * externally connected FSI cable.
> +	 */
> +	routing_gpio = devm_gpiod_get_optional(dev, "fsi-routing",
> +			GPIOD_IN | GPIOD_FLAGS_BIT_NONEXCLUSIVE);
> +	if (IS_ERR(routing_gpio))
> +		return PTR_ERR(routing_gpio);
> +	if (!routing_gpio)
> +		return 0;
> +
> +	mux_gpio = devm_gpiod_get_optional(dev, "fsi-mux", GPIOD_ASIS);
> +	if (IS_ERR(mux_gpio))
> +		return PTR_ERR(mux_gpio);
> +	if (!mux_gpio)
> +		return 0;
> +
> +	gpio = gpiod_get_value(routing_gpio);
> +	if (gpio < 0)
> +		return gpio;
> +
> +	/* If the routing GPIO is high we should set the mux to low. */
> +	if (gpio) {
> +		gpiod_direction_output(mux_gpio, 0);
> +		dev_info(dev, "FSI configured for external cable\n");
> +	} else {
> +		gpiod_direction_output(mux_gpio, 1);
> +	}

I haven't checked this logic against the hardware but the rest of the patch 
looks okay.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
