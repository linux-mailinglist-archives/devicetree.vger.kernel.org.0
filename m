Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13A654A74EE
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 16:49:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241679AbiBBPte (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 10:49:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231840AbiBBPtd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 10:49:33 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CEFFC061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 07:49:33 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id i10so62316098ybt.10
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 07:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/siAlN12aLkICP6/rrLm39IlMfBgQE7j1j4GTBXCe9o=;
        b=gWjNQ8FVYVcHiCwRtEAS7NrkTAvIjJU/VrqAnes2yv01NsrE4rU3dpRu7fG4gVfjgU
         /ldWfg/vwbb75BTcEVAcLJVjaZfofykrHQyaul9ew9uYl1kou+/3sWInfm6OO633wvB3
         FeIGnPC/6msmeS/tBY0ftUubEMYtZfRzK1E1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/siAlN12aLkICP6/rrLm39IlMfBgQE7j1j4GTBXCe9o=;
        b=QtX1o/0oTvymIVeDRS53R8Ta+FfU8iVZnG92BtrobMtbDGYzRWO4ykKkZUMqLIxedU
         IJkueZ7iJJqpGbxJZbpR+PiwBmodUdxGRjMN6dXZiRj4YhAcX8+DI/61VHrAbP4L492X
         SoGwpuW2GtJvi3NRScdJ/zKjx9Mn0JATN0Uwa1EgI+U1y3d3D0qg/cpIsQy2PJDU/Fsp
         7KRIbUHjVhYP82trdz6RuL8Ehf9LWiPY1HZFeT5IW4/1vXRngWXcp2zI0Ete8/ty6OVF
         8o9JPn/c4FdMCX11MpVm0V/QZpaTzmytriqiB+PDH35EJS5zWhdqGTExETHwsrP/hBBO
         67UA==
X-Gm-Message-State: AOAM530xJ0GG6VLKFpHP0X2bbb1ozdld4Zsua/9JBdY+7An4Lm0lJspv
        DUNYs0fTkLMj9qE6V8HotNj1iW2ZbIfLA8EETVxIag==
X-Google-Smtp-Source: ABdhPJzOI+CAspMP7aHP0upHc/wxFpkGCHDf+XfXkFWd8wWK8Qi+Y/Kt+hJfo9SkDJmj5/uVRZvSOUFn0/NVB3IqdOw=
X-Received: by 2002:a25:c709:: with SMTP id w9mr42995658ybe.296.1643816972414;
 Wed, 02 Feb 2022 07:49:32 -0800 (PST)
MIME-Version: 1.0
References: <20220121060120.10683-1-guodong.liu@mediatek.com> <CACRpkdaL_cUj2rbQUSzVj+ViEuNWiQbsakChNkaj6FK+fE76FA@mail.gmail.com>
In-Reply-To: <CACRpkdaL_cUj2rbQUSzVj+ViEuNWiQbsakChNkaj6FK+fE76FA@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 2 Feb 2022 23:49:21 +0800
Message-ID: <CAGXv+5E6bq-veUQ6bEPgKwUULpWvZPu9GZ9cGkDS3OKD5Z8KFQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: Support pinctrl driver on mt8186
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Guodong Liu <guodong.liu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Jan 30, 2022 at 9:43 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Jan 21, 2022 at 7:01 AM Guodong Liu <guodong.liu@mediatek.com> wrote:
>
> > changes since v1:
> > - add default pinctrl config to consistent with other MTK pinctrl drivers
> >
> > Patch 1 add pinctrl file and binding document.
> >
> > Patch 2 add pinctrl chip driver on mt8186.
> >
> > Guodong Liu (2):
> >   dt-bindings: pinctrl: mt8186: add pinctrl file and binding document
> >   pinctrl: add pinctrl driver on mt8186
>
> Looks good to me, just wanna loop this by Chen-Yu Tsai for a check that
> it looks good to him too.

I'm still on vacation, and even after that, I might not have the cycles to
do an in depth review of the hardware bits this month.

Since Angelo already gave an ack (which somehow was not added in v2), and
AFAIK the driver does work downstream in ChromeOS, I wouldn't block it.

However, there's an error in the DT binding that should be fixed sooner
than later.


Thanks
ChenYu
