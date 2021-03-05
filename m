Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC3A832F49D
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 21:29:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbhCEU2e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 15:28:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbhCEU2X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 15:28:23 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F244C061760
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 12:28:23 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id l2so2126813pgb.1
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 12:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=piAdAlxX6cGUOE8F0JpLHJ9nmpFDMC1HCkTuqOWznxk=;
        b=ZMfRcZ4TDA8/dEClsxUS/L/u5rgoabu87qxGNj+0yZa6lwgQL/N63UEyBzxVDnJEjx
         DXNVeoKNIf5KrdFrRI9cQira81+9a6MNvsobpoLqJJddXEESNUp4iHimhrfUFs5l2/0G
         NY4CCDs4A9g/GCPH//PsA3BIjozH84M+Boneo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=piAdAlxX6cGUOE8F0JpLHJ9nmpFDMC1HCkTuqOWznxk=;
        b=pg9VOMwOkuygv85doJpwq4vYFiqw87GNr2q6xFTjIQtVFU4evTtslQCVPTEXNUn9Hs
         9ojae9xie53UfEJTN/DuJuBKfln4NQpqSf61dRPT1nSO2NOce6z6Q2A6d4qaF6jFS9fH
         27gdKk0lKEqnq7XK0HYj9+B9lss5Gde869VTO60bYSyk2iuwTuQyVKYzRKciMlgwNRT6
         lMpfvcgRglgjRmu1+Ok0hdtko5Wkr5CvOzPVL8M9+FL/HmMLf+l9JUgm4waV7SI0LN1X
         VMtGVZNm/UwO8xhzZFO/W6G/aA+HceVhpX53MU5s41MTfMw1XSxdA9N8y2I1EX4iRiPR
         umag==
X-Gm-Message-State: AOAM531E4u1F+5zu1IZ0Q4gudWGgxN1M+fZzaFa5DPXgq5jmE1ORMdH+
        hvIcBsRoFnLoBDACNacZkArmDg==
X-Google-Smtp-Source: ABdhPJwDP89NM72Xmxkxt3+td/+HHTavGdq0RdR0KUyjCNPkQps+ga54WgNdcBG9JtaZDqAFts+g2Q==
X-Received: by 2002:a63:fa4d:: with SMTP id g13mr10282679pgk.201.1614976102793;
        Fri, 05 Mar 2021 12:28:22 -0800 (PST)
Received: from localhost ([2620:15c:202:1:2878:25d1:94cb:a547])
        by smtp.gmail.com with UTF8SMTPSA id i128sm2955938pfe.64.2021.03.05.12.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 12:28:22 -0800 (PST)
Date:   Fri, 5 Mar 2021 12:28:20 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sc7180: Disable charger thermal
 zone for coachz rev1 and rev2
Message-ID: <YEKUZI2zfdDLe7mP@google.com>
References: <20210304180415.1531430-1-mka@chromium.org>
 <20210304100341.4.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
 <CAD=FV=UQoXsPYqv8a25Kn+=z1pZu4YUKK7VZSm4rq_i9KpD3rQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=UQoXsPYqv8a25Kn+=z1pZu4YUKK7VZSm4rq_i9KpD3rQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 10:50:12AM -0800, Doug Anderson wrote:
> Hi,
> 
> On Thu, Mar 4, 2021 at 10:04 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > CoachZ rev1 and rev2 are stuffed with a 47k NTC as thermistor for the
> > charger temperature which currently isn't supported by the PM6150 ADC
> > driver. Disable the charger thermal zone to avoid the use of bogus
> > temperature values.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >
> >  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r1.dts | 9 +++++++++
> >  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r2.dts | 9 +++++++++
> >  2 files changed, 18 insertions(+)
> 
> I guess this patch is written with the assumption that eventually
> we'll create a "-r3" or "-r4" that has a proper thermistor stuffed but
> maybe we're not sure which one?  Right now you're disabling it for
> both -r1 and -r2+ which is all revisions, so this could go in the
> coachz.dtsi file...

The proper thermistor should be stuffed in rev3.

For some reason there was already a -r3 .dts in my mental model,
probably I created one when I started with a downstream version of
this series just before you posted your's to bring upstream (mostly)
in sync with downstream. I'll add it in v2.
