Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AE5656CBFC
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 01:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbiGIXVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jul 2022 19:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbiGIXVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jul 2022 19:21:39 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 428A22528B
        for <devicetree@vger.kernel.org>; Sat,  9 Jul 2022 16:21:38 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id p129so3303715yba.7
        for <devicetree@vger.kernel.org>; Sat, 09 Jul 2022 16:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L+wOgjBqQ4hrZ4R4pko11p6CsU3jQfxhkCfOujQvvFo=;
        b=XiLJwmKnVBWSF8VJbH5DUv22akdceFEWmU5tf2Wij3i5Nejt72HEo3E0Z8MeQK08Rb
         /jUC31VjGn4GQfcI3zGBlwB4Y9LqXfRWs/zVdjtmry1k8u5TdEuu1XQl9cNxNiFLfs08
         wZNfaE9q/2g678/Gk796BRq8sAR29E89OLKkMrGUB7ecFIaibejKYORsh+ck+Se7+7D3
         wMhaID1NflCmlbt/hkzPrKanCsTf0a7Gx7n4bvegkDET15cxHfR0QtGMX/GXD60PMl5B
         F7Zt6/SrrJcXx6UnxvwGWT5eofKyPzu7kxs7K/31d3FHJEdjMresySKZTQ+WodEJFj7u
         rqpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L+wOgjBqQ4hrZ4R4pko11p6CsU3jQfxhkCfOujQvvFo=;
        b=H3WsbMDTsg3V8H4kmO2/kaJT0F6DPbswlS7f67i+ovnb7G15xlfXsdftlEn59Y9TQB
         fPr+VHMLWgKm48Kb67Tfp2ptYV25Pm1e2ivqGGVD1Vk1esA3jUeHLxAqiDy4zXbEN5xF
         f99hwSYv45dwtJGUaeER92MSFFYO8SnOovlkX3yk78KGnW44WibYQXDA2BgTfa9JreGI
         UhTgLf2pW9840bbFPj2ej9f5rt1LtomkpRPyf3G8Acve9/KreHBTB33IsiCRjG8iFa1i
         13ijFgqAnLxxHoaWMCWQ4B9C5V8k1Ux2Fm3kfDTm6kkkQCAhoO6o+XImoWvsZ21HZ9wZ
         TmLg==
X-Gm-Message-State: AJIora/ilneVgI3q1yVE3IXAzaqT0r1jKpHKXbbBmvWMIvq15GtlT1nT
        4rol/FsZgtiu2garlWtQsxigoV0XSInGpfgMQzmOYA==
X-Google-Smtp-Source: AGRyM1sWT2McXikvJoPgc+m40gnLYrLmZCt7Bv/q1rbes9rfucTXXl+j1dsTOZ2u1tmX67QeXmCwTahgwhU0F2a3bN0=
X-Received: by 2002:a05:6902:150a:b0:66f:8a6:be47 with SMTP id
 q10-20020a056902150a00b0066f08a6be47mr2704717ybu.291.1657408897468; Sat, 09
 Jul 2022 16:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220704165802.129717-1-thierry.reding@gmail.com> <20220704165802.129717-3-thierry.reding@gmail.com>
In-Reply-To: <20220704165802.129717-3-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 10 Jul 2022 01:21:26 +0200
Message-ID: <CACRpkdYGFR82DhX=n9ooVb47TvO4nDj74EDD4LyjejhwOfmoZg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: pinctrl: tegra194: Separate instances
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Prathamesh Shete <pshete@nvidia.com>,
        Vidya Sagar <vidyas@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org
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

On Mon, Jul 4, 2022 at 6:58 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Thierry Reding <treding@nvidia.com>
>
> Tegra194 has two separate instances of the pin controller, one called
> AON (in the always-on domain) and another called "main".

Maybe this information should be in the bindings themselves
too?

Other than that:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
