Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9E820F993
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 18:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726639AbgF3Qfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jun 2020 12:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389026AbgF3Qfp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jun 2020 12:35:45 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C466FC03E979
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2020 09:35:44 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s10so20800525wrw.12
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2020 09:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=UY5dDFhwanGzAjA/Hwk2nkrFK53nDw/tdJsDrb47uYk=;
        b=vrFYsy4PUl1thVhIBI/n6B96HCHkilWvostX6tmewC49h0ySiM903UwYD1fxS29iu4
         yOiq4Y1F1VPbwPzqlrm6Y+NfDMSiRbhA4SkEp+BZa0TPe9+QxNfVog0TbB/EPwrtMmqA
         dkdkDd9lcFAdHIGd3N1iZ/r8mVRIbmnEVsXeXR2t5mBHnz0wOPu4Qqq8oiTEzx90ZPbE
         P1euW+KHLG0Ghx2/f6vqQKD826gOZ7tSSs8m43sJHNB/3mVoQolt1i3kdO6KWDPBxpge
         J+AwQRo8tLxwQhDhizaWP0hyxjlZHmfiWkyP7ld2AOQIBdzdJg8M/vkkBZdEQ69MTzwV
         PJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UY5dDFhwanGzAjA/Hwk2nkrFK53nDw/tdJsDrb47uYk=;
        b=oZnwPjdO3Ho8sD8HLRJwILfI0p/bC91rbhe6n9/h5aHdeShAS0RJZtmw66etMwV3+x
         d+sckIx/3/pChK9ni+WUGbnv+WqgvEMEiBuLpw7YghSlObCPToiJ4TotewqyDDUe0T3E
         EsmHGbpVxr49r1isJsSi9n6BSDIbq6WBNAFWLgJOxYwMGNnWoJ6/aEJO8kTvkLJU7Xp2
         py55dC6/8gKyXscLn/OoqzeW71jFn5a/o8Pn1dkGxnpKYS4lAfhU4mW3tjsYcrDpYY2k
         mX42ypRVsCVMxhHTaH7QwIJRukSn8+gnoECKdiancsu5YBCoOjKwFb36kvLM1nF9Xagh
         BNVA==
X-Gm-Message-State: AOAM533FeEv8fI36Mpxo+/WWsxjMReyB3PuaQAA32KZRCe0APT+WjAZ4
        Zg0gqG4RrPJqqAaXVYNGBnmfIQ==
X-Google-Smtp-Source: ABdhPJwHpMmHLbOR2PK+c8AILDnO4gKbH2fhAO3npF+VHuPJVOUOu/Moc+PFY2jA82EhThxZdEOdtw==
X-Received: by 2002:adf:ec90:: with SMTP id z16mr22454514wrn.52.1593534943359;
        Tue, 30 Jun 2020 09:35:43 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
        by smtp.gmail.com with ESMTPSA id k126sm4324376wme.17.2020.06.30.09.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 09:35:42 -0700 (PDT)
Date:   Tue, 30 Jun 2020 17:35:41 +0100
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] dt-bindings: backlight: Convert common backlight
 bindings to DT schema
Message-ID: <20200630163541.cvllavnbmgdlvpfy@holly.lan>
References: <20200618224413.1115849-1-robh@kernel.org>
 <20200619215341.GA6857@ravnborg.org>
 <20200622165730.pnx7fzbq5e6q5h4l@holly.lan>
 <CAL_JsqK1yJ09k6tKak==TjRN17VzueVkcf-WOLw2ETL2ZJv9sg@mail.gmail.com>
 <20200629191847.GA318506@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200629191847.GA318506@ravnborg.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 29, 2020 at 09:18:47PM +0200, Sam Ravnborg wrote:
> On Mon, Jun 29, 2020 at 11:57:37AM -0600, Rob Herring wrote:
> > On Mon, Jun 22, 2020 at 10:57 AM Daniel Thompson
> > <daniel.thompson@linaro.org> wrote:
> > >
> > > On Fri, Jun 19, 2020 at 11:53:41PM +0200, Sam Ravnborg wrote:
> > > > > diff --git a/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..7e1f109a38a4
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.yaml
> > > > > @@ -0,0 +1,98 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0-only
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/leds/backlight/pwm-backlight.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: pwm-backlight bindings
> > > > > +
> > > > > +maintainers:
> > > > > +  - Lee Jones <lee.jones@linaro.org>
> > > > > +  - Daniel Thompson <daniel.thompson@linaro.org>
> > > > > +  - Jingoo Han <jingoohan1@gmail.com>
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    const: pwm-backlight
> > > > > +
> > > > > +  pwms:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  pwm-names: true
> > > > > +
> > > > > +  power-supply:
> > > > > +    description: regulator for supply voltage
> > > > > +
> > > > > +  enable-gpios:
> > > > > +    description: Contains a single GPIO specifier for the GPIO which enables
> > > > > +      and disables the backlight
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  post-pwm-on-delay-ms:
> > > > > +    description: Delay in ms between setting an initial (non-zero) PWM and
> > > > > +      enabling the backlight using GPIO.
> > > > > +
> > > > > +  pwm-off-delay-ms:
> > > > > +    description: Delay in ms between disabling the backlight using GPIO
> > > > > +      and setting PWM value to 0.
> > > > > +
> > > > > +  brightness-levels:
> > > > > +    description: Array of distinct brightness levels. Typically these are
> > > > > +      in the range from 0 to 255, but any range starting at 0 will do. The
> > > > > +      actual brightness level (PWM duty cycle) will be interpolated from
> > > > > +      these values. 0 means a 0% duty cycle (darkest/off), while the last
> > > > > +      value in the array represents a 100% duty cycle (brightest).
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > > +
> > > > > +  default-brightness-level:
> > > > > +    description: The default brightness level (index into the array defined
> > > > > +      by the "brightness-levels" property).
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > Same comment as before...
> > >
> > > Sorry the "ditto" meant I didn't thing about PWM as much as I should
> > > have.
> > >
> > > The situation for PWM is a little different to LED. That's mostly
> > > because we decided not to clutter the LED code with
> > > "num-interpolated-steps".
> > >
> > > The PWM code implements the default-brightness-level as an index into
> > > the brightness array *after* it has been expanded using interpolation.
> > > In other words today Linux treats the default-brightness-level more
> > > like[1].
> > >
> > >     description: The default brightness level. When
> > >       num-interpolated-steps is not set this is simply an index into
> > >       the array defined by the "brightness-levels" property. If
> > >       num-interpolated-steps is set the brightness array will be
> > >       expanded by interpolation before we index to get a default
> > >       level.
> > >
> > > This is the best I have come up with so far... but I concede it still
> > > lacks elegance.
> > 
> > Happy to add this or whatever folks want if there's agreement, but I
> > don't want to get bogged down on re-reviewing and re-writing the
> > binding on what is just a conversion. There's a mountain of bindings
> > to convert.
> The original explanation is ok, as pointed out by Daniel.
> So I suggest moving forward with that and then others can improve the
> descriptions later as necessary.

That's fine for me to. It would be clearer in version history (improving
definitions during a conversion hides them when mining the changelog).


Daniel.
