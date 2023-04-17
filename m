Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE0C76E47EF
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 14:38:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbjDQMiB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 08:38:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjDQMiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 08:38:00 -0400
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 554BB46AF
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 05:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
        t=1681735036; bh=gJesLtiDnccwIC0RA7jikU/NZ0vOLBaI0EL8Y7OHrAI=;
        h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
        b=SKQOE09xi6VRiW3rlypNrv35XlLjZcT1LxzPDOJaBEQcesmiGmOqr67+WxIoTRmZu
         NubFRUhbrg8yv0kIQWVlY5mn1HUL+NGM34mBpLBiH7bwGgbCaOr6VPJHtxKI6UQXxS
         U3rc5iLWiNyqO0OKKDbwpyQBbfDzFmcyNfiYcE6s=
Date:   Mon, 17 Apr 2023 14:37:16 +0200
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
Message-ID: <20230417123716.c23izju4ezjrzytn@core>
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
 <20230405135339.bcdyjdbtynuwf5yz@core>
 <4152389.RUnXabflUD@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4152389.RUnXabflUD@diego>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Heiko,

On Mon, Apr 17, 2023 at 10:34:20AM +0200, Heiko Stübner wrote:
> Hi Peter, Ondrej,
> 
> Am Mittwoch, 5. April 2023, 15:53:39 CEST schrieb Ondřej Jirman:
> > [...]
> >
> > (I have to press quite hard to get bellow 300 and to get reliable detection
> > of volume down key press)
> > 
> > On development version of the phone, the value returned by sardac is less
> > variable. Basically either 298.828125 or 300.5859375 but it's also on
> > the edge.
> > 
> > I suggest raising the threshold to something like 600 and to do your own
> > testing, to get more data points. Unpressed value is ~1791.2109375 on both
> > phones, so 400 still gets a lot of headroom. And volume up is always < 15
> > in my tests.
> 
> did this get more attention meanwhile?
> 
> I don't have a Pinephone Pro myself, so you'll need to decide between you
> about the value and the concern Ondrej raised here for the value.

It's safe and needed to use a higher value.

SAR ADC input is pulled high to 1.8V unless some key is pressed, so unpressed
value will always be around 1800 on all Pinephones, and pressed value will
depend on contact quality and tolerances. For volume down, SAR ADC input is fed
from a resistor divider of (10kOhm + 2kOhm) from 1.8V power rail. So that gives
2/12*1.8 = 0.3V. We can't have the press detection threshold right at this
voltage, because:

1) these resistors have tolerances that will randomly result in measured voltage
   being above or below the 0.3V on real devices (-1% on 10k and +1% on 2k =
   2*1.01/(10*0.99+2*1.01)*1.8 = 305 mV - already too high even without
   considering switch contact quality), and

2) those piddly membrane switches apparently have their own random resistance
   that is added to the bottom leg of the resistor divider, and depends on
   strenght of the press on some devices (and switches may develop higher
   resistance with age/use).

Schematic: https://megous.com/dl/tmp/1125d9248a8213b3.png

kind regards,
	o.

> Thanks
> Heiko
