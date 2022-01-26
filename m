Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7534749C1AA
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 04:01:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236725AbiAZDBG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 22:01:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236738AbiAZDBF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 22:01:05 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B7B3C06173B
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 19:01:05 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id b17-20020a9d4791000000b005a17fc2dfc1so698791otf.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 19:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WqLr3bUKc3/S+u1sDbLC4idmG0JJP+2DdwsuGVPAvk8=;
        b=GsQLdGSwsxtUnqAb2Uc3cu1MF+dX6mgHWx1G2hcOVenLHx0gz5vxrqVvnzEreFNpkx
         b/aosD6iRlz9qWPpXfCFPHcg9zxRUV2BmeYI3xTHbvWUgyMtXEtrVGrOyasQ/7oOWoD4
         86k5BDrOaL4a0xauOcVU185wsmBu2KV92HNKIhm5IfL0mHx4CUaYQBaTApdLcuwHQajf
         c0DsLcuhBsU11f2JxUZl+cGghF/PULOfs/5DLYhDJ2n6fZX2uDNG9GJWEuk45b0V4lmL
         KY5/WzYatjrR7djUcVOOnt1EpUfVxhmtaprlK7ltp+sqbnxJ95JOu0XxZwlJJqqHBuU9
         AX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WqLr3bUKc3/S+u1sDbLC4idmG0JJP+2DdwsuGVPAvk8=;
        b=awFpaVVyFZuIk1IF6AQXA0O0RedfPdFaa8o1T2vHSsHwddKp6dQIxJwNlGh78xRUVX
         mlB4w82vHqj6WIMK3hOqca46pC83mCkNkm29fgqNJ2Q8kYfus1FnKF9L3fbPgYbjU+7B
         GIMkxaXozlg+bEmx3gXsNLAaEpUx8S4V7WB/en5kiIos9d9+ylbJ2OEX+lrfgw8He2fw
         +PBvGpBJcIlT5hmiO6B5pYsTTEl/ba+dwxZh5aN9oyOuUIiwXBrpBlN1mzyRdikb2hMi
         Kgv+s4naOVemW2yYZLw68L/2cdUlrhYvOHibjEfa0d3bkOCRBF7h+wJuAnhiiaPWGS73
         2I0g==
X-Gm-Message-State: AOAM530FdAwSTsp4OOtNXVyg1QJAcVWr4amgn1j0DFW93r2PL/WU7AQT
        CRQtCtbGDbAEpVgeyWm0OmRybg==
X-Google-Smtp-Source: ABdhPJwwKNXHXBpaK+MGuS4uhoTeazChcTR+LtX2cBDSv8QAb8uKdHZd1PyrXWukpd1LIzNOZcoMzw==
X-Received: by 2002:a05:6830:13d2:: with SMTP id e18mr16390380otq.152.1643166064526;
        Tue, 25 Jan 2022 19:01:04 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id m130sm8273829oif.21.2022.01.25.19.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 19:01:03 -0800 (PST)
Date:   Tue, 25 Jan 2022 19:01:31 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        kgodara@codeaurora.org, Matthias Kaehlcke <mka@chromium.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        quic_rjendra@quicinc.com, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sc7280: Add herobrine-r1
Message-ID: <YfC5i2jR5N+pmHoZ@ripper>
References: <20220125224422.544381-1-dianders@chromium.org>
 <20220125144316.v2.5.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
 <CAE-0n528Bxdj+DKhi2Lan4qR_=4KHD7A1Zkr15tmu+MchryJ1A@mail.gmail.com>
 <CAD=FV=UcpKaLQ31CGKUnaNnZcYnM4N_t8VC43FPGktoYDiMfsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAD=FV=UcpKaLQ31CGKUnaNnZcYnM4N_t8VC43FPGktoYDiMfsw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 25 Jan 15:46 PST 2022, Doug Anderson wrote:

> Hi,
> 
> On Tue, Jan 25, 2022 at 2:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Douglas Anderson (2022-01-25 14:44:22)
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > > new file mode 100644
> > > index 000000000000..f95273052da0
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > > @@ -0,0 +1,313 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +/*
> > > + * Google Herobrine board device tree source
> > > + *
> > > + * Copyright 2022 Google LLC.
> > > + */
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "sc7280-herobrine.dtsi"
> > > +
> > > +/ {
> > > +       model = "Google Herobrine (rev1+)";
> > > +       compatible = "google,herobrine", "qcom,sc7280";
> >
> > Can we stop adding "qcom,sc7280" to the board compatible string? It
> > looks out of place. It's the compatible for the SoC and should really be
> > the compatible for the /soc node.
> 
> I don't have any objections, but I feel like this is the type of thing
> I'd like Bjorn to have the final say on. What say you, Bjorn?
> 

One practical case I can think of right away, where this matters is in
cpufreq-dt-plat.c where we blocklist qcom,sc7280.

I don't know if we rely on this in any other places, but I'm not keen on
seeing a bunch of board-specific compatibles sprinkled throughout the
implementation - it's annoying enough having to add each platform to
these drivers.

Regards,
Bjorn

> 
> > > +       pp3300_left_in_mlb: pp3300-left-in-mlb {
> >
> > Sometimes '-regulator' is left out. Is that intentional? I suppose it
> > would be better if every node had regulator postfix, but it may be too
> > long of a node name?
> 
> Huh, you're right. No, it's not intentional. It looks like it was that
> way on herobrine-rev0 too... It also looks like it's missing on
> "pp3300-hub" on trogdor.
> 
> Happy to add "-regulator" in the herobrine / trogdor nodes that need
> it. I'll probably do it as a follow-on patch if that works OK? Then I
> can just clean them all up at once...
> 
> -Doug
