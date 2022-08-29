Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9C45A463C
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 11:40:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbiH2Jkc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 05:40:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiH2Jka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 05:40:30 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C443A2AC77
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 02:40:27 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id j26so3978914wms.0
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 02:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=ZxxiXzVw+g9I/rDVtfq444KFkssXZmUmV/pBYuPeyYU=;
        b=cFWFB7uco2+eW3LXIvx6hGDwWkGvVZ6KeDvhLUh+KnPoXmP/XEcw7IV9AJu+GzWu4+
         TpA6I4876GzgW8fI5yeFPWDV2ydSXQW3hyFqFU97uMWVXTlSKx1tMhuD8upyzhk36O94
         F7Z4+6xxCJ7HeeYKe8zwPDKfIdCtgTpDQQ/nFiMAjBRr1FuhGHECkmiu8fX0XZtkTbeO
         Q8IRg0RNaXOFKnhDeLi0BeB8os1PVxEZblH4+vDKPj9PQfEojD4gg1s1nFvJI46FNUQF
         3u4mlSXi604Z+lmck+PYyWlJoSPPQJJm9hzS9QD/RFQRbkYtI4rCUuqk03cuQmW/XX+z
         OZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ZxxiXzVw+g9I/rDVtfq444KFkssXZmUmV/pBYuPeyYU=;
        b=eVwnwwD5TxlO4z8se2BoUDN9K2fgb72UFRBivpS8kTgYzDqLHkRvZHB9p2ovN9szRp
         aZBhoktFqPaGT/3aHQeemgmnvue38PuUmgT3NthIR2BFPUQMowt9dDF3dry8YWBco64k
         6Og4p+D3TC6fSj3Asrqk+0rIfCyiOuNxl9zKggFpB3Xw2vdWQo8p6wml2DHI+qbS57Vr
         twNueP7VgIRt21bSPDytRFW3rK+hYoPN3vW1ZfxM2LOzb3Ins/FVQcMZ1OdjSA6e76m/
         5N9isZidNKiL91LlmY0TGkkFU/RTN/Ei+xAdlWLs2ZxL0tdlQDHuDaUlaRssyEMzxzQp
         tzcQ==
X-Gm-Message-State: ACgBeo1oserfDu2J5VutS5efms+Uhonael41w+SfD3hpSI5+hfwOADtS
        p06M10Cg/Y4xcEyOsRg+t1oBTw==
X-Google-Smtp-Source: AA6agR4NYFt2n1937XpZi8/cdzn6JuTwO1cvz+JKiBMEnviLkY8V6Xe9OKRPv3ChViwWiZ7btRCBKg==
X-Received: by 2002:a1c:3b04:0:b0:3a5:487c:6240 with SMTP id i4-20020a1c3b04000000b003a5487c6240mr6334328wma.152.1661766026306;
        Mon, 29 Aug 2022 02:40:26 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 14-20020a05600c020e00b003a3170a7af9sm8134846wmi.4.2022.08.29.02.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 02:40:23 -0700 (PDT)
Date:   Mon, 29 Aug 2022 12:40:22 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Marcel Ziswiler <marcel@ziswiler.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 5/5] dt-bindings: imx8ulp: clock: no spaces before tabs
Message-ID: <YwyJhorMIju4Czr3@linaro.org>
References: <20220826192252.794651-1-marcel@ziswiler.com>
 <20220826192252.794651-6-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826192252.794651-6-marcel@ziswiler.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-08-26 21:22:52, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> This fixes the following warnings:
> 
> include/dt-bindings/clock/imx8ulp-clock.h:204: warning: please, no space
>  before tabs
> include/dt-bindings/clock/imx8ulp-clock.h:215: warning: please, no space
>  before tabs
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> 
> ---
> 
>  include/dt-bindings/clock/imx8ulp-clock.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/imx8ulp-clock.h b/include/dt-bindings/clock/imx8ulp-clock.h
> index 953ecfe8ebcc..827404fadf5c 100644
> --- a/include/dt-bindings/clock/imx8ulp-clock.h
> +++ b/include/dt-bindings/clock/imx8ulp-clock.h
> @@ -201,7 +201,7 @@
>  #define IMX8ULP_CLK_SAI7		2
>  #define IMX8ULP_CLK_SPDIF		3
>  #define IMX8ULP_CLK_ISI			4
> -#define IMX8ULP_CLK_CSI_REGS 		5
> +#define IMX8ULP_CLK_CSI_REGS		5
>  #define IMX8ULP_CLK_PCTLD		6
>  #define IMX8ULP_CLK_CSI			7
>  #define IMX8ULP_CLK_DSI			8
> @@ -212,7 +212,7 @@
>  #define IMX8ULP_CLK_GPU2D		13
>  #define IMX8ULP_CLK_GPU3D		14
>  #define IMX8ULP_CLK_DC_NANO		15
> -#define IMX8ULP_CLK_CSI_CLK_UI 		16
> +#define IMX8ULP_CLK_CSI_CLK_UI		16
>  #define IMX8ULP_CLK_CSI_CLK_ESC		17
>  #define IMX8ULP_CLK_RGPIOD		18
>  #define IMX8ULP_CLK_DMA2_MP		19
> -- 
> 2.36.1
> 
