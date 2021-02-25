Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2797B325984
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 23:20:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232601AbhBYWTJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 17:19:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231843AbhBYWRt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 17:17:49 -0500
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CF85C06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:16:59 -0800 (PST)
Received: by mail-qv1-xf34.google.com with SMTP id o3so74651qvx.5
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/28pMZEAxPunJv3VDFxY9qRg4v622m5ASv9egU51f+c=;
        b=MQqIRfSbdfNH5JT7Cx56a6oYyOuCTo5vwJnGQX1ixbtEe2ZnSFKMyks+3R0hidOSsU
         5y11pQl7qRHZFSnlriBPtKO4SsalOauMyCuLbf7loI2mdGba3ibmGSkhzjgjXEXIFb/v
         7J7ZoUcOwTarrmA3X5j1xmeQYemg69GihSM58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/28pMZEAxPunJv3VDFxY9qRg4v622m5ASv9egU51f+c=;
        b=BPhPqo/JnQWfikrSSUZiEJCwheq7rQWw2VrpTV3uBmTJKlv/sP8CyrZEIGjOT/Uj73
         tXqLD9pxaAjpfhwBTaCSzdv69kR1r8WNNUl1TnUzbnlSUeo+0wzML5r2mFzLnaAy+1fX
         99hw9yx0G1H+QzOhBebTUuBBoBUfydw7i7+JOFzZMyIP8kGbBjKsrDhcdb+CdJPR+Nsj
         pRcSQZus0poWAITEOnZD6WOhxNleWxnlKUABrUKAE7lK3Pw5K+petO4XnPPvhrfpMKKI
         J1HqV7APdIh+CKHPW68MkjLXEcN+Hmf0iprUg6PxHojXyzLvA6GrcWQjSf69a+5MA3cR
         IXaQ==
X-Gm-Message-State: AOAM530qyirlPeLoIRSfNep4W+X5/kSCG9qNrZFqPSjB/Kx8dQy72wZI
        rkzG3i12vsLBPXs6euSlg99J5koXmHpZeg==
X-Google-Smtp-Source: ABdhPJwcRv1I5XnoMrF/VVGKaw/94mvmRiB4RrRV3JPWkir7YbKP32owG6nVK1QGhhJaHcPj+3lLig==
X-Received: by 2002:a0c:c60b:: with SMTP id v11mr262371qvi.44.1614291418442;
        Thu, 25 Feb 2021 14:16:58 -0800 (PST)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id f21sm4950002qka.11.2021.02.25.14.16.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 14:16:57 -0800 (PST)
Received: by mail-yb1-f169.google.com with SMTP id b10so7009846ybn.3
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:16:57 -0800 (PST)
X-Received: by 2002:a25:ab54:: with SMTP id u78mr101535ybi.276.1614291417357;
 Thu, 25 Feb 2021 14:16:57 -0800 (PST)
MIME-Version: 1.0
References: <1605526408-15671-1-git-send-email-srivasam@codeaurora.org>
In-Reply-To: <1605526408-15671-1-git-send-email-srivasam@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 Feb 2021 14:16:45 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VipGLw+wqzb-ies2LK8esP3=PfFjpxubH2YYONQt5jCA@mail.gmail.com>
Message-ID: <CAD=FV=VipGLw+wqzb-ies2LK8esP3=PfFjpxubH2YYONQt5jCA@mail.gmail.com>
Subject: Re: [PATCH] Asoc: qcom: dts: Change MI2S GPIO configuration to pulldown
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Nov 16, 2020 at 3:35 AM Srinivasa Rao Mandadapu
<srivasam@codeaurora.org> wrote:
>
> From: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
>
> Change LPASS MI2S gpio configuration to pull down from pull up.
>
> Fixes: 9b72f4e6a3f8 (arm64: dts: qcom: sc7180: Add lpass cpu node for I2S driver)
>
> Signed-off-by: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Should be replaced with:

[PATCH 02/13] arm64: dts: qcom: Move sc7180 MI2S config to board files
and make pulldown

https://lore.kernel.org/r/20210225141022.2.Id27e7e6f90c29bf623fa4880e18a14ba1dffd2d2@changeid

-Doug
