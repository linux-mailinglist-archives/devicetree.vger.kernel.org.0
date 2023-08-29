Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBD9678CA07
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 18:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236169AbjH2Q6J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 12:58:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237570AbjH2Q5s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 12:57:48 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B17F7110
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 09:57:45 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so3775166b.0
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 09:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328264; x=1693933064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USnPVHhTaTEKWMY0RI8COMBvSuzKiyupj+WtOVSWwH4=;
        b=xozLu+XoMpQa847wsceNnGCC1gkwG5tw7MBvIwruVFu/QZSvY+5g+kc2yhMRoB+/2e
         B+WFV4aLla/wkqO9AOaF2R+Vhe3bElNVsYtoQ3CVI0rkZyokNeC5G18eI4rUBFPdsIG1
         8dzh85iyJLtYJF2LPTqlxITjCLvFM9SF0VsOAmF1S9CVMUdfnReg+F+1hDZPIlphv8T+
         dsFmGu0xhlN2U8kE6uwTeJaqhBa2OVL6pPrBwjDTlrV6oOS6d18GrNslNS9UKEsWN13/
         lf/O0s3aDmNgKBuQND/+7zjJ6PmBnrVUq/ZKj02F4TXOGyenZuvLHZZgqXwfC3NV3bk6
         Vl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328264; x=1693933064;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=USnPVHhTaTEKWMY0RI8COMBvSuzKiyupj+WtOVSWwH4=;
        b=cpmZEsWDhNAn7eDHTD3vo3N2l4H6ieaJwvgkwn64sphyTGEgmy6goA4UzBcXENfIiF
         qYvCDzLO+657rwkmK5TFsNYDNsMC7Bo8wBRRuSGBmFN1zITJsB5T/ZPmq/Fs9i8jPvVv
         /atSNxub9uqeQB1hlHmf+NU2wG0F8iRKY5l0tvyXVuQfiUhfbICRdf4u75Sy1ZJegGwu
         nUn4G3XBgz1B1Jo6L8Oa0FEJlxkbs5M4pOoZdCRVHiu+BmsP16md0F/5asL3MpfyGWLa
         XoMUbGJM9FSj/S/FOCB032Cn+k9bsd8melfWDnq6awvOxSBuo47ZzzOZYDIwGl2hBNtV
         mmIw==
X-Gm-Message-State: AOJu0Yz9y1LARBPadfKtzdhwjBbait0AK9nuV6SVGaugjKZ2d2ecMhrI
        uPcn+Yu0okulhto5p18VZwS+2A==
X-Google-Smtp-Source: AGHT+IFUDlTg4lh2YVHAkkvvKYFu8vTL7QE7o7/B5+sdtauSDrekKlQkM8y9WlfNHo9QkAYi/Ti4TQ==
X-Received: by 2002:a17:907:3e0d:b0:9a1:fed1:9b42 with SMTP id hp13-20020a1709073e0d00b009a1fed19b42mr4249879ejc.23.1693328264045;
        Tue, 29 Aug 2023 09:57:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id v9-20020a170906488900b0099cc36c4681sm6146020ejq.157.2023.08.29.09.57.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 09:57:43 -0700 (PDT)
Message-ID: <97741bfd-70a3-f2ef-fd10-c1aadecd059b@linaro.org>
Date:   Tue, 29 Aug 2023 18:57:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/9] phy: qcom: uniphy: Update UNIPHY driver to be a
 common driver
Content-Language: en-US
To:     Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
        luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, gregkh@linuxfoundation.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com,
        rafal@milecki.pl, peng.fan@nxp.com, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-4-quic_ipkumar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-4-quic_ipkumar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2023 15:58, Praveenkumar I wrote:
> This patch updates the UNIPHY driver to be a common driver to

Please do not use "This commit/patch", but imperative mood. See longer
explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> accommodate all UNIPHY / Combo PHY. This driver can be used for
> both USB and PCIe UNIPHY. Using phy-mul-sel from DTS MUX selection
> for USB / PCIe can be acheived.

This patch is entirely unreadable. You speak "unify" but change much
more. There is no code removal, so what are you unifying?

...

> -	phy->phy = devm_phy_create(dev, NULL, of_device_get_match_data(dev));
> -	if (IS_ERR(phy->phy)) {
> -		dev_err(dev, "failed to create PHY\n");
> -		return PTR_ERR(phy->phy);
> +	uniphy->phy = devm_phy_create(dev, NULL, &uniphy_phy_ops);

NAK, really, this does not make sense, is not explained and not needed.
If needed, then it would deserve its own patch with own justification.

> +	if (IS_ERR(uniphy->phy)) {
> +		ret = PTR_ERR(uniphy->phy);
> +		dev_err_probe(dev, ret, "failed to create PHY\n");

That's not even the syntax. By "unifying" you introduce different, wrong
code.

> +		goto err;
>  	}
> -	phy_set_drvdata(phy->phy, phy);
> +
> +	phy_set_drvdata(uniphy->phy, uniphy);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  
> -	return PTR_ERR_OR_ZERO(phy_provider);
> +	ret = PTR_ERR_OR_ZERO(phy_provider);
> +
> +err:
> +	if (uniphy->cfg->pipe_clk_rate)
> +		of_node_put(np);
> +	return ret;
>  }
>  
> -static struct platform_driver ipq4019_usb_phy_driver = {
> -	.probe	= ipq4019_usb_phy_probe,
> +static const struct of_device_id qcom_uniphy_of_match[] = {
> +	{ .compatible = "qcom,usb-hs-ipq4019-phy", .data = &ipq4019_usb_hsphy_cfg},
> +	{ .compatible = "qcom,usb-ss-ipq4019-phy", .data = &ipq4019_usb_ssphy_cfg},
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, qcom_uniphy_of_match);

What happens here?

Best regards,
Krzysztof

