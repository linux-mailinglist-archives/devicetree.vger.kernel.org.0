Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 032FA450C1
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 02:36:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727068AbfFNAgq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 20:36:46 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:42297 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726318AbfFNAgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 20:36:46 -0400
Received: by mail-vs1-f67.google.com with SMTP id 190so670845vsf.9
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 17:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kvz44rB7tgJ0lFfHfKXCBCgyFSEqMN4h+J2Mv3vvphI=;
        b=YRTBrlE2LA8uxN3PfDev4WOSZ4TCRgathqM3/1KwUpGO755YbZ7mnN+QeS3kbrUx+m
         Z4HBVjV4H2pV1hTuQOtYcKJkpVd8+sXJdy4ASJAr8xzPotDqIxxySu2jgYytgEpTQ0vq
         Bl7zFudutTrWJYi7GuLOXu6X27Uc6/ypFvM9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kvz44rB7tgJ0lFfHfKXCBCgyFSEqMN4h+J2Mv3vvphI=;
        b=H6jsfdDvyBdN6q0it9RLrhdACTLUgANZekw+9m4V2WKUtWdR7BrZuj3n8qVtW3I+CO
         cdgbnw2qy9AZpKYKKQMnhu2QR+qUKFLDnT/Dk30jn82NZqubXX8+xaKx1EDRmvbRJunc
         MElPm6x55IaBaM6ZLtow7t7OeZqQ7edd7kEiQwTfbooJpSfU8s8ehOayU7OetdCMctb8
         dYRUK5Y8nelO+X+29YVJVHenh+xrNiSw8N3NWu4QmhyvFM2bD/q43SxjSh4R+c4leeaN
         jUaY5mXNCweh8CLKDBmPZIlQ7PqzbBV2Au+UYdxbJlSHlZJUNYPmJWELH5tESns3Ylw7
         CTaA==
X-Gm-Message-State: APjAAAVIc+0YfkAQ0s9siKlbR3vODjwLU+AAn95loG23ppdxCEuABIrI
        3HwM9cUoDkOxog4dHuEA+EyhFLg/bzWqPaiwOx6m8g==
X-Google-Smtp-Source: APXvYqwTL6POXul88bkWpISrGlVLaKAoVDJaFXMv89Ef1GdZT2k2cGQZJDTzBLr/6j7plsyb3Poj9HWMfiJa4fFKTHk=
X-Received: by 2002:a67:ea42:: with SMTP id r2mr40062385vso.207.1560472604694;
 Thu, 13 Jun 2019 17:36:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com> <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
 <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
In-Reply-To: <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
From:   "dbasehore ." <dbasehore@chromium.org>
Date:   Thu, 13 Jun 2019 17:36:33 -0700
Message-ID: <CAGAzgsrYAaHTuxpt2rQAVbCtx_fCZAd99hX19H4V4h6ZyHwbkw@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
To:     Hans de Goede <hdegoede@redhat.com>
Cc:     Jani Nikula <jani.nikula@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org,
        Intel Graphics <intel-gfx@lists.freedesktop.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 12, 2019 at 5:33 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 12-06-19 02:16, dbasehore . wrote:
> > On Tue, Jun 11, 2019 at 1:54 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >>
> >> Hi,
> >>
> >> On 11-06-19 10:08, Jani Nikula wrote:
> >>> On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
> >>>> This removes the orientation quirk detection from the code to add
> >>>> an orientation property to a panel. This is used only for legacy x86
> >>>> systems, yet we'd like to start using this on devicetree systems where
> >>>> quirk detection like this is not needed.
> >>>
> >>> Not needed, but no harm done either, right?
> >>>
> >>> I guess I'll defer judgement on this to Hans and Ville (Cc'd).
> >>
> >> Hmm, I'm not big fan of this change. It adds code duplication and as
> >> other models with the same issue using a different driver or panel-type
> >> show up we will get more code duplication.
> >>
> >> Also I'm not convinced that devicetree based platforms will not need
> >> this. The whole devicetree as an ABI thing, which means that all
> >> devicetree bindings need to be set in stone before things are merged
> >> into the mainline, is done solely so that we can get vendors to ship
> >> hardware with the dtb files included in the firmware.
> >
> > We've posted fixes to the devicetree well after the initial merge into
> > mainline before, so I don't see what you mean about the bindings being
> > set in stone.
>
> That was just me repeating the official party line about devicetree.
>
> > I also don't really see the point. The devicetree is in
> > the kernel. If there's some setting in the devicetree that we want to
> > change, it's effectively the same to make the change in the devicetree
> > versus some quirk setting. The only difference seems to be that making
> > the change in the devicetree is cleaner.
>
> I agree with you that devicetree in practice is easy to update after
> shipping. But at least whenever I tried to get new bindings reviewed
> I was always told that I was not allowed to count on that.
>
> >> I'm 100% sure that there is e.g. ARM hardware out there which uses
> >> non upright mounted LCD panels (I used to have a few Allwinner
> >> tablets which did this). And given my experience with the quality
> >> of firmware bundled tables like ACPI tables I'm quite sure that
> >> if we ever move to firmware included dtb files that we will need
> >> quirks for those too.
> >
> > Is there a timeline to start using firmware bundled tables?
>
> Nope, as I said "if we ever move to ...".
>
> > Since the
> > quirk code only uses DMI, it will need to be changed anyways for
> > firmware bundled devicetree files anyways.
> >
> > We could consolidate the duplicated code into another function that
> > calls drm_get_panel_orientation_quirks too. The only reason it's like
> > it is is because I initially only had the call to
> > drm_get_panel_orientation_quirk once in the code.
>
> Yes if you can add a new helper for the current callers, then
> I'm fine with dropping the quirk handling from
> drm_connector_init_panel_orientation_property()
>

Ok, it sounds like having a special callback for quirks in the panel
orientation property is the best way to go. The handles the duplicate
code and devicetree bundles. If we need to fix something that's
specified in a devicetree, and we aren't willing to change it, we can
write the quirk code for that later.

> Regards,
>
> Hans

Thanks for the feedback
