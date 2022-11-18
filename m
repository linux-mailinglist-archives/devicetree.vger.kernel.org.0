Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4055662F08F
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 10:08:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241682AbiKRJIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 04:08:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241753AbiKRJIm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 04:08:42 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 129B9716D2
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 01:08:41 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id h12so5975794ljg.9
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 01:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f/GIKJQPDtbyPElWmPmnXsNgez4/dpq7lQpHZOG4QHc=;
        b=pk66q0EDRvCmCVMDmWvTh2UL47PsK2sftvJPJSRCjtkVrcH43yv6HjG1pRL09BxLxM
         MG40CT0Pp1nkJW4KpPitzf4JQV5hOmK6YuaPPj+nmO9j6vVnx7H0AQEaT4xaQSEjVFkP
         q9l+Y70omXwms1X4nMnOvIteUo+Q4HWEtNLBnlGA0wttmFvrtOZofsTYzpxs9A30PIlU
         sLF8HGp+cT/hwiXocnceonP5rubFj33KnWWAD2HonvhMevVXv1TroqhEK8r1izJyVMn+
         FoQAOzrLLfZkuUD3x/r9ZT5HeUCiV7CODtlbH64/CX7uauMoLyNprE4WD/XBmzsA/g4u
         1uFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f/GIKJQPDtbyPElWmPmnXsNgez4/dpq7lQpHZOG4QHc=;
        b=Hfme01WnmsnbX9C66BGYSiJnlpEpUhPbWniX27gN4ZgZNmomgbT68p8nBHYvILqSC7
         tbhQ63NmXIDrmDob+h5ySvbwEIRUmjAm2S0WiE0ZHUZsgXEQ4zNxTuksQX1+2zSU9gxz
         9cD0qBCjhHIiwUzXf2y20Zk67l4gh7HvPFcJUWJZTk+4nN7XW38/KNhRml2imgb/D/UE
         nJlwySqUf/Oug2Q29CjlDP0JJKnDTDYLjpq9JdWeCU9Q0W7+ilAeQF1eKD72N1gPXtiA
         CAL51tugLI3ZjRewbC+JRUbbOQO+dKQ9W3tmHLo+922hI669SNnea7GwhdUlgqp2fnft
         JP3g==
X-Gm-Message-State: ANoB5pm7eBLDC2bj2RAhp9KJNJAyYCEETc0uWCjylWdnJ8Sd9fLTjAFp
        sYtjPPfUVP5ny8j6j08dF2a2Qqe52aFiUpJs
X-Google-Smtp-Source: AA0mqf55q9S8aBa3JJBzEEZIPCxGwoEZhJv72tq6K9jcDfzJk13GaaQjX5grHtQggSNmlogTnsZnCw==
X-Received: by 2002:a05:651c:238a:b0:26e:5b4:52ee with SMTP id bk10-20020a05651c238a00b0026e05b452eemr2036216ljb.460.1668762519369;
        Fri, 18 Nov 2022 01:08:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k4-20020ac257c4000000b004a2511b8224sm579365lfo.103.2022.11.18.01.08.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 01:08:39 -0800 (PST)
Message-ID: <69afdac0-8313-d6d3-78d2-ddf8e0310836@linaro.org>
Date:   Fri, 18 Nov 2022 10:08:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/6] dt-bindings: i2c: qcom-geni: document I2C Master
 Hub serial I2C engine
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org
References: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v2-0-aadaa6997b28@linaro.org>
 <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v2-2-aadaa6997b28@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v2-2-aadaa6997b28@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/11/2022 09:45, Neil Armstrong wrote:
> The I2C Master Hub is a stripped down version of the GENI Serial Engine
> QUP Wrapper Controller but only supporting I2C serial engines without
> DMA support.
> 
> Document the I2C Serial Engine variant used within the I2C Master
> Hub Wrapper.
> 
> This serial engine variant lacks DMA support, requires a core clock,
> and since DMA support is lacking the memory interconnect path isn't
> needed.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

