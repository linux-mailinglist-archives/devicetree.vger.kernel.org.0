Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5925F3A06C8
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 00:29:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234267AbhFHWbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 18:31:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234228AbhFHWbd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 18:31:33 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB0AC061787
        for <devicetree@vger.kernel.org>; Tue,  8 Jun 2021 15:29:28 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id t40so10165059oiw.8
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 15:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=22Ssm6bBidoI2OKdGgKr4Z380nMp59e0xlDapEUt3rU=;
        b=WPz6kqlJJfs8tIkZz7PYSNVeHx0zT+YXabel5UgJo2BNRuHZjWdtewaiBIcyWuOWr8
         Wqj51S0ykw9kcRp8mwWWuO3vqvOBm1PbNfgQdBEEeEBZs0RyBwGeWOV86TR9Tv8ckkH2
         CKs7FUDayZghlqqy/rxwQh+r/GAEDkjkAWRIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=22Ssm6bBidoI2OKdGgKr4Z380nMp59e0xlDapEUt3rU=;
        b=l/awmaOeOj+5nK6/AwS57/bUkCmxOILwmCGmhSDB0XTGTu51xhzEKpiNY9T4RhNZGt
         eQXPSaThB0PLXyICJEeP9XAwDgI4GN9CKsXCb1PFrky4XVysqhXyriVjsQqMJiDUTm4s
         d3EZNLXF03d/jlXQRRtvi65bKUNx8QRDMwznCr/HuqmXFvQmCw6SsTiPCa3aO01Ro8Yj
         1LgkLJYklNueTP1kKZhflvgltL8efpkQl0JlhpnZWO0ZidRjY5uBEETpUthHtMtzvwMO
         UrVvApK0vf+5vvWFJ7CdLpzkJCkrcFJ2V+Z+YG6d2KQZEKDQSIRwjMDQIST7CGzswBEN
         46Tw==
X-Gm-Message-State: AOAM533zkrI14WQHhl0slYBHr1+NESfVkwZKkIR595WUV0GJ3fVi3kH7
        hjCgq9cSeds3wDCJtDF0LsrD6q+oaTN2n97qAweLIw==
X-Google-Smtp-Source: ABdhPJzPevJ+f/UberY67NRwcENdBNcopJshXKUMZZDlcap5kw7JKZSRUy35YlubQZREJJ1G5PAO5O8h0e2PmmIh9jQ=
X-Received: by 2002:a54:4501:: with SMTP id l1mr4450778oil.19.1623191367772;
 Tue, 08 Jun 2021 15:29:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 8 Jun 2021 15:29:27 -0700
MIME-Version: 1.0
In-Reply-To: <YL/uj+t+BFkII1Fh@yoga>
References: <1622736555-15775-1-git-send-email-khsieh@codeaurora.org>
 <YLkI/6ItCz+SbbuJ@yoga> <ac326ec8689c0babb08b2311e19d52cc@codeaurora.org>
 <YLxX/YtegtbLmkri@builder.lan> <ef1879fa7ecfefaf0c70c7a4782240a9@codeaurora.org>
 <YL6sY/1E5wLzMiP/@yoga> <CAE-0n50-X03sMyJdsw7s=Ue0dWXBo=iHOc0HxDQm5yh2J-uS3A@mail.gmail.com>
 <YL/uj+t+BFkII1Fh@yoga>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 8 Jun 2021 15:29:27 -0700
Message-ID: <CAE-0n50WP25kRQkWMVdDZGsZWBXwfbVSTFKyBLF7f8Mp3x2Wfg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64/dts/qcom/sc7180: Add Display Port dt node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     khsieh@codeaurora.org, robdclark@gmail.com, sean@poorly.run,
        vkoul@kernel.org, agross@kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, abhinavk@codeaurora.org,
        aravindh@codeaurora.org, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Bjorn Andersson (2021-06-08 15:26:23)
> On Tue 08 Jun 17:15 CDT 2021, Stephen Boyd wrote:
>
> > Quoting Bjorn Andersson (2021-06-07 16:31:47)
> > > On Mon 07 Jun 12:48 CDT 2021, khsieh@codeaurora.org wrote:
> > >
> > > > Sorry about the confusion. What I meant is that even though DP controller is
> > > > in the MDSS_GDSC
> > > > power domain, DP PHY/PLL sources out of CX. The DP link clocks have a direct
> > > > impact
> > > > on the CX voltage corners. Therefore, we need to mention the CX power domain
> > > > here. And, since
> > > > we can associate only one OPP table with one device, we picked the DP link
> > > > clock over other
> > > > clocks.
> > >
> > > Thank you, that's a much more useful answer.
> > >
> > > Naturally I would think it would make more sense for the PHY/PLL driver
> > > to ensure that CX is appropriately voted for then, but I think that
> > > would result in it being the clock driver performing such vote and I'm
> > > unsure how the opp table for that would look.
> > >
> > > @Stephen, what do you say?
> > >
> >
> > Wouldn't the PHY be the one that sets some vote? So it wouldn't be the
> > clk driver, and probably not from the clk ops, but instead come from the
> > phy ops via phy_enable() and phy_configure().
> >
>
> If I understand the logic correctly *_configure_dp_phy() will both
> configure the vco clock and "request" the clock framework to change the
> rate.
>
> So I presume what you're suggesting is that that would be the place to
> cast the CX corner vote?

Yes that would be a place to make the CX vote. The problem is then I
don't know where to drop the vote. Is that when the phy is disabled?
