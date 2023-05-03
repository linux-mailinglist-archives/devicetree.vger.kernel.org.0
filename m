Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 664816F554B
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 11:51:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbjECJvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 05:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbjECJu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 05:50:58 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1C86180
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 02:50:08 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3062d764455so2347819f8f.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 02:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683107407; x=1685699407;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/T+FXX7sVWVqbhY2VKXDOoaJBNQLW/1sdFoVyLs397Y=;
        b=Y78Q/Ld9skWxCIPXweKuqGDku1tQ2YEJrVr5a6ClwMJNdu+TeE80DWnXnrp6AGiOn3
         zQySQTf8fJAAaWzuy+K9N7fHMR6vL/R7kiWim4wL9doI4jUuoN49pB2YKXNZUDpN0cDo
         u+LfvtOcRAFQkLfq+zkzQdTxnByhzOBm23StgSOK32eI7pUeZbnjI3+C13rBt5VQgpYt
         33sPoByohMcXs12emZ4UwZj6PI8zJg0+5oHIbBBmcOjracpM0CFqCdHTlt86LqSwfISw
         ynLaIm/F9yHV3vnE+HXN0DvxV3NAOz5hIdn1mdzlgrc9/DOGE/L/SocDoK5seLrxFGzR
         h1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683107407; x=1685699407;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/T+FXX7sVWVqbhY2VKXDOoaJBNQLW/1sdFoVyLs397Y=;
        b=T+tbyhRjlOt+zrwb+XQc4j/TbQz2ZbpFa0CgsGht1nG52KnpGbXBiW4IuRrofHQum1
         SwfikYKd2fTfk1xSz/VkXkXoT3PAPPFq5mntrZaclGdBN/U9sIzxfDjgKl9pbbv1K/mD
         zZ8TNKDRYp4zhgHmA+THPTHxIm8B+2Tv+dRkfQvnWEkJlYJ/xc5VADOI0pEcN5WnIAqk
         AKFgg18x2Pc0mKG0EL569ADfpWeISodA7voE5AZ8K/ip0DGmae1bEQqIEMTKqj8qQeCY
         aRJfzsibJ1tPzM64d1eX6u1QvMxqsldGQ0DxVYSIlgJwj0+8B94P/wRtCi+sZ3pjJQsW
         hhfA==
X-Gm-Message-State: AC+VfDytD0fHNDp0S57gbT2NnMWPzzFmQEmLWONkebdx88fx+GM7+c8k
        Mcb3KSgk7Bo2NbevNiWhbqPTSA==
X-Google-Smtp-Source: ACHHUZ49An6C/aQRyKygHUY7sJqA231CLElBBL5mvACYZXdUhxIGOwEFlmV/zy906FvjRGXfyKbhTg==
X-Received: by 2002:adf:db44:0:b0:2fa:9036:9cf with SMTP id f4-20020adfdb44000000b002fa903609cfmr13176064wrj.37.1683107406770;
        Wed, 03 May 2023 02:50:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:68:e58d:3e87:f8c2? ([2a01:e0a:982:cbb0:68:e58d:3e87:f8c2])
        by smtp.gmail.com with ESMTPSA id p6-20020adfcc86000000b0030644bdefd8sm871903wrj.52.2023.05.03.02.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 02:50:06 -0700 (PDT)
Message-ID: <579b44ba-3703-a63a-6e79-7da335c1f990@linaro.org>
Date:   Wed, 3 May 2023 11:50:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2023 05:40, Bjorn Andersson wrote:
> This adds support for USB and DisplayPort orientation switching to the
> QMP combo PHY, as well as updating the sc8280xp devices to include the
> QMP in the SuperSpeed graph.
> 
> Bjorn Andersson (7):
>    dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
>      orientation-switch
>    phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
>    phy: qcom-qmp-combo: Introduce orientation variable
>    phy: qcom-qmp-combo: Introduce orientation switching
>    phy: qcom-qmp-combo: Introduce drm_bridge
>    arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
>    arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
> 
>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  51 ++++
>   arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  28 ++-
>   .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  28 ++-
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  34 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 227 ++++++++++++++----
>   5 files changed, 309 insertions(+), 59 deletions(-)
> 

I succesfully tested this on the SM8450 HDK, and the following works:
- USB-C to HDMI, both directions
- USB-C to DP cable to DP display, both directions
- USB-C to USB SuperSpeed, both directions
- USB-C to USB-C, both directions, enables SuperSpeed Plus Gen 2x1

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450

Thanks,
Neil
