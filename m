Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 881EA6623B7
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 12:03:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236593AbjAILDD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 06:03:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236610AbjAILCk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 06:02:40 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 803F815F05
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 03:02:38 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id v6so11909814edd.6
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 03:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q22IC76NIFlUNFVLEBeBBzq7VTQyyR7B6FppDsOGIVs=;
        b=xeJ0UCQzhRtoIqJQJk9zQ3LFzkuI7DT6oqFapRd0kXo0DK0DfvvtODIr5LDADyKbzj
         qqEdrTCiOqruOCLupVh4scPyXTwma9BY8J5dYLhopYd3oHU8AKmmTtNJgssET9n+JCiN
         +IPVFu2HmyC3+D/Axi/uxWJ+8Oy0aR9shRaNGmxCgBNFsTCDaR1yhdgL55wugtF5UTEz
         7/cbhVt+iFP9cO3gulQedA18N5U4xUnhuT6WQK7/RvHGzvGuzD/pCWr/ZR5gs5oVOshA
         4rwyNKtjLSII74Sk312sYmAaYi/t44qkII01grTyTk8wcPgC+ybpb1WzWN6OlegktMHp
         +16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q22IC76NIFlUNFVLEBeBBzq7VTQyyR7B6FppDsOGIVs=;
        b=GpL8Tw8jLx7p/sbkgBOVgJitOE4G/tGl/0edtjIe8h/R7BsWtfC4zGvLC6QOxRsIZX
         hPvFxKXdFVNvpC6Yp1EwHXtPJyZXuAFXTYCQNQUVSBdkgT5SAVVLf/oU2tNVYoWzn/o+
         waDEMwApRBhI4zOBCqBtkGrfy6NmcqZo0G4Y7qO65nwjrWtzciifrkK+Kzw/QpNKaBbF
         k71H8hOrIeEcBXt2E68Ul8nmc2It1RWH9rQfl7LnpfHZzE5x0LlezjeymptAjJr9cM/k
         nQTi1QNtWALeXV7ngi3sBAMtp68Px9WkKFFMz+9qTiPC0g5sFIyZaamcCIRpvJSl/gn3
         H0wg==
X-Gm-Message-State: AFqh2kqWk4qfmEqhebUwce3tSLlOvx5SLiZDWegAcIXb+8BmEJfzdb0R
        Mk/j4BzXN6OyGr00qkF1ilr87w==
X-Google-Smtp-Source: AMrXdXvRBcQNoMEEc0ZGbEm27gjbzB9svuMRfS+32K4VRWjZ2D7MVbGll/YhgRnPNOd1mcnQxIqQPA==
X-Received: by 2002:a05:6402:299b:b0:499:b320:fc2d with SMTP id eq27-20020a056402299b00b00499b320fc2dmr3158785edb.33.1673262156983;
        Mon, 09 Jan 2023 03:02:36 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r14-20020aa7cb8e000000b00499b6b50419sm660929edt.11.2023.01.09.03.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 03:02:36 -0800 (PST)
Date:   Mon, 9 Jan 2023 13:02:35 +0200
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     sboyd@kernel.org, abelvesa@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, mturquette@baylibre.com, l.stach@pengutronix.de,
        peng.fan@nxp.com, alexander.stein@ew.tq-group.com,
        gregkh@linuxfoundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: clocks: imx8mp: Add ID for usb
 suspend clock
Message-ID: <Y7v0S7y+JaRVIewv@linaro.org>
References: <1664549663-20364-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1664549663-20364-1-git-send-email-jun.li@nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-09-30 22:54:21, Li Jun wrote:
> usb suspend clock has a gate shared with usb_root_clk.
> 
> Fixes: 9c140d9926761 ("clk: imx: Add support for i.MX8MP clock driver")
> Cc: stable@vger.kernel.org # v5.19+
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Li Jun <jun.li@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  include/dt-bindings/clock/imx8mp-clock.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
> index 9d5cc2ddde89..1417b7b1b7df 100644
> --- a/include/dt-bindings/clock/imx8mp-clock.h
> +++ b/include/dt-bindings/clock/imx8mp-clock.h
> @@ -324,8 +324,9 @@
>  #define IMX8MP_CLK_CLKOUT2_SEL			317
>  #define IMX8MP_CLK_CLKOUT2_DIV			318
>  #define IMX8MP_CLK_CLKOUT2			319
> +#define IMX8MP_CLK_USB_SUSP			320
>  
> -#define IMX8MP_CLK_END				320
> +#define IMX8MP_CLK_END				321
>  
>  #define IMX8MP_CLK_AUDIOMIX_SAI1_IPG		0
>  #define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1		1
> -- 
> 2.34.1
> 
