Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67AC0574918
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238379AbiGNJcT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:32:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbiGNJb4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:31:56 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F69E1A068
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:31:55 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t25so1836327lfg.7
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PMZaNjQtAbx8J0mKRSpXwktuMPwXaREJXWQ/VLykmlA=;
        b=CV/iF5PngbOmaQbK3ZOIIcJ9SkDO4TLcvHWghMhvpmE5BTDLqPUTFdvd0hSXgVQ174
         WV47TTX/ZyVZ8aP1Hmx+EUVcDNTW5QVHrOsh8CU+7tZ0Hhm9jc1Vbw6/+py2Tqsdz5f5
         AK/ChQhXHfqBx5I6jO3qkMqAvOY1uaMH92HWBnajolSa4s24wa8KnV1QYZ4aqvGkLS+n
         ZH0ZkcVOzgDNBUMtHwGdRiai9nC4NZ9c54hWxZDofGgx97xREC/MYbpwtTxmcDx9Fr4h
         j7ry1oGVBkEeMedlHOfb6ugnqwjr+DgglfIMi0/JHz5X5biUsDMhreLIUrraAUF/nMoE
         PI5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PMZaNjQtAbx8J0mKRSpXwktuMPwXaREJXWQ/VLykmlA=;
        b=AMm/0+JPTWlPqn1jCphL0xBaWtXrJDnVWxRe0VDeW3dYwargc/KcswIH1yXCJD/qpp
         1PEqGd3rCpXZC0aXqVzH1+9qrglFXhgmW3Na0o4zA9kHe9wZ7In4LKjegoYRUx1UX8Cr
         LDC7KTYGFp1SWLFS1zud4wdbjpbFUqQqWVh4iUIqoz0siqgXP5Li2QhGJmGDj3Z8XLK6
         nvdCc0+0bQd0RSqcj0/fYk8ejsDoaR490lAj1ue3UMqekKz6qsT2b9g4H4X/XczTrp0W
         38K/smk8r8Vx/i6N49aJtSjIsHqDvbc8VmphGYM3qBcT4RKepZWsGyKXms+IMp5JEehC
         rISQ==
X-Gm-Message-State: AJIora9yRlU5cssZ3ibU/cadg7ZdK1C1e2WddlNbm59CQplgPZ/CNNWb
        9FOdkB3Gh4yRC9+TPFz8Qh2Q/A==
X-Google-Smtp-Source: AGRyM1sj75WrIm4R5Qs3nZKUQGBZwT2cTSTGxK9L3cPa36VVhOBtfYdLvyXmgesp8yOvZ0gQtlHQoQ==
X-Received: by 2002:ac2:42c5:0:b0:489:ce27:a777 with SMTP id n5-20020ac242c5000000b00489ce27a777mr4692866lfl.596.1657791113767;
        Thu, 14 Jul 2022 02:31:53 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y12-20020a05651c106c00b0025d53e34fe7sm187744ljm.56.2022.07.14.02.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:31:53 -0700 (PDT)
Message-ID: <40a60647-01f2-1e3f-88aa-8625903e1081@linaro.org>
Date:   Thu, 14 Jul 2022 11:31:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane
 suffix
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-30-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-30-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The lane reset is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the reset name.
> 
> Update driver to support the new binding where the "lane" reset name has
> been deprecated by instead requesting the reset by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index af2f14a53b38..1734fb01955a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -909,9 +909,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
>  				     "failed to get lane%d pipe clock\n", id);
>  	}
>  
> -	/* Get lane reset, if any */
> -	snprintf(prop_name, sizeof(prop_name), "lane%d", id);
> -	qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);


I guess prop_name variable should be removed here.


Best regards,
Krzysztof
