Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FBA676FBD0
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 10:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231657AbjHDITS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 04:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232559AbjHDITR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 04:19:17 -0400
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60ECCAC
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 01:19:16 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E795360005;
        Fri,  4 Aug 2023 08:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1691137155;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=XnHUETHA//S6zU6TjCZDIWn6kGObZLazw+SFJLVqfKw=;
        b=UaCx4BIndDrV5tluMsb/4ytu1W2UQEZoS74rLiIi0X+JB7+gCA4KaB5IfmSDwUY5zdiWqz
        dXyeLSd1jW69REGrjGUxMWTMYhQI3tmFVL3L4oPeE+E1HI4gevEE0vo9k0Tmei4pe/pP8k
        1EJyn0C66tRUeDNQV7U76LitUKl572vZQqI1rsHv6vn2P15z462hXpHm+sOHPEv0agR8TA
        1pOPcaEJKeo/mH6UtplUq6HI5PqoqIk4I3hNSLWSzMM5qSgny4XZ3gtk1mPhCqDYQUQLai
        Y0O1pVZmpr1yaJUDQqXDFgiel2KCjsu98Yvvq8RsAr20/QEgP8p6p51WJRUlfw==
Date:   Fri, 4 Aug 2023 10:19:12 +0200
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Marek Vasut <marex@denx.de>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 2/2] drm/panel-simple: Add Innolux G156HCE-L01 panel
 entry
Message-ID: <20230804101912.696a02aa@booty>
In-Reply-To: <01496199-5be9-7084-735d-55a11e30217f@denx.de>
References: <20230731210258.256152-1-marex@denx.de>
        <20230731210258.256152-2-marex@denx.de>
        <20230803162314.122fab64@booty>
        <9b236561-36af-da7a-2caf-892be68e2b76@denx.de>
        <20230803170659.2e44e204@booty>
        <01496199-5be9-7084-735d-55a11e30217f@denx.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Thu, 3 Aug 2023 19:10:35 +0200
Marek Vasut <marex@denx.de> wrote:

> On 8/3/23 17:06, Luca Ceresoli wrote:
> > Hi Marek,
> > 
> > On Thu, 3 Aug 2023 16:25:37 +0200
> > Marek Vasut <marex@denx.de> wrote:
> >   
> >> On 8/3/23 16:23, Luca Ceresoli wrote:  
> >>> Hi Marek,  
> >>
> >> Hi,
> >>  
> >>> On Mon, 31 Jul 2023 23:02:58 +0200
> >>> Marek Vasut <marex@denx.de> wrote:
> >>>      
> >>>> Add support for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
> >>>> dual-link LVDS TFT panel. Documentation is available at [1].  
> >>>
> >>> Interesting, I'm bringing up this exact panel right now and found your
> >>> patch.
> >>>      
> >>>> The middle frequency is tuned slightly upward from 70.93 MHz
> >>>> to 72 MHz, otherwise the panel shows slight flicker.  
> >>>
> >>> Using 70.93 MHz here does not show any flickering. I even tried going
> >>> in the opposite direction and set 70 MHz, and to use different
> >>> backlight settings, all without any flickering.
> >>>
> >>> Do you think you might be using a defective device? Would you have a
> >>> chance of testing another sample?  
> >>
> >> I have literally one such display.
> >>
> >> Which SoC do you use (and if applicable, which bridge) ?  
> > 
> > The panel is driven by the DSI-2 output of a i.MX8MP through a TI
> > SN65DSI84 bridge.  
> 
> I use the LT9211 , so I wonder whether this might be another Lontium 
> specific oddity.

Or maybe not. After checking the LVDS clock with an oscilloscope I
discovered I was actually sending 77 MHz. After fixing it I found that
my panel (of which I only have one sample as well) does not display any
output with pixel clocks <= 75 MHz. It works with clocks >= 76 MHz.

I'm trying to get more info about this.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
