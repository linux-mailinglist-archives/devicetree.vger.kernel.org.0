Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64A443DC840
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 23:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbhGaVX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 17:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbhGaVX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Jul 2021 17:23:57 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 692EFC0613CF
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 14:23:50 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id bq29so141306lfb.5
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 14:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UFuagbB68OTvddF9Xywx7UrDN/I21A6uFb3ydrSsaG8=;
        b=CRqwWc7QBYs7ycsAgYE5p59uP5JVARslAuqr+wmJA6jVq8VD76RE/xwkyEuczrL7y/
         qYSvp1fOFmy8Nx+lYlnUKnZLLwK9WdJ77KXwxtjV8b4TLO7LGkEQ3cqidhda96VJomgh
         P9ON+IGk+7tfgw/4t6+joWkbp0yXfGa7NORIxMegHLyEXWrHxTFf5nXnA9PVZ6LVKcC0
         tkpjQqi+m/+t5CygOoFF9YlqixGOBWaQemI5sZnwY8qSHelPfj5HAOcx+nYtkJxVp++Z
         2/Z+et95YgDXFLfI+9N5Yc57rewWnvBMlJCJSvT9uKuW7RF7Z53fakh72OQsEsypGe8M
         jOxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UFuagbB68OTvddF9Xywx7UrDN/I21A6uFb3ydrSsaG8=;
        b=RwxZkPUF9nrrEHtteS+OlzXS++WNZGpu/vs6MpCwex1tJ4T3zSLqmkfidtxrAiRZXQ
         Db2gbD0/w1b80eHpr052FK0qkMHOxR5bYAi9KBZsF/6cT/AXWseAH2h76agAdP4IHqF9
         qGZLqj1M80b4Xc3BBTe8XFSc5jmA4Jp2aZcVDFw8ASIDi0D/QuYbSq2HVUUAe69meWTr
         DaqP0GIPCBIk2uBE9Z6XECiIjKBV+qQX5N8ImEk0HFxfqZ2bu1MylBjXEZNUsKnQ7G+I
         PEnQqBWvW3lrzlstsen9XS2RJGkO+AtIKJ0KFxQCXb8c2pf6+HL7wx3Xq1EzeuilrF3E
         lJRA==
X-Gm-Message-State: AOAM530sZO/9H+rmEY1E7hpoW3FekFNiABIfb1apaWxpTEigdyIDiYd8
        6fWgvqg5+nFsMCVKopj/F4KmPlw/aWtlPhQAjlXMDQ==
X-Google-Smtp-Source: ABdhPJx7Q9x1W9R0NDVhm+5e93isK61FmR6LCKivpcqNcKWU0TYWxJ+S9YQgwYa7UlNcmN4iPwiV5tUP5zTz9VvOfOc=
X-Received: by 2002:a19:c7cd:: with SMTP id x196mr5925413lff.465.1627766628769;
 Sat, 31 Jul 2021 14:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210723192352.546902-1-iskren.chernev@gmail.com>
In-Reply-To: <20210723192352.546902-1-iskren.chernev@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 31 Jul 2021 23:23:37 +0200
Message-ID: <CACRpkdYVX+AZWto15Buq023cPSodQuyYXr8Fq64-RP8SQ2b0bg@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Add Pinctrl for SM4250/6115
To:     Iskren Chernev <iskren.chernev@gmail.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        phone-devel@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>, Andy
        Shevchenko <andy.shevchenko@gmail.com>," 
        <~postmarketos/upstreaming@lists.sr.ht>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 9:24 PM Iskren Chernev <iskren.chernev@gmail.com> wrote:

> This patch adds support for the TLMM block on QCom SM4250 and SM6115, codename
> bengal. The code is taken from OnePlus repo [1]. The two platforms are
> identical so there is only one compat string.
>
> [1]: https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250

Patches applied!

Yours,
Linus Walleij
