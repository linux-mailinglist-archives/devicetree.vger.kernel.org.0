Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90AB96E4BD4
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230385AbjDQOsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230433AbjDQOsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:48:38 -0400
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F95A24F
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
        t=1681742913; bh=4HgJy/9pgR5i7nOeu9T/kRgJucpwOG5H6WnHdafmXds=;
        h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
        b=F2+V25Y/lcgTUJ0TSehImQO5zuQDt7mjzOFAoz1skMM+7Vv2weeCPDLWZzN1l0HrZ
         XwpGoXe1CD6rjWAP/G//ZQDCFYxu96PFlGDGMBHqJtE4NIzlvs2vfY4D6RsyA3VI8q
         t2t1ffBRRrfFOkz85jyNg8Wkv4QAoD8I29qDvFjc=
Date:   Mon, 17 Apr 2023 16:48:33 +0200
From:   =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To:     Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume
 keys
Message-ID: <20230417144833.gqvzaqurpgi7rbof@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
 <4152389.RUnXabflUD@diego>
 <20230417123716.c23izju4ezjrzytn@core>
 <3377280.SvYEEZNnvj@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3377280.SvYEEZNnvj@diego>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 17, 2023 at 04:36:55PM +0200, Heiko Stübner wrote:
> Am Montag, 17. April 2023, 14:37:16 CEST schrieb Ondřej Jirman:
> > Hello Heiko,
> > 
> > On Mon, Apr 17, 2023 at 10:34:20AM +0200, Heiko Stübner wrote:
> > > Hi Peter, Ondrej,
> > > 
> > > Am Mittwoch, 5. April 2023, 15:53:39 CEST schrieb Ondřej Jirman:
> > > > [...]
> > > >
> > > > (I have to press quite hard to get bellow 300 and to get reliable detection
> > > > of volume down key press)
> > > > 
> > > > On development version of the phone, the value returned by sardac is less
> > > > variable. Basically either 298.828125 or 300.5859375 but it's also on
> > > > the edge.
> > > > 
> > > > I suggest raising the threshold to something like 600 and to do your own
> > > > testing, to get more data points. Unpressed value is ~1791.2109375 on both
> > > > phones, so 400 still gets a lot of headroom. And volume up is always < 15
> > > > in my tests.
> > > 
> > > did this get more attention meanwhile?
> > > 
> > > I don't have a Pinephone Pro myself, so you'll need to decide between you
> > > about the value and the concern Ondrej raised here for the value.
> > 
> > It's safe and needed to use a higher value.
> 
> so in a nutshell, if I change "Volume Down" to say 400000 instead of the
> current 300000, the patch is good to go?

My suggestion was 600 mV so 600000. :) Otherwise, yes.

kind regards,
	o.

> I.e. that was my main question :-), as you raised the objection to the value
> in your initial reply
> 
> Thanks
> Heiko
> 
> 
> 
> > SAR ADC input is pulled high to 1.8V unless some key is pressed, so unpressed
> > value will always be around 1800 on all Pinephones, and pressed value will
> > depend on contact quality and tolerances. For volume down, SAR ADC input is fed
> > from a resistor divider of (10kOhm + 2kOhm) from 1.8V power rail. So that gives
> > 2/12*1.8 = 0.3V. We can't have the press detection threshold right at this
> > voltage, because:
> > 
> > 1) these resistors have tolerances that will randomly result in measured voltage
> >    being above or below the 0.3V on real devices (-1% on 10k and +1% on 2k =
> >    2*1.01/(10*0.99+2*1.01)*1.8 = 305 mV - already too high even without
> >    considering switch contact quality), and
> > 
> > 2) those piddly membrane switches apparently have their own random resistance
> >    that is added to the bottom leg of the resistor divider, and depends on
> >    strenght of the press on some devices (and switches may develop higher
> >    resistance with age/use).
> > 
> > Schematic: https://megous.com/dl/tmp/1125d9248a8213b3.png
> > 
> > kind regards,
> > 	o.
> > 
> > > Thanks
> > > Heiko
> > 
> 
> 
> 
> 
