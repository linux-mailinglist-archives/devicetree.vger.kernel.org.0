Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 842662AF266
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 14:45:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726756AbgKKNpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 08:45:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726274AbgKKNpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 08:45:01 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84AF2C0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 05:45:01 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id j205so3201317lfj.6
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 05:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o4pDcFw9HNJ9VZhUYbY68fNV22nURMzm7OHDvRMvP4Y=;
        b=BB2uPR6fQqjMPJ9SwsH0x+Brfy1dMCoYWH1zHacL431t1vv+BdhvfMB9Wvp9PkrwW+
         ep+dxiAsL5ID/rg44XJGqtGOkWop43BCGTgzOH3QVSdOOUEShCRXnWvkcHlmd3hI+VAD
         cApW/F1BgwtK5+MVx5b4p0rs6Ob1EFM5L9/bcxM5CPCBwUlzbTo6rgS7o+mStsVQkpL+
         0JIDgYlbkSLudu6i2pltrxb9bfEE3kTc+AAUSo/PsPNo3lGogNoOD/OsaZUBecHSCo4L
         itsgwts2KQq5kojVcqwnElXClMzF+JbWpfuQKkf3YzBJjP7YAN+2M0bEAlIVldx3KD8J
         vB/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o4pDcFw9HNJ9VZhUYbY68fNV22nURMzm7OHDvRMvP4Y=;
        b=Bb5BjBHc2p0HBGm4IILRKqJUdVcBaAooiVD6yld0rAzUwln0gCiUDr0MEFOKdw9Ax/
         0Puom/4Ppj69K+bHXfLG+aNmiVbhP7dyEbpDXLfB0iiZ29h/E0AV/6BsD9am3sZfB2Zu
         24PSe9ODnxqgp8ExgRZSIVNRosyHkUKBc+7HtId2epiKk4voLchC2XKMo4veDfiCWKxN
         MGUaGSMxjB8e/5eJPeV65mHzhpHmmHtvYMRQPrPfVEQXcBXNkSYsmyFiLh89X/F70t8o
         RuTKokUZVZi06sLyCnjWtaIlg0aST9AvKiUX9QQv11UVaa2/PbC1Dfz+PAPFP11xRmRs
         gQiw==
X-Gm-Message-State: AOAM530vYnkZxZB0fzoTLrmifSL3fEHolCu8mJLkFqKkk08M5sR9pob7
        t0O55hYJEtsUJlG6QvyTkDe0Esxihsab8c3dp7MaGw==
X-Google-Smtp-Source: ABdhPJywsbPI2EsBy4HIDztooOemIt50wpEyeH0GKUIy1cOETjKXheDLol+ph4p9W432swIOJeQZuMQvZTy+ZimRQ9o=
X-Received: by 2002:a19:546:: with SMTP id 67mr628485lff.502.1605102300001;
 Wed, 11 Nov 2020 05:45:00 -0800 (PST)
MIME-Version: 1.0
References: <20201111011417.2275501-1-linus.walleij@linaro.org> <20201111110412.GW6899@valkosipuli.retiisi.org.uk>
In-Reply-To: <20201111110412.GW6899@valkosipuli.retiisi.org.uk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Nov 2020 14:44:48 +0100
Message-ID: <CACRpkdZ8a_pPiTPWKgy+wWH186=TczCLGzTfW0x1addHK_TbgA@mail.gmail.com>
Subject: Re: [PATCH 1/2 v3] dt-bindings: leds: Add DT binding for Richtek RT8515
To:     Sakari Ailus <sakari.ailus@iki.fi>
Cc:     Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        newbytee@protonmail.com, Stephan Gerhold <stephan@gerhold.net>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 11, 2020 at 12:05 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> On Wed, Nov 11, 2020 at 02:14:16AM +0100, Linus Walleij wrote:

> > Add a YAML devicetree binding for the Richtek RT8515
> > dual channel flash/torch LED driver.

> > +  led:
> > +    type: object
> > +    $ref: common.yaml#
> > +    properties:
> > +      function: true
> > +      color: true
> > +      flash-max-timeout-us: true
>
> Don't you also need flash-max-microamp and led-max-microamp? As the maximum
> current for the LED may well be less than the driver can provide.

I wish I could add that.

The problem is that we don't know anything about the microamps
for this Richtek component.

There is no public datasheet available. I have asked Richtek, they
answered as follows:

"RT8515 had EOL already.
 So, we couldn't provide the datasheet.
 Thank you."

I do not quite understand their answer but they at least answered.

I have a few out-of-tree drivers, from Asus Zenfone, and from the
numerous Samsung mobiles using this. None of the outoftree code
makes any reference to the actual microamperes.

They make a setting from 1..100 "units" and that is handled by some
kind of userspace that I do not have the code for. If someone knows
of a source code for this userspace I would be happy to take a look
so we can at least figure out if it is linear.

Yours,
Linus Walleij
