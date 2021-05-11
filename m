Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8318637B050
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 22:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbhEKUvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 16:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbhEKUvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 16:51:53 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0435FC06174A
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 13:50:46 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id i13so17082626pfu.2
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 13:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8D2YP0VWQtVIqmK8vpJ8Ty/EggLMSFB+zMrWQFuUve0=;
        b=oEdQSWyJw78yuxYX8C60AcmqlF3e3R3Ru0Qs4R2YeDmRItwsvEWL+pjcBe9fIlzFX2
         jCPnmH7+djm7C6Ksm/ka1aRITIV73yiQNFgLFVsokeqrbDoeOaIwQnhHDe1IcW+UzU84
         F49hZQybDLEef560Vtx8qrqfae4m+ly60tL3gkZRRfoDx9vHQeb54ff+1QvQJcvIGzP0
         TcZtlCtL5EzTkXRB0HK4iwdyGeO9bB6R6sYR73ekSigcslSS9bWd1W9/+AsN84t1re41
         YyDcDiiAOnB32yxdRviuRZc7GuxfAq8SwbNZI5neAQXn/HGoNkJMvfFWr2bJF6C46iea
         gP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8D2YP0VWQtVIqmK8vpJ8Ty/EggLMSFB+zMrWQFuUve0=;
        b=GVQcWL8L4kr/9CeNHkDKb9fS5+7jC9gjCgUsFtIgBzCXtNcDU1EkU/57rNZpqllsZc
         aHTmfoOqj5fhcJXNe/l+CgyEbx2Q0P8jUuJHsOCjQ+K6S4p6HDyHlTIiKa669aoozw0P
         ZrTf1iUk/aVdtLpObrbFkG1mPH0ItLyLVF6KMlxfXPuK5XyDRBROfCwLJhE5dIlI/IVz
         q8grl3KJU27eE8sBSFMAYPLsn72XVdazsAFHj+3qRiWz/HJeBBE8Ggx4SNvao5k39LcJ
         BNR3GGH1GzhPEbDmCZwZC+5txngZ3VzaiY3ZzWavzPkSJL7uu5wz2zYl0NqnhtHso8S5
         puxw==
X-Gm-Message-State: AOAM533k56lYKRNBnSkOX4p8BIy+m0QQhWzEPGAt+9t/gMWVruej00G0
        6rkXi4i4iFR80Cd2iJvWbjpPrfh8dl1U2AdRRnGkZw==
X-Google-Smtp-Source: ABdhPJyiwRs7eXwx2v1c+NfO3xFR7LzHb4B2R9cp/VR4S5DCkfe/DReu5VpGCC7JlPVDEc2xg6k3WLePeD8w9ChSx5Q=
X-Received: by 2002:a63:4e01:: with SMTP id c1mr19206289pgb.265.1620766245583;
 Tue, 11 May 2021 13:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210511193601.2584324-1-adrien.grassein@gmail.com> <20210511193601.2584324-5-adrien.grassein@gmail.com>
In-Reply-To: <20210511193601.2584324-5-adrien.grassein@gmail.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 11 May 2021 22:50:34 +0200
Message-ID: <CAG3jFyt+t0+ep7_eaWmoEC-M31W62qE0qbtE_G9Sonor=SLrdg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] arm64: defconfig: Enable LT8912B DRM bridge driver
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Adrien,

On Tue, 11 May 2021 at 21:36, Adrien Grassein <adrien.grassein@gmail.com> wrote:
>
> This driver is used by the Nitrogen8 SBC.
>
> Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 08c6f769df9a..45db77d1a657 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -701,6 +701,7 @@ CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
>  CONFIG_DRM_PANEL_SITRONIX_ST7703=m
>  CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
>  CONFIG_DRM_DISPLAY_CONNECTOR=m
> +CONFIG_DRM_LONTIUM_LT8912B=m
>  CONFIG_DRM_NWL_MIPI_DSI=m
>  CONFIG_DRM_LONTIUM_LT9611=m
>  CONFIG_DRM_PARADE_PS8640=m

Reviewed-by: Robert Foss <robert.foss@linaro.org>
