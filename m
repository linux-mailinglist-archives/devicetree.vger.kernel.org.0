Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AEF03E0864
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239650AbhHDS5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240388AbhHDS5f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 14:57:35 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EE9BC06179B
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 11:57:22 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 21so3989074oin.8
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 11:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=W0RU2njrJYwNw31OX+GKz1dnas7rS+0peN2BXk2nTOM=;
        b=XQG1pb4WN8xpvB82dpmucAJRgEyqKxa/pnqs92acP0GjyGJg6pbgmHVkt4VIIBWHZ2
         9lg1QU4BnUj9PaX5g6rsqOV31lVBH/YiGh5Muf2InY6gVAzhbwCNcNt0M9ZT1kilr1lB
         peNOAvCJ/Gk4wKYe3BIAV7+jN1n2GxKn9pORY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=W0RU2njrJYwNw31OX+GKz1dnas7rS+0peN2BXk2nTOM=;
        b=IW+N56Znxxz4hv7SY2J8UJhUYLUNi3t3nTG733J41+XAzatxlMluvl0WHyVv3QA51k
         oQuPs/0nHNpM2Oi6EybmmWNOTqqsRX+DBdZB6AAohpB3S+1m5+jEKmKSamVtQW++Bqm2
         i4pqZUQsfNozMbl5egJMs8mpAqVuo95jHZ1fM5v8cvTyiJIt1+LhqIKfx1b9jiKUByoF
         wNnY6wvBCn+XkqNF+O99ppZseMcFOuOWo4QonBjpwaixuVL802FmCbMdw3K28Md8pE4w
         uIFTOPuavRQcov6S4atKugnRQpRvGyoypalCoKCbMK1evRP7PIKdcWsLw36I4ARpWXyp
         Z9Fw==
X-Gm-Message-State: AOAM533lR/7Su0YO7XIEhOtEHgS+q6Jj3yGwb3oK3G3YFFDGzFjycneQ
        jZswRlgK7txArSvfkARQDQLYbWp02TV26TGZBwHW8Q==
X-Google-Smtp-Source: ABdhPJxnaosSbnczMAr1y6z1t5NO2fUtY+Th+88s1vPF8mmT7ZwOvdJJWTYMH3xeYdgzDiiMnXNGokR3TdHCDuJICOc=
X-Received: by 2002:a05:6808:619:: with SMTP id y25mr3998610oih.166.1628103441478;
 Wed, 04 Aug 2021 11:57:21 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Aug 2021 11:57:20 -0700
MIME-Version: 1.0
In-Reply-To: <1627581885-32165-4-git-send-email-sibis@codeaurora.org>
References: <1627581885-32165-1-git-send-email-sibis@codeaurora.org> <1627581885-32165-4-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 4 Aug 2021 11:57:20 -0700
Message-ID: <CAE-0n5249t-DCDY0-HSV5EYN5yOv02NKJwKpibpL5NdTmnCrfg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sc7280: Fixup the cpufreq node
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org
Cc:     viresh.kumar@linaro.org, agross@kernel.org, rjw@rjwysocki.net,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        dianders@chromium.org, tdas@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-07-29 11:04:44)
> Fixup the register regions used by the cpufreq node on SC7280 SoC to
> support per core L3 DCVS.
>
> Fixes: 7dbd121a2c58 ("arm64: dts: qcom: sc7280: Add cpufreq hw node")
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
