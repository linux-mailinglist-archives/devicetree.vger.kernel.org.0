Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0A60988F4
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 03:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730554AbfHVB2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 21:28:21 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:54631 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730240AbfHVB2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 21:28:20 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 2107521B10;
        Wed, 21 Aug 2019 21:28:20 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute4.internal (MEProxy); Wed, 21 Aug 2019 21:28:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm3; bh=JffuWZmKIHpAssdWvVAgw68YOG/K4zA
        LCtps5XoDx6E=; b=GT0VQcuwqjqfOC32GkjkXxhQZgy+D/YsTeMPBVd3l1vET41
        OPRTPWzvsS3ZiRffKXppIhY6rR9bPJqKh0E6QQeFsW+gQ136lRnMNWWk9mciIgta
        hDW1MGt27Zc70nDEPn+HBOPpl3/cmBBNJYWcIAdbiNRF0aU1MIanVGoNRRmF54Zk
        JZMJFbe5Q/qgZuiMvMOp2MiRddqZeBDBIRUl6rk7SpKw1qSIu9ctAYQ+hWpqtZ+C
        DxNretB5Pb261wAa7XqVTmy2wmnFOMfylLKB3t42xzVzLCRqZhsKgIjI4arNaPH5
        8kzJbD+TpsI/ugkaRwj1Oqri4wnHG1rk9D14JTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=JffuWZ
        mKIHpAssdWvVAgw68YOG/K4zALCtps5XoDx6E=; b=uHRHlDyc4h6wWa4YwSnnrr
        Db7lIU0M9x8Fob20Y6ZvxM4jaj0lOEq4yhj3n5fJawIvxtKQNQA5gb6wZ4v4h0xs
        xzFeacwvqhMa6zzbJr+idpYRv8qW2MA3UOBex0dPw7CB2B5HycTr3SKgoUkqfwo6
        iB7ysZXEHLHHuJmYsSmJCdCWACPbq+nwYZY+a91eJ8yBXbWrfxiwU5Oxn8Ct6UXf
        2wYZJsA3uLkQe12I4fT+BdoYV5ngtSLYnLpPxugzLhah16BIE6eYS0NANb0gqhbh
        lcGewnkyI1faP1/PO00a4Nz5k2/HoLsx5RMwKTDrt8kjGQ6hAoYkK6nauTj5jy8Q
        ==
X-ME-Sender: <xms:s-9dXdeEUQr19jj29sGcWTzsYgvrLQ66vX_wNEYJEISUfXtDH0KWgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedggeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
    grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
    rhfuihiivgepud
X-ME-Proxy: <xmx:s-9dXSiKCGyKqVPdoNAz-SbW6YY-4ySNcu0kZ-OdE0ifpz2LZIEaMA>
    <xmx:s-9dXbN_UpMnyLPg0RXc4lw8anu2OQokCjO7VuEQLTKdDnm5LUeyGw>
    <xmx:s-9dXf8ff-Eqcn56XzTatMQPYL8YBCukKX8WiLNuqeuKwMQhOCY7Zw>
    <xmx:tO9dXZHqNj_6CL3r9Pm7FzvMo0Jtl8pdWJPRYdKnm0Y05ObNpNchJg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id CFF33E00A3; Wed, 21 Aug 2019 21:28:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <839a0780-e0ab-4615-ad6f-fda1881260b2@www.fastmail.com>
In-Reply-To: <20190821055530.8720-4-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-4-joel@jms.id.au>
Date:   Thu, 22 Aug 2019 10:58:35 +0930
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Joel Stanley" <joel@jms.id.au>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Cc:     "Ryan Chen" <ryan_chen@aspeedtech.com>,
        =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
        "Mark Rutland" <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH 3/7] ARM: aspeed: Add ASPEED AST2600 architecture
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Wed, 21 Aug 2019, at 15:26, Joel Stanley wrote:
> The AST2600 is a Cortex A7 dual core CPU that uses the ARM GIC for
> interrupts and ARM timer as a clocksource.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/mach-aspeed/Kconfig | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
> index 2979aa4daeea..56007b0b6120 100644
> --- a/arch/arm/mach-aspeed/Kconfig
> +++ b/arch/arm/mach-aspeed/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  menuconfig ARCH_ASPEED
>  	bool "Aspeed BMC architectures"
> -	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6
> +	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6 || ARCH_MULTI_V7
>  	select SRAM
>  	select WATCHDOG
>  	select ASPEED_WATCHDOG
> @@ -33,4 +33,16 @@ config MACH_ASPEED_G5
>  	 Say yes if you intend to run on an Aspeed ast2500 or similar
>  	 fifth generation Aspeed BMCs.
>  
> +config MACH_ASPEED_G6
> +	bool "Aspeed SoC 6th Generation"
> +	depends on ARCH_MULTI_V7
> +	select CPU_V7
> +	select PINCTRL_ASPEED_G6
> +	select ARM_GIC
> +	select HAVE_ARM_ARCH_TIMER
> +	select HAVE_SMP
> +	help
> +	 Say yes if you intend to run on an Aspeed ast2600 or similar
> +	 sixth generation Aspeed BMCs.
> +
>  endif
> -- 
> 2.23.0.rc1
> 
>
