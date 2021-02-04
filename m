Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49EFB30FC1B
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 20:00:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237900AbhBDTA2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 14:00:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239267AbhBDSjA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 13:39:00 -0500
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62068C06178B
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 10:38:17 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id s77so4347815qke.4
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 10:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vM6c4mtiu+LcT3H9ps3TkfNorQ1K5y7l85dLt2I5M6Q=;
        b=Ze0bx47qaeuBXm5pMT+CPVIsiB1V+6LwNw+vcXQgzJa/TrIPWlB8/HJ4HCT4I0Bz77
         Khy0A7sDlzPtvryW/DcUc37ruVM9ZBmE+bsQlzOoWMtZ8qPwZ5rtJ7ybttgczuNOHgXD
         2537Cqdungy6XSiNhRVUH3aSZlYLHofusKZUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vM6c4mtiu+LcT3H9ps3TkfNorQ1K5y7l85dLt2I5M6Q=;
        b=eu9X4Kf0ASoX/xGXWYxe9Ei0Qkyckyl0a+ZU80aIwJ13N/NgKyjjNQqf0ShDn7ry9f
         lvqsWsjjiDShAD6tLo/25jUyfrxBepiMBArOXHl+fgZC20Ddq4Gw9SWfg2TmginuTSp8
         vDlXsYzDnlsOW0ZUOelNuYnx3OxWAUlIm0csebRhWlXcpJRneyzE4p5DtXtbR92l6MO6
         Fub49/LnrMBNHPvZKejqv7YJ+qoRrvIAVlouxMEn6jjPtSTEyC5Ha2u8w3DPwOlfiFqN
         S8o7afZscY1jQP6PpHddoMNa6vHbs+rLR+nWJotkMKfXfVwk0/ZL7Fe9PV2/GfmOpn1r
         m0ow==
X-Gm-Message-State: AOAM532D/GUhuK71InJ4oN6WkbG1qTslln3fcBz1Zag7JZfnIsT/3b9U
        uZ/JSSH2jcmAPzxvEtIyMQcsX1TmDUiK/A==
X-Google-Smtp-Source: ABdhPJyfe3bntPLuMlSZgCz77f3v3RCqjdQdvk1UMtsOnCPWUYnkh9xWWtAHgeAKLgbfpRIK9FaxNA==
X-Received: by 2002:a37:bc8:: with SMTP id 191mr515493qkl.384.1612463896162;
        Thu, 04 Feb 2021 10:38:16 -0800 (PST)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id q22sm2497990qki.51.2021.02.04.10.38.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:38:15 -0800 (PST)
Received: by mail-yb1-f177.google.com with SMTP id y4so4137070ybk.12
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 10:38:15 -0800 (PST)
X-Received: by 2002:a25:da53:: with SMTP id n80mr726868ybf.79.1612463894697;
 Thu, 04 Feb 2021 10:38:14 -0800 (PST)
MIME-Version: 1.0
References: <20210130181014.161457-1-marex@denx.de> <CAD=FV=UzkP8Rp6BDNVr1FmOK4GY9_dSeT6fCjQLMatHftyj9iA@mail.gmail.com>
 <c7df0302-c2c1-6ccb-7f7f-8b781d9e3d9b@denx.de>
In-Reply-To: <c7df0302-c2c1-6ccb-7f7f-8b781d9e3d9b@denx.de>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 4 Feb 2021 10:38:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U1xN5SPxGzCLMbTT1bL7W4wpXfOt0KeJ3=84TCHfJ8UA@mail.gmail.com>
Message-ID: <CAD=FV=U1xN5SPxGzCLMbTT1bL7W4wpXfOt0KeJ3=84TCHfJ8UA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 bindings
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Feb 4, 2021 at 10:09 AM Marek Vasut <marex@denx.de> wrote:
>
> On 2/4/21 6:15 PM, Doug Anderson wrote:
>
> Hi,
>
> [...]
>
> >> +properties:
> >> +  compatible:
> >> +    const: ti,sn65dsi83
> >> +
> >> +  reg:
> >> +    const: 0x2d
> >> +
> >> +  enable-gpios:
> >> +    maxItems: 1
> >> +    description: GPIO specifier for bridge_en pin (active high).
> >
> > I see two regulators: vcc and vcore.  Shouldn't those be listed?
>
> Those are not implemented and not tested, so if someone needs them later
> on, they can be added then.

Sure.  I guess it can go either way.  For the regulator it'd the kind
of thing that's super easy to add support for and hard to mess up.


> >> +          endpoint:
> >> +            type: object
> >> +            additionalProperties: false
> >> +            properties:
> >> +              remote-endpoint: true
> >> +              data-lanes:
> >> +                description: array of physical DSI data lane indexes.
> >
> > The chip doesn't allow for arbitrary remapping here, right?  So you're
> > just using this as the official way to specify the number of lanes?  I
> > guess the only valid values are:
> >
> > <0>
> > <0 1>
> > <0 1 2>
> > <0 1 2 3>
>
> Shouldn't that be <1 2 3 4> ?

The data manual refers to the channels starting at 0, so if it's
arbitrary that seems a better way to go?


> > In sn65dsi86 we attempted to enforce that a valid option was selected
> > for the output lanes.  Could you do something similar?  If nothing
> > else adding a description of the valid options would be good.
>
> I saw the binding, but I was under the impressions the DSI86 can do lane
> reordering, isn't that the case ? Maybe I misunderstood it.

DSI86 can reorder the output lanes quite flexibly.  It can't reorder
the input lanes, though.


> But yes, if you have a suggestion how to make a non-cryptic list of
> those four lane mapping options, please do share this info.

I doubt I can write this correctly without a whole lot of futzing /
messing, but maybe something like:

data-lanes:
  oneOf:
    - items:
        - 0
    - items:
        - 0
        - 1
    - items:
        - 0
        - 1
        - 2
    - items:
        - 0
        - 1
        - 2
        - 3
