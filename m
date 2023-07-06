Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B684E749F19
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 16:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjGFOf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 10:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232884AbjGFOf0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 10:35:26 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D221732
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 07:35:25 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-98df3dea907so98556566b.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 07:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688654124; x=1691246124;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u3qHUFD4riIXz/zf4B3V9rIkMojtg62hD0DEWOMNkCM=;
        b=tiQ69dTqyf0LKrTVFXSBQbUUu2lRlxsOCdFNCTFkVuMoLU3942jdaa9PSr2y3EcoPk
         lCUTDDH3Ly/gBYf2hfD3Fu20Ii0yT8nzBdC5jA3zsEX8YFoBlK/fDQhvw1HvswteiT5a
         jhGPWo/OOOQ/9R11GPVFVpWQAyqFcjmC4U59SGraWlxgws9cGUKcRIqjuxn57PRbZKfa
         uR5/5IvC5sSHgjw50WaFoSC6f/CYe5+sBRz6TPjkinfdZAGps8R+SvU+F/RbMIyjqNK0
         cfLTHhuRxvbqf9JMSpQc/X03sewXXBOpKxRbz/pcaz63285A3t0ScIut2P+QGG+04pQ2
         5YQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688654124; x=1691246124;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u3qHUFD4riIXz/zf4B3V9rIkMojtg62hD0DEWOMNkCM=;
        b=C4Mbdog6WxmepeVi+9nlkHXozdfqUBNOrBdFbYveaiT2TycSDesTD3sVSG6NIYdcaR
         K/u+AnBiVrFhrk3cZ54XYiPEprB+DAnG+ap4a82Uk8c+A4D9LgoY5YKN86Q0QfpSJtg9
         4VgEWJumMuWpZuaC6llOf5FeXTKfH7ea68IF1HDakwqWGIAP8SCQ24WZmegj0UOKNXB6
         dBw0DSP5TP1eI68h5zu1G0S2AnynaleXXsXiA2IGOhPv5vwpfYTTLi3AQXtUAfGGFH37
         0gGenUx8t7I5Bcvl/akf2fiuxMJlDFT2mVo48euCPCb3UIPGb6uWQn6+TBF7xEWjbmS3
         ALOg==
X-Gm-Message-State: ABy/qLaBsUpjjPNE7GkbxWHWrGgH4sVdS5xExt/3zeU/VybwyxhNLeYk
        kTsYeiizKFGLvTP9hcBttloJ3A==
X-Google-Smtp-Source: APBJJlGRuG3kcc7zORVspowL1XivS1Gqz21zH5uL+yoBM/1CU1IcgPjUsSCaoRL0EmgVrmu8SKGwcA==
X-Received: by 2002:a17:907:7413:b0:991:e7c3:5712 with SMTP id gj19-20020a170907741300b00991e7c35712mr1655200ejc.30.1688654123816;
        Thu, 06 Jul 2023 07:35:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ck14-20020a170906c44e00b009927a49ba94sm879499ejb.169.2023.07.06.07.35.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 07:35:23 -0700 (PDT)
Message-ID: <4042fa22-8948-49c9-6e5c-dc8926ed5f99@linaro.org>
Date:   Thu, 6 Jul 2023 16:35:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/4] dt-bindings: pinctrl: qcom-pmic-gpio: Add pm7550ba
 support
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        linus.walleij@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <1688650209-25119-1-git-send-email-quic_rohiagar@quicinc.com>
 <1688650209-25119-2-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1688650209-25119-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2023 15:30, Rohit Agarwal wrote:
> Add support for the pm7550ba GPIO support to the Qualcomm PMIC GPIO
> binding.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml | 3 +++

I doubt that all your patches here and other patchsets are v1. Otherwise
how did you get my Acks and Rbs? Please use proper versioning and
provide changelog.

What changed here?

Best regards,
Krzysztof

