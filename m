Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C116B3DB577
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 10:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238333AbhG3IyB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 04:54:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238307AbhG3Ix5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 04:53:57 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 646AFC0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 01:53:52 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id g13so16401103lfj.12
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 01:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6/y2nst5DhRddrxH7FP8tT6A3puFF+bOoUQNQZh3zyA=;
        b=Ma77ZMtAEMp3DCJI9CiJfurS2sz5X+vHLaWMtEIAYkRDx7/4tLDIJPi5r5sEXf20rX
         vXyeOquE51nPkcdkrSdSEFx8YeYa5ZWUZ3y4CD0Rv76L4Enuazt1Lt+mIbQomhNHJ85S
         vRgevcwq6/OdKXxDIhTf/1f22SSNYNNmDkIC4J35Z2TyO/wC7kUvgIYIqYuUOkvWWiuR
         95tr1ADKF4hWaO+Yi2JbRspF1US0LkWNU5Vbg6kB/PIR8O3t+3eIzy0qpPmlWRwq2U3t
         0AhL4JHC3FuLHB3zaLj9hwAKymG9c8rmY8+SaW3sSDMs/Tf62pRrUu1vSe3RlewNWre0
         3JhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6/y2nst5DhRddrxH7FP8tT6A3puFF+bOoUQNQZh3zyA=;
        b=Rkf8aNZHCxMJ9tEG3M594+vENYdVG3WgH8+XKBGN9idp28yQQ9Pg4DI/SMZWkngL7S
         VgQtDYOaviKFBf0ft6TYww0UixaFkTODA7hhifm6kwkFMhqaw68dgtJzI1RrMeVfn7P8
         h8Sqyz2DCbnhIXE5jqQy31dqdG6ajSx20qwk7AzYqaHcO1MV/9jLP65t5/IdrGGlb9Te
         ves+mCmNLZ0SYfUwAZs+JDUMIRLxAFOeQdtFz2Do88i2419hkpRvMg7aiTnr0+Un1q8p
         97W9lQD/eR6W3TW0qdkox73nWynGHaOJHNIVQEGqHslN36xDTcxeLNbjGETyT9SPPL6n
         yxng==
X-Gm-Message-State: AOAM5303UDJ05USXq2ymgkt8vea8gLOH7H2Sd0Q2jYagmJzPHSXq5wR0
        NUAexoyCmBgOGaliFYHg8WaRkkK187ZgoqI+WXxJyh0ejzs=
X-Google-Smtp-Source: ABdhPJx1bJcgu56msMl2K3E4iGpbHP52YHQs6+zU5WcFPdQq75FWE5Pw85EYQe6c/vgrClpLB+2LL/++Y8ZFcLVyUmU=
X-Received: by 2002:a19:c7cd:: with SMTP id x196mr425452lff.465.1627635230350;
 Fri, 30 Jul 2021 01:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210707131453.24041-1-david@ixit.cz>
In-Reply-To: <20210707131453.24041-1-david@ixit.cz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 10:53:39 +0200
Message-ID: <CACRpkdZR0_cf=baNkDuAS_JT0OkKLufdspUut18=de7X0urckw@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: qcom: apq8064: correct clock names
To:     David Heidelberg <david@ixit.cz>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 7, 2021 at 3:15 PM David Heidelberg <david@ixit.cz> wrote:

> Since new code doesn't take old clk names in account, it does fixes
> error:
>
> msm_dsi 4700000.mdss_dsi: dev_pm_opp_set_clkname: Couldn't find clock: -2
>
> and following kernel oops introduced by
> b0530eb1191 ("drm/msm/dpu: Use OPP API to set clk/perf state").
>
> Also removes warning about deprecated clock names.
>
> Tested against linux-5.10.y LTS on Nexus 7 2013.
>
> Reviewed-by: Brian Masney <masneyb@onstation.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> - v2 improved commit message, added R-b

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I guess Bjorn will apply it?

Yours,
Linus Walleij
