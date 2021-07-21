Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04ACF3D19D6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 00:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbhGUV7g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 17:59:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbhGUV7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 17:59:36 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B175C061757
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:40:12 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id b18-20020a0568303112b02904cf73f54f4bso583249ots.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Q4wvBXyV2lJ1aTRox0e1+Ok+AEaw/CVcGBs0YMHYsP0=;
        b=XqZH1FzW4TAdt+62lo9scgkSGaBidkfe9huO0q1U3Ro1mui8RWXUgDF4qzAHCY6Ru+
         iZ8zSponbgyYt6LXGU0IodEXLM8IGxpYpjT2JbWrcYJxLuLC7ydskbWTAd4EndoQ0uzM
         zAZJ+shbHzcPMS1D4t5gFzBXtgmxI7uFF4NFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Q4wvBXyV2lJ1aTRox0e1+Ok+AEaw/CVcGBs0YMHYsP0=;
        b=VS6wAxqBGa7ttsVoVqeCSZoTfhkk5IxN7xgSrjhbPpe5SNjHdKgdTSy1qwgjO9qFqD
         OcW3XiiqAvGmLmeJliwdv3zn5tEc/PbV8w4KEbZ2gOpXNagYc/EMJG7OfugeRfnHE2I2
         LS4lVGPKz/nCcpWuRH5Ku4/hioTOKJ9qSgymPEcpvY5YQS9BnvRflrbsmik2hsal/YBu
         aLjWsz1hjd6eFgUlEiKUF0uAVp4RbNLi5m2tpYRbNqcbQ8Q1hY5Y/USJtpozI9VE7XzF
         KOBI4UNNzievVi2s8kzEC05wYmN36fPrpYWppi0Tlr+HsdPC5hRNpwCkS3gFOYgIjtpH
         6WSw==
X-Gm-Message-State: AOAM532EeIBAc5UhjyIX0uWM6BdZx3iv18/8f9gu3fxLQm5Etftqdq80
        wDGn/c2acP44lwK98ZOMFVP2VyK9FGy+VvV6KYNGCZ3oY9c=
X-Google-Smtp-Source: ABdhPJwocIiRhFwFOnsM81FkofvQbBA36K0D5dCAYY3+kDkw8/j6vCVRW/AWV4EzATwWCQE40EPyTZCpO+0f5mG/y5g=
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr27826933otf.25.1626907211418;
 Wed, 21 Jul 2021 15:40:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 22:40:11 +0000
MIME-Version: 1.0
In-Reply-To: <1624365748-24224-2-git-send-email-rajeevny@codeaurora.org>
References: <1624365748-24224-1-git-send-email-rajeevny@codeaurora.org> <1624365748-24224-2-git-send-email-rajeevny@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 22:40:10 +0000
Message-ID: <CAE-0n50Km=XxJ93ZJkwcWWJdzvBba_We=bZYzkdYKoB-cwTYkg@mail.gmail.com>
Subject: Re: [v2 1/3] dt-bindings: msm/dsi: Add sc7280 7nm dsi phy
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

Quoting Rajeev Nandan (2021-06-22 05:42:26)
> The SC7280 SoC uses the 7nm (V4.1) DSI PHY driver.
>
> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
