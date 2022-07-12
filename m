Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD0B95714D7
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:40:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232514AbiGLIkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232747AbiGLIjw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:39:52 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5457BA5E75
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:39:45 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 75so11502828ybf.4
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ReJp5eNoUXAUtu6DCSWj66id3qW1pGhq285sGI/akT8=;
        b=fip2+z2yTofjt4Urhkg+qkjscmAE6MjHAyUus9OQYPbfaOaMqbxykaSzTKXrU7zlo3
         82cTWeWHZ4RS19nv1ndvzKE2tamPpk8IBxnOuMg1eim6YmcC7cE8LKPIbgIM1yyEBe/j
         X5jYBZJX1/aHuQa7OVKHVeDLycxNhccTvs67RQYA/twhwWTY/F+w+zwfGw40hemniBlD
         TDwCYMOFoD2ZQFzCuJZiHYk9+pJ0IxXx4hEPtcZ4uiRUYieQiAIKHXJlyXz6BD2QoevN
         b57XTjXEb4I6V6todH510JDBx3fVrSNTAb9hMvny0rAa8UFcuK2qYEFRnv2JcVjPU1Kn
         zJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ReJp5eNoUXAUtu6DCSWj66id3qW1pGhq285sGI/akT8=;
        b=K7oXsUdgRA41MyYcHrZg/0VqKPQv1E/lubmuz3BPZ6OcrbAhkIs+Y6nD8psdI9Iy7d
         7vncUL0vyK1TetaEjNuaInwzNpec/awU8pZFHTDOFRGmKh8gn6Bjpjn0QhqwTzJkNDHS
         cAde/+pZZQgyXn8qXq4p8MJGUofrVZnHA2w/yMnU8RGmN0/nFpTooWeBnVN7BKA3PWE9
         7BGbzUNLl4tyxMS/b5x9TG3qkInIhkTlyB2vq4cXtw5TTznqKw975PnHa5IdwyplEU9u
         hNL10TCm7F1Ohs0HTYlCZ74kH+IT6OulB5/FCEeB7CyU31fFjYug4xL+Lgf80Gshn59s
         5Rlg==
X-Gm-Message-State: AJIora8HSFQRmdnbE19tcdPkBfqKPitmZYMhq9aYm5EtIKuk61YB1oZx
        QEoj4mLhKYcllb+oWsC7ksAjbnl0xCwt2bFinYY2kA==
X-Google-Smtp-Source: AGRyM1sw7wwLPCzQznWMVUMoT3n16tyAexVcWXjzdIIg0S+6vuCEuZeLVvmkxWA1WuMl0G6NMXtD8dHg5e5qHO2GMws=
X-Received: by 2002:a05:6902:1184:b0:66e:756d:3baa with SMTP id
 m4-20020a056902118400b0066e756d3baamr20982414ybu.533.1657615184543; Tue, 12
 Jul 2022 01:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220711203408.2949888-1-robimarko@gmail.com> <20220711203408.2949888-4-robimarko@gmail.com>
In-Reply-To: <20220711203408.2949888-4-robimarko@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Jul 2022 10:39:33 +0200
Message-ID: <CACRpkdb6uuRuD5cKJe7gXvhJ4BgoFF5S17zjBNb=3_tkWxHjSA@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] pinctrl: qcom-pmic-gpio: add support for PMP8074
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, lee.jones@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jic23@kernel.org, lars@metafoo.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-iio@vger.kernel.org
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

On Mon, Jul 11, 2022 at 10:34 PM Robert Marko <robimarko@gmail.com> wrote:

> PMP8074 has 12 GPIO-s with holes on GPIO1 and GPIO12.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
