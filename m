Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E25A56D144A
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 02:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbjCaApp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 20:45:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjCaApo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 20:45:44 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D6238A51
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 17:45:43 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id h11so19907646lfu.8
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 17:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680223541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a0ekeCLYrJHaH0eOZ6ABDXIKBRuC9fUU24+kzxH6Abc=;
        b=vx28UGtXwUQ5/cgba8zgF5g5D6HljfI7V4Sgy5DnQj0bwb/OCdpjCC86UdYsHpDD28
         BLmMvQ2PxybnVfmAjpWW8jSnD1F37wlTUW17kg9WQvFBpf0HlTP8jwLzLM5QBMaSR69A
         UfDnUQ1ShVj98xq/gx3HpVg7OX4Cnz8OYY1P1Ogr50Ei0TtheUxAQXpcLssvIgI/1la7
         ywIqyR5XNBdbRBOlND8vCPP4WkI03EVA+aX3H31XUYL3Dfy3F2qhEk+ywoY5UwYvZEZN
         YC2wYanmx78tucVqDlJurl3/70TR/wm6m6DZfAmcHNknPprJ4w+PKj12Wk/Pj2mbFd+H
         sfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680223541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a0ekeCLYrJHaH0eOZ6ABDXIKBRuC9fUU24+kzxH6Abc=;
        b=viG7bxkfgEFDjuNRtyHJh7NvyBN3Wp6uMf7TLXp6cBo7Rj2v2+NNHvxi1KRxaCuN9S
         dXh6TQ9dmyKAlvHRK5svdnC18YzYoo7rvaHv/aRLrofesCqh7RlO9Vh5dDU1L3YHuQYL
         4bgpYxIjwtrFwFFYe9bE7lngCgj4+p0Gd2A2Q5HwVWj8CL5A8kbmYARpD66CCREP5OBl
         1ylQ8I6+KRigJIpoBgfwTUI5IC97VyeonkTLuC1fExN82VwDTkWluIAJ7czG0C+ZBk1q
         E7ZyhhoJqwvoMvNdnxzFCyBp37rE77/30erZf588czkbLpQ/02XBcDUr0ll1TPXejsa/
         tRMg==
X-Gm-Message-State: AAQBX9c0ICnFvM7U0Q78WF0hvDiUEJ9xd3h8N9NZtMPyFizDqqEuzxMy
        MvwSs5Sdban0N4+4NCCTpIEW2xKDNUshbK2EyHw=
X-Google-Smtp-Source: AKy350ZbyCPSJZEGtEwc9efGcx14InPl0dlYltuaETKw85XpNh2dXPzk3qSIAsecEWtw/lvF/TS64A==
X-Received: by 2002:ac2:44ba:0:b0:4db:4fe8:fd0f with SMTP id c26-20020ac244ba000000b004db4fe8fd0fmr6085324lfm.25.1680223541434;
        Thu, 30 Mar 2023 17:45:41 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id x5-20020a19f605000000b004d5a720e689sm149205lfe.126.2023.03.30.17.45.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 17:45:40 -0700 (PDT)
Message-ID: <77c29705-f836-3d34-1ae4-aaa93106c936@linaro.org>
Date:   Fri, 31 Mar 2023 03:45:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sm8150: Don't start Adreno in
 headless mode
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230120172233.1905761-1-konrad.dybcio@linaro.org>
 <20230120172233.1905761-4-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230120172233.1905761-4-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 19:22, Konrad Dybcio wrote:
> Now that there's display support, there is no reason to assume the default
> mode for Adreno should be headless. Keep it like that for boards that
> previously enabled it, so as not to create regressions though.
> 
> Tested-by: Marijn Suijten <marijn.suijten@somainline.org> # On Sony Xperia 5
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8150-hdk.dts |  5 +++++
>   arch/arm64/boot/dts/qcom/sm8150-mtp.dts |  5 +++++
>   arch/arm64/boot/dts/qcom/sm8150.dtsi    | 10 +---------
>   3 files changed, 11 insertions(+), 9 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

