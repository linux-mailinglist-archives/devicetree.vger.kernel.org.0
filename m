Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A87266D18D6
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 09:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230199AbjCaHoW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 03:44:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230096AbjCaHoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 03:44:21 -0400
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A58C012D
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 00:44:20 -0700 (PDT)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 0672A20010;
        Fri, 31 Mar 2023 07:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1680248659;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=SDE65/9UMQcVJEA+MrPuDNWDnBd+1E2AaSdY+g9jmkk=;
        b=bxbMf2OIFqouKOHScTviVUqivPdZh176KPQb9VRlmU5Bc9U/A81xFq7Hb6fFKzYRVtnUJl
        J0EqalrRu7ywflqCWsj+kA4VbJ07iLQBGGG9doUYcGZm+lprMtEDZwsjaSQ8LmtFaUgamv
        omquqS173IkTauYZroHrkaxw7Z2+NyH9qgMjv0um21pLnCJUbls1QXYGED+j41mTan5FNG
        NvFHoiidu5RVfPsAltT1x/CHULjdkbQoUl6qqP/E6FXKN2H5w+U0UcRvJhb8Jro0xltnqC
        +k+m0xalKUzviTltWz9zcniMpdcG7A24yv77qllBr+gE/ezZJ1RKZS81+c3TZA==
Date:   Fri, 31 Mar 2023 09:44:14 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Jack Chen <zenghuchen@google.com>, linux-i3c@lists.infradead.org,
        devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v2 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c
 controller
Message-ID: <202303310744148a8192e9@mail.local>
References: <cover.1680160851.git.jk@codeconstruct.com.au>
 <CALvyBcV9EnwgcuNXF=uUwdQZ=WHjmpinD=s0FkL=KC0OBTwXBA@mail.gmail.com>
 <48906ed40dbf34a28cb9bcc2569d113abd88e409.camel@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <48906ed40dbf34a28cb9bcc2569d113abd88e409.camel@codeconstruct.com.au>
X-Spam-Status: No, score=-0.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2023 10:33:35+0800, Jeremy Kerr wrote:
> Hi Zenghu,
> 
> > Thanks for the change, especially IBI features in other threads.
> > From my understanding, ASPEED AST2600 is a SoC which uses Synopsys'
> > I3C IP core, and several different registers, especially the pull-up
> > resistor.
> > If so, I am wondering if this is the right place to add
> > ast2600-i3c-master.c, given that all current three xxx-i3c-master.c
> > drivers in this directory are from IP providers directly.
> > What about moving it under ~/driver/soc/?
> 
> It's my understanding that drivers/soc/ is for smaller parts of
> SoC-specific functions, rather than implementing SoC driver instances
> for existing subsystems.
> 
> I'd prefer to keep it with the i3c controller drivers; this means we can
> keep the dw platform API as contained as possible (ie., within
> drivers/i3c/master/). I expect that we will need some coordination of
> changes until we have the platform-specific behaviour mostly described
> (see the IBI series for another hook), and so coordinating changes
> between drivers/soc/ and drivers/i3c/ may make things more complicated
> than necessary.
> 
> There's certainly precedence for this pattern:
> 
>  * the aspeed ethernet mac is provided by the ftgmac100 driver plus some
>    SoC-specific behaviour; that's entirely within drivers/net/
> 
>  * the aspeed VUART device is essentially a 16550 plus extra registers;
>    that's entirely within drivers/tty/
> 

I confirm this has to be in drivers/i3c


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
