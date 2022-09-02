Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE6E55AB82C
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 20:29:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbiIBS3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 14:29:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229719AbiIBS3U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 14:29:20 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DB6810DE57
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 11:22:14 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso1898245wmb.2
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 11:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=Ojk6sR1enpNZ4A6UZuJ0vO1AZQgVqYffnIr1R5iYzjs=;
        b=hSgAt7QMHun6u+JdezesHvolMKXWzxe+bCTJE9Q5nVxNU2NTcqsw1Xm0NE7ImFH64X
         GTD0bfyzJHGXEAFMoAa62yt0Ek+XP+3uTlpZPZ8rwnqM1Y46rLXyqRT3XWOJxFktwJxT
         JHGZnltvkyLsOsuAcS2YWOBAG9AzYZfzrDeXiptT6ei99+CYUubhGDIxBZ2CgYol6l0/
         OGz+NrPXMr8rRHFpQHReyhX+E27bqhcjhZXqqL05FN+r1/4RdIvRCBuNvlE8LYqJ/qy6
         O7tVs7ODtzCSrg3C3h642tluAW+nWIhrd2cQscJGLuY3hGpk7CBX/fOaebHsrm/IgXdH
         a0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=Ojk6sR1enpNZ4A6UZuJ0vO1AZQgVqYffnIr1R5iYzjs=;
        b=UocS46sPL1L89zH6CZDmuqfAiEvwy1hAn/jDnQRaAfJEOZmmzygZeTnNjl89G2Lqym
         NbndmVT45lSjkP9dDqcinkrQdT4Y9Wn+qG01tbw3w8EjG2dw0sJZPh4JCvh63JFGUiH1
         A0Kg8thSQuqb11iWFXIoUyRGh69FWroCClNkUechzV2NnlKyPt/2pgyx+4ic/VR+vMEg
         H7GMwGKNU7IQyRlLtWsqmTpMBRVjCOCaL1E7VEGAXz0wUsSQfCqJGMXL0V2UavEt0+2I
         66fiZqueiic+JbrWgexL+0SqyC3hxXGUYYL2Ipq/+GJsIhCzEuE515upjqc2HV0dhbfG
         FnHg==
X-Gm-Message-State: ACgBeo24RerTdvSVmXvjxOSZFyMVG+RZo73zGGYGKuWqwM/E7CEVr+i3
        CGk4rBYJgiuFjVuXCAYbvvqa4Q==
X-Google-Smtp-Source: AA6agR4bECAgBJdNC4rnIclnJIrhx1jPSkwqM//T2yRdLncrat9vR3gP5/Myy3t1VemeWXXVUKPiKQ==
X-Received: by 2002:a05:600c:1c8d:b0:3a6:9d60:faf0 with SMTP id k13-20020a05600c1c8d00b003a69d60faf0mr3848787wms.82.1662142932774;
        Fri, 02 Sep 2022 11:22:12 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c15ca00b003a5dadcf1a8sm2701188wmf.19.2022.09.02.11.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 11:22:12 -0700 (PDT)
Date:   Fri, 2 Sep 2022 21:22:08 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     abelvesa@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clocks: imx8mp: Add ID for usb suspend
 clock
Message-ID: <YxJJ0IQ1Gu1lp02p@linaro.org>
References: <1661328262-3867-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1661328262-3867-1-git-send-email-jun.li@nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-08-24 16:04:21, Li Jun wrote:
> usb suspend clock has a gate shared with usb_root_clk.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

Applied both, thanks!

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
