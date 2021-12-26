Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77B5147F509
	for <lists+devicetree@lfdr.de>; Sun, 26 Dec 2021 04:32:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231190AbhLZDcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Dec 2021 22:32:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231165AbhLZDcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Dec 2021 22:32:06 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6643DC061759
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 19:32:06 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id v6so19723063oib.13
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 19:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cpSRXjM9kG2rU64CnT289qDrVGElfeL1DhdrYlGUgWM=;
        b=OIgHtYo7xHRxiQHgjF8+g+ssHpKYVV3glYf/4biLu+pBoJZVXQRO41a1wulGtCYX23
         40rNim4t7pR4nNL3Ggy9o8x9SN70RiXEPBmpVbDe5XWVl2bVsCenHuPEeBcq9/Msh9Io
         WJ46G15+nWiEWw5blyy+IIqxyJ1LTwjJJYfE3P1d/DmNqreyALmMyMmTJOTbU4FiOfv6
         4ebTDJidXnz9wzK7wzgZR8gFbibfbu1kgO+y9ISVrXhrVlb83OAi7xtTIwzfRBzzg3bV
         Rj9/4ybRYwc07g43h9g6/erSq6yd3IimAhjjWidNZP7Swe9dgrEp3lLdEhEAozYqCVI/
         3tag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cpSRXjM9kG2rU64CnT289qDrVGElfeL1DhdrYlGUgWM=;
        b=U54dBiwcxxgMzHcHhjHZ8prAtoai8XMe1jP4WPV0wOdWW3SvGMhnLgPBY1uAeXrVuc
         JgFuxytsMrnWfndOEVkBtfM2VG8+hYssThb5yMwHt2lGsXHTViM46VlW+IulBd3v7Xxf
         7nUmn06GFdJUkzZ1iiKA76cU7jAzFH7XtZVd6mJj1VuFBDh6MaOnap5j0EBeLk99Upim
         u3coScyB9fa4prhgPumJBPLsFJ4ZMTygYYRptdxHyRDQ6Hpg3DOAxtSbXM5UJlbvWgqH
         J0579ii9yvbfShLB4bYw9myWxgx0Fi9eho2pD4Ifo+lSiknOXLzKzbg2N9bXN0r1y5Eo
         DCJQ==
X-Gm-Message-State: AOAM532HBWQSXQ6P1c92J69AbSQhsSmjYILMyiYV21giZtqFHze3pOAW
        wLT2ioRpXED7ybNn1vtxzGaT4A/EPr85od6l8A5Wbg==
X-Google-Smtp-Source: ABdhPJztUoEc1TdEZzCer3ftmiWpd8yh9ma4NkStZRL5zzrUlGrViIzx7eFQAZGqibuH/KPkcT9EBY8sWyRpqa0V6RI=
X-Received: by 2002:aca:120f:: with SMTP id 15mr9083937ois.132.1640489525295;
 Sat, 25 Dec 2021 19:32:05 -0800 (PST)
MIME-Version: 1.0
References: <20211224192545.74528-1-david@ixit.cz>
In-Reply-To: <20211224192545.74528-1-david@ixit.cz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 26 Dec 2021 04:31:54 +0100
Message-ID: <CACRpkdaVTuzza-gJDgeCV5+cpTQUynM9ja5k5WLF9_L=opsn1A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: PL18x stop relying on order of dma-names
To:     David Heidelberg <david@ixit.cz>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <treding@nvidia.com>,
        ~okias/devicetree@lists.sr.ht, Rob Herring <robh@kernel.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 24, 2021 at 8:25 PM David Heidelberg <david@ixit.cz> wrote:

> We don't care in which order are "rx" and "tx" DMA names supplied.
>
> Fixes: 4df297aaeb9c ("dt-bindings: mmc: Add missing properties used in examples")
>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Good catch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
