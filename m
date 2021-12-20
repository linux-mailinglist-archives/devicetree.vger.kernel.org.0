Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1983047B650
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 00:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233184AbhLTXyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 18:54:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230155AbhLTXyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 18:54:08 -0500
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 602A7C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 15:54:08 -0800 (PST)
Received: by mail-qk1-x72c.google.com with SMTP id m186so10996834qkb.4
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 15:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ICTB8V4n+9cmca6+x37Ql0fa5KJvA8Kd4xGMSs77tp4=;
        b=GOa3Py2rvoHFE1zmqG4g4VsKavd6FCbMcxB66Q0UHthvWMGSZ4qkosE2WTkfXY5jLj
         GJEsJls1Q8hoJJe0Hz8joPOiyGiwn/He61O6Dpe3Y2sQ6iVAEfduAgGVtDQ3aKJHE+Cf
         CNf42oqdHuyZxsnhBOfuuJuEy0uOszNUBOUyIrrH612CftS0o0hXP8a1a35t3HoCwHAK
         55EDgjLU7QWhMfPUQ3lxpDHgZqZIXdT/wc+PVWVZOt2vshCjWC9xUCTJ6B7WFwZ0dwS9
         TlLRGrJ22LePnO+EgLB9+yPEVV/ZwtWz52I92Hh881azKDNEYhSvkBO35edcz4Ii6Hvs
         dOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ICTB8V4n+9cmca6+x37Ql0fa5KJvA8Kd4xGMSs77tp4=;
        b=52HQETpmsm7g22u/tNQtxbqRFUU29N8+hoNcnkbNaLveQ/O+MRl16Y9sBei6a67/rz
         tpp+hCjMbEaWKuaLLD4dnXx5h9inlQm6WcaK2vwOCO3hFCBmm/6456hzVG50+OQy18td
         PfJ/box9Bb/5QX0i+i1gEUZRDt19QgFPqPN2mU+6K+ujyOZn6XApe6s+bk6b+PqJq0Nn
         TL2gA1vyuvrRgKiq+L0GmJwPXw2S5KGn+kjJcXPMXu5zjpDn/YKNtuDaESOc9WqmgPVG
         YQfXLkiZWhzi/8/DSxm2BCBzU+WnDthQPR9vYNwusn86JQqd4vaRl/Ka0xnwMs2YqNXG
         d5Ag==
X-Gm-Message-State: AOAM532OVqLvhYUtB/c8AjKumJ8VQP3WiOuX3qxW4rpRsyOskqY8dnaA
        JHCkIemSmVtZmG5p3OYUnQUwkGGxETp+h4jFgTzg2uD40X4D0Q==
X-Google-Smtp-Source: ABdhPJzCxuuI7T69jGLo8Z9p5gSwkmCeAciC0CgBmGa3lxd+isswddNujRi13+rwrqy40MTb27glmY8K2mKYuRI17Ng=
X-Received: by 2002:ae9:e641:: with SMTP id x1mr432352qkl.59.1640044447562;
 Mon, 20 Dec 2021 15:54:07 -0800 (PST)
MIME-Version: 1.0
References: <20211220184220.86328-1-david@ixit.cz>
In-Reply-To: <20211220184220.86328-1-david@ixit.cz>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 21 Dec 2021 02:53:56 +0300
Message-ID: <CAA8EJprqBELsZUCVqppAsNVBzsW3FxQbUCQ=zy_tAVY0SeTPwQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: msm: disp: remove bus from dpu bindings
To:     David Heidelberg <david@ixit.cz>
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Dec 2021 at 21:42, David Heidelberg <david@ixit.cz> wrote:
>
> Driver and dts has been already adjusted and bus moved out of dpu, let's
> update also dt-bindings.
>
> Fixes warnings as:
> arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dt.yaml: mdss
> @ae00000: clock-names: ['iface', 'core'] is too short
>         From schema: Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
>
> Ref: https://lore.kernel.org/all/20210803101657.1072358-1-dmitry.baryshkov@linaro.org/
>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  .../devicetree/bindings/display/msm/dpu-sdm845.yaml          | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
> index b4ea7c92fb3d..0dca4b3d66e4 100644
> --- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
> @@ -31,13 +31,11 @@ properties:
>    clocks:
>      items:
>        - description: Display AHB clock from gcc
> -      - description: Display AXI clock
>        - description: Display core clock
>
>    clock-names:
>      items:
>        - const: iface
> -      - const: bus
>        - const: core
>
>    interrupts:
> @@ -160,9 +158,8 @@ examples:
>            power-domains = <&dispcc MDSS_GDSC>;
>
>            clocks = <&gcc GCC_DISP_AHB_CLK>,
> -                   <&gcc GCC_DISP_AXI_CLK>,
>                     <&dispcc DISP_CC_MDSS_MDP_CLK>;
> -          clock-names = "iface", "bus", "core";
> +          clock-names = "iface", "core";
>
>            interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
>            interrupt-controller;
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
