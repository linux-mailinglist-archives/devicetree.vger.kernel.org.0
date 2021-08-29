Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3B103FA98D
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 08:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234689AbhH2GvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 02:51:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234601AbhH2GvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 02:51:22 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D75FC0613D9
        for <devicetree@vger.kernel.org>; Sat, 28 Aug 2021 23:50:30 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 107-20020a9d0bf4000000b0051b8be1192fso3767921oth.7
        for <devicetree@vger.kernel.org>; Sat, 28 Aug 2021 23:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=UcZsfTL7lo6QG03jH0zcLyA1nl3b2l6q7cLqiJ7RM6w=;
        b=C3yZviTdjca8Y6g3vvGkt67eBiVQkzTNyQJZ3Hymfg7j6b8YftJ/j/4/JhVjbttF+A
         Dc5OXJ/rbmHT1kJVqGDi/xWwlbLezhdODZyt5xaSP66IkqgULSKpdks+hB8VQ0i4H7lF
         ktUn5uKtG2eTCU7ZiZyyFbiOC4l/K3nw2Sjrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=UcZsfTL7lo6QG03jH0zcLyA1nl3b2l6q7cLqiJ7RM6w=;
        b=E+ZI3s2/wUbnuk7seMDfr/aHE2/HKfs/1lvlKUb3M3MZ0CpUbG6DAD/cLUMDB4+WXI
         Xikt0VdTjZV7ewuDZ4ySTGwQtL59yrz+eICBUo3Jv86jQsrmE5rwCqjQiHlgpWnc5YDu
         lwQlOSjfZOF4h0Y8FVK41maRv7+1GokOF+2oj45x2mT8AYvZ3PK7UcNudw9+G1nqiFqH
         FaZTnCgb4BUROJ3DZKyMKJedZDPGAJ+9BFuZp+5Bbwq0g1Mf/Of2WLJSOY3TnsVf+O6T
         pfaNNLEjXD0bzBOQRJwKDf/x2XX6OGSj29S6Xvwmi+E6kmKCGtBoMgjdDkNAG9+zihxE
         yGBQ==
X-Gm-Message-State: AOAM533DMc6jZ/8a9ibMzorbWwc21y4EApCiPYoxLv/R2eKoV879N8Kf
        B0ZYVlAd+g13Ny3Y2iOEGNttFmulbHb94YKMawl1Wg==
X-Google-Smtp-Source: ABdhPJwt0axpFUQul8bw0k3jGfLZe7Fjddj2YcPWzVIguNKXiCod9lEN608fOnSzy15l8/WSbOgeRxJUsyLHYpXYzJQ=
X-Received: by 2002:a9d:5f85:: with SMTP id g5mr8562392oti.139.1630219829726;
 Sat, 28 Aug 2021 23:50:29 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 29 Aug 2021 06:50:29 +0000
MIME-Version: 1.0
In-Reply-To: <1630083934-9361-1-git-send-email-khsieh@codeaurora.org>
References: <1630083934-9361-1-git-send-email-khsieh@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Sun, 29 Aug 2021 06:50:29 +0000
Message-ID: <CAE-0n51tzL8T2Zoqhu7CqEWRpaCBpRmy=+PZ-N8tCmFj85nbww@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: enable IDP display port
To:     Kuogee Hsieh <khsieh@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        robdclark@gmail.com, robh+dt@kernel.org, sean@poorly.run,
        vkoul@kernel.org
Cc:     abhinavk@codeaurora.org, aravindh@codeaurora.org,
        mkrishn@codeaurora.org, kalyan_t@codeaurora.org,
        rajeevny@codeaurora.org, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kuogee Hsieh (2021-08-27 10:05:34)
> Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

But this must depend on the patch that introduces the phandle to begin
with.
