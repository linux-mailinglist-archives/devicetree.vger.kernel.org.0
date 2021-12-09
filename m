Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5B2446ED51
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 17:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235998AbhLIQsT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 11:48:19 -0500
Received: from wout5-smtp.messagingengine.com ([64.147.123.21]:38429 "EHLO
        wout5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233501AbhLIQsS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 11:48:18 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 630BA3201EA6;
        Thu,  9 Dec 2021 11:44:44 -0500 (EST)
Received: from imap47 ([10.202.2.97])
  by compute3.internal (MEProxy); Thu, 09 Dec 2021 11:44:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svenpeter.dev;
         h=mime-version:message-id:in-reply-to:references:date:from:to
        :cc:subject:content-type; s=fm3; bh=Fb3YAThB7Ts2CehfhGQ6o7m7fEEu
        BDFlgntPwARqXhQ=; b=gnm7hIzDu6Df7g7pBoYtmcFplKBEaDsyjio/BrR9Yqfj
        q0GZFYUlm28gWXOQLkkuLLCZstfdbgx7+BwHHNZo330kD+mrLwtyoMv4CB1JQqz6
        7RhPF2/e5bZB8XlBx5/V9TDkMVS89D2TQi7SGPLfXkXBjMDq0BxK/Uew9gY6vTuG
        ZNHWuPXMZr+Q0tWbEOtnVQUZW8z3YYAyl1CC7EPfhA8jQCtLLDKScDGlFARdPKKd
        k+CLe+ytnd0D6cDKH65EM6QspNy53D8yWKrMwV+hnt3ZB/JbZKPlnJT8XLBdJy5p
        lC8/YZOmggm1vPo+OKpvh79pOn90QobFDIXBW4L+Kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Fb3YAT
        hB7Ts2CehfhGQ6o7m7fEEuBDFlgntPwARqXhQ=; b=TMYyE2/TK51I83uW0VdS62
        ejyniY9vv17ibX90xoZy50WJHJcLVt3qAijjA2rn8UcFkaz0jdlpvsMSr2ZbajCQ
        coz+iaYW+ZG6t0ttvn1SLuVsv2kkKx2eOpIe6GIykdh/Dn0F3rLTjWhQhOOkNCA8
        6edcM1MlJjn4f6c6MDEnPDcKozupoTCXOkw9M+IBjWJo2JMFF0ehntLCZnoEeU4D
        FSvMH22dt1mfSgmG2N1lVm1D/43Tm2KeY/gJCtbt1d62otihiXCeQc6yGHLXj7X5
        i+3YEcLPerpt+OfVBMgWSpiaHUlHNpcL4kRazuf+LkjQXB8DTduhbIyn0m+kxr9A
        ==
X-ME-Sender: <xms:ezKyYb1KOv6b9OzEMj5IRbrt9Ai-4KwfWz0TJF0PcWnAldWZ45_s-A>
    <xme:ezKyYaG8KbJgxnDiN7ITimHL0Hv4YMtkjgrm_vkj1x-VKATOR6fnVKqmPOb4mj4ZV
    0Ru04jKIHNdf6TbzU4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkedtgdelhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfufhvvghn
    ucfrvghtvghrfdcuoehsvhgvnhesshhvvghnphgvthgvrhdruggvvheqnecuggftrfgrth
    htvghrnhepgfeigeeiffeuhfettdejgfetjeetfeelfefgfefgvddvtdfghfffudehvdef
    keffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsh
    hvvghnsehsvhgvnhhpvghtvghrrdguvghv
X-ME-Proxy: <xmx:ezKyYb5OCtWyBu3l6mB0DZjqispDvdYr0gw9TdtKrFsBBmx1r4s6lw>
    <xmx:ezKyYQ2nLZj4VI6IW_xqTzmNro4ZqJkLm3m7KnqoGn89GFaQ3b72Dw>
    <xmx:ezKyYeGSxVGFcG3gIrybpUE3VcZOjyqAhbAOnGTnBz6DLE-tysQgJQ>
    <xmx:ezKyYaB23HSnGhYctozElo0TaXL8TlIrO1WDgG1CAUcOwMCX4WsWdA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 7EC4E27406B6; Thu,  9 Dec 2021 11:44:43 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4506-g4374de3f18-fm-20211208.001-g4374de3f
Mime-Version: 1.0
Message-Id: <7569fe04-5c9e-4bc3-b046-c210490b570c@www.fastmail.com>
In-Reply-To: <20211209044501.67028-3-marcan@marcan.st>
References: <20211209044501.67028-1-marcan@marcan.st>
 <20211209044501.67028-3-marcan@marcan.st>
Date:   Thu, 09 Dec 2021 17:44:20 +0100
From:   "Sven Peter" <sven@svenpeter.dev>
To:     "Hector Martin" <marcan@marcan.st>,
        "Rob Herring" <robh+dt@kernel.org>
Cc:     "Mark Kettenis" <kettenis@openbsd.org>,
        "Alyssa Rosenzweig" <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] soc: apple: apple-pmgr-pwrstate: Add auto-PM min level support
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 9, 2021, at 05:45, Hector Martin wrote:
> This is seemingly required for DCP/DCPEXT, without which they refuse to
> boot properly. They need to be set to minimum state 4 (clock gated).
>
> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>  drivers/soc/apple/apple-pmgr-pwrstate.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/soc/apple/apple-pmgr-pwrstate.c 
> b/drivers/soc/apple/apple-pmgr-pwrstate.c
> index 8ad9d5fdefbf..590bb7439372 100644
> --- a/drivers/soc/apple/apple-pmgr-pwrstate.c
> +++ b/drivers/soc/apple/apple-pmgr-pwrstate.c
> @@ -20,6 +20,7 @@
>  #define APPLE_PMGR_RESET        BIT(31)
>  #define APPLE_PMGR_AUTO_ENABLE  BIT(28)
>  #define APPLE_PMGR_PS_AUTO      GENMASK(27, 24)
> +#define APPLE_PMGR_PS_MIN       GENMASK(19, 16)
>  #define APPLE_PMGR_PARENT_OFF   BIT(11)
>  #define APPLE_PMGR_DEV_DISABLE  BIT(10)
>  #define APPLE_PMGR_WAS_CLKGATED BIT(9)
> @@ -42,6 +43,7 @@ struct apple_pmgr_ps {
>  	struct reset_controller_dev rcdev;
>  	struct regmap *regmap;
>  	u32 offset;
> +	u32 min_state;
>  };
> 
>  #define genpd_to_apple_pmgr_ps(_genpd) container_of(_genpd, struct 
> apple_pmgr_ps, genpd)
> @@ -224,6 +226,12 @@ static int apple_pmgr_ps_probe(struct 
> platform_device *pdev)
>  	ps->genpd.power_on = apple_pmgr_ps_power_on;
>  	ps->genpd.power_off = apple_pmgr_ps_power_off;
> 
> +	ret = of_property_read_u32(node, "apple,min-state", &ps->min_state);
> +	if (ret >= 0) {


I think of_property_read_u32 never returns anything > 0 such that
"if (ret == 0)" should be enough. You could also add a check that min_state
must be <= 0b1111 here if you're feeling paranoid.

Either way,

Reviewed-by: Sven Peter <sven@svenpeter.dev>



> +		regmap_update_bits(regmap, ps->offset, APPLE_PMGR_FLAGS | APPLE_PMGR_PS_MIN,
> +				   FIELD_PREP(APPLE_PMGR_PS_MIN, ps->min_state));
> +	}
> +
>  	active = apple_pmgr_ps_is_active(ps);
>  	if (of_property_read_bool(node, "apple,always-on")) {
>  		ps->genpd.flags |= GENPD_FLAG_ALWAYS_ON;
> -- 
> 2.33.0
