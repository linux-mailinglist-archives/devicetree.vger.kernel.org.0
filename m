Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 181B740DE43
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:39:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238369AbhIPPkz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:40:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231702AbhIPPky (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:40:54 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE6CC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:39:34 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id z6so1691631iof.5
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fp+WsN+/19LlXaTrj9rS9XEtYNaEuPe0MZNGvgmzeS0=;
        b=LrRfdOuv4v1U4l5TfO7zbI2TtX9zs8u7MNP33iX3tsISWkQjHcwQVENfEuc6HJiY7H
         UPRZhWgbqPMh0g/x+OiTzUqajlTdwUni8GUe0flczkfRVqF24fDtInWw+FZiRwP3Nbvt
         Z4UYSDrMGvs2+YYF+7CLl53gqJ00fTkaUQhzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fp+WsN+/19LlXaTrj9rS9XEtYNaEuPe0MZNGvgmzeS0=;
        b=ZBkgYMTG2xC6vHRbbLVxNmqHnozlCEIbUZ6LHfUdTaxrDl+APQyerqMtemoJcM/z/x
         6KB4WTmRtGiFcZRSn2t7X9rAYYgH323AIkIfXz/gp4pJc4K7QGK3/VzGBjK3ZBOZ6j48
         A+KLN7et4NZy2vw73WZHw2snexC86+G3rB8T8lcso4aTSBLlkWmF/xl42jB1ib4A0FYq
         Alo4XdZZLXgwMUk+LsbEAYCV7ifDlMZnvO39XrN4Yabj4AkfmU+D3rM2GhlA8A/cgGle
         4byOOcn9ABwcw+mHXWBobkF0zfo0lEPUuS23ex1KIFb5QuyYJJ0emS8Aj9A79R/Y5d4q
         W1FA==
X-Gm-Message-State: AOAM533Dg6yjjXHrwSCebm9op38OL/YRFotBCBszm3aTgtS5O8SsJzuM
        17RN9DuFbBJEQpnrZrQNw1RS2hHsk0AWJg==
X-Google-Smtp-Source: ABdhPJyaCF7K6nj6nuBJkdhskmza7h5vwdexZfxjeQxEfZPNpT+wfajrkKRnw2jLeA0VsUSj6pSaVA==
X-Received: by 2002:a02:3f15:: with SMTP id d21mr4951157jaa.59.1631806773484;
        Thu, 16 Sep 2021 08:39:33 -0700 (PDT)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com. [209.85.166.182])
        by smtp.gmail.com with ESMTPSA id k17sm1970780ilh.48.2021.09.16.08.39.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:39:32 -0700 (PDT)
Received: by mail-il1-f182.google.com with SMTP id b6so7122587ilv.0
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:39:32 -0700 (PDT)
X-Received: by 2002:a05:6e02:1bad:: with SMTP id n13mr2282176ili.142.1631806772106;
 Thu, 16 Sep 2021 08:39:32 -0700 (PDT)
MIME-Version: 1.0
References: <1628642571-25383-1-git-send-email-tdas@codeaurora.org> <CAD=FV=U1zARov=8q9ZSOS4BRe919uFLJh56b8WKk-9LF0r5KZA@mail.gmail.com>
In-Reply-To: <CAD=FV=U1zARov=8q9ZSOS4BRe919uFLJh56b8WKk-9LF0r5KZA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 Sep 2021 08:39:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W_Ng1iFjAsYf=echLNzeSLy42baCWM83MHrS2SZ++V1g@mail.gmail.com>
Message-ID: <CAD=FV=W_Ng1iFjAsYf=echLNzeSLy42baCWM83MHrS2SZ++V1g@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Add clock controller ID headers
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 24, 2021 at 3:52 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Tue, Aug 10, 2021 at 5:43 PM Taniya Das <tdas@codeaurora.org> wrote:
> >
> > Add the GPUCC, DISPCC and VIDEOCC clock headers which were dropped
> > earlier.
> >
> > Fixes: 422a295221bb ("arm64: dts: qcom: sc7280: Add clock controller nodes")
>
> IMO drop the "Fixes". To me having the "Fixes" there means that there
> was a bug in the old patch. This isn't really fixing a bug.
>
> > Signed-off-by: Taniya Das <tdas@codeaurora.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
>
> Other than removing the "Fixes" then this seems like it would be nice
> to land soon after the next -rc1 comes out so that patches that start
> referring to the clocks in these controllers can take advantage of
> them. Snooze 3 weeks till (presumably) -rc1 might come out.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Bjorn: if you agree and are willing to drop the "Fixes" line yourself
when applying then I think this is ready to land since it's now "soon
after the next -rc1". ;-)

-Doug
