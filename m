Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6A6D4C9A93
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 02:39:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbiCBBk0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 20:40:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237273AbiCBBkZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 20:40:25 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC6A4A1BE8
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 17:39:43 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id j2so460260oie.7
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 17:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=hnwoWuopSS9aETx0aHea8Gzs/Q2ZaAGgt+ETW/rAvRg=;
        b=PvF7shDgPAkwu9Y3aP0ixbn3B4FAMuHTY2SxTI+xgkj/u8a6wt62gGtkB30eEbEqC1
         HiyDEXMUCRX1jZFBiTvQ9s5qkvmd0HQlcZqJGZ4TTJgv5vp/9nC4whBYUfoIkmWg54O9
         HA86nqiSleIYSB7KBfT+icrEoJyHfSUHpJVm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=hnwoWuopSS9aETx0aHea8Gzs/Q2ZaAGgt+ETW/rAvRg=;
        b=MB8NRqh+wb0iartetWPfDIT5x/tiztvQXjgRnmtg2h2SsnCdupWCWyjFLkl7kEXI3H
         SZlIDhOdwMHYnaD8HrD1bWQX7TIpVfEbIzlWWB4egWwupOvuoUN0NH2a6+3jUzZ0LsUa
         UrO+XL+YOwKthG8lDUDY3UkBoAv92ISEWHVAlVOlCy8QWivDALED0L6YmruLF2i0rRws
         Kjhwd1PcRcac7ycAYkVxU/KqmbbbC+RCoLw6KlnJd3WoWJc4f6HoLpF+UQVyannX3FnJ
         tXoa85zy3bqOiBJxAXwLjrqlnaG8+S0HBPWI7gm2TOZIjlA5pv603PkspVgnxPwUiV5x
         kAFA==
X-Gm-Message-State: AOAM53255gMXKMIS+pBZQMazD0lFM279Fvkh9NBsFvumkb/hR8O26o0A
        4SvLMd7Nnf1L9z05pceKE6ytCKeUUYAlJJgPvRscKg==
X-Google-Smtp-Source: ABdhPJwQZPLrAbhDzbz89E/z0cdbssP7BsqOm6RzYz69UZb0XC3YFKHa3jk7tT+ocOa6FfgH6dPjedEJ+ySy1/BblWE=
X-Received: by 2002:a05:6808:1a28:b0:2d7:3c61:e0d6 with SMTP id
 bk40-20020a0568081a2800b002d73c61e0d6mr17329920oib.32.1646185183049; Tue, 01
 Mar 2022 17:39:43 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 1 Mar 2022 17:39:42 -0800
MIME-Version: 1.0
In-Reply-To: <20220302005210.2267725-5-dmitry.baryshkov@linaro.org>
References: <20220302005210.2267725-1-dmitry.baryshkov@linaro.org> <20220302005210.2267725-5-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 1 Mar 2022 17:39:42 -0800
Message-ID: <CAE-0n50BPBWGY3X-Xzy8Pn5K2v0csS-J407Ajr8_29an-tanEg@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8250: Drop flags for mdss irqs
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-03-01 16:52:10)
> The number of interrupt cells for the mdss interrupt controller is 1,
> meaning there should only be one cell for the interrupt number, not two.
> Drop the second cell containing (unused) irq flags.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
