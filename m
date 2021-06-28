Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1C323B661C
	for <lists+devicetree@lfdr.de>; Mon, 28 Jun 2021 17:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236418AbhF1Pxu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Jun 2021 11:53:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233367AbhF1Pxi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Jun 2021 11:53:38 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CED5FC09CDCF
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 08:34:19 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id r7so13807472qta.12
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 08:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JJf1KMaAZyEMZzZr0dtgEtq/jwHtzO+5QbRg9Ngbh1M=;
        b=AdOjkqVfHuP6lVxwIGFarEqU09wa/HQlsmguT+msXi0+wYdT90bXYuMezTmTm6zyTN
         9Kln7p3loFXQPpNUtLwOjxcZ8R9cph94WzYSxGDBDjfKAGdKrddMKRNWXSjDUv45Dy+I
         6Ls+NqrehEGRg3Z9j2bmXPslDBCye8Zm0crB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JJf1KMaAZyEMZzZr0dtgEtq/jwHtzO+5QbRg9Ngbh1M=;
        b=nSiVq8NmBQ/+UYK9kstao4o2axROIa9x580uGhbwpW1CXMXfbsuyo1rxTvLfnhMQIB
         5pIlYP83K4FSXfF5e6nSYTxYzzraLMnJOd7j+ma6vvphppxZvGX7AvUBw+VjgOQM4pK0
         um4hiHH5cuL/BrobrrwTynYcZJCwmr+NG/P8advaacUx8Z0J4g5aUWTn2/w0cTPGwhhs
         fSqdZ4DBqsouHF516E68UjIb5D9WOTnJNmNeyD+kKZu9YVorWl0S9Wesn3/R5aK7xbDo
         3suo9uSm/wciZ1zZYyAoQXG5dCuYzKV6eBMfj0izkURtYfBbwMdaVDq/LbLSIpS+l3xf
         G9Vw==
X-Gm-Message-State: AOAM531MlVLU314NgBozclvcPfZ1ePbc75ftNuGwXQhCYveOjiD+KVGG
        XGFYqBtAOQJRhZUPjq21OXXQFP5fJe7rsg==
X-Google-Smtp-Source: ABdhPJyf63SPPt42vNUOr6tS7pcT69jUch1x3dfvFgzbKwJeJCWvpMF9Y8fabXs3trQw58ydKwme1A==
X-Received: by 2002:ac8:7dc1:: with SMTP id c1mr116914qte.125.1624894458177;
        Mon, 28 Jun 2021 08:34:18 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id e1sm8660880qti.27.2021.06.28.08.34.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 08:34:17 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id m9so19180725ybp.8
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 08:34:17 -0700 (PDT)
X-Received: by 2002:a25:60c1:: with SMTP id u184mr31422485ybb.343.1624894456593;
 Mon, 28 Jun 2021 08:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <1624726268-14869-1-git-send-email-rajeevny@codeaurora.org>
 <1624726268-14869-5-git-send-email-rajeevny@codeaurora.org>
 <YNjA+jg9Khn+a9K+@pendragon.ideasonboard.com> <d75afefac48229657d36e12b6bac0e9f@codeaurora.org>
 <YNnPqYjaZjmmrQTA@pendragon.ideasonboard.com>
In-Reply-To: <YNnPqYjaZjmmrQTA@pendragon.ideasonboard.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 28 Jun 2021 08:34:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WTuexwn8gWR8-VV_-5Frb-NCNHA7m0xhxdsc_riRUC8g@mail.gmail.com>
Message-ID: <CAD=FV=WTuexwn8gWR8-VV_-5Frb-NCNHA7m0xhxdsc_riRUC8g@mail.gmail.com>
Subject: Re: [v8 4/6] drm/panel-simple: Update validation warnings for eDP
 panel description
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rajeev Nandan <rajeevny@codeaurora.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@gmail.com>, Lyude Paul <lyude@redhat.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rob Herring <robh@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>,
        Kalyan Thota <kalyan_t@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jun 28, 2021 at 6:33 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rajeev,
>
> On Mon, Jun 28, 2021 at 05:46:24PM +0530, rajeevny@codeaurora.org wrote:
> > On 27-06-2021 23:48, Laurent Pinchart wrote:
> > > On Sat, Jun 26, 2021 at 10:21:06PM +0530, Rajeev Nandan wrote:
> > >> Do not give a warning for the eDP panels if the "bus_format" is
> > >> not specified, since most eDP panels can support more than one
> > >> bus formats and this can be auto-detected.
> > >> Also, update the check to include bpc=10 for the eDP panel.
> > >>
> > >> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> > >> ---
> > >>
> > >> Changes in v8:
> > >> - New patch, to address the review comments of Sam Ravnborg [1]
> > >>
> > >> [1]
> > >> https://lore.kernel.org/dri-devel/20210621184157.GB918146@ravnborg.org/
> > >>
> > >>  drivers/gpu/drm/panel/panel-simple.c | 6 ++----
> > >>  1 file changed, 2 insertions(+), 4 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/panel/panel-simple.c
> > >> b/drivers/gpu/drm/panel/panel-simple.c
> > >> index 86e5a45..f966b562 100644
> > >> --- a/drivers/gpu/drm/panel/panel-simple.c
> > >> +++ b/drivers/gpu/drm/panel/panel-simple.c
> > >> @@ -772,10 +772,8 @@ static int panel_simple_probe(struct device *dev,
> > >> const struct panel_desc *desc,
> > >>                    desc->bpc != 8);
> > >>            break;
> > >>    case DRM_MODE_CONNECTOR_eDP:
> > >> -          if (desc->bus_format == 0)
> > >> -                  dev_warn(dev, "Specify missing bus_format\n");
> > >> -          if (desc->bpc != 6 && desc->bpc != 8)
> > >> -                  dev_warn(dev, "Expected bpc in {6,8} but got: %u\n", desc->bpc);
> > >> +          if (desc->bpc != 6 && desc->bpc != 8 && desc->bpc != 10)
> > >> +                  dev_warn(dev, "Expected bpc in {6,8,10} but got: %u\n", desc->bpc);
> > >
> > > You'll still get a warning is bpc == 0, is that intentional ?
> >
> > This was not intentional, I missed considering bpc=0 case. As we are
> > removing the warning for bus_format=0 then a similar thing can be done
> > for the bpc=0 also. The bpc value should be a valid one if it is
> > specified. Unlike the bus_format, bpc has few possible values that can
> > be checked here along with 0. Please correct me if I misunderstood the
> > concept.
> > I will fix this.
>
> What's the point of specifying bpc if it's optional though ? Users of
> the panel will need to support the case where bpc is set to 0. Have you
> ensured that they all do ? Can they meaningfully use the bpc value if
> they need to be ready to support bpc == 0 ?

I must be missing something, but to me it seems like Rajeev's patch is
fine as-is. From my reading of the code:

* Removes the warning if bus_format == 0. This is correct since I
don't think specifying bus format for eDP panels makes lots of sense.

* Removes the warning if bpc == 10. This is correct since we've seen
eDP panels with 10bpc.

* Keeps the warning if bpc == 0. IMO we can/should still require
panels to specify their BPC. I guess I'm treating this as a "max BPC".
I know that we use this field in the sn65dsi86 driver, so if it's OK
for this to be 0 then we'll have to change that driver to handle it.

Does that sound right to you Laurent? So since I think Rajeev's patch
is OK, I'm happy with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Unless I missed something and this patch needs to change then it feels
like Rajeev's patch series is in pretty good shape to land. I'm happy
to commit it but since Sam made comments on the previous version I'd
plan to wait a bit to make sure he has a chance for another look if he
wants to. I've also only got 2 days left before I vanish for 1 week of
vacation. ...so my plan is:
* If Sam / Laurent come back before tomorrow and say they're happy
then I'll commit.
* If I hear nothing then I'll check back after my vacation. If someone
else has committed then I'll be happy. If not and there has just been
silence then I'll commit it myself.

Please yell if that's not OK. :-)


-Doug
