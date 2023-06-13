Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82BC972E8EA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 19:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232792AbjFMRAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 13:00:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbjFMRAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 13:00:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DAA01BC6
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 09:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686675590;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=j04GnjVnV6VhU15tbBAUt5ncRnXCPvNX2dvFYsA/gBk=;
        b=iHw6EAIePH85NMkgoWE0GEqFT7RjDlWvkKcgh0VkANARIlCsC/L06u542yBsECCVHHKrQ1
        d56rSxi3Pv8HLM27+BnwFvs1lT66NBQxlYp+Gnk78lcR0tp82vltrCeyAh54Lh2BQHbr+T
        85hD0/7E1JfvVe3B7dBqOUcyXw6vm/8=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-e4gwT5bYNsqHRnIXP65I8w-1; Tue, 13 Jun 2023 12:59:48 -0400
X-MC-Unique: e4gwT5bYNsqHRnIXP65I8w-1
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-56ff81be091so5272057b3.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 09:59:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686675587; x=1689267587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j04GnjVnV6VhU15tbBAUt5ncRnXCPvNX2dvFYsA/gBk=;
        b=eujmx5r46attQT9QmNwkLJ/aWxyWr8aIU3VdlPOMXAzv1iAhtFaFG2HpHZKVLvqWP0
         UrcK/9slfNB08NdCuzTREoFxe/LoBnZPMbGtcnrqyss2TfS534Y2e5QKprg+Qv61V3Vq
         GgRyPkqJUYjoWFhzLg0sSFfV2Kh0E1LdRUArzOqqGmNWEO7gp8POfVsFJn+16UOoqI4R
         FGShQ7W67QE0WGM4mXbj1bayLrv3fYPIUWj1iF3EXiR52qoVhbucpgyJH9Fw3u2ftXaX
         zRSTogKnz7bNnyhqu1Tp7xqvJhvdU8pWH0p6OYWX/h6RlCIYfmUBRa7Zk+5Vl5Bk/E3e
         McXw==
X-Gm-Message-State: AC+VfDwfmeW4OV5C9Y2DANWHhbfRg5ZQfmBFUIkRVKPXP0uip5jeTFv8
        OAf3tZIEsxSfNipVH80mhuE7Igpvx6K827mik2MX+J7X9CP+ELG0yyDXNf0axrkdeGiLUmVZH4O
        HGkmFxqLx2gwnfHeYhD8q0w==
X-Received: by 2002:a81:738b:0:b0:565:e48d:32cf with SMTP id o133-20020a81738b000000b00565e48d32cfmr2533632ywc.7.1686675587351;
        Tue, 13 Jun 2023 09:59:47 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7O9u46bkmq9uCzDtwjiCxY77/JvONfFU/2txtnkFyT64oc8V6fa+eQ8cwyObh374VppqoV4w==
X-Received: by 2002:a81:738b:0:b0:565:e48d:32cf with SMTP id o133-20020a81738b000000b00565e48d32cfmr2533610ywc.7.1686675587072;
        Tue, 13 Jun 2023 09:59:47 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id s7-20020a0de907000000b005688f7596ccsm1699074ywe.78.2023.06.13.09.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 09:59:46 -0700 (PDT)
Date:   Tue, 13 Jun 2023 11:59:43 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 16/26] net: stmmac: dwmac-qcom-ethqos: prepare the driver
 for more PHY modes
Message-ID: <20230613165943.zjr4b4p44jhl2dtx@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-17-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612092355.87937-17-brgl@bgdev.pl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 12, 2023 at 11:23:45AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> In preparation for supporting SGMII, let's make the code a bit more
> generic. Add a new callback for MAC configuration so that we can assign
> a different variant of it in the future.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 31 ++++++++++++++++---
>  1 file changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 21f329d2f7eb..2f96f2c11278 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -92,12 +92,14 @@ struct ethqos_emac_driver_data {
>  struct qcom_ethqos {
>  	struct platform_device *pdev;
>  	void __iomem *rgmii_base;
> +	int (*configure_func)(struct qcom_ethqos *ethqos);
>  
>  	unsigned int rgmii_clk_rate;
>  	struct clk *rgmii_clk;
>  	struct clk *phyaux_clk;
>  	struct phy *serdes_phy;
>  	unsigned int speed;
> +	int phy_mode;
>  
>  	const struct ethqos_emac_por *por;
>  	unsigned int num_por;
> @@ -332,13 +334,11 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
>  {
>  	struct device *dev = &ethqos->pdev->dev;
>  	int phase_shift;
> -	int phy_mode;
>  	int loopback;
>  
>  	/* Determine if the PHY adds a 2 ns TX delay or the MAC handles it */
> -	phy_mode = device_get_phy_mode(dev);
> -	if (phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
> -	    phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
> +	if (ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
> +	    ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
>  		phase_shift = 0;
>  	else
>  		phase_shift = RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN;
> @@ -485,7 +485,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
>  	return 0;
>  }
>  
> -static int ethqos_configure(struct qcom_ethqos *ethqos)
> +static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos)
>  {
>  	struct device *dev = &ethqos->pdev->dev;
>  	volatile unsigned int dll_lock;
> @@ -561,6 +561,11 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
>  	return 0;
>  }
>  
> +static int ethqos_configure(struct qcom_ethqos *ethqos)
> +{
> +	return ethqos->configure_func(ethqos);
> +}
> +
>  static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
>  {
>  	struct qcom_ethqos *ethqos = priv;
> @@ -660,6 +665,22 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  		goto out_config_dt;
>  	}
>  
> +	ethqos->phy_mode = device_get_phy_mode(dev);
> +	switch (ethqos->phy_mode) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +	case PHY_INTERFACE_MODE_RGMII_TXID:
> +		ethqos->configure_func = ethqos_configure_rgmii;
> +		break;
> +	case -ENODEV:
> +		ret = -ENODEV;
> +		goto out_config_dt;
> +	default:
> +		ret = -EINVAL;
> +		goto out_config_dt;
> +	}
> +
>  	ethqos->pdev = pdev;
>  	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
>  	if (IS_ERR(ethqos->rgmii_base)) {
> -- 
> 2.39.2
> 

