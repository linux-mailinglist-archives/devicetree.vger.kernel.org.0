Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB2162F5A80
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 06:48:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725844AbhANFsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 00:48:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725908AbhANFsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 00:48:40 -0500
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9018C061794
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 21:47:54 -0800 (PST)
Received: by mail-qk1-x736.google.com with SMTP id h4so5869924qkk.4
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 21:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vol3zGubhfmNLDPSAvceCN5gTPtshg95eaji0lDtBVU=;
        b=PEu80fRt0DlVSLPvQ9uU/MxFhm0chePgZxfehQ7zMqCkR69L1+9YqLG0tnnuZ0FN88
         Iw5B6tFTTeL8t3/CCQYHHwi8Y8u1c4vgdYYKlAYg0Du1KvksA0AHzTl9LhW9eWZ8iF/k
         rp+koUyN3zIEqAPbngOhbOsPu3TvAFl0Sqd80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vol3zGubhfmNLDPSAvceCN5gTPtshg95eaji0lDtBVU=;
        b=eq33KUYRzInz1rovyml9lR3oLBG/C8aKKJ23F4Ik+KP5519aNuF31VbX784E0aumAg
         EOH2okKuf4/EUnjd8OqeFqOJyDp6Xj2HLqPsDrvyCjVKuFop5MN9dPdP1WHMjGJfY4hs
         q9nuadxSqvDDcfS4LgtvWRNbUHtP3w+wRWkKHanQyQQitwawIWS2jwr5+mLGVUMbNH6+
         BNjS50lMSVC8x9p0oaVeKB1TsgSVwCZLtkg0E2vLSWCF125ST19zVbJiOJQjxZ0kdH5z
         CuNqAEI2JXLql5WjMwO92oewUPefG832+0KqkkZlo/5eK8CWt9E8/UuRVIb29bq/RC+h
         r8hw==
X-Gm-Message-State: AOAM531SwwC0aDBDuMCyy3i1LFtMUwaB9r0vQ3Y7Jl7Tj8H9boQ1+6gR
        gu/wbQoOLI4QMeYSpPFBB0BueSDf8nQtvd8aoRrAzw==
X-Google-Smtp-Source: ABdhPJzb/y+Ul3PP0ioburOHy8SKBREjFquM1OJZW8/HfmolxR7dyGmhGLsxgQIXR4GwKZT7RZ1lfjJ6cgxaikUSBBc=
X-Received: by 2002:a5b:54a:: with SMTP id r10mr8688410ybp.250.1610603273848;
 Wed, 13 Jan 2021 21:47:53 -0800 (PST)
MIME-Version: 1.0
References: <20210113172450.v5.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
 <161058782774.3661239.6435895454078235399@swboyd.mtv.corp.google.com>
In-Reply-To: <161058782774.3661239.6435895454078235399@swboyd.mtv.corp.google.com>
From:   Philip Chen <philipchen@chromium.org>
Date:   Wed, 13 Jan 2021 21:47:43 -0800
Message-ID: <CA+cxXhkffakNXjqXsaCp0PU=4GnP58mVZcTA1g2eSn7G666V9w@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: input: cros-ec-keyb: Add a new property
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 5:30 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Philip Chen (2021-01-13 17:25:12)
> > This patch adds a new property `function-row-physmap` to the
>
> :)
Sorry, I'll make it imperative tense.
>
> > device tree for the custom keyboard top row design.
> >
> > The property describes the rows/columns of the top row keys
> > from left to right.
> >
> > Signed-off-by: Philip Chen <philipchen@chromium.org>
> > ---
> >
> > Changes in v5:
> > - add minItems and maxItems for `function-row-physmap`
> >
> > Changes in v2:
> > - add `function-row-physmap` instead of `google,custom-keyb-top-row`
> >
> >  .../bindings/input/google,cros-ec-keyb.yaml          | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > index 8e50c14a9d778..e573ef3e58b65 100644
> > --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > @@ -31,6 +31,18 @@ properties:
> >        if the EC does not have its own logic or hardware for this.
> >      type: boolean
> >
> > +  function-row-physmap:
> > +    $ref: '/schemas/types.yaml#/definitions/uint32-array'
>
> I'm not sure this is needed if min/max items is there.
>
> > +    minItems: 1
> > +    maxItems: 15
> > +    description: |
> > +      An ordered u32 array describing the rows/columns (in the scan matrix)
> > +      of top row keys from physical left (KEY_F1) to right. Each entry
> > +      encodes the row/column as:
> > +      (((row) & 0xFF) << 24) | (((column) & 0xFF) << 16)
> > +      where the lower 16 bits are reserved. This property is specified only
> > +      when the keyboard has a custom design for the top row keys.
>
> Can you add it to the example so it can be tested? Then you can prove
> out if the ref is needed or not.
Sure, I'll give it a try.
>
> > +
> >  required:
> >    - compatible
> >
