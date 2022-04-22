Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9FCA50C1E7
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 00:07:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231359AbiDVWBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 18:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231179AbiDVWBY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 18:01:24 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 977BA411511
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 13:44:23 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-2eba37104a2so97997457b3.0
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 13:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3nksj5w518uht/ItCyi8i36nhvCePscNQgV5FEz9z6Q=;
        b=g8SpyRq0EokUtq2/Ruex3k4GJpsldwiFN7s5Td1NqBB/1sz4PB8PW77PoDjmVO+nIV
         MNQj5/DSO2n1/Wz0+1wehuJuhtgZZtPgCi02BTQ+DzLRVOuxdJXKsrFnimec3440YOCx
         aMWk2YcE0ez7iqYmhzyvdHPEEGnBPTAyOx5MtBGNjLo5yFXy1qBo3Np8+V9Lcmr90Vqu
         3Go3gRPSj/N4C2WNTnoup9V1vLlPLvsNLjgzulBImOdHMHyw4upus4kqIm+keotH/wCa
         fthPpMr4yok3sBlZ0N6p+9P6PlUZYF234f+2TwubO7vilza5bWaaNFNrZePSxKwoP06H
         5Tmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3nksj5w518uht/ItCyi8i36nhvCePscNQgV5FEz9z6Q=;
        b=s7Z3e38bAgCs0N2nLk+ab3A6fySrZEaTiPOsS5I8v5pdaz9Qk341/x2W0a+MUiuYE5
         k7mjQcxjcIs3iG63fj96Ge4NISZsDkzXfjBy8tNhLJ28ZjcHTH+p2kfpqtR7bn7BluRp
         wcuZN7S84QsocBvIyqwWM9xXRzUKMs8kpYSyr/j67BZTgC7IIZ8Ex1lad/YjPmrIuNSz
         0PQKSxCJK6QKul8s/4Vw0+3SARNzXf3UiYKrW+3L2S3x4Kmc1EvvEbLt+Fqcie8DNRZT
         s1ArabyHtPHxo3hgPiSasIVKKlw3LEFxHKuLeVbtq+qHctDz4tKk7AIvQfc11LyicokW
         YhkA==
X-Gm-Message-State: AOAM533J+T9j58S6s9+4ZMrPpgkPrXduLShsOt5/HBB81C/kdJNbfc22
        Pp9wrLgXnanrc0xpZAPhzU1h0MHC07iOT1ss6sKD8w==
X-Google-Smtp-Source: ABdhPJxrjqv5Iz21jqbGZ2f13VLgcMjHToddZ0hzGtc4gakrrg1G6y+n2H78NeXCdSnLQdm+z3HHZa/1M+m0MoBLEAs=
X-Received: by 2002:a81:2108:0:b0:2f5:6938:b2b8 with SMTP id
 h8-20020a812108000000b002f56938b2b8mr5029519ywh.151.1650660262703; Fri, 22
 Apr 2022 13:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 22 Apr 2022 22:44:11 +0200
Message-ID: <CACRpkdZbRbRcFz-SQ0yNf4aAmuwrQKTKjS1QceTCvKE=W0kyqA@mail.gmail.com>
Subject: Re: [PATCHv1 00/19] Basic RK3588 Support
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sebastian,

thanks for the patches,

On Fri, Apr 22, 2022 at 7:09 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

>   pinctrl/rockchip: add rk3588 support
>   pinctrl/rockchip: add error handling for pull/drive register getters

I expect I can just apply these two to the pinctrl tree after giving
Heiko some time to look at it? (And he is happy with them)
No dependencies I think?

> Sebastian Reichel (6):
>   dt-bindings: pinctrl: rockchip: add rk3588

I just applied this patch since it is trivial and evidently correct.

Yours,
Linus Walleij
