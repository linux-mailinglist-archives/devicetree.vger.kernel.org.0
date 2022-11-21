Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D24A16328C0
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 16:56:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbiKUP4q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 10:56:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbiKUP4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 10:56:45 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A1EAD02D6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 07:56:44 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id bs21so20522348wrb.4
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 07:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gLrf8pFJ9/J1g/QK7YuMf2dUfUQFHFeJtN0xM6Gmens=;
        b=VRBo5if4qzUXy/nhsK1D1Oq2zKGwOyy5TDu2nDtfpjlbVfbaxiBAIoerx5kpb/OMEf
         gWP2AFT6DnGdDFeOb8rH8x3ZckTtvsRMwnhVlpJBp+0DWgvnjvPrQLLBQOxwvBEtDbU/
         Hx341mVq1KdMwMd3SQC/ygleTS5kiPbJNwNu9qwL8fVXepBjn2nAxd9CmZo3+GFr3pRU
         0lXGJK7fi7+SCwn4359CIvYcK4ILRRDU9qtP0dmrxJIEc7GW4BPXByM03LPt0yVh8cw7
         T3paaVleYcAwwUFrr5Jrra1jXX/scBFOefzRZUcGxYVxMRmv5v4Ran7jj98sOWvH3NoT
         l5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLrf8pFJ9/J1g/QK7YuMf2dUfUQFHFeJtN0xM6Gmens=;
        b=T9roOXDS1yMsgXhjBmjkGR8HqN/r3BWR2ttturmYTqvyRUv4hrg5hmY7XCrvjheqFh
         3gyhUQ1UgHH4pSeEPTZYp7/oTcu4YDXc3Depdp8TCEIgu2GglbUShjqiyEPL9/P81VN4
         T0POluTW9XY4HV7LWh/6Gg4Bl6ayPXpvchXUbsPUrAwD4jSsaZjVBdPrttF7rjOHjywy
         1uOndMzyWweqZDFpD14lIqMw0SSiQih+9c5tr8Td02gd0JKHJZOY+ZDS+CM8z0EhsNTI
         NdEZHXfJYXBh86tJHeHoTlBLuShlNJAmyq2+xgCV9Vzh9Ug/WRjZUa+pQGBnlueDl6bU
         SDvg==
X-Gm-Message-State: ANoB5pmcoGBrrXdT7PMkEo44O1ZrBjriuiQj1ZFLjMdVNA/amXYGqFRo
        qKT3NkVUTqqN3h9U9P9YCZlkog==
X-Google-Smtp-Source: AA0mqf4etBn+a6CY5wJ1uQSVF+zfA6vnlLMaBDO/4ZIhKQv1RISNEa+A5jCKfNfLjUK7jUwFiqyU7A==
X-Received: by 2002:a05:6000:61a:b0:236:8a38:66f1 with SMTP id bn26-20020a056000061a00b002368a3866f1mr11539965wrb.327.1669046203048;
        Mon, 21 Nov 2022 07:56:43 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d46d2000000b00236722ebe66sm11475360wrs.75.2022.11.21.07.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 07:56:42 -0800 (PST)
Date:   Mon, 21 Nov 2022 17:56:40 +0200
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
Message-ID: <Y3ufuH1UAT+rsjl7@linaro.org>
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

Applied all. Thanks.

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
