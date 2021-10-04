Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2353421275
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 17:16:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233387AbhJDPSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 11:18:00 -0400
Received: from smtp2.axis.com ([195.60.68.18]:20436 "EHLO smtp2.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233289AbhJDPSA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Oct 2021 11:18:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1633360571;
  x=1664896571;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=2KTYP+6+Oa+eVOZ4J5T/8XxYyfJctb51pSOnZcy78io=;
  b=qIJCUpLtSkkrLyZ+xNESMVjl24fG+DMr8frSxKuQ4OWYfO5GYcwwk2N6
   JRR/uFSzPWwknYE8GPx9TzEE0ZWy6XP+wSUFMj3oWVlRSamVGh5s7Ow+P
   yH0t3XDb/Eoweb3EtDty6tJN4N6zjG7rb+VF45RmhopJabnjOg3V16Wql
   0yHs7cjtiYEvw83NVY16d+ggNeDKCW1EQ7elZZvQwzMOQDOgBgGjGy9qm
   Vg9liilGB4lbUX3iSR4swenW3VV/wKqyvi8qvEHE5O695vuzlpmEB1REP
   gFN8lth0BPBNLj3D/nI+BFa0AFlcgoe3tLkLUm5+lNLLCc5c7pxUQLFOD
   A==;
Date:   Mon, 4 Oct 2021 17:16:04 +0200
From:   Ricard Wanderlof <ricardw@axis.com>
X-X-Sender: ricardw@lnxricardw1.se.axis.com
To:     Mark Brown <broonie@kernel.org>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: sound: tlv320adc3xxx: New codec
 driver
In-Reply-To: <YVr8tqRoyyiWR4xl@sirena.org.uk>
Message-ID: <alpine.DEB.2.21.2110041656220.14472@lnxricardw1.se.axis.com>
References: <alpine.DEB.2.21.2110041115070.14472@lnxricardw1.se.axis.com> <YVr8tqRoyyiWR4xl@sirena.org.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: se-mail04w.axis.com (10.20.40.10) To se-mail07w.axis.com
 (10.20.40.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 4 Oct 2021, Mark Brown wrote:

> On Mon, Oct 04, 2021 at 11:17:47AM +0200, Ricard Wanderlof wrote:
> 
> > +  gpios:
> > +    maxItems: 1
> > +    description: GPIO pin used for codec reset (RESET pin)
> 
> Usually this would be called reset-gpios and/or have a name to improve
> readability and allow for extensibility, from the binding we can see
> that the device has other signals that can be used as GPIOs.

In this case, 'GPIO pin' refers to the GPIO pin on the host side that is 
connected to the reset pin on the codec, not which pin on the codec that 
is used for the reset function. So I probably didn't express this 
correctly in the binding document.

My strategy was to just call the property 'gpios' and if more host control 
signals were needed, one can add a 'gpio-names' property in the future, 
but I see no other codec bindings have a 'gpio-names' so I think I'll 
simply change this to 'reset-gpios', as there are not any other pins that 
it's likely a host would have any need to control; if that happens we can 
add another 'foo-gpios' property when the time comes.

> > +  ti,pll-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum:
> > +      - 0 # ADC3XXX_PLL_DONT_SET - leave mode unchanged
> > +      - 1 # ADC3XXX_PLL_ENABLE - use the on-chip PLL
> > +      - 2 # ADC3XXX_PLL_BYPASS - do not use the on-chip PLL
> > +      - 3 # ADC3XXX_PLL_AUTO - use on-chip PLL if possible
> > +    default: 0
> > +    description: |
> > +      Set on-chip PLL mode.
> > +      ADC3XXX_PLL_DONT_SET is intended for use when setting the clock mod
> > +      via the clock id in a machine driver and it is not to be changed
> > +      from the previous setting.
> > +      ADC3XXX_PLL_AUTO will enable  on-chip PLL if possible, depending on the
> > +      master clock and sample rate combination.
> 
> Why is this configured through the DT binding and not via the machine
> driver as done for other drivers?

The reason is that I want to be able to use this driver with the 
simple-card machine driver which doesn't have any PLL control options 
AFAIK, as the .set_sysclk callback clk_id parameter is always set to 0 
by simple-card.

> > +      Note that there is currently no support for reading the GPIO pins as
> > +      inputs.
> 
> This doesn't belong in the binding document, it's describing the binding
> not any particular implementation.

Good point, I'll remove it.

/Ricard
-- 
Ricard Wolf Wanderlof                           ricardw(at)axis.com
Axis Communications AB, Lund, Sweden            www.axis.com
Phone +46 46 272 2016                           Fax +46 46 13 61 30
