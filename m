Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE0C4586D3
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 23:53:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231855AbhKUW4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 17:56:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbhKUW4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 17:56:07 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97CFAC061574
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 14:53:01 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id n104-20020a9d2071000000b005799790cf0bso5538091ota.5
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 14:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S//kcdyi9GmuVtFFWZJxzddMkWbwj0AFmp8Ot6MTCXk=;
        b=IMU391RrRtUnCOvmWJGSJh/nGzQfdq8VclIfY4AqWUvZ0pcjcKHK/KIf+a+PC+ebK+
         8mKuwjNlt1KEvyRebl0A4lCgzwGJUiHwqQ/t9JQ5Mtd2MKk4YhtcnTo7vUmeGtamXsMn
         XxqAERrg42V4EsCVFPzYnGhe+oMpiUtgPAVUhfer3Ip6cNGxdPAhGYDAI8Nl38HD+qRh
         ByQ+SZGWOnxaKJhvZV1gEGO9ZRJqvC4OusufJlPUk31ro7wSdw5Xf2JdjrHTC/m+D+2Q
         hkH9BJaC9pZkwvYJRi/p4dy7Y1ClbQiFXWD1aQ5TGW0fuKTH4cFMTeEaWFC3Uxf0O8Zl
         yZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S//kcdyi9GmuVtFFWZJxzddMkWbwj0AFmp8Ot6MTCXk=;
        b=bNtYAmvDIkG1mEiuLdxOnHJZVNV2/cClJUYh91qfnoLhdqrSAvZj9pTXb8H2TR+7mG
         boTGAuZtOBHJ2rWwtqcqL2yB72EVjri3tLkG8SBJFfDS981U0WI+WQSN2xF2zSezhHHl
         K/6oqCbX0lf8Nca2Nhp2pWP1IZ+8zIQCpj1qFlMsR4oFTTjmMIYotrZt/WKVHJPLl3Yt
         Aq+2YL9m//rhQjlHbqScSvVf2hAgPsYWay/SBDcJnB6xc8h3rmQnyX8eEieYOaOdd+Fl
         qMrgI4j227rIXd7bxh1BMOQ71WQ7qj6j4LvtwwGqC+nEucy7uPLxrV0INZhGL8MA6ypu
         iOew==
X-Gm-Message-State: AOAM530Cmc1wmUM0dkaORUZprJQ0IULrxr+9jPdezzzIzsRq9CvQUN5B
        PnS54keDvgcpgtG8iOST2b2ZYzFKg2HV4nHHDyxZtA==
X-Google-Smtp-Source: ABdhPJwh1/64QH5jwxroi7Tl6t/WXccLTmI+SyTglDokhNiEBtObr6tMM78Ecm4rZRJ3pRiJFlx1BUbLKXeYlxBHm8A=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr20428469otj.35.1637535180934;
 Sun, 21 Nov 2021 14:53:00 -0800 (PST)
MIME-Version: 1.0
References: <20211110071900.4490-1-zhiyong.tao@mediatek.com> <20211110071900.4490-2-zhiyong.tao@mediatek.com>
In-Reply-To: <20211110071900.4490-2-zhiyong.tao@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 21 Nov 2021 23:52:49 +0100
Message-ID: <CACRpkdY_kFM_2bvwZdxTLnLWy3NB_LOpCKiRCuRvRi3k+XAwRw@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: mediatek: fix global-out-of-bounds issue
To:     Zhiyong Tao <zhiyong.tao@mediatek.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
        sean.wang@kernel.org, srv_heupstream@mediatek.com,
        hui.liu@mediatek.com, light.hsieh@mediatek.com,
        sean.wang@mediatek.com, seiya.wang@mediatek.com,
        rex-bc.chen@mediatek.com, guodong.liu@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org,
        Guodong Liu <guodong.liu@mediatek.corp-partner.google.com>,
        Chen-Yu Tsai <wenst@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 10, 2021 at 8:19 AM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:

> From: Guodong Liu <guodong.liu@mediatek.corp-partner.google.com>
>
> When eint virtual eint number is greater than gpio number,
> it maybe produce 'desc[eint_n]' size globle-out-of-bounds issue.
>
> Signed-off-by: Guodong Liu <guodong.liu@mediatek.corp-partner.google.com>
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes in patch v4:
> 1. fix sort signed-off-by name.
> 2. add Reviewed-by.

Patch applied for fixes!

Yours,
Linus Walleij
