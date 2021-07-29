Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FAD13DAA69
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 19:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhG2Rji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 13:39:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbhG2Rjh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 13:39:37 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 274B3C061765
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 10:39:34 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id w6so9428064oiv.11
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 10:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=fg6r52inow2eredqNuunrN7gPgWwoSNQkX9Rb9jl48w=;
        b=W0ikMwg+8KsECvQ2qw9xlVmGUUVSsYwLa9jasRSdD+NCNBIZwzY1r5dkfyTmQLWSoJ
         g/yrb0s7IUD8/WVqQTaSf+UpC5c1SsZzIVJTEM3UAJkev5aZmmyfnjhMT9W72MfP+gvm
         9/JPIICpRZsQqNNaMkMitnTTQRvC4fRM+/SI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=fg6r52inow2eredqNuunrN7gPgWwoSNQkX9Rb9jl48w=;
        b=UbEbU0fLhQwZNjY4kv5C+GxDT/mIFEaFhO7r5DS1He5hcqLURdMHgOMPCxlVdBqBpg
         0qlV1ux8IaQcVA4Lc4LoqxMF8CVbI6zRIUTV342UuFu+WZGJRoRcU1vCoqMVavkbLMTX
         fJTGtnmdpd/F5MhJ4mCWkVVLxUaeQjEG7wxQiwY9JYChmoDtRP7crTmjUmkbAWgUg2wI
         LNoZfwndaEgPrZ48vJKf2pAs0nE1vEHW9d5mPwC63dBi9myzgOR4hD8cNWcofbGvZFVN
         KulJL/aCOABNSyGq08KLI4jTRnMIrHZj/GX6SmQCtW44GSa3pSt5zwfbehKrCUw1PXqc
         iJ6A==
X-Gm-Message-State: AOAM532870osqmcbsebKQyTdrY8t70ttN5C7WQXg0BUWrAQ/NEapw2Gd
        Wax6QC6tPJnjB3Kh5+sMBGPPy+F8Bca5E861Z1WzDQ==
X-Google-Smtp-Source: ABdhPJx96s/1lMlV94WjqJ7laUXC8JpsMbaub1L0ZBuEamot2D9hwru5WMKYSTLrcgsmmPz4jXxWGmzs2Pt/Y2uhplQ=
X-Received: by 2002:a05:6808:619:: with SMTP id y25mr2332599oih.166.1627580373628;
 Thu, 29 Jul 2021 10:39:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 29 Jul 2021 12:39:33 -0500
MIME-Version: 1.0
In-Reply-To: <CAF6AEGv9G99YqEixdUZCLxEgXX1+EqcjgQP-v5CCuj64sv_bTA@mail.gmail.com>
References: <1627473242-35926-1-git-send-email-akhilpo@codeaurora.org>
 <CAE-0n53xMHudWaL7gdnN7jEPE1uLmetZaxYiqToO1AzTZ2R0Mw@mail.gmail.com> <CAF6AEGv9G99YqEixdUZCLxEgXX1+EqcjgQP-v5CCuj64sv_bTA@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 29 Jul 2021 12:39:33 -0500
Message-ID: <CAE-0n5218NnzabN=PqpRTgPSza8GjCyY4=DmdR=LTbeFtvciuA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sc7280: Add gpu support
To:     Rob Clark <robdclark@gmail.com>
Cc:     Akhil P Oommen <akhilpo@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Manaf Meethalavalappu Pallikunhi <manafm@codeaurora.org>,
        OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Andy Gross <agross@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Clark (2021-07-29 10:35:32)
> On Thu, Jul 29, 2021 at 10:19 AM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> >
> > Why is 450000000 after 550000000? Is it on purpose? If not intended
> > please sort by frequency.
>
> We've used descending order, at least for gpu opp table, on other
> gens, fwiw.. not sure if that just means we were doing it wrong
> previously
>

Ah I missed that. I don't think one way or the other is mandated, but
we're already sorting other OPP tables in the qcom dtsi files in
ascending so this is the only one that is different.
