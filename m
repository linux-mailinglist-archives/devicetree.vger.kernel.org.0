Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20E34513E9B
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 00:39:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352917AbiD1Wmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 18:42:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352920AbiD1Wmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 18:42:46 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48168C12F0
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 15:39:30 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-2f7d621d1caso68138207b3.11
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 15:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E+3J8Tg1YKkO3lpTvYwXtrtSHWXSrNo91D9D4uubgfM=;
        b=V4XCWq+mmBEcJp2rd+FHj5x6PNMIWT8HPTMQAxnaI7951ksolZFoZlQx5xw2qhxxun
         3wrv9A+A1/uDRZxkAklPtdGFsTmIJzUm66fE+az8c8Gax6q/hs23FY+pEZC8O4aZUO3S
         uMmSpr23BPt1V4z9OSeskzAu1ySy4g+zOkCcm8hX+D27zAqd/vyzE4h5gddupLogEuyd
         fOXUvcQ+fFMJq3BV5SnS4BOv6O3Tsmh5FSjAtNXr7gltT+iSAkQTfLrR+hjxX9tQYq04
         aoWOUJlz7SPODt6wkBWOR5Bnac01p/Mbc2IGhBY1iD5s8ZkU7PSPCjH1Qn27aI3Yncv5
         oKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E+3J8Tg1YKkO3lpTvYwXtrtSHWXSrNo91D9D4uubgfM=;
        b=XcuX9qi5zSxbMzP7oyFoT2+kDbdSLxZxHNGksxsULCZsEWlmrYPPn3fN7SLXExKbLx
         HPh+1F0e/rpz46INj6ChCrLZtUw4Rpa+9YxkhyvZRJ6Z1/S2B8wReaZX7bUdm0WVz1bz
         SOSZiQx+Ysk0kpd7ht9IuASO21jYj46Pjz6B9BRDXExjmZeRlmVpdBMuK+NWDUtPleos
         Wnjs1mk33UljqDMNcQN78ptEZZHATg1ZcNP4nFPqc1NruCBQseXVP1PIVS2iZqu/eEKI
         +UAfalnj0Yy3btJuaK4lVh1vMu3XYmBYar+kiNIFjgQv9QnakdA1NUMv6qkpW2QWtv/t
         FfTw==
X-Gm-Message-State: AOAM531apSyk0Rz9iFIAlBWABQUmXC84rQjMDI/kG1G+IwjpDP8Leevm
        tF9PmhkNKeBIIoKOqOi0vHMd8FCkt8+b2ZFr2GAhOA==
X-Google-Smtp-Source: ABdhPJxvhml9HFXPCwUVI0CwtNK5IaJmoBNDiEfCirpoYCazdVjbv6nJ3rx/3iOjPRgLySfwlGlZlM+lkxFFFgGvH8U=
X-Received: by 2002:a81:1d48:0:b0:2f1:8ebf:25f3 with SMTP id
 d69-20020a811d48000000b002f18ebf25f3mr34374108ywd.118.1651185569522; Thu, 28
 Apr 2022 15:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220420191926.3411830-1-michael@walle.cc>
In-Reply-To: <20220420191926.3411830-1-michael@walle.cc>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 29 Apr 2022 00:39:18 +0200
Message-ID: <CACRpkdb2zuXpTkiXNtC6KKRO55Ks-yep-TBq9YD_x9yegZ-iyA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] pinctrl: ocelot: add shared reset
To:     Michael Walle <michael@walle.cc>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Horatiu Vultur <horatiu.vultur@microchip.com>
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

On Wed, Apr 20, 2022 at 9:19 PM Michael Walle <michael@walle.cc> wrote:

> On LAN966x SoCs, there is an internal reset which is used to reset the
> switch core. But this will also reset the GPIO and the SGPIO. Thus add
> support for this shared reset line.
>
> changes since v2:
>  - use dev_err_probe(), thanks Horatiu

Picked this v3 version rather than v2.

Thanks!
Yours,
Linus Walleij
