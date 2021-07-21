Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3EA43D19DA
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 00:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbhGUWAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230171AbhGUWAR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:00:17 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FA26C0613C1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:40:53 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 128-20020a4a11860000b029024b19a4d98eso917841ooc.5
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=KEVgavtFokaJseyLsj85tRS/d/rmuvKUZEz1jbsigY0=;
        b=YWntnAY45UIkoNTLLa74vviHMxh/jaVtTmvHPSSDb5RD2eo3rsagGUGXof2ePUT7dg
         kKHv+kyJqjE10h5nvKoL0VVytFjVHwqiPAAu7aB4hIw31vGX5D9/2Rp6FzkVLE+V4Vmr
         IbfnZswljUpK9UkXzyJ/jhjsELUfJxxMtjUJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=KEVgavtFokaJseyLsj85tRS/d/rmuvKUZEz1jbsigY0=;
        b=QOW3RKGa5MVufNhK7cveizSivmqnaOArUWigjRQgMjQhP38v7HbaQIrOamqYrZYWSE
         CxbnkJG85CkiGIY6NNVPaYQCiq1RWIZA2cbJNiRMAvqkanlDpI8M1VafprFYRrmkPVeX
         hzOiLnfeWX9qeOwE5jjwlhWtakQe86kOlld+ZZzqzqXZlI2YcT5h5XEOYBM5/tzBeBzx
         dQ9MP8nPuBj3jhJ0J3U1mdryyIqFikEzHMQCsUBJCWJRaDyddY/0IFeh/X0B8ogN2DG3
         fg2aj2knLDuC845OAYM+EcQSGMpYbkjIUGOof1D+Qb6AQI0PkwSmNst2HazbGEY71mRK
         dr4w==
X-Gm-Message-State: AOAM530kzcVvkKJiIGg9GwdORke4cuQCEHklZrm85P+rE6AV9yubSbkj
        xHZUg3uGy/gfWeryyDyOHKRAdCIRzJkUWRnBeRw75w==
X-Google-Smtp-Source: ABdhPJxntp+G+9rokY2CN2MxKmxY0rpDa6yDFX1UvyHoclObrnzcw8afQvfO/r7cISRj3JfakWdZ3O8HM3QzIH0aqwA=
X-Received: by 2002:a4a:e206:: with SMTP id b6mr25761720oot.16.1626907252629;
 Wed, 21 Jul 2021 15:40:52 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 22:40:52 +0000
MIME-Version: 1.0
In-Reply-To: <1624365748-24224-3-git-send-email-rajeevny@codeaurora.org>
References: <1624365748-24224-1-git-send-email-rajeevny@codeaurora.org> <1624365748-24224-3-git-send-email-rajeevny@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 22:40:52 +0000
Message-ID: <CAE-0n536DwZhxb6M1HvJHAiaChtq2vg1HfiYV+ntrjMVfpRxdQ@mail.gmail.com>
Subject: Re: [v2 2/3] drm/msm/dsi: Add PHY configuration for SC7280
To:     Rajeev Nandan <rajeevny@codeaurora.org>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, sean@poorly.run, robdclark@gmail.com,
        robh+dt@kernel.org, robh@kernel.org, abhinavk@codeaurora.org,
        kalyan_t@codeaurora.org, mkrishn@codeaurora.org, jonathan@marek.ca,
        dmitry.baryshkov@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajeev Nandan (2021-06-22 05:42:27)
> The SC7280 SoC uses the 7nm (V4.1) DSI PHY driver with
> different enable|disable regulator loads.
>
> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
