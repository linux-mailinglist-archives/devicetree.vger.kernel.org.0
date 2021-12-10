Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C89D46F8C8
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 02:48:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235494AbhLJBwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 20:52:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235456AbhLJBwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 20:52:14 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE3E8C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 17:48:40 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id 7so11259520oip.12
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 17:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=21rbEF79vM58lTHe/5HP+R7zGeUXSvxLKkpBRTUmpAQ=;
        b=hQjl+Uj0reF3XjKv1/ZiJOv3bnO6TQVE9xKZx/4sL/LnFmNw7dJpFL2BRjYzCZ8aHQ
         FVwwSepI+gpVFibdICHF+Ay3jf/9w3nMUdjaA3CLBCJQeZakXUEop7g2HrGDn2gRGKU3
         4N/KAcd9WT7+rm4LPy6ShMfBuARJ74K6LG9buEExWuSZIFHazWcKvvb7+6zuxTiVvw/i
         5QP0gkMDJ7NXKrwzvN0Gaa1Vfdf0naYuEbWNoZbM9nKXDE7O2PVPh0aHwhPOsEy1ktXf
         OEvyzItzxKxv8oasOiAVViKt41415yEFQTTnM/+HdfAvLnIZwJNNIo21zOAAkCpFHJnE
         RQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=21rbEF79vM58lTHe/5HP+R7zGeUXSvxLKkpBRTUmpAQ=;
        b=5tv+txLafkvottCVquiFeaNe2NkzMfkg16Yr3fCgkfs/Gi/MrPlEIgQEIYkeu3jlbe
         yzOzdWyKE/AQsXwHixWrYFR5uvjUlsfLnwkNUdWVRyuh4ITZnXf34TUD90YVAkDAjtud
         imKun/EVGLxFwOCpa+FJEuPpkoZrkNDmRkZvWegJkbPU1/AqLVJVebC6DxYzZFVAG7Vk
         N2seSmgC8klGDOgE9bTzubbl44ATgGpalhbfygqPBlQXW3C1xZyFAT7G3V7f2Z2UsN4f
         T4NfwUtIzgj3z8iRqwlX3N2DFJs5GfZ3oqfibinxPjeJ2dtd2M2LB2MVqaEUVWdbj9VR
         jl7g==
X-Gm-Message-State: AOAM533YudGKEkYuDf4NFQnJn38elWg3Z9yMrfKMv5Hpq2CeshW9vNVc
        RYRROdC8XrwY8GmDIEVc6d9shJ89GXsFPPPAGMDAkg==
X-Google-Smtp-Source: ABdhPJw7OyTLriluRShVUXzR0Db4bTvdrnuyJwzYHuCxIXObRx4fxouWkOyMl2WIrEOjvQOsjjFVlMHfbTq0kJ6KU+0=
X-Received: by 2002:aca:120f:: with SMTP id 15mr9647780ois.132.1639100920102;
 Thu, 09 Dec 2021 17:48:40 -0800 (PST)
MIME-Version: 1.0
References: <20211208173047.558108-1-thierry.reding@gmail.com> <20211208173047.558108-3-thierry.reding@gmail.com>
In-Reply-To: <20211208173047.558108-3-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Dec 2021 02:48:28 +0100
Message-ID: <CACRpkdbOx+DGEt6=tztakr5rXtgAAy6_txj76JOufV4469tPkQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: gpio: Add Tegra234 support
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Prathamesh Shete <pshete@nvidia.com>,
        linux-gpio@vger.kernel.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 8, 2021 at 6:30 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Prathamesh Shete <pshete@nvidia.com>
>
> Extend the existing Tegra186 GPIO controller device tree bindings with
> support for the GPIO controller found on Tegra234. The number of pins is
> slightly different, but the programming model remains the same.
>
> Signed-off-by: Prathamesh Shete <pshete@nvidia.com>
> [treding@nvidia.com: update device tree bindings]
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
