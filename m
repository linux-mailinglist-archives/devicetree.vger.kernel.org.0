Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 667A84072DA
	for <lists+devicetree@lfdr.de>; Fri, 10 Sep 2021 23:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234451AbhIJVUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Sep 2021 17:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbhIJVU0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Sep 2021 17:20:26 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2546AC061574
        for <devicetree@vger.kernel.org>; Fri, 10 Sep 2021 14:19:14 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id y18so4109576ioc.1
        for <devicetree@vger.kernel.org>; Fri, 10 Sep 2021 14:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5lhyZTASH4SJRYSNnAF6nepknOxCtJqItrbtMVPCI0I=;
        b=HqKsNG9+E/mQtTSc/qswsz3jUSkK53rxZSIixGE9gzqlmB/R5arNOEIhFALiap9nOZ
         Qh4qv/DoUYwk3jrqlEpTng0e56wwgvnUoqWbc9CAb8q2XlxLEGrmbKEEmlZUWDOm3ZVC
         fZ5eKKXsnu6FK6QIN+kKvYtG5i8SC/c0vlCI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5lhyZTASH4SJRYSNnAF6nepknOxCtJqItrbtMVPCI0I=;
        b=yVcbFsyLl8j0KA83Mz9czzzQpAlVzijV/R9JJA0h5jT4RJeCOZaTrYb2h5Kl+nM+oM
         MK+ngsZiK4/w0flnu134bGyfdMHTorREdc+RH52BT//vC1pK3KSDR0nZKQ3oBNTWS1m5
         tfvIsknYEPNLbviQnjMkVr2bqMCX7UsPcIi92Fzt7B7fAqeLw+Nb6xxxVPPzJhqB+XG1
         KOnGzcg0vt1ZpYw2s09X6XWJ6+EVTBYksB0WkY8CLab3pXVi+Ny7DdupS1sejqEI8HLq
         bWltRyAdtRuhk6oywlnVdzGnyz6DvUM6SQk84k47embs0xy3+2c/NVHjhVa3CbdAwkb/
         +8ig==
X-Gm-Message-State: AOAM532ZhEVPE0iy41sYnfRibjQ1JBsJ35Yj4rEatZVtw5GLiBPubbe6
        pOhkl4TEKIyUG3L1TJiMdwNa/X0zCinmrg==
X-Google-Smtp-Source: ABdhPJz4Fr8f4fUtvOotbpfRfRvSHwj8zQHL0A3vDRglanAvBx0ULtAhLZvRPfDn3zD6l/9lrL883w==
X-Received: by 2002:a6b:d915:: with SMTP id r21mr8634437ioc.76.1631308753437;
        Fri, 10 Sep 2021 14:19:13 -0700 (PDT)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com. [209.85.166.182])
        by smtp.gmail.com with ESMTPSA id g19sm1651046ilb.84.2021.09.10.14.19.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 14:19:12 -0700 (PDT)
Received: by mail-il1-f182.google.com with SMTP id h29so3438868ila.2
        for <devicetree@vger.kernel.org>; Fri, 10 Sep 2021 14:19:12 -0700 (PDT)
X-Received: by 2002:a92:da0c:: with SMTP id z12mr6317818ilm.120.1631308752557;
 Fri, 10 Sep 2021 14:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210909122053.1.Ieafda79b74f74a2b15ed86e181c06a3060706ec5@changeid>
In-Reply-To: <20210909122053.1.Ieafda79b74f74a2b15ed86e181c06a3060706ec5@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 10 Sep 2021 14:19:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UV_TG+zCsdYc5mqHFP5Cd8QuQNgYMtWNX9kENXpJXn4w@mail.gmail.com>
Message-ID: <CAD=FV=UV_TG+zCsdYc5mqHFP5Cd8QuQNgYMtWNX9kENXpJXn4w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add sc7180-trogdor-homestar
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 9, 2021 at 12:21 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Homestar is a trogdor variant. The DT bits are essentially the same as
> in the downstream tree, except for:
>
> - skip -rev0 and rev1 which were early builds and have their issues,
>   it's not very useful to support them upstream
> - don't include the .dtsi for the MIPI cameras, which doesn't exist
>   upstream
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../dts/qcom/sc7180-trogdor-homestar-r2.dts   |  20 ++
>  .../dts/qcom/sc7180-trogdor-homestar-r3.dts   |  15 +
>  .../dts/qcom/sc7180-trogdor-homestar.dtsi     | 335 ++++++++++++++++++
>  4 files changed, 372 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
