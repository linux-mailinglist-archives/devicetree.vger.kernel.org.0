Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7DC459BAA6
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 09:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233439AbiHVHvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 03:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233043AbiHVHvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 03:51:42 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 129592AE39
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 00:51:41 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id d21so170872eje.3
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 00:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=BZfpU+SmYe52WAmg/Y7YBFP2XZSNeH6d6wib4TE2Z9s=;
        b=ueyXxGZSP+icZgmjpMxuxXG9X+4oo1se8JikeHzkHDin7aKmYKPF05fNpJGyE7Uqq4
         Fha+jPocAO+rxOgV1yGiG6Vt+bLwLqsgS+HTLzIb48u/J8Xe322a3l88MCS7wH3wfZNw
         BJzKa1uBmGhTa9nER2dBRU3mAwmpVK9aP+oXQCJxcFrBgb1fEmpUkC3QXZfY7fNjVo3f
         CW9s4iC9DatwZz92upQLt2QSf8DRK70BncEXeEdnVop/1Or0XCZPDx3sCkHSD/WWqHKq
         OTrdiqfv+D/DLSzLeVif6b2s00E8xqBkcfG7a6ZjkexZb8DOz9lmOGYRBFuJeN2H2ysI
         Ee9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=BZfpU+SmYe52WAmg/Y7YBFP2XZSNeH6d6wib4TE2Z9s=;
        b=UtcYGShBcB2YkVHrCoq/9EaAB+/8R56rNL+Z0d+fRlBbYHoPcWGU7hDeD5e4OitGD+
         bnyxYDpxOYGbeira6SiWt45qGmiq561Q0ciNbtteh91qyvRVF5aMG/Ijepr6DAciYtIA
         +y2IiLT67Sxu8x3M72S+HyHKXQz/h5r2/Fn8TAb4DTXH4HS6qUjCGFw8JXPfSFPg9doF
         8YjhnB2p0RX5XpYTyCGt/xdHxJO69JPTInuJ6GcOtydEhqXkrcH2lDK0oVb15PGy2qq3
         5zhu5OmzsOPshRRUkuvY8adQXGvjlmEmCo01m+Ya7xpMGdeshsrpayGVD2lfgMfagXwS
         lDPg==
X-Gm-Message-State: ACgBeo2sxRF/xA71vrerrei4sKCnI44JldwN7qR6oz5P+RaUl/5qUpcC
        7qfC5l1lmVoAU4jJQy2Azx9htr5SUwXZXj4mIdJ5cg==
X-Google-Smtp-Source: AA6agR6/5iy/cSsM7dMB8N/ny1F6pJoOvfU2NJ9VVbMZM47NCmG9dGwl7hBHWAbzjFVTdCkFFBUX5ufcsmNvui4YXhg=
X-Received: by 2002:a17:907:9686:b0:73d:1de0:7fbe with SMTP id
 hd6-20020a170907968600b0073d1de07fbemr9075080ejc.500.1661154699618; Mon, 22
 Aug 2022 00:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-8-jagan@edgeble.ai>
In-Reply-To: <20220818124132.125304-8-jagan@edgeble.ai>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Aug 2022 09:51:28 +0200
Message-ID: <CACRpkdZvv5vqXLb6CgHTpB6uCo1V68KZG8av0acBW3fegmpX-Q@mail.gmail.com>
Subject: Re: [PATCH v3 07/19] pinctrl: rockchip: Add RV1126 pinctrl support
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 2:42 PM Jagan Teki <jagan@edgeble.ai> wrote:

> RV1126 has five GPIOs groups - GPIO0 in PD_MMU and GPIO1-4
> in PD_BUS.
>
> In GPIO0, up to Lower C group GPIO0_C[3:0] is part of PMU
> but rest of the groups from there are part of GRF.
>
> Added pinctrl support for RV1126 and the pull, drv and schmitt
> calculations are inferred from [1] authored by Jianqun Xu.
>
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/pinctrl/pinctrl-rockchip.c
>
> Cc: linux-gpio@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v3, v2:
> - none

This patch applied to the pinctrl tree for v6.1.

Yours,
Linus Walleij
