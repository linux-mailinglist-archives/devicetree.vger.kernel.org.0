Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14B476D15A6
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 04:33:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjCaCdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 22:33:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjCaCdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 22:33:40 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58EE7CDCF
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 19:33:38 -0700 (PDT)
Received: from [192.168.191.192] (pa49-196-168-189.pa.vic.optusnet.com.au [49.196.168.189])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 26CC7200DB;
        Fri, 31 Mar 2023 10:33:36 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680230016;
        bh=P9UdsgxN131/GqgsNvVJGmSkX4tHdz+XN8KYKl1UhrU=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=ND4mfBPO4a25IE9UZWCoKSsS2S5irou6RMzdTntGVXrAoERJXqaBe47iB0qMGSnBf
         gZRh5MU08Ko4xfqsCeMbuKmBsirlup/+Ob4frRkRFrmgRWWHEIu0xBkHfYrcX2Gwtz
         uhLdeBy7HLfySTht94pXqpJa4TDXixGaJg3T9TGkDo2xU/5EdKz43l+nkHG0L4gYyF
         0ZglgiySbea7ziwvwX/lY23WLBuSBGh/PFb9njXQuVIAxqpG4KICuYDl5SRc0/6ZLq
         Vb88751gk8GWlx+2isSoDwNv407xfwkQu23sk+3mf/BYzoUjbs9EXQAz/hCJk4l0Rn
         37bxyNH283ocg==
Message-ID: <48906ed40dbf34a28cb9bcc2569d113abd88e409.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c
 controller
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Jack Chen <zenghuchen@google.com>
Cc:     linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Date:   Fri, 31 Mar 2023 10:33:35 +0800
In-Reply-To: <CALvyBcV9EnwgcuNXF=uUwdQZ=WHjmpinD=s0FkL=KC0OBTwXBA@mail.gmail.com>
References: <cover.1680160851.git.jk@codeconstruct.com.au>
         <CALvyBcV9EnwgcuNXF=uUwdQZ=WHjmpinD=s0FkL=KC0OBTwXBA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zenghu,

> Thanks for the change, especially IBI features in other threads.
> From my understanding, ASPEED AST2600 is a SoC which uses Synopsys'
> I3C IP core, and several different registers, especially the pull-up
> resistor.
> If so, I am wondering if this is the right place to add
> ast2600-i3c-master.c, given that all current three xxx-i3c-master.c
> drivers in this directory are from IP providers directly.
> What about moving it under ~/driver/soc/?

It's my understanding that drivers/soc/ is for smaller parts of
SoC-specific functions, rather than implementing SoC driver instances
for existing subsystems.

I'd prefer to keep it with the i3c controller drivers; this means we can
keep the dw platform API as contained as possible (ie., within
drivers/i3c/master/). I expect that we will need some coordination of
changes until we have the platform-specific behaviour mostly described
(see the IBI series for another hook), and so coordinating changes
between drivers/soc/ and drivers/i3c/ may make things more complicated
than necessary.

There's certainly precedence for this pattern:

 * the aspeed ethernet mac is provided by the ftgmac100 driver plus some
   SoC-specific behaviour; that's entirely within drivers/net/

 * the aspeed VUART device is essentially a 16550 plus extra registers;
   that's entirely within drivers/tty/

Cheers,


Jeremy
