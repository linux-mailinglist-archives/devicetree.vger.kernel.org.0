Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C0B63B1C7E
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 16:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbhFWObs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 10:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231239AbhFWObr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 10:31:47 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9345C061574
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 07:29:28 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id i24so3775597edx.4
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 07:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=NwEPWicXEScGAJ5xVFnITtqbN5ZVd/S2/99HIs4jcak=;
        b=GoIaYqmVekjEn37Cxpn5CKQXmVjMm4MFdz0pM0djdApdRBwJI7kswcPMRRvBpFGk5y
         0QkqmWQIFyIwvnyUDc1DYzBBDZtvYKkRk5iV9mPFUqO7Ud2Uf2BcgCfl5he7C4xyxYvd
         RJRtTIR5NQ4rffFIL2UHo/soK2fIyb6S25Wno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NwEPWicXEScGAJ5xVFnITtqbN5ZVd/S2/99HIs4jcak=;
        b=PynwmKt/Yni+QvneLBGrROncU8bNGDHVHUx8D1hu/tNvxfo2mqR5C3REWeDlMsu+Kl
         tWYYKHsc8zCpXB2nXjbJWyAgNgg6v83RF/o6BubTdZB6Hes8wUL655QugOidzKJ0KqSR
         tWNOoqI4z2KIsowengIojjrkIr2x01fMX9SLHgEOwCyxi8rXTSOkBvZhIcX7vsnC1Y82
         LdQ8e7t+2kzPC/cFXdsGqqgQxGAv2utvGXRkGnD52ExhSK1CAxflxeh3vH0wgfb2p8fd
         JAr5aN4Ty65Id9ibapNfJu3Z5MRPbdocjx5TZlHeL3c1J7WJlDp4Jjzi7MZRoT/79ZQy
         +WiQ==
X-Gm-Message-State: AOAM531vVhfRymYWm5VeaIYorIn+OskhhYFH4PYmdRutXGs/CNd4EsI9
        VPdbI3TTet3v8EybHIH1u3roq9ebEcx36Zk69WV+tA==
X-Google-Smtp-Source: ABdhPJyeMsLNi/QXkqaDM0G+bcsAZpsb5ooggnwbRoIqJuWmxNuU8EYrYKhlFeoc/Wp1w0w5f+3LNTU6B6JSdunayAY=
X-Received: by 2002:a50:afe2:: with SMTP id h89mr13086751edd.308.1624458567386;
 Wed, 23 Jun 2021 07:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210621074152.306362-1-judyhsiao@chromium.org>
 <20210621114546.GD4094@sirena.org.uk> <CAJXt+b-eRLKORqPOX1cJM3xzEyJhdeuj+w9-btpZSmy7v4U6Sw@mail.gmail.com>
 <20210622162307.GF4574@sirena.org.uk>
In-Reply-To: <20210622162307.GF4574@sirena.org.uk>
From:   Judy Hsiao <judyhsiao@chromium.org>
Date:   Wed, 23 Jun 2021 22:29:15 +0800
Message-ID: <CAJXt+b_15SEFW9ztg=CaYHfVJk-q+u46eLVgdPm+2ugjwajc1g@mail.gmail.com>
Subject: Re: [PATCH] ASoC: snd-soc-dummy: add Device Tree support
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Douglas Anderson <dianders@chromium.org>,
        Dylan Reid <dgreid@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 23, 2021 at 12:23 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Jun 23, 2021 at 12:10:53AM +0800, Judy Hsiao wrote:
>
> > Thanks for your review comment.
> > This patch is used to support multi-channel where we want one codec to
> > control the only GPIO shared by 4 amps.
>
> So you've got 4 instances of the same CODEC?  Then I'd expect to see
> those all individually represented in DT.  Or if there's a single
> physical CODEC then I'm not sure what the dummies are for?
>
> > In snd_soc_runtime_calc_hw(), by creating dummy codecs that share a
> > DAI link with a real codec:
> >   1. The min/ max channel of  CPU DAI will be directly adopted.
> >   2. The formats and sample rates of the DAI link will be determined
> > by the real codec unless the real codec supports the rate
> >       and format that do not intersect with the rate and format of
> > snd-soc-dummy.
> > That is the reason why we don=E2=80=99t specify the format and sample r=
ates of
> > the dummy codec with the real codec determining the properties .
>
> It's not clear to me why you'd not just describe the actual CODECs here
> rather than using a dummy CODEC, the fact that the dummy CODEC is doing
> what you want is just an accident of the implementation rather than a
> description of the hardware.

Thanks for your inputs. Specifying four codes for the multi-channel works f=
ine.
We have not thought of specifying four codes before as we want to avoid loa=
ding
the codec driver multiple times, but actually loading the
snd-soc-dummy just has the
similar cost. By specifying four codes, the dtsi file describes the
real hardware schematic.
I will specify four codec in the dtsi file to support the four channel
use case and this
snd-soc-dummy patch is not needed. Thanks for the discussion!
