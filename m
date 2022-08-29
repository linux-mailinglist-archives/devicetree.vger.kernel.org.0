Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74C1A5A464A
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 11:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbiH2Jl3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 05:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230043AbiH2JlH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 05:41:07 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F1AA5D137
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 02:40:54 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id bu22so9090149wrb.3
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 02:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=FM+u/mT19a85swWLirrWas+cuEiZlUx6xGmwi5sOw9Q=;
        b=CR/429N71yazrm5/GlvVbONcJoh6cPfXGYcwqJEQTMhYzAMFpXA+Pf13aXAA5ocPLQ
         PyO7mI3WKEZbFSHVp8DN8HtyhahXiQ1vJQZoDmPmfpfUSUFNMk7llu6DyryxCtPx51QM
         UggdjRr6OCpz2I1aB+YBSjdf7baBkWv2LNjU15dug5RLH3NaZuT1TGf4hhVoihKnyOrn
         KS0aId49TCKXRZ+8As1clAfdlLcfqjkFqBKf6TJnPItx+8Wd42Cuzq29FQqGL0n0vdPc
         MWlZHocaeL1NO/HzOZLtPJ3ZWcqMRTdFyyeXatsF/XKP99Km19neLAkjnP+4aVzKklhJ
         Cigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=FM+u/mT19a85swWLirrWas+cuEiZlUx6xGmwi5sOw9Q=;
        b=fdjkupnCMty3Dav8UP4zKfjUR6dVmJW4yjX7UHrYTPMnqN7clBsSWF9bXL43yd5xs0
         C6+Ll27gbDAQcOx3o8e19GfYz/6pX0GxfrxKTD8e+aScVztyMsI9U4Bjz3kSq2aOtefN
         yEUUr58lQ8NvjLK4BZBNx9ljy/c5RTIm3tbGlTan8MFGb7AVr3d1EA2YbbXtWzz2jn5y
         KO/bGxlAgxf+bniQzTGe7kMxmgVSTj8D42LorQvZRnz9v0C/cH/pGVzLD/3+al2/9Qzw
         NPry6l6d5zNp1nbb4w7Q8aKAHnTE6uHpVgFz7KG89z0ICp3Te/EgPIVW0jZCXRTW9s1a
         QxMA==
X-Gm-Message-State: ACgBeo3rfB6ma7LW3L7cTLEti7ud80zRv9+q+m34mUpxjm9ynHaY7YI+
        aCwFzFln5N7Ya7PgB4IWTGDO2yBe2xMjQWG4
X-Google-Smtp-Source: AA6agR6yz+KetRQLU5z5+8USMBrJz6Xsi96fJACvOe/SZcUPY6d6c25Q1ykCxbsnofqIb7BISTZIQQ==
X-Received: by 2002:a05:6000:1045:b0:226:df71:fd5e with SMTP id c5-20020a056000104500b00226df71fd5emr588745wrx.427.1661766053017;
        Mon, 29 Aug 2022 02:40:53 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k13-20020a7bc40d000000b003a83ac538a1sm7489435wmi.29.2022.08.29.02.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 02:40:52 -0700 (PDT)
Date:   Mon, 29 Aug 2022 12:40:50 +0300
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
Subject: Re: [PATCH v1 4/5] clk: imx6sll: add proper spdx license identifier
Message-ID: <YwyJorBWti0FTYg/@linaro.org>
References: <20220826192252.794651-1-marcel@ziswiler.com>
 <20220826192252.794651-5-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826192252.794651-5-marcel@ziswiler.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-08-26 21:22:51, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> This fixes the following error:
> 
> include/dt-bindings/clock/imx6sll-clock.h:1: warning: Improper SPDX
>  comment style for 'include/dt-bindings/clock/imx6sll-clock.h', please
>  use '/*' instead
> include/dt-bindings/clock/imx6sll-clock.h:1: warning: Missing or
>  malformed SPDX-License-Identifier tag in line 1
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
> 
>  include/dt-bindings/clock/imx6sll-clock.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/clock/imx6sll-clock.h b/include/dt-bindings/clock/imx6sll-clock.h
> index f446710fe63d..494fd0c37fb5 100644
> --- a/include/dt-bindings/clock/imx6sll-clock.h
> +++ b/include/dt-bindings/clock/imx6sll-clock.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2016 Freescale Semiconductor, Inc.
>   * Copyright 2017-2018 NXP.
> -- 
> 2.36.1
> 
