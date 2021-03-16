Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E624433E222
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 00:33:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbhCPXci (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 19:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbhCPXci (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 19:32:38 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F16EC06174A
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 16:32:38 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id nh23-20020a17090b3657b02900c0d5e235a8so340832pjb.0
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 16:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=F0cJwUc4KZwB02z+vjgX8W6JxJc4yQb8N1YQ54VyI5s=;
        b=h4Zbj1WL9fTPEigyzdvR/mEQftAIJwqjmCa48uJXvCJWjmwbY68dVhEg2APA58oPMi
         UhjQAJydf0fIvhiyIt7Iv4aPpvRaRIKjbHP1SC7W4JSxvsqfhCo78Uob1HWKeO3out89
         tpiV3xv9VU52GARyNUHEZ1idoT4c708Hw/fPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=F0cJwUc4KZwB02z+vjgX8W6JxJc4yQb8N1YQ54VyI5s=;
        b=D5EkSkRHudOlFGfcbORdGUeRXQTooSMhOFqBiYfMD07DYjhe6eqh1OQAmxemWbxS9F
         +AhQODBwui/LjqHb1/SAChmz3U78RfT1lBZCiA2kJiC5kR7uMXP6TkDgVrZXmV45zaY5
         956JZcnxULMdoj0b+h97ZdcCrN2f+pgiHgkTcXEjPl6M9qPwq/h1VyDkKLN2TOqsT+Jg
         X+xa5l+V3kPIE7B41z4ctmci+09yB3lIZFqHB7LGc4FBP7v+2NZncS0tTHTO7bJalfu9
         qiiu9p2ktwv7ihVUnX9U+z+RYxnb0LsRXqnNOYtWiZTvh2/sm4enTkmGo9u0QIBMl/Iq
         EifA==
X-Gm-Message-State: AOAM530QM9MBiASpix5o2QWYCVZRdCZAeEDTZuVLfjSZ9KAFgkSqQwZb
        1ZxWo0WLEkdUplk0ZtLZTQB26Q==
X-Google-Smtp-Source: ABdhPJyQIqOBBEVftxZAD2RPXx1eaq4e9nRCZIit1X1ARQ/y6KObiwcr3NNHojcYQzpajN+MxdA27w==
X-Received: by 2002:a17:90a:2a46:: with SMTP id d6mr1363262pjg.197.1615937558041;
        Tue, 16 Mar 2021 16:32:38 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:b471:7d:bf21:d7dd])
        by smtp.gmail.com with UTF8SMTPSA id a204sm17795326pfd.106.2021.03.16.16.32.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 16:32:37 -0700 (PDT)
Date:   Tue, 16 Mar 2021 16:32:35 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, rnayak@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org,
        David Collins <collinsd@codeaurora.org>
Subject: Re: [PATCH V2 5/5] dt-bindings: regulator: Add compatibles for
 PM7325/PMR735A
Message-ID: <YFFAE9avDMZS9LIh@google.com>
References: <1615816454-1733-1-git-send-email-skakit@codeaurora.org>
 <1615816454-1733-6-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1615816454-1733-6-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 15, 2021 at 07:24:14PM +0530, satya priya wrote:
> Add PM7325/PMR735A compatibles for Qualcomm SC7280 platform.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
