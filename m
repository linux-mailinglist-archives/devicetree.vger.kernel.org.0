Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 621E8669A01
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 15:25:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjAMOZd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 09:25:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbjAMOWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 09:22:53 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54A9C90840
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 06:16:44 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id v6so9633293ejg.6
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 06:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZQ8HvKYQ47OTqDVjRH8LTpbxjkkWcoNwTcrLCx60dq8=;
        b=qZRIbUIl0ZeWNS8pwD4Wq6APrPK9H5UmGJCnG5nIHjyQkGnVhBvrxNZBm6nLeiLunQ
         wmgEaOV/TNIMsjFwatJbrktHTYuN5Cum1NARgT6JDAJ066Ee0Kjmia6YD9N9xOaQrgMX
         lz+RMPWS5bwxgNdpmdUy62D8t8A1gb2a7WH8AsBc/6nz7GP9YIVWLCRXUCDNVDxJRdZF
         H9bTZJWcZnjHgvCqCS6tpcdNBZAIAc8sNkwGTlu58hFUZZu9AnW/Z5FzqHggVK+sMULm
         bZ1zEr0AQC1wk/erthlLGcXPIjdkA7ofu7xLnS99boY1K4UesmPy8ENkYiYSsV82+Z/e
         LOSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQ8HvKYQ47OTqDVjRH8LTpbxjkkWcoNwTcrLCx60dq8=;
        b=wCBITiJO6EOzDrX4cNpldM6sCyqC3T/VwL/uF3tBCxYd+fuF7Mv1h4EVdttd8a7aCN
         mVYJmDhYU5M3iLLVR8d2iUyKhl+D18/YkLnmovAQTfTHflVCa9pbFYspfEaXalFEJBSW
         Q5WKsaBhyOOX8k9fhdZ0XjOF7eYX0SQSEC5LGLjQbol4SphAvVZo9R9eN/7auAYrVfQQ
         WjijOm2War0DAvaqCHNmZcaCFtVj0j+fukzHVoW3d6G016h+pw12mDq4BS3ovpeB0vid
         3Kz91kOoKwb3kxvIQG1t2Y9W4ImU2509QWrRgJk16t8zPo8Vd9sxK1NKsVINPuOuhaG+
         elWQ==
X-Gm-Message-State: AFqh2kr37FBSThf7cGb7GEsa5Zg05fkpT8GZvdhpBX1SCeA87zerrlkc
        PwKzODUgRES5hEJgpxzlgarEJQ==
X-Google-Smtp-Source: AMrXdXvOy1QBDodaKkn3VZGyoZrz3NQaYK1Sz6QjfCOA2Z+4+fzPifTracuLw+LEjqRRyKd9k8L7hQ==
X-Received: by 2002:a17:906:284a:b0:7c1:e78:1e2 with SMTP id s10-20020a170906284a00b007c10e7801e2mr86503655ejc.11.1673619398943;
        Fri, 13 Jan 2023 06:16:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d26-20020a170906305a00b0084c90164a56sm8551726ejd.29.2023.01.13.06.16.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 06:16:38 -0800 (PST)
Message-ID: <06799086-1068-1288-b309-80c245f34ce8@linaro.org>
Date:   Fri, 13 Jan 2023 15:16:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/7] dt-bindings: pinctrl: qcom: Add ipq9574 pinctrl
 bindings
Content-Language: en-US
To:     Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, linus.walleij@linaro.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        shawnguo@kernel.org, arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, tdas@codeaurora.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com
References: <20230110121316.24892-1-quic_devipriy@quicinc.com>
 <20230110121316.24892-4-quic_devipriy@quicinc.com>
 <b63600f9-82ef-83dc-1680-1df125b5d971@linaro.org>
 <a0db608a-2c65-e831-abc2-072609fd7a5a@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a0db608a-2c65-e831-abc2-072609fd7a5a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2023 14:24, Devi Priya wrote:
>>> +    properties:
>>> +      pins:
>>> +        description:
>>> +          List of gpio pins affected by the properties specified in this
>>> +          subnode.
>>> +        items:
>>> +          oneOf:
>>> +            - pattern: "^gpio([0-9]|[1-5][0-9]|6[0-4])$"
>>> +            - enum: [ sdc1_clk, sdc1_cmd, sdc1_data, sdc2_clk, sdc2_cmd,
>>> +                      sdc2_data, qdsd_cmd, qdsd_data0, qdsd_data1, qdsd_data2,
>>> +                      qdsd_data3 ]
>>
>> These are ordered by name.
> The enum values seem to be ordered alphabetically.
> could you please help us understand the ordering?

q goes before s

>>
>>> +        minItems: 1
>>> +        maxItems: 8
>>> +

Best regards,
Krzysztof

