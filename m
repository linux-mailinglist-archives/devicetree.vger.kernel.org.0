Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90F3C4D91F2
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 02:04:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244577AbiCOBFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 21:05:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242235AbiCOBFa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 21:05:30 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4F89140B1
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:04:18 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id u10so34263863ybd.9
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G3dFlqRFL9HlfyNgNPQqYqQNaHrZZteRUE5RE+XDmFo=;
        b=xHeNq3qL2wnSyQEpGFv10jR9dWRPb48//FYTkZChRDbk6GjpEQ/TlXPk7E9AUWEc9o
         bclzeHNVl5x0ydjrVG1RdqFQr9ua1cQWKKMYGgi1oB4/gCJybdPvJGgoYkUDI+qCWw+g
         juAtgNvxt+NQjoPc6ewwv9PGOw39OlQ3Bb4K6Jd5Vn236c+gtJkz++nGNpAXhjhESbVV
         NAusH5eYB45L6hXc8f11T8gnuUI0zxpyGoojPJ3egcitgbsMRLgV6nNMgCduZAuK36ao
         CUk8YBUUS5OvXzmcNh4d+VX1r/5D7sTfD6DBHkh+jSa+Pv4vE2rzupca2CSAG05kfmpd
         TJRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G3dFlqRFL9HlfyNgNPQqYqQNaHrZZteRUE5RE+XDmFo=;
        b=59l9U7D/SLBdPYTbvjB/OfcCuFZfqyoEA1E8R4NxRBm/HrC1Pw/6V9x1vsmFd7rfn1
         3fikm2FxdVynUUugqHMyQHe3JPm0ewQz/x5jthXbJ+/YUrIgvhs5SqUCEeMWoClXHp+2
         kZk/tptEJLpf1gVby4FdnjCAbOxyzCDyExtpVwGGTihR08QeZIMlWj4WhAO1lryvFNWt
         Tzf/fIEZsLyGBXqY88SUqWHwncuLcQvFIxRg0/fPRJYIW+iLjh+aHnyMChcBK99cCK3W
         kg5fOOaGv0SO6WhmUjpA5aZJ1EgkAlymP0ToN8S6OTPyzRZHX04kH/Zoq+c5iBHdhHjL
         n8lg==
X-Gm-Message-State: AOAM531dJtxs5m+KQhXvNGt+SFR4TSbv/JbC0+gOTiDVRsYyWU5EVRrL
        6B24yw6YMt22U+SP+UpvDdQDLdGTbkmFM/tQfB0ldw==
X-Google-Smtp-Source: ABdhPJzcee/3Zb1HhaKysHMmvVuapmBALaDYIGI3ZPQmes767jIHWsrqo+TpcpZ/9cslSe2RX4+gI+gKsFuisV7Tte4=
X-Received: by 2002:a25:e710:0:b0:633:67d3:7264 with SMTP id
 e16-20020a25e710000000b0063367d37264mr3565636ybh.291.1647306257955; Mon, 14
 Mar 2022 18:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220308221132.1423218-1-bjorn.andersson@linaro.org>
In-Reply-To: <20220308221132.1423218-1-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 02:04:06 +0100
Message-ID: <CACRpkdbJFtNqtvfmqPffHW-gWJdTD6xa07z33gnDbm=QpJLgMg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom: Add sc8280xp TLMM binding
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Tue, Mar 8, 2022 at 11:09 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> The Qualcomm SC8280XP platform contains a single block of registers
> for the TLMM block. This provides pinconf and pinmux for 228 GPIOs, 2
> UFS_RESET pins and one SDC interface.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied!

Yours,
Linus Walleij
