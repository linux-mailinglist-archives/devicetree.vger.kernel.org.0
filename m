Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01FF55A1A5F
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 22:34:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243740AbiHYUef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 16:34:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbiHYUee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 16:34:34 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C3FAB42A
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 13:34:33 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id t5so27557879edc.11
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 13:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=pbuPo61PMoulJD1GjgsDW4sAy2pk3lp3bXYQGmITxsI=;
        b=gP6DoEAnTFh4MG1HSkJ179jRch0h1N3BA0OPESlsixBJuS79VnR8k9suMYvTnymLJ3
         06WHBAt9kJndnHgGZe1ojpa/6nXspPUZkuQjND9sHUCJENt4DiYvS3dD/qKZrt+qFiPD
         luXXCeG7lSQ1r3V5zcJuR8ZabufsNhUzlbfoBmfJIHDc9rlaZX5LjpI2dyi7Ev2NENwV
         F3mC5jCoUIXAO7aJfqvBiY7jZd5dBhpJyhsB5xmcnyWjmlGKnBNNOJuB3zVK2Dh2kpIQ
         8TZuQuokjUKdrSkoSc4Ng3jbEYsiPhl4w64l93GkbbKT7w2BSnL7EyLk5N4Gmg62yVjC
         QVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=pbuPo61PMoulJD1GjgsDW4sAy2pk3lp3bXYQGmITxsI=;
        b=elLdbHUb73BIzkOesYJobgQKfq1hw8U+IoyXsc3IS+gFrNE9MYfgXvY9crVIl6nx0d
         oMOAdEnBJy5fTRSZ/1lEZrQI+nsYa5e0xTlM9GcmB7XOXAalMVNL205JGZDNSk4uLxUd
         /MAhvkmmfV7gIMSqfjNegnTcD9p11RNV4sh4aky/fAogveSfI/2FLlPQCZUSfGZ/Qa31
         Oxu8jyq0AtGo/D/LDaT3JWnUshiydjir/+xfaap17WzpMagU13cQSlXDrzN9dGj4RT2E
         jGTXSi8dPCvtMzFDYYuBvpsiylANQ7mS8iMUsJBFCKyQBo9MNR6y148DaUpqfNOPYWOz
         1GRg==
X-Gm-Message-State: ACgBeo3/bhdBvBLamAgLDP39Ze2IHg2oQNvFJEMmZ2EYl0PkP5hf4g57
        iSVFg2Hu7tans/FtrrRqE2TcGyMFllh45b3c
X-Google-Smtp-Source: AA6agR6SBnVc9945sjVic06fqPItwL1by+WKEUXSU744GzT9RnFOsmZs+wz3zoKcPtMJZDiYbK0lzg==
X-Received: by 2002:a05:6402:51d1:b0:447:103b:7a70 with SMTP id r17-20020a05640251d100b00447103b7a70mr4603045edd.365.1661459672098;
        Thu, 25 Aug 2022 13:34:32 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id d26-20020a170906305a00b007308812ce89sm52593ejd.168.2022.08.25.13.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 13:34:31 -0700 (PDT)
Date:   Thu, 25 Aug 2022 23:34:29 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     abelvesa@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] clk: imx: imx8mp: add shared clk gate for usb
 suspend clk
Message-ID: <Ywfc1Vcv6SQZrh59@linaro.org>
References: <1661328262-3867-1-git-send-email-jun.li@nxp.com>
 <1661328262-3867-2-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1661328262-3867-2-git-send-email-jun.li@nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-08-24 16:04:22, Li Jun wrote:
> 32K usb suspend clock gate is shared with usb_root_clk.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> index e89db568f5a8..5b66514bdd0c 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -17,6 +17,7 @@
>  
>  static u32 share_count_nand;
>  static u32 share_count_media;
> +static u32 share_count_usb;
>  
>  static const char * const pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };
>  static const char * const audio_pll1_bypass_sels[] = {"audio_pll1", "audio_pll1_ref_sel", };
> @@ -673,7 +674,8 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_CLK_UART2_ROOT] = imx_clk_hw_gate4("uart2_root_clk", "uart2", ccm_base + 0x44a0, 0);
>  	hws[IMX8MP_CLK_UART3_ROOT] = imx_clk_hw_gate4("uart3_root_clk", "uart3", ccm_base + 0x44b0, 0);
>  	hws[IMX8MP_CLK_UART4_ROOT] = imx_clk_hw_gate4("uart4_root_clk", "uart4", ccm_base + 0x44c0, 0);
> -	hws[IMX8MP_CLK_USB_ROOT] = imx_clk_hw_gate4("usb_root_clk", "hsio_axi", ccm_base + 0x44d0, 0);
> +	hws[IMX8MP_CLK_USB_ROOT] = imx_clk_hw_gate2_shared2("usb_root_clk", "hsio_axi", ccm_base + 0x44d0, 0, &share_count_usb);
> +	hws[IMX8MP_CLK_USB_SUSP] = imx_clk_hw_gate2_shared2("usb_suspend_clk", "osc_32k", ccm_base + 0x44d0, 0, &share_count_usb);
>  	hws[IMX8MP_CLK_USB_PHY_ROOT] = imx_clk_hw_gate4("usb_phy_root_clk", "usb_phy_ref", ccm_base + 0x44f0, 0);
>  	hws[IMX8MP_CLK_USDHC1_ROOT] = imx_clk_hw_gate4("usdhc1_root_clk", "usdhc1", ccm_base + 0x4510, 0);
>  	hws[IMX8MP_CLK_USDHC2_ROOT] = imx_clk_hw_gate4("usdhc2_root_clk", "usdhc2", ccm_base + 0x4520, 0);
> -- 
> 2.34.1
> 
