Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 590526DC00E
	for <lists+devicetree@lfdr.de>; Sun,  9 Apr 2023 15:35:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjDINfs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Apr 2023 09:35:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjDINfr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Apr 2023 09:35:47 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C521430E1
        for <devicetree@vger.kernel.org>; Sun,  9 Apr 2023 06:35:45 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id jg21so6621919ejc.2
        for <devicetree@vger.kernel.org>; Sun, 09 Apr 2023 06:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681047344; x=1683639344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3NJKsRQzNBlZuL1M8nVQK5ol5jLSukHs5F/fR96sqvQ=;
        b=AAYKViaOZvZZacFvTYVxPTbwhinSzpllONlJrKZXVDwIFPLM7/97DmXhTOwl+H6KsA
         ULPC3zH8s2tgjqWyD/lqbJKpOsGe9RbUDSaYxAl/7HhAFNHJWQYCqSEdu2/V/snwOUVt
         7XsfN1YhM5pLvFXpUr7vTZLjw/P4lPIrd7fR7ua+tuhUZsrcnTVxwbmQmdnoKuXb5vqh
         5H/4/EALKRJEUGsE8CDQGwB6PbTwp74IGgifds7APVofphJemzXb8ajNuwgYH5qT/Bns
         PiIJx0IW38Nms6ChHeOvtUU5aB03Wi7sRm5f4fUaAOrSp8M8Fl/xdAob/6WRVrzRg517
         tBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681047344; x=1683639344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3NJKsRQzNBlZuL1M8nVQK5ol5jLSukHs5F/fR96sqvQ=;
        b=KPqsp2IQ3+gDJkPNJ7qW9/B+9K4oCKCwziDWuQQkbMPFkzw/UgB1B0NM1/1sPYhka0
         RnXecjdn/4P3t3pALSne0/X9+v0DCRl2HhMWJya2U3/Wts/SHIyokznjuniSUqehhrei
         37ioZaVz7ea9aKYnwIPmErgoW04cMByKoICGgrutGccQ4PB3Lye3yHYbMLp3cVADik6U
         3l+ikzIk87w0NrxFwlg6CTR0EFl0UJIF74Ygk2ouWnpMQWK3aTxFT6xBOLP+pzTSSRyn
         73dAWn5teoyQzhYvSYX6kuFVYBZD2GdWyy5iLqK014+UZgiJISBW3ipPCOz7zS+U8eRx
         KJnQ==
X-Gm-Message-State: AAQBX9cQaCg/r/38AU/zU4OQ8VBNYI00QhhZQhMgCMHt+8xEyrMdsous
        F2UJfD7W2FDmnybvsE8PTIOfzA==
X-Google-Smtp-Source: AKy350ZAquMiDTBhd5ATdvcWc09wBHVQm6q1PMq0X5o1+c7GCtiS0AH70VSjp+v8mNRiCCKQI6Ciow==
X-Received: by 2002:a17:907:76fa:b0:93d:770:25df with SMTP id kg26-20020a17090776fa00b0093d077025dfmr4775288ejc.37.1681047344291;
        Sun, 09 Apr 2023 06:35:44 -0700 (PDT)
Received: from linaro.org ([188.25.26.161])
        by smtp.gmail.com with ESMTPSA id gx2-20020a1709068a4200b00930d22474dbsm4164220ejc.97.2023.04.09.06.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 06:35:43 -0700 (PDT)
Date:   Sun, 9 Apr 2023 16:35:42 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     abelvesa@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-imx@nxp.com,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Haibo Chen <haibo.chen@nxp.com>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 4/4] clk: imx: imx8mp: change the 'nand_usdhc_bus'
 clock to non-critical
Message-ID: <ZDK/Lr7GIshahX8T@linaro.org>
References: <20230403094633.3366446-1-peng.fan@oss.nxp.com>
 <20230403094633.3366446-4-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230403094633.3366446-4-peng.fan@oss.nxp.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-04-03 17:46:33, Peng Fan (OSS) wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> The 'nand_usdhc_bus' clock is only need to be enabled when usdhc
> or nand module is active, so change it to non-critical clock type.
> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
> 
> V3: None
> V2: None
> 
>  drivers/clk/imx/clk-imx8mp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> index 8dcaeb213277..f26ae8de4cc6 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -538,7 +538,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
>  
>  	hws[IMX8MP_CLK_MAIN_AXI] = imx8m_clk_hw_composite_bus_critical("main_axi", imx8mp_main_axi_sels, ccm_base + 0x8800);
>  	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
> -	hws[IMX8MP_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_bus_critical("nand_usdhc_bus", imx8mp_nand_usdhc_sels, ccm_base + 0x8900);
> +	hws[IMX8MP_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite("nand_usdhc_bus", imx8mp_nand_usdhc_sels, ccm_base + 0x8900);
>  	hws[IMX8MP_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mp_vpu_bus_sels, ccm_base + 0x8980);
>  	hws[IMX8MP_CLK_MEDIA_AXI] = imx8m_clk_hw_composite_bus("media_axi", imx8mp_media_axi_sels, ccm_base + 0x8a00);
>  	hws[IMX8MP_CLK_MEDIA_APB] = imx8m_clk_hw_composite_bus("media_apb", imx8mp_media_apb_sels, ccm_base + 0x8a80);
> -- 
> 2.37.1
> 
