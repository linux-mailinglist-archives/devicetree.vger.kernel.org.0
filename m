Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 620B841DEA7
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 18:16:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349120AbhI3QS3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 12:18:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349301AbhI3QS1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 12:18:27 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1C45C06176C
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:16:44 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id x27so27668802lfu.5
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wrVVL6Q5oh52S40J0qY1IDd3nrzVJ/J8U0I1hgcarO4=;
        b=GGcKF1QOHQHdbK27J87+CXDf1OO+VZ4YO3NuP9kI2G8+4sWkeEA0OekFLzxL/L0w6H
         9nYnWC1zP7NmSdzsSEPUjMqDV5kXvs4oyZRlY+aUdk/RSgbjfZMi94mmTJTuz0cIMU9p
         CTHp6440J8LeqZSNzjqs6YNApx5rLH2OIRa3Jm1dJP+FE3e2aiK2ldl/2ss/r6oTcIfC
         7lXCk1V9kPA0b2fDE6xrjG7VoSAIAvbe8gVQUH2KDZT/66mrPBoSnKqW0oJzO54mqO21
         WYS+EE7VCVS+OxSjVYJ4cUrVK/qlUuYyTmB6bHW6Z7ZCkD5cXSRWMjDiSLmNxLiEoAbu
         JtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wrVVL6Q5oh52S40J0qY1IDd3nrzVJ/J8U0I1hgcarO4=;
        b=nZySWlBiGK767AfZM3QMW6jj5gu7NBByre2aGUtxk02FzIBD4weSshGxbu9ZvlUZia
         e+3kGCwcSc4gF3h4XvK9X1nzPEcn3pHSYOAqJPWoz4uetjL6TatdBCSsJWnkz/pdCOp7
         HV4/VDuEvmS7nfIAXsi5Sr5aH7paS2WJ+xck5PgxkqpzVov49V9efwnyDoH+pS1+YeLD
         FhAJZOLrjGXxOPR1ccDbVPFy6hMMHIM343rK/KO8YpC4xyYaSw3RYVXPadygyH44Kv2C
         L1T21h/vRDhpwzxAO9Pg+LNj5Vxag/ihnqq3+uxtGkrywO59JmluiAAI2Es3Wdn1y9mh
         2Chg==
X-Gm-Message-State: AOAM530NhKIMgpDeiEe2Mbe7jC62132GG2mc02aFMl3LYYL36c15cNoT
        pejT2HAdim/rzr66OwCQnhEch+eAu2xm7aEQtkyh9A==
X-Google-Smtp-Source: ABdhPJzral1Se1YwknQbfsFc4flERKu85KncR+/GFdjE4b1oI/LFJgmnco2+Q+rENklt6Pbapdku3puvBG55dvJW1y4=
X-Received: by 2002:a2e:510a:: with SMTP id f10mr6681946ljb.358.1633018603142;
 Thu, 30 Sep 2021 09:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210930095225.9718-1-jbx6244@gmail.com> <20210930095225.9718-2-jbx6244@gmail.com>
In-Reply-To: <20210930095225.9718-2-jbx6244@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Sep 2021 18:16:32 +0200
Message-ID: <CACRpkdYvKiO_jU5rakwpkpDNq=gCjqtqnVebSECGuWioBOG4wg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: change gpio nodenames
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 30, 2021 at 11:52 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Please funnel this patch through the SoC tree.

Yours,
Linus Walleij
