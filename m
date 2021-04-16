Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD5D836230D
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 16:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244938AbhDPOnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 10:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244793AbhDPOng (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 10:43:36 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5505BC06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 07:43:11 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id z5so6083737ioc.13
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 07:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Lp6KUcpzifC+AOvSZvapIoyzvGHXfJkgx9ufls5cSDs=;
        b=euQfq2wFnH47LbM4abT1kLxvYkf6Sm9dtzlvDEkHRLT16XPhriYBl4jchj3CNIj5Cb
         78dEEh4TPIwY63jFSpB3a/4Hw6jbLBUaSghrWwAniyOnmsLBpSGqHaFBCqMY0IIv7hvo
         XREmLq4799LTQ+vzSqvxuvuQjrowfvajPCs7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Lp6KUcpzifC+AOvSZvapIoyzvGHXfJkgx9ufls5cSDs=;
        b=PDbbWvPRRxaULsdjfAUGUG9yfcif3Vo+PVR+ZD8ZgWJe4nqPC05dWElxSr/N3BsIDu
         t2nx65wh0DDdNd4RORL0c2rfN5APS/zTjfz4WU2v5IccIbxoJA/HO0KeUQjSeljbYRx1
         Kv2j0rolt5dIwZSX5FSZLU+SxKOzC2kTyGxyvMNi2KCA/LQGZmUAVEWUitVc7PbG2KlW
         Y1GJZBj00Ii8SJNHsnPltrzFw84uMWXvmDfsHAONhWfKnFvuhS3Ywe3fPLbAsmxyXVuD
         uy2kv7tB5u8cAd8bs2+lqwOVmfIDy3ByFIQBE8ctIknUUUffQgk/nFvs5OUYqogxvuei
         MHDQ==
X-Gm-Message-State: AOAM533CowztgVILBouXAhHCK2kRYTJdG6tBOg5xStUE6heN+BpemIag
        0BMLaat6J9EnB8rlxiZfIEHpZsJ407s4oW8PDEPeOg==
X-Google-Smtp-Source: ABdhPJzZne3Oah6jq0y3MQ7cXog0eHGiB4uUC0V04tFOpjqhXtg1Qck21Dtp3ESr9EjxkzptDtOP0iJHWG1Ya4WW0SQ=
X-Received: by 2002:a05:6638:38a4:: with SMTP id b36mr4265974jav.102.1618584190633;
 Fri, 16 Apr 2021 07:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210414172916.2689361-1-hsinyi@chromium.org> <20210414172916.2689361-7-hsinyi@chromium.org>
 <87y2dicnpy.fsf@intel.com>
In-Reply-To: <87y2dicnpy.fsf@intel.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 16 Apr 2021 22:42:44 +0800
Message-ID: <CAJMQK-iUgQBH8uW07fpbptE33D5NsVwmZXngcZknPw93apRK0A@mail.gmail.com>
Subject: Re: [PATCH v19 6/6] drm/i915/selftests: Rename functions names
To:     Jani Nikula <jani.nikula@linux.intel.com>
Cc:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-i2c@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 16, 2021 at 10:23 PM Jani Nikula
<jani.nikula@linux.intel.com> wrote:
>
> On Thu, 15 Apr 2021, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > pm_resume and pm_suspend might be conflict with the ones defined in
> > include/linux/suspend.h. Rename pm_resume{suspend} to
> > i915_pm_resume{suspend} since they are only used here.
>
> I agree with the rationale here.
>
> Do you need this to be part of your series, or shall we just pick this
> up for i915? (We might consider renaming to something else or prefix the
> functions with _ though, as we also have existing i915_pm_suspend and
> i915_pm_resume elsewhere.)
>

This patch can be separated from the series, thanks.


> BR,
> Jani.
>
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > Reported-by: kernel test robot <lkp@intel.com>
> > ---
> >  drivers/gpu/drm/i915/selftests/i915_gem.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> > index dc394fb7ccfa..525afda9d31f 100644
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> > @@ -94,7 +94,7 @@ static int pm_prepare(struct drm_i915_private *i915)
> >       return 0;
> >  }
> >
> > -static void pm_suspend(struct drm_i915_private *i915)
> > +static void i915_pm_suspend(struct drm_i915_private *i915)
> >  {
> >       intel_wakeref_t wakeref;
> >
> > @@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
> >       }
> >  }
> >
> > -static void pm_resume(struct drm_i915_private *i915)
> > +static void i915_pm_resume(struct drm_i915_private *i915)
> >  {
> >       intel_wakeref_t wakeref;
> >
> > @@ -152,12 +152,12 @@ static int igt_gem_suspend(void *arg)
> >       if (err)
> >               goto out;
> >
> > -     pm_suspend(i915);
> > +     i915_pm_suspend(i915);
> >
> >       /* Here be dragons! Note that with S3RST any S3 may become S4! */
> >       simulate_hibernate(i915);
> >
> > -     pm_resume(i915);
> > +     i915_pm_resume(i915);
> >
> >       err = switch_to_context(ctx);
> >  out:
> > @@ -192,7 +192,7 @@ static int igt_gem_hibernate(void *arg)
> >       /* Here be dragons! */
> >       simulate_hibernate(i915);
> >
> > -     pm_resume(i915);
> > +     i915_pm_resume(i915);
> >
> >       err = switch_to_context(ctx);
> >  out:
>
> --
> Jani Nikula, Intel Open Source Graphics Center
