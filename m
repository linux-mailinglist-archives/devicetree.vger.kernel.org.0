Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09431404242
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 02:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348391AbhIIAZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 20:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348278AbhIIAZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 20:25:27 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72791C061575
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 17:24:19 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id j18so74188ioj.8
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 17:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SBJZ+xd67CiFIsbUo5ZILupshCxiGwC5Wpwkm3BLH6k=;
        b=QFvS6izIE+d1GGVRGHR1QEMy4lxOUpUzI8cdpEPvcnmHg6ncVokDncdiZFJpdPUMfv
         a8I1A8s8Vi1L61d1h9JgrEGyy6LFUztBBvesIm5nHaDH6EXFqKtgt5okUQHR7jxF5sC6
         3L1eCO4Ec7roeo/DZl0f2C7fNach3w+CA9UlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SBJZ+xd67CiFIsbUo5ZILupshCxiGwC5Wpwkm3BLH6k=;
        b=jWERDJOj5F4aSz0yn1Cb0V/beq8giFP6jwLVVUeofFBNljCOqhwgGA0TdpNUd44s1V
         UnMPcPNiZV9y4Yn8Xk8gFmtGJ/cwBBuVwPHGqeqIaVm1mcsAaZxF1TY6FN8avVkckR2S
         QbKevtWAaAFMlsqvufTOZA8XnOrjHds3y+e271jlILz6Sj0+kXniEVOVecPN/gl4Y+lu
         tyxH7rgym7wyDNC1bct/udwTJ2Yx8dMgNqzIcXSAZ+R/K1kb9exGZyT8i4Gvwiw4Cmqa
         yRW2uiLnYXKMNdTuwXDRsU4Xpdplwkcall7B8p0VQX9SIgAKCncjy2PejaxW3tND7itD
         Za1w==
X-Gm-Message-State: AOAM530ZZqaT+by0gffmYctn4OxYYw6XeXjSgvHEJ+PM07oRvVphWhFW
        ZlRbR5+3PaaF4hFrwR9fmiS1zmygFGtYgA==
X-Google-Smtp-Source: ABdhPJyjfB1ClQb96v8C5nnlxC3EFJJm11eIq8sVFC+S8vUj9LrDM3Cnl4zB9zDNSzpsBn7kAl5CaQ==
X-Received: by 2002:a5e:8a4a:: with SMTP id o10mr219666iom.11.1631147058567;
        Wed, 08 Sep 2021 17:24:18 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id d14sm125043iod.18.2021.09.08.17.24.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 17:24:17 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id s16so114575ilo.9
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 17:24:17 -0700 (PDT)
X-Received: by 2002:a92:6b0a:: with SMTP id g10mr141704ilc.27.1631147057200;
 Wed, 08 Sep 2021 17:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210901201934.1084250-1-dianders@chromium.org>
 <20210901131531.v3.3.I4a672175ba1894294d91d3dbd51da11a8239cf4a@changeid> <87h7ey81e9.fsf@intel.com>
In-Reply-To: <87h7ey81e9.fsf@intel.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 8 Sep 2021 17:24:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X-d8XH5bmcAhDGnbs-DHgQ7D6G9g3gRsjo7RN1xQ1kNA@mail.gmail.com>
Message-ID: <CAD=FV=X-d8XH5bmcAhDGnbs-DHgQ7D6G9g3gRsjo7RN1xQ1kNA@mail.gmail.com>
Subject: Re: [PATCH v3 03/16] drm/edid: Allow the querying/working with the
 panel ID from the EDID
To:     Jani Nikula <jani.nikula@linux.intel.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus W <linus.walleij@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Steev Klimaszewski <steev@kali.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Sep 6, 2021 at 3:05 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> > +{
> > +     struct edid *edid;
> > +     u32 val;
> > +
> > +     edid = drm_do_get_edid_blk0(drm_do_probe_ddc_edid, adapter, NULL, NULL);
> > +
> > +     /*
> > +      * There are no manufacturer IDs of 0, so if there is a problem reading
> > +      * the EDID then we'll just return 0.
> > +      */
> > +     if (IS_ERR_OR_NULL(edid))
> > +             return 0;
> > +
> > +     /*
> > +      * In theory we could try to de-obfuscate this like edid_get_quirks()
> > +      * does, but it's easier to just deal with a 32-bit number.
>
> Hmm, but is it, really? AFAICT this is just an internal representation
> for a table, where it could just as well be stored in a struct that
> could be just as compact now, but extensible later. You populate the
> table via an encoding macro, then decode the id using a function - while
> it could be in a format that's directly usable without the decode. If
> suitably chosen, the struct could perhaps be reused between the quirks
> code and your code.

I'm not 100% sure, but I think you're suggesting having this function
return a `struct edid_panel_id` or something like that. Is that right?
Maybe that would look something like this?

struct edid_panel_id {
  char vendor[4];
  u16 product_id;
}

...or perhaps this (untested, but I think it works):

struct edid_panel_id {
  u16 vend_c1:5;
  u16 vend_c2:5;
  u16 vend_c3:5;
  u16 product_id;
}

...and then change `struct edid_quirk` to something like this:

static const struct edid_quirk {
  struct edid_panel_id panel_id;
  u32 quirks;
} ...

Is that correct? There are a few downsides that I can see:

a) I think the biggest downside is the inability compare with "==". I
don't believe it's legal to compare structs with "==" in C. Yeah, we
can use memcmp() but that feels more awkward to me.

b) Unless you use the bitfield approach, it takes up more space. I
know it's not a huge deal, but the format in the EDID is pretty much
_forced_ to fit in 32-bits. The bitfield approach seems like it'd be
more awkward than my encoding macros.

-Doug
