Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33686632232
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:34:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbiKUMe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:34:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbiKUMeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:34:02 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 033C762F0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:33:48 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id i64-20020a1c3b43000000b003d016c21100so3049534wma.3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZvYOJ7mjGZt2sFpHqF+LZA5k69lV+Vn24RY4TlLt1N4=;
        b=SCz7aRwoP9trV3qSF8SVLaZgUfTKYE2NARsIggbXxNvrhR9dHOcL/yo8gAimbe//Yw
         C5SOkZks30dbzjrJzHHSFE07QW0FaVrFaiU676w53C/FRDJ8YFN4Pk5YdyopBpWB/4G2
         X6dZS58cacMsVQWUr9uYcFeLxYy8mCx2u88Lrux1NcaExEPqgTQO2Qeluvl+OszhZXdw
         Db0VLwCEruzSNj8ndz+guqCWvc/0CyHXuV/zYpl26JayChz7bKNz3Jw5uwx2GdhWPywB
         jpB47N5X79l34W7B8zPlmStAVIC86HhH5BAaZZZPH1EHlLyp/zH3iIdZhan3Lb4NoSFg
         TfpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZvYOJ7mjGZt2sFpHqF+LZA5k69lV+Vn24RY4TlLt1N4=;
        b=zyQWU0gsiE3OwBhCHg1X2FS+Y/J6UWfvIA96VjJttBuUnN/sCBd6RHD5+vCl/u3v18
         kZ2Js0ep0DgrovY45A8gsSvX+Vgl+tGD1pxKtXCO9+NgtKfB+Qlbail2N21BSI1m7+ND
         Zbpan4B0Klr3/LAaNHBcFM7+cfVStak1Y4V9t77FpxryS/pvWbl5/gqHCM9gKyHhsAKf
         2lUdrRYm86Ryfawb+bfnZB6WSC4lJB7xrLhco7uZzcOMugZT7leIh0p5akHyHaSThnnY
         5y6c9VZbRQinm2RetOCpoSXTV2K/dJmgE2jEOuxDtzUzKfczWU5xepPxfR2WPgPEbMq7
         2gUA==
X-Gm-Message-State: ANoB5pmySYKDDjj69px5COO8+z722nEKDLkezPF8hiFOo1Np/Z8uCJGs
        8YfzVUskER8Ya6yEKWraJyk=
X-Google-Smtp-Source: AA0mqf6FNGvoMt+llsc388PlfovbuF1W+XnNVzY03ZWRBukvUhJ9UgdZfu7k50CwD+43rBE7Gz7H3A==
X-Received: by 2002:a05:600c:3acd:b0:3cf:550e:d7a2 with SMTP id d13-20020a05600c3acd00b003cf550ed7a2mr4931505wms.97.1669034026550;
        Mon, 21 Nov 2022 04:33:46 -0800 (PST)
Received: from [192.168.1.131] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d6291000000b0022e66749437sm11196458wru.93.2022.11.21.04.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:33:45 -0800 (PST)
Message-ID: <e0a35381-0ef3-c134-e1ef-b073a28458c9@gmail.com>
Date:   Mon, 21 Nov 2022 13:33:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/9] pinctrl: mediatek: common: Remove check for
 pins-are-numbered
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-2-bero@baylibre.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20221121015451.2471196-2-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
> Remove the check for the unnecessary pins-are-numbered Devicetree property.
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   drivers/pinctrl/mediatek/pinctrl-mtk-common.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
> index 076ae0b38e3d7..553d16703475b 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
> @@ -1057,7 +1057,6 @@ int mtk_pctrl_init(struct platform_device *pdev,
>   	struct pinctrl_pin_desc *pins;
>   	struct mtk_pinctrl *pctl;
>   	struct device_node *np = pdev->dev.of_node, *node;
> -	struct property *prop;
>   	int ret, i;
>   
>   	pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
> @@ -1066,11 +1065,6 @@ int mtk_pctrl_init(struct platform_device *pdev,
>   
>   	platform_set_drvdata(pdev, pctl);
>   
> -	prop = of_find_property(np, "pins-are-numbered", NULL);
> -	if (!prop)
> -		return dev_err_probe(dev, -EINVAL,
> -				     "only support pins-are-numbered format\n");
> -
>   	node = of_parse_phandle(np, "mediatek,pctl-regmap", 0);
>   	if (node) {
>   		pctl->regmap1 = syscon_node_to_regmap(node);
