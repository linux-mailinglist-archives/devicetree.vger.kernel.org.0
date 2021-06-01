Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69BE939774B
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:56:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232490AbhFAP6L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:58:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbhFAP6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:58:11 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA88BC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:56:29 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id j75so15909745oih.10
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=FxZxF8CUm+KWjU3wGRKaKMENJ6JPLN3HDamelOjPqxA=;
        b=UltuNVVr5qb+Lf6MHAOXUvFc/IubBdtJ0yalaqOx2FHE0E5w6Vuy08BAhoBYBuP0M6
         qL2NGfxYmEt2zvVUTgwb4CPZ8IGwoYl0QQWyAzRBdAWt4C8lyBt5/gbIJuuPYMGtDd6E
         iQnu/6tIzDY09AKy+PtiFLo137kNIGMZIEc9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=FxZxF8CUm+KWjU3wGRKaKMENJ6JPLN3HDamelOjPqxA=;
        b=OirbWpwEKB0LNZD8HWxnjWMzxpPq6fCgb0g/W+NHVdd1e1lVK2pYwmomIDAbJ/Hkbw
         okPaV0CCBGTpeYJWH2/UZO5IyBF2yd5FPYkRBDMCWYC9zvEgLGtcH8gg8iNWLpnE/6cP
         fIbmTArtMbQqzYLSpizzsZsRNP19aonNf7mrB0KBB+UqtcLFQgtTeiQn+WpvDib1Quqc
         rI0JPuh2m71ZBREa2rZ63CuQCw5RSGM5bBMyocVy/gci0l8AmzMeOQId7nyp2VkJxVlW
         rMTHwMTM3Q3XC/ta6VWZBEHN+1mrUO7Ud2yfbCuOxgbUFJZUMWoJOATKSrpJELhE/wY2
         ys9g==
X-Gm-Message-State: AOAM531xe4u49zBlcZXza3L7DJeaZ1w5wWplD638CEbt3RLUHdVVZrbB
        GJo0VOb9glD2DwpOlSMETSa6gPB8SQ1DDiFR/PY+Vg==
X-Google-Smtp-Source: ABdhPJybv3iKPhoqDwc4qO/Zl0bqVJvkjD92sd0LaGvMmIxjQbCH/KfnaG/c0pbdJbbKDDMUmhNZFn4rtNC7tIAWj8Y=
X-Received: by 2002:aca:654d:: with SMTP id j13mr423624oiw.125.1622562989251;
 Tue, 01 Jun 2021 08:56:29 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 1 Jun 2021 08:56:28 -0700
MIME-Version: 1.0
In-Reply-To: <20210601022117.4071117-1-judyhsiao@chromium.org>
References: <20210601022117.4071117-1-judyhsiao@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 1 Jun 2021 08:56:28 -0700
Message-ID: <CAE-0n52DQ5yGxAFKLhuHQxK2Qj7eOTBNWNzGLhFLMR6sVhCMVQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: add label for secondary mi2s
To:     Judy Hsiao <judyhsiao@chromium.org>, broonie@kernel.org
Cc:     Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, cychiang@google.com, judyhsiao@google.com,
        tzungbi@chromium.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Judy Hsiao (2021-05-31 19:21:17)
> Adds label for MI2S secondary block to allow follower projects to override
> for the four speaker support which uses I2S SD1 line on gpio52 pin.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
