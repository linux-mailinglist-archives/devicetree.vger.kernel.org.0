Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D44FD76EC69
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 16:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236750AbjHCOYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 10:24:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236751AbjHCOX4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 10:23:56 -0400
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B10162685
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 07:23:18 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id DE88D60002;
        Thu,  3 Aug 2023 14:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1691072597;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=WigczEMMTc5Fj5bj+faQESZsB+aGJTcyPagITF/pmxY=;
        b=XjAqWjU3YM6OupJueg341MbbHR+kSvxhVRh4NzJ7iVOuCrkGtMNOuTqiQHND8vi+OsApxN
        E34AFHY3ZIoUgUGxTjpo+FhF8FAyNp/wgHjCUpx9kuE0haptJUxwJ28UuFZ4Oi4G+EGwxY
        fS53Q/r+sOUyXu6pX/OYKLMqtu3o3/nV4mx7E2jxdX3uMtURK76ZwmXaubEOp69Su0QU+D
        wVqnN6weJTPw1mnfkCVJNpVLXGC8Kzb1Gh+x01Xu4GDuBKrEtOaEiptpFh6TyxAiLT8Ejf
        6SE/D5LaKBeRjjjBeMDOVMmspp784xsfhxk817FEde8AHGxPaXRfjMEwQljoyA==
Date:   Thu, 3 Aug 2023 16:23:14 +0200
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 2/2] drm/panel-simple: Add Innolux G156HCE-L01 panel
 entry
Message-ID: <20230803162314.122fab64@booty>
In-Reply-To: <20230731210258.256152-2-marex@denx.de>
References: <20230731210258.256152-1-marex@denx.de>
        <20230731210258.256152-2-marex@denx.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Mon, 31 Jul 2023 23:02:58 +0200
Marek Vasut <marex@denx.de> wrote:

> Add support for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
> dual-link LVDS TFT panel. Documentation is available at [1].

Interesting, I'm bringing up this exact panel right now and found your
patch.

> The middle frequency is tuned slightly upward from 70.93 MHz
> to 72 MHz, otherwise the panel shows slight flicker.

Using 70.93 MHz here does not show any flickering. I even tried going
in the opposite direction and set 70 MHz, and to use different
backlight settings, all without any flickering.

Do you think you might be using a defective device? Would you have a
chance of testing another sample?

> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 396a22177c674..417dd69054fc1 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2377,6 +2377,37 @@ static const struct panel_desc innolux_g121x1_l03 = {
>  	},
>  };
>  
> +static const struct display_timing innolux_g156hce_l01_timings = {
> +	.pixelclock = { 120000000, 144000000, 150000000 },

In case the 144 MHz clock is kept, I'd add a comment here to clarify
the reason for diverging from the datasheet without the need for git
log.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
