Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 946926B8428
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 22:44:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjCMVo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 17:44:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjCMVox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 17:44:53 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A070B29E20
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 14:44:51 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5416949b35aso142013227b3.13
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 14:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678743890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CR2PBbDXGOncl63NDYexYu4wefVQck18dYDtBFUTFYs=;
        b=u/33Uik4oPue8aaC5q7M9P1gE0ScoCiybs/xWGxZEWs1z0FkCiGLZ8dMNYmFf5sek/
         Wy0WZfGBCQxYt6QaxP8MD2wHb4iK4iqHgtT+sT9stP2GN4iDEIqum/CO9qFVJq4Ih1s8
         SDjYCIVmbmMIV2iZpAW06KoeWBjlZ+nw80uddafMjctcDFSuZsbprXZmCoQ7/PTCbkMd
         5B3WxQ8k6WM7lrLkORxELc/tyokRyRo30df10iHXR7HMVBHjTqjsePJz9HlBHZ8MQPi2
         99gGwvqxejYyL50FYN9xAWK3bt27n5r8x5x8e9Ja3uTxKdNN3b2noZKhM3CPpXznCizE
         dzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678743890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CR2PBbDXGOncl63NDYexYu4wefVQck18dYDtBFUTFYs=;
        b=wDdpQ3EjD2FGIaR7QwMg9AI5xBt78mS55Twt2BvqVtKXIqr7z2LBcfu3F0q8NPOmhv
         IiIW2cQulg/G3rWGpyNEL6w633u9fYPggu0KKv1OTbkSS4bvBUz8kgUJC3McRW8zv+QU
         OXr8M/n6OpiTE5mMMSaTJjs5W2Co907lQ6LCYBU586pXvL0R7qLw1I9ce7YDCuscNkPI
         yhHcckFNeC9PSYRAw5WepwV+nyzuZtm2txrbc3EN9wqelipU54ynoViJqfesoPCpSwNF
         SkrGRi1b2jSqsgWc9n9Z8kDu4vB78RHUIiUsbO7BQlzEdeHZ+GiegnzPNtFLPzaaoiSv
         3ohQ==
X-Gm-Message-State: AO0yUKXSEvgZ7iki8nInqZ3EPOqDqXemFY13qcCWmLzNChBX44VRHkX1
        pmmLfBTliq0pcYtPRrMVGBet85b3GYIZ5lO1tq+EuQ==
X-Google-Smtp-Source: AK7set9lwEeGB6Vhmsgmc/zb6tNQdeR8c9nsrD9sW1mPXKuJuKmRxsIPLFOTtFcyGB8av3aq+OwhdighrpIEX2G6A78=
X-Received: by 2002:a81:af1f:0:b0:536:4ad1:f71 with SMTP id
 n31-20020a81af1f000000b005364ad10f71mr22817094ywh.9.1678743890647; Mon, 13
 Mar 2023 14:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230313170950.256964-1-francesco@dolcini.it> <20230313170950.256964-2-francesco@dolcini.it>
In-Reply-To: <20230313170950.256964-2-francesco@dolcini.it>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 13 Mar 2023 22:44:39 +0100
Message-ID: <CACRpkdYQyb06ha9s2bRTmWE-MJwuwFejHtTcmR6wgBr3cZ0m9A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: gpio: add fcs,fxl6408
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 13, 2023 at 6:09=E2=80=AFPM Francesco Dolcini <francesco@dolcin=
i.it> wrote:

> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
>
> Add Fairchild FXL6408 8-bit I2C-controlled GPIO expander.
>
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
