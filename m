Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 067F54E8B01
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 01:03:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiC0XFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 19:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234851AbiC0XFI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 19:05:08 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF07DECF
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 16:03:28 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id e203so14322794ybc.12
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 16:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GNVbXCzpaPBpjVJf9Y3umU3ovBWyOt+mnLOqzP0G5fs=;
        b=Lq+3Ycqkd2yxo1E7kguh+whRwzFxHhfQdJO5xs4Jv6gEAdYPetGoGDoFNbY9jJdl8M
         zFhkuCcZl2RLvUqQBhJl2ZaPKmf3clpXMfxz+Qpwaq+JQzDsZ11bb1LDyCXE+Uiu40GQ
         zMkf1Ir2im5FMrhN6asCZ9NLbmON2QLFm6p+t3yT1QRALHg4I1rpX7YIFp20hGLjbomf
         ILp1+V282FJJFe15nNGABkbrdrhVmoNE/Tjo1/Md6GTYif2csN80+Uka+fWJsEmmJk3J
         hyhvZqnZt3XlsNiKBnR86qy96AUs+8B/JLdqJ+Iz/5Ge9pIjK3zZS/3S8tq1kIsQ/iVn
         mXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GNVbXCzpaPBpjVJf9Y3umU3ovBWyOt+mnLOqzP0G5fs=;
        b=Beptmpa6GX0LcgAK+X9gwWNs+tbZaTcU9nkIZhE/d9NYLpTmecCn6UYgVGcN2JraEo
         NptiT/8U8dmakAgulPrywhKEe6HPDkw2KPmmw6JSnZnQ5YA8PkUomCSh+jqz1uZsY8jJ
         idLwI61ZE7XC1UD9Ic92TBOTCYYySg1JK17MUn60kFCL1/alJEDR2hVP6kylK0w7VyDd
         xhiMlYffZCfH1F9MzChOwe7t1B7mEviZg9bVNg2PJT47TtLiVaq2+Rq519ni4EDeqI+M
         VUM4nRaw2LJAkPJwqumduzZUo0soYL7ZRC6liCM2PV+hy8itZ4Fw0sw7p+EcG1b5QGPm
         OHpA==
X-Gm-Message-State: AOAM5315gZNberI1WjZacbaPFg1gQOXDkc1iRCUEQBBWqYuyGKBaoPfL
        709WndYWlisIJyOuqHvxpFhiZRn091TYQUFQHzfO6w==
X-Google-Smtp-Source: ABdhPJxlxr1BwZc54ths6NcHOQaw9kJGsItE/6tcALJDtRye5lejO5OnsKvOleB2/rLXxDXTySYQyid0MK8w9Cdl5FA=
X-Received: by 2002:a25:3d02:0:b0:63c:a59b:8246 with SMTP id
 k2-20020a253d02000000b0063ca59b8246mr6343771yba.369.1648422207645; Sun, 27
 Mar 2022 16:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <1647927649-9907-1-git-send-email-haibo.chen@nxp.com>
In-Reply-To: <1647927649-9907-1-git-send-email-haibo.chen@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 28 Mar 2022 01:03:16 +0200
Message-ID: <CACRpkdaj4qCFMdYyBbu7Z=Wqdn0+7=Hz3tst_15xYwp9wLgGtw@mail.gmail.com>
Subject: Re: [PATCH v2] gpio: Allow setting gpio device id via device tree alias
To:     haibo.chen@nxp.com, Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Cc:     brgl@bgdev.pl, andy.shevchenko@gmail.com,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-imx@nxp.com
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

On Tue, Mar 22, 2022 at 6:52 AM <haibo.chen@nxp.com> wrote:

> From: Haibo Chen <haibo.chen@nxp.com>
>
> For some SoCs which contain different cores, like few ARM A cores
> and few ARM M cores. Some GPIO controllers like GPIO3/GPIO4/GPIO5
> belong to A core domain, some GPIO controllers like GPIO1/GPIO2
> belong to M core domain. Linux only cover A cores, without gpio
> alias, we can get gpiochip0/gpiochip1/gpiochip2 to map the real
> GPIO3/GPIO4/GPIO5, it's difficult for users to identify this map
> relation, and hardcode the gpio device index. With gpio alias,
> we can easily make gpiochip3 map to GPIO3, gpiochip4 map to GPIO4.
> For GPIO controllers do not claim the alias, it will get one id
> which larger than all the claimed aliases.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

This is device tree related, adds semantics to aliases and needs
a prerequisite patch to
Documentation/devicetree/bindings/gpio/gpio.txt
at the very least.

Also that patch needs to CC to devicetree@vger.kernel.org

IIRC this has been suggested in the past.

Yours,
Linus Walleij
