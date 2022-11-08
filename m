Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87B4F621567
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 15:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235227AbiKHOMH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 09:12:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235296AbiKHOLq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 09:11:46 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 345F2121257
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 06:11:22 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id f5so38938816ejc.5
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 06:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GL2VB6yiqlJd7PXl9jCnnQ5NQhRNVLQL22XW+04witg=;
        b=Hhzk8FopA98HaJrgwoizCtMQjYbKieZLMyCwD4Px4prPzIh0xGexW33aaq/j+JippB
         cqlKGLoDi1XLjx+IY/su4mqqiHWvQUn+7tIVIJpEfiMquxhwIgRmC6N5SNcWnRVbdNtM
         YqocapQY/un37wC8kJ/7a0MLAYUePF1vbV8ex4L8Iifyb07W16xzVj2vo1LoYLVFUy8N
         aqdEWC1LNRy/bl5J7tZLgNbI7e8kqA4LHWdgOgQvzCSwe24kskKnAt7bt3IM1TdsdXyO
         zuAVijftra0VXnB2A5j20mQhvzZMmjKJrg1kYqt9t3FKqqZ2I58VGv1kCgZ2SCIAeVEg
         lwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GL2VB6yiqlJd7PXl9jCnnQ5NQhRNVLQL22XW+04witg=;
        b=IJAUFzTh+Y2GDbYEOXaUFCtdQhK2Z2TWggUmKP3shZEqW44XKNYw0QuhlYAq68n7oF
         YeQMQBeeuA4ufPiCeJpuCqj+2gKi0ENoH2o0kUWjqUOsiIxZ3bC0Q9bP/I/CxtvzZTpC
         W6iglQxFeFkyVB39MgV0HrgtB/NaZSr5DcoLe2vLeoieckIskdSiJCvialj+rAPK9sDd
         uTeKy/bUO/Zoy4USYxdCqx/3q/vO/VnXkQHCuJzYzOfGT7aKXPSnqOznLvgnm2qYdlOm
         dXV21CyGFeiXdyWteB4+v3/vFNLP+/r5u2VwMLdxP3J6lGnF4eg09awCk7ALrGzommOl
         TpvA==
X-Gm-Message-State: ACrzQf0FJ5esWDHwJkkPDR6G3F+VU8TmuY3I8/r2ogFu/u04nPe3A74Z
        ur+yDb7ouDxOMI6gzTItvasrk16s4cZuT/rqQOFBzA==
X-Google-Smtp-Source: AMsMyM7J3Sd4gnDvu8zGm0CMMNKR4LFB/CGFMpK5G/rfqAvubgf422+2XMl7L688bBueJ+zjJiz/yGcF4N7ozpUkS1c=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr54232684ejw.203.1667916681564; Tue, 08
 Nov 2022 06:11:21 -0800 (PST)
MIME-Version: 1.0
References: <20221104142345.1562750-1-thierry.reding@gmail.com> <20221104142345.1562750-5-thierry.reding@gmail.com>
In-Reply-To: <20221104142345.1562750-5-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 15:11:10 +0100
Message-ID: <CACRpkdbegcxckaYA5h0VKQonK72srZWDZYynHhUKSTHngWGHWA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: tegra: Separate AON pinmux from main pinmux
 on Tegra194
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
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 4, 2022 at 3:23 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Thierry Reding <treding@nvidia.com>
>
> The registers for the AON pinmux reside in a partition different from
> the registers for the main pinmux. Instead of treating them as one and
> the same device, split them up so that they are each their own devices.
> Also add gpio-ranges properties to the corresponding GPIO controllers
> such that the pinmux and GPIO controllers can be paired up properly.
>
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Is this one of those few cases where this patch should also be
applied to the pin control tree to keep things coherent for e.g.
git bisect?

Normally I would ask for this to be queued in the SoC tree separately.

Yours,
Linus Walleij
