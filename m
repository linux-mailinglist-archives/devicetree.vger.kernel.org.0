Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B968D6C61C2
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 09:33:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231442AbjCWIdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 04:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231451AbjCWIdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 04:33:10 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FD085BB3
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 01:33:07 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-54184571389so383138947b3.4
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 01:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679560387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxxADGM7ougpcYQ83aeznKVeHn9174ZSNJoBCrMRZW4=;
        b=BTbo8CJVXRcdmDMOM4UfP124qgFd+Dy8GJUF6z0c3o+Y+FsK72/6RlC3M/w1pIQDbw
         GOY8S+I+6J0LGanKOboWWqcovlIQQS8iN/HozNnyX3v3CItJW7atXtnUQwr15/DLiuAH
         0OQ5HGlVelykx478Yy98SmI3GhHbB3/Gc0hTt+1aUfJyKuZTP0gTDwChy29fpSpMZJPK
         /ttN/GdglwV3yLoS/q2TOwUwVFd6kczeZQZYr6LD5uyerO40xK+zmw+YyxY7LaWGPidO
         2WMcTauKGs3pReavYjS1Roat157c8dqXUdRR8/3M+780QB+JvBjGJuVYLd/aq9/LfUow
         2O2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679560387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cxxADGM7ougpcYQ83aeznKVeHn9174ZSNJoBCrMRZW4=;
        b=Cg6mVF+EJXh/UVQognKWOmfeonyXyrO9CVCnO3wHXzkGFR6RjrMrIz63+Kc5kcxjPX
         Op5qOTglB1YRNO7IsexCTEfIs+WmQU99Eo8iGI7PCJsY2idnnnYHIlU7O2AEFFVRmSQR
         lpVbhnVyF1lIv+x/DCKD5cPTspM5u2BbD7FNFTaYkeuervozzAjmzo0h4J7BRYP9jzYA
         Iho9BHVB3il0sYH5nmOgxgmKCIGpRiE6hV5bZASpuDEkqGrRh388t6juekwFAz6msfeh
         j8tUeiAUYmpKAm/tUdxT39L1QEyCuB3XkzdrNmRAZMU3ujrUP2qmxO3OA/SDwfnPZVHI
         85pw==
X-Gm-Message-State: AAQBX9fF6jDqSCNk+dE/8d8j/2ryhm2sD4dGIZXbIfDrS/lYegjIEu/P
        rqabVgPDzOILzza4Ts6QCZDeGXHjeDk0kH1qaGd0cw==
X-Google-Smtp-Source: AKy350beNfKqYmxZD6Py6G2/x4UomJShnG3A20iBsq0qiIUpVjYvYk7dcPiC73v8tqDiLG/XhlxCs6p4eoqkD5syZ9E=
X-Received: by 2002:a81:ed09:0:b0:545:8202:bbcf with SMTP id
 k9-20020a81ed09000000b005458202bbcfmr1373175ywm.9.1679560386843; Thu, 23 Mar
 2023 01:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230322173549.3972106-1-robh@kernel.org>
In-Reply-To: <20230322173549.3972106-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Mar 2023 09:32:55 +0100
Message-ID: <CACRpkdaWJX6Dgk5DeVS2uyFuL863jdAgBj2_+dhriiek0zPkKw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: Drop unneeded quotes
To:     Rob Herring <robh@kernel.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 22, 2023 at 6:35=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
