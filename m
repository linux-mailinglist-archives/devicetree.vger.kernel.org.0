Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9356741DB25
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 15:34:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350720AbhI3Nf7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 09:35:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:44192 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1350654AbhI3Nf7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 09:35:59 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02BFA615E2;
        Thu, 30 Sep 2021 13:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633008857;
        bh=l+Ra+00HjDOurU1ZSRtF9bE99IlFFJksp/p6hk8Owlw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Or1iisb05+o/a2i37j7EvyoR8Y9tEIL9XesEmUzoHa6qpK+aKgGux7o7DPnA10h5K
         rcQkMtqIks+c+nrSplVNnVFX2kTnIvd2yU5RfGE9gdTcW4l4V+/RxJpMk0XW2zrDGv
         C2RR9EmEqoQWHXG3nJjN2RibXSomJ883YTbKX6J+6/hVH++8FTsInVPn2F3oWjKVA8
         548uprXG+wZieJ8muCVcQGygtJTlgOsY6Wh8UwBG6cRNj4kRRIv7aci4dzUUWWIMiD
         +FHFZedbq0LJQN9bDTFuqWkeB0OlBOjn8r4OZgWOaSccTTzX6IMEbFn/T5pfspNNdp
         0HOr1IJDn4Q4Q==
Received: by mail-ed1-f44.google.com with SMTP id v18so21940150edc.11;
        Thu, 30 Sep 2021 06:34:16 -0700 (PDT)
X-Gm-Message-State: AOAM533pxG+h3zzGrgDFAraZsYaj/+il/Ly3cMsRtzVoht7DZGsnw7ps
        S87HP3P1DZ3DHcRSdb/KN67fVaA1hDwxH/l4oQ==
X-Google-Smtp-Source: ABdhPJx9qTYShK1ZBfygeFmTPFomlkQD85RGT2zEdkmie7HjYuo7z3OjwD232UIw6BZ6VWs3OcnV7pFzHsQqJ2Ee/pE=
X-Received: by 2002:a17:906:70c4:: with SMTP id g4mr5744426ejk.363.1633008836683;
 Thu, 30 Sep 2021 06:33:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210929052613.8589-1-saiprakash.ranjan@codeaurora.org>
 <CAL_JsqLzDejj99C6CPuW+19cgwdDVkctppL_SFeWnAG5LUkscw@mail.gmail.com> <d9894ca86ed9a56ebf118a91bfe1b91d@codeaurora.org>
In-Reply-To: <d9894ca86ed9a56ebf118a91bfe1b91d@codeaurora.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 30 Sep 2021 08:33:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+vkpigu3P+dkAVXT7nypnJA_R8LBPGgj9wERcCW6P36w@mail.gmail.com>
Message-ID: <CAL_Jsq+vkpigu3P+dkAVXT7nypnJA_R8LBPGgj9wERcCW6P36w@mail.gmail.com>
Subject: Re: [PATCH] Add system-cache-controller to the list of generic node names
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 29, 2021 at 11:06 PM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> On 2021-09-29 18:12, Rob Herring wrote:
> > On Wed, Sep 29, 2021 at 12:26 AM Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> >>
> >> System Cache Controller (Last Level Cache Controller/LLCC) does not
> >> have a cache-level associated with it as enforced by the already
> >> existing 'cache-controller' node name, so add system-cache-controller
> >> to the list of generic node names as decided on the lkml in [1][2]
> >> and already being used in the dts for sometime now.
> >>
> >> [1]
> >> https://lore.kernel.org/lkml/5dcd8588.1c69fb81.2528a.3460@mx.google.com/
> >> [2]
> >> https://lore.kernel.org/lkml/cover.1573814758.git.saiprakash.ranjan@codeaurora.org/
> >>
> >> Cc: Stephen Boyd <swboyd@chromium.org>
> >> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> >> Cc: Rajendra Nayak <rnayak@codeaurora.org>
> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> ---
> >>  source/chapter2-devicetree-basics.rst | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/source/chapter2-devicetree-basics.rst
> >> b/source/chapter2-devicetree-basics.rst
> >> index 40be22192b2f..c06c5063c68b 100644
> >> --- a/source/chapter2-devicetree-basics.rst
> >> +++ b/source/chapter2-devicetree-basics.rst
> >> @@ -276,6 +276,7 @@ name should be one of the following choices:
> >>     * sram-controller
> >>     * ssi-controller
> >>     * syscon
> >> +   * system-cache-controller
> >
> > I don't want to encourage others to use this over 'cache-controller'
> > and the standard binding.
> >
>
> Right, but why would others use this over cache-controller? This is
> supposed
> to be used only for last level cache controllers where there is no
> cache-level
> associated with it like in the system cache controller/LLCC found in QTI
> SoCs.

I don't agree there's never a level.

Using the cache binding will be necessary if you want to populate the
kernel's cache info. If your caches have MPAM support, they are going
to need to follow the cache binding as well.

> Also you had acked the corresponding change in the DT binding for LLCC
> [1].

Yes, but that doesn't mean it belongs in the spec. Maybe when we have
more than 1 case that will change, but for now I don't think it should
be in the spec.

Rob
