Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 39D67FBD4A
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2019 02:02:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726953AbfKNBCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Nov 2019 20:02:18 -0500
Received: from mail-pl1-f193.google.com ([209.85.214.193]:37163 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726912AbfKNBCS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Nov 2019 20:02:18 -0500
Received: by mail-pl1-f193.google.com with SMTP id bb5so1837599plb.4
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2019 17:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gDhQr0yPumU3571o48l1UHCnEyjmNkoXyne7z8thvVU=;
        b=bdZRlULcki8VPthzSPxdbcpDxwbmCSxYCRaUD0ZDuZdN5Fp9/Qflw30G2H2j49ZAt6
         JZKxC0cCv5DbDB6BEXIsWMMKV9KNge9+c1hoTmXp2ZWeeHqwfkNJqNp7a/TFX7aeJJVK
         sJFjS+C7XOj67RQG5+WeWEGaPpci6Y4An3lDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gDhQr0yPumU3571o48l1UHCnEyjmNkoXyne7z8thvVU=;
        b=soaDv8MdZESOdsKLMmIbhf6ShmLkAeQO9jnf9ktqyds927iwfjEkQWIrWM3a7Z9rOP
         DzdDPlXfx/RAljHI5EEyfchpaNjTEu9SUBGDftAhES3Fp/wJDBo0iTvaAhojQJFTbMt5
         0AnweCU1As1QOMazJ9AjUqVK8FDCUCOVmeJKMNVvIXU6GM5V96CMgbP5hyt6eNq8nXdF
         BD1w93ICWUJp7D/X8IkR93gCzMVQ/ZiGqpixcFWpug9KYplsHvn3KG/VUiuOXexeIbhZ
         FX0FLVyChcVOqomSsRTf8nCUbH9KYi5MlU5gkqPgFu3H7UIKK5OxeFF5hzaytdMKT2By
         iXFw==
X-Gm-Message-State: APjAAAVzSxcuGiGCkenLmGIE/zSb3L/tUSLbkmSALEw/d34QPdrQYRaz
        QD00sAe2aFiwX1CtvXHifwCV1Tliqlk=
X-Google-Smtp-Source: APXvYqxIMjMZt+ozUS0xSeGDM8fOb36CEX2OYMCtrISufmtFKixqjvKYzDD00RzwR1DJY6Oadd47VA==
X-Received: by 2002:a17:902:7c07:: with SMTP id x7mr6769661pll.124.1573693335780;
        Wed, 13 Nov 2019 17:02:15 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id m19sm3823065pgh.31.2019.11.13.17.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 17:02:14 -0800 (PST)
Date:   Wed, 13 Nov 2019 17:02:10 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rob Clark <robdclark@chromium.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Michael Turquette <mturquette@baylibre.com>,
        David Brown <david.brown@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        robh@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        Jeykumar Sankaran <jsanka@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v4 5/5] clk: qcom: Add Global Clock controller (GCC)
 driver for SC7180
Message-ID: <20191114010210.GF27773@google.com>
References: <20191014102308.27441-6-tdas@codeaurora.org>
 <20191029175941.GA27773@google.com>
 <fa17b97d-bfc4-4e9c-78b5-c225e5b38946@codeaurora.org>
 <20191031174149.GD27773@google.com>
 <20191107210606.E536F21D79@mail.kernel.org>
 <CAJs_Fx60uEdGFjJXAjvVy5LLBXXmergRi8diWxhgGqde1wiXXQ@mail.gmail.com>
 <20191108063543.0262921882@mail.kernel.org>
 <CAJs_Fx5trp2B7uOMTFZNUsYoKrO1-MWsNECKp-hz+1qCOCeU8A@mail.gmail.com>
 <20191108184207.334DD21848@mail.kernel.org>
 <CAJs_Fx6KCirGMtQxE=xA-A=bd5LeuYWviee0+KqO5OtGT9GKEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAJs_Fx6KCirGMtQxE=xA-A=bd5LeuYWviee0+KqO5OtGT9GKEw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 08, 2019 at 11:40:53AM -0800, Rob Clark wrote:
> On Fri, Nov 8, 2019 at 10:42 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Rob Clark (2019-11-08 08:54:23)
> > > On Thu, Nov 7, 2019 at 10:35 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > Quoting Rob Clark (2019-11-07 18:06:19)
> > > > > On Thu, Nov 7, 2019 at 1:06 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > > > >
> > > > > >
> > > > > > NULL is a valid clk pointer returned by clk_get(). What is the display
> > > > > > driver doing that makes it consider NULL an error?
> > > > > >
> > > > >
> > > > > do we not have an iface clk?  I think the driver assumes we should
> > > > > have one, rather than it being an optional thing.. we could ofc change
> > > > > that
> > > >
> > > > I think some sort of AHB clk is always enabled so the plan is to just
> > > > hand back NULL to the caller when they call clk_get() on it and nobody
> > > > should be the wiser when calling clk APIs with a NULL iface clk. The
> > > > common clk APIs typically just return 0 and move along. Of course, we'll
> > > > also turn the clk on in the clk driver so that hardware can function
> > > > properly, but we don't need to expose it as a clk object and all that
> > > > stuff if we're literally just slamming a bit somewhere and never looking
> > > > back.
> > > >
> > > > But it sounds like we can't return NULL for this clk for some reason? I
> > > > haven't tried to track it down yet but I think Matthias has found it
> > > > causes some sort of problem in the display driver.
> > > >
> > >
> > > ok, I guess we can change the dpu code to allow NULL..  but what would
> > > the return be, for example on a different SoC where we do have an
> > > iface clk, but the clk driver isn't enabled?  Would that also return
> > > NULL?  I guess it would be nice to differentiate between those cases..
> > >
> >
> > So the scenario is DT describes the clk
> >
> >  dpu_node {
> >      clocks = <&cc AHB_CLK>;
> >      clock-names = "iface";
> >  }
> >
> > but the &cc node has a driver that doesn't probe?
> >
> > I believe in this scenario we return -EPROBE_DEFER because we assume we
> > should wait for the clk driver to probe and provide the iface clk. See
> > of_clk_get_hw_from_clkspec() and how it looks through a list of clk
> > providers and tries to match the &cc phandle to some provider.
> >
> > Once the driver probes, the match will happen and we'll be able to look
> > up the clk in the provider with __of_clk_get_hw_from_provider(). If
> > the clk provider decides that there isn't a clk object, it will return
> > NULL and then eventually clk_hw_create_clk() will turn the NULL return
> > value into a NULL pointer to return from clk_get().
> >
> 
> ok, that was the scenario I was worried about (since unclk'd register
> access tends to be insta-reboot and hard to debug)..  so I think it
> should be ok to make dpu just ignore NULL clks.
> 
> From a quick look, I think something like the attached (untested).

The driver appears to be happy with it, at least at probe() time.
