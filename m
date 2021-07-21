Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8D013D19DF
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 00:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230225AbhGUWAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbhGUWAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:00:55 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A117DC0613C1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:41:30 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id o17-20020a9d76510000b02903eabfc221a9so3630064otl.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=8tFkveikWGKHyoMJpaY3v9EmW9OHfpk/4+Rv8pSLhaw=;
        b=VSje6LWppRrx41vMaJH8+az7aeUTBbPPEmHq2CfO0WLP1LmVI48yuoLFKY8ummLolh
         MTW6XiUtEh6dc7mP5cTDNdk5DzLc+hmxu142zujZynzE6jYN8aqkm+kNKx7ZCMj/vZux
         SU20wbkOWK9sYoGRkbWnhwHYHDJIoGo5qgOkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=8tFkveikWGKHyoMJpaY3v9EmW9OHfpk/4+Rv8pSLhaw=;
        b=g0i/hD4rw0h54evLmzbcdQ233+jhYgQkJ1Y7h9TUPG10Mrp+42LFtrMwaNn1NdbRLP
         mI99d3cKw7fZx9i49GV/MoJcrfZTW30mEAPSyRg8tzvZgyvfreS7irFwmm0hFkTiKgkS
         s8YhBXmwoeAuUo/qa5SwfULkcxOt1ZKSvZgmMZ95Bz/hEI3+KW+lttZq6r4KRZfrY/Vx
         i/Y0RBcYHmmDsU954MOUaquqNLFeWl0OQrMWXMF0e67BaS992CHmIA6TEf5GftSiNY49
         UBFjQ4CiBXL36KtNqKuJOFz9KiujB0M59DS3uAtfZ8ZKU2ZC6BhO5P2lhKsXsL4SzEm5
         R00g==
X-Gm-Message-State: AOAM5337ptBMdp40YR0v7YJBztMi1jY84Ax8sFQfGdoRxPuJGNeJ8mvn
        VZLD864+m88k2CJIkEdd+E970fxZA6xO4EUmB1Sgwg==
X-Google-Smtp-Source: ABdhPJwwtgsrtyqzBuj1DRjgsHKLLxHFhAJV/T2ZW12VgttzYji/bsI5Wgec8BIoUSxqV9yPHYFOb7uz+/+23sbio8Y=
X-Received: by 2002:a9d:650e:: with SMTP id i14mr27568157otl.233.1626907290064;
 Wed, 21 Jul 2021 15:41:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 22:41:29 +0000
MIME-Version: 1.0
In-Reply-To: <1624365748-24224-4-git-send-email-rajeevny@codeaurora.org>
References: <1624365748-24224-1-git-send-email-rajeevny@codeaurora.org> <1624365748-24224-4-git-send-email-rajeevny@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 22:41:29 +0000
Message-ID: <CAE-0n501_+htzvSp6pgMxxUaWMeZ7qLSKN1fXNWbNX1kwyYgTg@mail.gmail.com>
Subject: Re: [v2 3/3] drm/msm/dsi: Add DSI support for SC7280
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

Quoting Rajeev Nandan (2021-06-22 05:42:28)
> Add support for v2.5.0 DSI block in the SC7280 SoC.
>
> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
