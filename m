Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7AB64D9239
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 02:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233749AbiCOBWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 21:22:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232197AbiCOBWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 21:22:38 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF92473B2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:21:27 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id o5so5522672ybe.2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ACQBTbiJyudTuHLv2P7/SRrqHrvj49C/1S4/j95gw9Y=;
        b=yHIrZlxonQRoX8uaFietSxxyEhLRBDVLG+J0g+eRDJoLgbBAO/rlYgyf58UGQxIWhN
         JKRKTgpFScPu1ApC6aqZqs/qT3Pu4Niy+vUUVZBLQzJb9qVFhX5ZFTbdlQO2KeoIOP1m
         Li90CxtlVH6WtfMqNPjFPeMU7vgvZAv6UQqEm1aYMxb16sOP/FHFd0GuhEkbGCrqPgwX
         j8YRPk6cbpSZooquF5gIvlISBTYEU6UmH8pGWWOJtAjHw7Eeq2R6usUOD7gTnd0prB57
         F46FBO+LWFqYYQ9vf/qIVtASdqO2Gj9oZPZmh4D1/sVasaeoMF3pmN89d0GH8tjJ8goy
         E+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ACQBTbiJyudTuHLv2P7/SRrqHrvj49C/1S4/j95gw9Y=;
        b=dHFEEDP8/7jTO22cNhJqdQDF9IIR4Y9Bjxxo4Qi+qv4ySUb+41L0rAI+GEdRpR9VMd
         UJC5I+TkljKY45ySG3ZSHkowdih1f9X9YxxHNB1HEwll5igbFskB3g/oaQaQffQAeVf/
         MgwQvCcFS84x9YI+7UNE4wrKZNHLWWgs4OqDiE8Js8TthrrWjrhOUES09zoom4hcJhWu
         Hq3PSrRcJ+DgSQDJaI/XgjraKCJ2ItQetC6DZ48O8sAAJSfzq8/B0hoGhJCUi3JTErni
         qprRkXZm8bC+RJOH/oICsSTIHrYYzxgpe5S1rfWE/MqO6KQzxxkj9b0y6Rsfiy8EmRzx
         iY9g==
X-Gm-Message-State: AOAM530WGEpIGe6WWzW5JEt+hPoRLmN4i3ib+UWN5WqO+mwvv+Ry6v0/
        KwVXmeFltGmuEtE5BaLPMzP8Ky4we28rWxzVwlHYo5QJe78=
X-Google-Smtp-Source: ABdhPJx99c5U8udn983xmnwpOxBzvhzCMlxyP3HiN2d4p2Paf/encCvO/7WsowIdPYmJkzjxqH4ytz4twNe+Ml9NHBI=
X-Received: by 2002:a25:2308:0:b0:628:9a66:7327 with SMTP id
 j8-20020a252308000000b006289a667327mr20426355ybj.626.1647307286726; Mon, 14
 Mar 2022 18:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220304000311.970267-1-joel@jms.id.au> <20220304000311.970267-2-joel@jms.id.au>
In-Reply-To: <20220304000311.970267-2-joel@jms.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 02:21:15 +0100
Message-ID: <CACRpkda3q=Rh7Kmi8Cycg4CAYUhzpRxLf+ErwxR_0drtTNTr+g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: aspeed: Update gfx node in example
To:     Joel Stanley <joel@jms.id.au>
Cc:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, Lee Jones <lee.jones@linaro.org>
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

On Fri, Mar 4, 2022 at 1:03 AM Joel Stanley <joel@jms.id.au> wrote:

> The example needs updating to match the to be added yaml bindings for
> the gfx node.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I guess you will merge this elsewhere or shall I apply it to the pinctrl tree?

Yours,
Linus Walleij
