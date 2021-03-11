Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B037F33695C
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 02:02:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbhCKBCF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 20:02:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbhCKBBw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 20:01:52 -0500
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9775C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 17:01:52 -0800 (PST)
Received: by mail-qk1-x72d.google.com with SMTP id t4so19085062qkp.1
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 17:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gz//qG4UKWaU4eBFBftxHoN1DTt9WFPAtbEDzRcy4ZI=;
        b=m20bJdO+CkdIH+TFxZdxXfjbq+tuRI61Mw/BzmynatBY61+Ak29sP5beKDkKUZNZwC
         kqV9Ko6EmZR9VIu2a2KuYW3TxCBTTp/lS1kewoCeMfxG2qqC0dvono4Boa6Mg9qJwxze
         6noxSfHWyh5vm+O3q+7qxcyxBT0nJMXwvqC8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gz//qG4UKWaU4eBFBftxHoN1DTt9WFPAtbEDzRcy4ZI=;
        b=H86kqybUV1obxPsJEH2wAdohjxGdFJ1ZvT1tOUyOIkuZpzT4daVuPTnQHdnTAuiUzm
         stjbnEebx2Vj8XSTOJnsgb7027CbxYkBrcNx1bRHLai/LaeeLtBnqyT3IZrPt+dC9k+K
         qPIGl+X1PF0PcKq8lLa3Qnm0FDh5XKFkCtnzuemrYCgl9kJ8qCTpQi/OdPkU2Hn5/yhG
         EIniPvujKOeUVbAuLtfooi2SUHEzwo5DRIyUkWbSLwn9la/nT3H24ValgTcM2YZwo24y
         KATMXrWjSuJoYZ8wtwPVOxbUH0h3aTqLGSBbn4l5hgfYos+dDrGnvJCckm6XCeua9teQ
         wvJg==
X-Gm-Message-State: AOAM531TCJC2VOtDKb5ZN3jVub2sblIYohbdCuNrDZsW4T2+jnG4WORZ
        QLKJ4Apxt+TgP2Trs+tvqBbV0AWVoZdX7g==
X-Google-Smtp-Source: ABdhPJwTsT2SLb6nbcx8T5swGN/Lmt4H32yGJLTCGOZHZAuEzDirVcaiLwwKZKH7F9GdDqwlLAC/Tw==
X-Received: by 2002:a37:58c5:: with SMTP id m188mr5342448qkb.327.1615424511718;
        Wed, 10 Mar 2021 17:01:51 -0800 (PST)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id q125sm821192qkf.68.2021.03.10.17.01.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 17:01:50 -0800 (PST)
Received: by mail-yb1-f179.google.com with SMTP id n195so19914186ybg.9
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 17:01:50 -0800 (PST)
X-Received: by 2002:a25:aa43:: with SMTP id s61mr8713736ybi.32.1615424510011;
 Wed, 10 Mar 2021 17:01:50 -0800 (PST)
MIME-Version: 1.0
References: <20210115224420.1635017-1-dianders@chromium.org>
 <CACRpkdYUs2W3b_u8YrmYwq_kcUCf0DhZ-o2o6O2EmU5rdtv=BA@mail.gmail.com>
 <CAD=FV=WDVAj+OcVXaTJRUu8tvdDzySW0KOfiGqZHi5YvP42BTA@mail.gmail.com> <CACRpkda1Ast1cqNfVJ_u6zs8610DWSQGykPt4yBw+mFZFrUPSg@mail.gmail.com>
In-Reply-To: <CACRpkda1Ast1cqNfVJ_u6zs8610DWSQGykPt4yBw+mFZFrUPSg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 10 Mar 2021 17:01:37 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vj-6Y0X667o5vH0EL7hXi6sU4ZWs_a41B6h0D1s05_Hw@mail.gmail.com>
Message-ID: <CAD=FV=Vj-6Y0X667o5vH0EL7hXi6sU4ZWs_a41B6h0D1s05_Hw@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] drm/panel-simple: Patches for N116BCA-EA1
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 10, 2021 at 4:57 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Mar 11, 2021 at 12:47 AM Doug Anderson <dianders@chromium.org> wrote:
>
> > I guess what I'd say in summary is:
> >
> > * If you object to the retries in simple panel, I still hope the rest
> > of the series can land.
> >
> > * If somehow this panel gets out into real users hands and we find
> > that the retries are necessary and people still don't want the retries
> > in simple panel, I can fork a special panel driver just for it then.
>
> I'm fine with the retries, if it is needed outside of the "simple" (hm)
> panel driver then we can certainly factor it out as a helper or
> library.
>
> I looked at the patches at lore.
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> I see also Stephen has reviewed some patches.
>
> Tell me if you need me to also apply them to drm-misc.
> (I guess yes?)

Yes please. I was giving Sam time to do it but I haven't heard from
him for a while. Right before you responded I poked Thierry to see if
he was available but if you're willing/able to do it then I'm sure it
would save him the trouble.

If you'd like me to re-post the patches (CCing you) I can. Please let me know.

If you happen to feel in an applying mood one other patch to
simple-panel I think is OK to land is at:

https://lore.kernel.org/r/20210222081716.1.I1a45aece5d2ac6a2e73bbec50da2086e43e0862b@changeid

-Doug
