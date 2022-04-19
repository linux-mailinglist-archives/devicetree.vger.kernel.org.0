Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0BD506B5F
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 13:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235514AbiDSLqL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 07:46:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348544AbiDSLqH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 07:46:07 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED791BE96
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:43:24 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id l7so32347885ejn.2
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JapUrTCwkt8ScGCQP7sItH2b923a92w4iMI5OHDmEVs=;
        b=pzL2a6YcGrGnhVVsETujFs4fghRBnunJi4U2HdjN3UQFvzhsFmBAn6I16l7j/otzCB
         JWQk42d3wUb/kMwGjhKI1bKskWm+2fy+Ztl9X3PlJ/57oIPTqYzu7+iX6kD9g5N3rWNd
         2px7JzPy7Rnc+uowgtXC31vPo4XHQOzxdQTh7hfB3Ry2vxRLmA+BY2+HRWAFLIWqJYoD
         oZbMz3EGi8d1JpyM7ZZXiuHGcvtsmZRyxOVDCslCy7jnKioWKiB/hXrIl4Nvtcoc+XZK
         q0OSAbjpbNKAYSUIOWYelmbQmY4sJKnUGhfgGw4iac1Y8MbKtSndbN8jvbPmYTbyqkTQ
         rRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JapUrTCwkt8ScGCQP7sItH2b923a92w4iMI5OHDmEVs=;
        b=ptmkMwPMuXt/E7L3jYxiHwv1KtqtlmNfMna0Ev6VbSFCb2Q/a9qQUQ3BjlUXJd+zWO
         XxZ8GPQiLjqeUOqC/DruNJAK8hscPFgZ8No9vnwnkkbtDijBCy0HliQ63E8XaFWAFwBC
         EVKS2UStGegNYazdX/yneaSPcuWhkJddXt+nmE+VUgeTAhv/cLuDRwZRjHoV7sgz27JN
         6RoMXFPgMvRWQmibwbn6NBEAHV+mDjRzTyLxtuDEY6CLZdmbdZ7bhZHp9+ERDnf1jhxy
         SLW8dmuIgACPX2thC/O/9N0YrD2x2brjuSNF+eeeVhV9zNoMo5P9tZudPVLdM95PenKG
         UQeQ==
X-Gm-Message-State: AOAM532gVsSD4mVlJ8z5jDzVzCWmxhGK/cdfhtk7M5RdMmBaa037g8LL
        eOSERsjOUKoeK6gSFub0VWdOrg==
X-Google-Smtp-Source: ABdhPJxY+PqgjEuxgzNVYn8xSZxNDSHFLznx5K4VhYMjyn5azFTvIlaKaWndwcEiHada9QIkuvxMkg==
X-Received: by 2002:a17:906:66c8:b0:6e8:8b06:1b32 with SMTP id k8-20020a17090666c800b006e88b061b32mr13044739ejp.236.1650368603530;
        Tue, 19 Apr 2022 04:43:23 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m1-20020a170906234100b006ef83025804sm3363851eja.87.2022.04.19.04.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 04:43:23 -0700 (PDT)
Message-ID: <24618256-2814-7b54-3705-58c093ca2727@linaro.org>
Date:   Tue, 19 Apr 2022 13:43:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v8 03/13] arm64: dts: freescale: Add the imx8dxl
 connectivity subsys dtsi
Content-Language: en-US
To:     Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Jacky Bai <ping.bai@nxp.com>
References: <20220419113516.1827863-1-abel.vesa@nxp.com>
 <20220419113516.1827863-4-abel.vesa@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220419113516.1827863-4-abel.vesa@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 13:35, Abel Vesa wrote:

(...)

> +
> +	usbmisc2: usbmisc@5b0e0200 {

Generic node names, so maybe "usb"?

> +		#index-cells = <1>;
> +		compatible = "fsl,imx8dxl-usbmisc", "fsl,imx7ulp-usbmisc";
> +		reg = <0x5b0e0200 0x200>;
> +	};
> +
> +	usbphy2: usbphy@5b110000 {

Generic node names, so "phy".

> +		compatible = "fsl,imx8dxl-usbphy", "fsl,imx7ulp-usbphy";
> +		reg = <0x5b110000 0x1000>;
> +		clocks = <&usb2_2_lpcg IMX_LPCG_CLK_7>;
> +		status = "disabled";
> +	};
> +


Best regards,
Krzysztof
