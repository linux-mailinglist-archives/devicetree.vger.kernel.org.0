Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AC1A3FE815
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 05:37:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbhIBDit (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 23:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232877AbhIBDis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 23:38:48 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED764C061764
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 20:37:50 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id v20-20020a4a2554000000b0028f8cc17378so135025ooe.0
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 20:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=jTP/sG1HuvFKXr+3xQRfYJQh8HDh4ZXkCSrzx8/zILA=;
        b=jK7DTpWCdzZ36LyxOqDmYAbosBcu7xVDGahQiC+dPcCbJm11HRmSPMvWnxO4jb9FoC
         zpiJgMN95jn/Oc5IzsDVNWDhubX5S1Sc7DzgSaAsbs5TSEAZlT3dUI1sS9jKsdKd/A8N
         orgpEHbC32aA5KkyoJautVtKk4qX6Dw5/yrZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=jTP/sG1HuvFKXr+3xQRfYJQh8HDh4ZXkCSrzx8/zILA=;
        b=iQqQNoaZ4LlK2aDzkOrpxOi+VeMutgkunsgUzOMMHRC4H6F1Scqa12GUwYd2/VCNCv
         dP7BKJYNja0kvN8xnBwwJjmW0DDUyMT7gTvDTF+mNLYd0KI0yvUSm8Be6XgoHMKMytcm
         aDk76qZn2qtowcUUdSlXC66E/7vMIv0U/2qA7B0jQM3/0mud3DwGawN3ZM6S4Q8N/oVa
         AvwdSoIeBQvNKjKxQq2Pl2h6DII8ZWyjVf+frXCsIgJICqMwKZzhrfaUfxl2dyj1gbDy
         pnjcSJyxvCkTZSGNFABnmOQs/X4Mc0slgEQjW/WNH4MT6vO2gSHA+NdXR8c6Ee8ESmsp
         GVeA==
X-Gm-Message-State: AOAM533iTjcXugeXnOzrZGvFzrOk45aFcqCBkcU8ILzYcCsZVsXaTP8P
        euWSWgDHbnRwg+bgueJw5XaPnwp/+sFA9gLq+18q5Q==
X-Google-Smtp-Source: ABdhPJxWjgk6/3pIlbxH85C1ptiNv0bNKyYD19/tfQg0xIqiQUFjM2i0BdYDC3Ps5LwCFqpjGowDB1MlUFcs5zuH4TM=
X-Received: by 2002:a4a:a98c:: with SMTP id w12mr910632oom.29.1630553870182;
 Wed, 01 Sep 2021 20:37:50 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Sep 2021 20:37:49 -0700
MIME-Version: 1.0
In-Reply-To: <5be25c9710b7706cff91f1db71f9e25e@codeaurora.org>
References: <1628830531-14648-1-git-send-email-skakit@codeaurora.org>
 <1628830531-14648-2-git-send-email-skakit@codeaurora.org> <CACRpkdZteWY6X+prHeAF0rtPVbCk+X9=ZYgpjgAMH24LhOjhaQ@mail.gmail.com>
 <4af8171aefd6f0387438225666ec1ccc@codeaurora.org> <CAE-0n53sR12fEa_cNPeT5eGcQVzzL57pd-tYnJbpP0NXkHMTsw@mail.gmail.com>
 <6801879ddd0edf9a8d0e3605f3868e79@codeaurora.org> <CAE-0n52Ki2tA6qy6ADym3r4UQ0tkvgz3bpif_Mm2q3Y+N=huGg@mail.gmail.com>
 <5be25c9710b7706cff91f1db71f9e25e@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 1 Sep 2021 20:37:49 -0700
Message-ID: <CAE-0n51_v3rjoknfFTt3QcMnyNnHgXnkazDEsfJuroHZ_s5TRg@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: qcom: spmi-gpio: correct parent irqspec translation
To:     skakit@codeaurora.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        David Collins <collinsd@codeaurora.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        linux-gpio@vger.kernel.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting skakit@codeaurora.org (2021-08-17 22:26:18)
> On 2021-08-18 00:45, Stephen Boyd wrote:
> > Quoting skakit@codeaurora.org (2021-08-17 02:06:42)
> >> On 2021-08-17 02:38, Stephen Boyd wrote:
> >> >
> >> > Are there any boards supported upstream that have a gpio block that
> >> > isn't at 0xc000?
> >>
> >> yes, all the pmics used in sm8350-mtp.dts board have gpio block at
> >> addresses different than 0xc000.
> >>
> >
> > So maybe
> >
> > Fixes: f67cc6a91d88 ("arm64: dts: qcom: sm8350-mtp: Add PMICs")
> >
> > is appropriate then?
>
> This patch is actually fixing the pinctrl-spmi-gpio.c driver.
> So, I think we should add
>
> Fixes: ca69e2d165eb ("qcom: spmi-gpio: add support for hierarchical IRQ
> chip")

OK. Were you going to resend this patch? I don't see it in linux-next so
I worry that Linus dropped it while the Fixes tag was figured out.
