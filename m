Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A693176ED93
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 17:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235122AbjHCPHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 11:07:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234973AbjHCPHG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 11:07:06 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D16AC106
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 08:07:03 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id CF32A1BF206;
        Thu,  3 Aug 2023 15:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1691075222;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eeSOfCuM7nPXnczwEeMLPCjuszwbvpLl5EQU4izcoEw=;
        b=YHzFZNrbcLgP8jiVYgbLHIYZ+640BDN9mNg3xklEqTI5jGFnQZai5B98r2A1gYtZFUpPz3
        WRhpbFkZ/GVKpBBRy/JRg5RPzVCpHt3TbQcSJa2j1aBO3NXs3MprIbm/tUkGU9LBQHbj05
        gkAcGBShZ4WeIUCw3me++GcjoZ3JPYVEwysft5mxtnazRbu6LlxRWiGVO6L7DqgaRjGyrS
        cn/6RM9tvCR0ToxgoJHtHNOc/yVIx+HJYLnnKZfq31MY4ouz3btImTWqo6KDZOA6nbQBpz
        bEvesu2oRTHKvwrzA5hLQ8/EqFfouCV6lbC/Atrfr9lSTxHp/NVbegNwuZeaLA==
Date:   Thu, 3 Aug 2023 17:06:59 +0200
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
Message-ID: <20230803170659.2e44e204@booty>
In-Reply-To: <9b236561-36af-da7a-2caf-892be68e2b76@denx.de>
References: <20230731210258.256152-1-marex@denx.de>
        <20230731210258.256152-2-marex@denx.de>
        <20230803162314.122fab64@booty>
        <9b236561-36af-da7a-2caf-892be68e2b76@denx.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Thu, 3 Aug 2023 16:25:37 +0200
Marek Vasut <marex@denx.de> wrote:

> On 8/3/23 16:23, Luca Ceresoli wrote:
> > Hi Marek,  
> 
> Hi,
> 
> > On Mon, 31 Jul 2023 23:02:58 +0200
> > Marek Vasut <marex@denx.de> wrote:
> >   
> >> Add support for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
> >> dual-link LVDS TFT panel. Documentation is available at [1].  
> > 
> > Interesting, I'm bringing up this exact panel right now and found your
> > patch.
> >   
> >> The middle frequency is tuned slightly upward from 70.93 MHz
> >> to 72 MHz, otherwise the panel shows slight flicker.  
> > 
> > Using 70.93 MHz here does not show any flickering. I even tried going
> > in the opposite direction and set 70 MHz, and to use different
> > backlight settings, all without any flickering.
> > 
> > Do you think you might be using a defective device? Would you have a
> > chance of testing another sample?  
> 
> I have literally one such display.
> 
> Which SoC do you use (and if applicable, which bridge) ?

The panel is driven by the DSI-2 output of a i.MX8MP through a TI
SN65DSI84 bridge.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
