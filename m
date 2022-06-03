Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5228153D374
	for <lists+devicetree@lfdr.de>; Sat,  4 Jun 2022 00:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349021AbiFCWDz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 18:03:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231868AbiFCWDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 18:03:55 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6505E2FE42
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 15:03:54 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id r82so15987938ybc.13
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 15:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jd93PkL+Qw1fhkDXP6mqsI96OC1Y6znysjyGQstvSpw=;
        b=QcSjJ0fKpBx9wmlN43qTWPHjGeaWrwjTmVu3r29kEN5DlMFBCEgDs+d3j1WRqQ+wCG
         4yePdAc5kwY/Wn8dDZj/UlGeaf8zpcUpv8YJswuTY55j+2EXmEQph3mw4MCI2jXw4Nnu
         03kLw4i5PMFTn9ZJ/jkb2+ntFap2VGkzmNlP7DOkFpW1Wzfujf07FMIsSkp/dEn6BxEg
         YPo5y0RXm/voY+Bpz3+SPcFD5gC0Sol43yDtFv2KwL8MH6AxnDzAKo83LmeRigtf8yda
         mqoKls3FJ73AgBsBl3GY5ndk9kkwshcdXjsCDUoS4nC4rAW8w/usc3ht9k/b0Q/kMS0i
         seDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jd93PkL+Qw1fhkDXP6mqsI96OC1Y6znysjyGQstvSpw=;
        b=x4Nl04wZ7dQ/MG9q6+L5VtIVgDIzP0QaWbjNSqXRN9mPvf2lmYM9xfZE6rS2PJLiVS
         8UKM7+ATnMtcnCShZ5/U2JTIlItTmFqX2jCf3JmzHW7+bQ4FDtbXrllZODLgrH4HX1He
         +LIKve7MIrmPtHbP/FAR1bpx7fs6ZBvhJgP66RBezgX47jgZLDU5OVNLGAJADaFd67uf
         fbIZcBGlvULjX67PHViF3xZrC6B1TIKQA0t8KQHUXKEDzu+pHsJnPO6TZS+ASfsMNhXr
         5sYuPhIZBQIPJB0eTfdJokiw8Qi8ENemUv3zmDy3QzdtlJBgO15VkoAJl05VUqrhjxcT
         zhmQ==
X-Gm-Message-State: AOAM531cbC5Xi9yTc746Z43s9N+dNY8KCJzhpJkSw5uQaR27thDu+bRo
        RS2Je4ELMqzjArSZsuQwgjt4szoJkKRw2t0qUhuT3A==
X-Google-Smtp-Source: ABdhPJxXJ41+KeG6CWK+9/3U+HnNOWN/7rSJmXAhK3mSPBw+reVg9osrsnA5D1icZH5FxPdwOCtuJzhZ9tGvViA79wY=
X-Received: by 2002:a25:1256:0:b0:65d:6433:7993 with SMTP id
 83-20020a251256000000b0065d64337993mr12835690ybs.626.1654293833687; Fri, 03
 Jun 2022 15:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220601082410.55266-1-jo@jsfamily.in> <BY5PR02MB7009B6FA7F17A3DA36DDA44CD9DF9@BY5PR02MB7009.namprd02.prod.outlook.com>
In-Reply-To: <BY5PR02MB7009B6FA7F17A3DA36DDA44CD9DF9@BY5PR02MB7009.namprd02.prod.outlook.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 4 Jun 2022 00:03:41 +0200
Message-ID: <CACRpkdaZsnB3XgBen4Ws6jTrQztsdgiafEanjHakSj+T6DFpng@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] drm/panel: introduce ebbg,ft8719 panel
To:     Joel Selvaraj <jo@jsfamily.in>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        Hao Fang <fanghao11@huawei.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 1, 2022 at 10:24 AM Joel Selvaraj <jo@jsfamily.in> wrote:

> Add DRM panel driver for EBBG FT8719 6.18" 2246x1080 DSI video mode
> panel, which can be found on some Xiaomi Poco F1 phones. The panel's
> backlight is managed through QCOM WLED driver.
>
> Signed-off-by: Joel Selvaraj <jo@jsfamily.in>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for working out my suggestions!

Yours,
Linus Walleij
