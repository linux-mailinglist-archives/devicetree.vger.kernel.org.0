Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8F183F0F07
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 02:04:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235218AbhHSAFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 20:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235005AbhHSAFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 20:05:10 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC930C061764
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 17:04:34 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id a13so5310431iol.5
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 17:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fEapmFlBKIuSpoPu4AyxSHs+c5eRGpigOktGw17Waoc=;
        b=RymtZDJzEG5vx1du3BYZlbKOwsHfxlhsmAW5/gxLcPrWYezAkX6atoyRb9N8Y/1V+S
         mVPlJytPA/Ap+BOLltZGwE6n+41KOFT8mVB6GgGClW7alh/gUBLat7aSJRwZ9yyoPo1Q
         AVqoZbTXZYbJy4uXyI25ybPOpZOUsLcWXlZVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fEapmFlBKIuSpoPu4AyxSHs+c5eRGpigOktGw17Waoc=;
        b=aOdbF4unobulsoKMcmqM8hAA1uaLAmfJGk4HOl4CIOQHb+svEoRqjlGT6ZBPAaqMCA
         dPVDb4F/OcffMENWcZAGmA2YtD+sb/oFUL5nDbCYRjruVwSkjoJVjAehGWOrO2uXmdVx
         pcp7VWiKJELpOjcvGpuH4q3RXbU5BtXj6AcydI3aRVIjDsYI0e45HOLYdD9jfdVO2JRw
         q/VpFjZEwFWpklvA5OJ9RtLIH1CGe/q6cngyhNZ6Uw0MiygSeSnCJRMdnVrGl0C0M172
         NpDA1wokDJfdTjUKGiEKMWtjCl/RnIpXB8bngcWjHvE6n1egWdDaB0af5QtqALSu8sY+
         0bMA==
X-Gm-Message-State: AOAM531qytA54b7ZYKQzNVPoKwbl3HIdTjTyv5rkCP1j7XP0DCXFjAok
        eN04nsrB5GPmd1ltGxdR4wfddYxlXX5gSQ==
X-Google-Smtp-Source: ABdhPJx0J3MRiIkNeO+YrNoNcHiZK7gDYb86jP3AQXgE4JgNI327xy3kVbrkX9rHzbbj+4Qn2Fc7iQ==
X-Received: by 2002:a02:1083:: with SMTP id 125mr10243834jay.34.1629331474045;
        Wed, 18 Aug 2021 17:04:34 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com. [209.85.166.50])
        by smtp.gmail.com with ESMTPSA id d20sm745946iow.33.2021.08.18.17.04.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:04:32 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id a13so5310332iol.5
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 17:04:32 -0700 (PDT)
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr9282243ioe.166.1629331471737;
 Wed, 18 Aug 2021 17:04:31 -0700 (PDT)
MIME-Version: 1.0
References: <1628754078-29779-1-git-send-email-rajpat@codeaurora.org> <1628754078-29779-4-git-send-email-rajpat@codeaurora.org>
In-Reply-To: <1628754078-29779-4-git-send-email-rajpat@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 18 Aug 2021 17:04:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vb2_K7QDvdMkjPLYqbVNQMa9e=3_PqREAHYMMVX-9QVQ@mail.gmail.com>
Message-ID: <CAD=FV=Vb2_K7QDvdMkjPLYqbVNQMa9e=3_PqREAHYMMVX-9QVQ@mail.gmail.com>
Subject: Re: [PATCH V5 3/7] arm64: dts: sc7280: Add QUPv3 wrapper_0 nodes
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        msavaliy@qti.qualcomm.com, satya priya <skakit@codeaurora.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Aug 12, 2021 at 12:42 AM Rajesh Patil <rajpat@codeaurora.org> wrote:
>
> @@ -542,8 +561,305 @@
>                         #address-cells = <2>;
>                         #size-cells = <2>;
>                         ranges;
> +                       iommus = <&apps_smmu 0x123 0x0>;
>                         status = "disabled";
>
> +                       i2c0: i2c@980000 {

Not a full review of your patch (I think Matthias has already looked
in a bunch of detail), but can I also request that you add i2c and spi
aliases in your next spin (I think you have to spin this anyway,
right?) Add these under the "aliases" mode before the mmc ones (to
keep sort order good):

i2c0 = &i2c0;
i2c1 = &i2c1;
i2c2 = &i2c2;
i2c3 = &i2c3;
i2c4 = &i2c4;
i2c5 = &i2c5;
i2c6 = &i2c6;
i2c7 = &i2c7;
i2c8 = &i2c8;
i2c9 = &i2c9;
i2c10 = &i2c10;
i2c11 = &i2c11;
i2c12 = &i2c12;
i2c13 = &i2c13;
i2c14 = &i2c14;
i2c15 = &i2c15;

...and these after:

spi0 = &spi0;
spi1 = &spi1;
spi2 = &spi2;
spi3 = &spi3;
spi4 = &spi4;
spi5 = &spi5;
spi6 = &spi6;
spi7 = &spi7;
spi8 = &spi8;
spi9 = &spi9;
spi10 = &spi10;
spi11 = &spi11;
spi12 = &spi12;
spi13 = &spi13;
spi14 = &spi14;
spi15 = &spi15;

The "Quad SPI" doesn't get an alias, but that's OK. It doesn't have a
well-defined number in the manual and it's fine to have it be
auto-assigned. It's really just confusing when there's something with
a well-defined number in the manual and it's a _different_ one in the
logs. ;-)

-Doug
