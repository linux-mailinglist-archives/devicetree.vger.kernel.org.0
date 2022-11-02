Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFC96616E56
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:09:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbiKBUJx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:09:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230518AbiKBUJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:09:38 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC7A7D12A
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:08:44 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id i12so13274302qvs.2
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gp2bm2snYyZrDLYIPx7MjAauVR3GWwgc7AUFVNlTMaQ=;
        b=edY/GKXLoiz60oas48tPOnNodgxbKoAqsoNFGiDIfjI+TK6iB7i7c8ciiX7RV70T0v
         ZGNzvMW2mUFcDHDLl36ZLKlwDT9LqHpyaVz9fdzaCmqwMBqPm+yxUituHGUwZTne/RLI
         hD1cHHLwfl6Jd3Yl4oOVCByscE4kM7g2i8K0gslAUAEY53uhIiqKWOBQ8KGm8waFn4iJ
         wAFKxFRwXmT9VMZpsfGonPAFgg/7gct72NkKT5+JqtteocvU5BU9LJZ25O6RoN1T+JjL
         SfzQt0l8qXKdkrPZDRqWltQg4NX16TPC6lQf7VCbZC+y+aomfITHunPa30L4nGvBpjOf
         o82g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gp2bm2snYyZrDLYIPx7MjAauVR3GWwgc7AUFVNlTMaQ=;
        b=dVgyhfakKMqffa2ArEeoA10IMcJWpcrkFoJDMD2z851HqTcdqzNWxoAP5+l1oCg3z+
         g+G8qUqSj9fZqswrPeWBfomCFBvV5DH5O9qT+deUzvARhYmwTcoi/39CGoDq8gp0Ddig
         XjbAcNui3qUXsCKn7i1sqcu9jcysGVF35vP3ixJGdY4trMCnMZRPJCfWJWnDHCBr+Oc0
         W4MEO1LuiCoEwgEUX6oBJ7iPVT1LZquCSKBv+fV21R0O9u0ufFI+2dnhBQPclOvCF+qk
         U1h7GYIWSV98Bgkvn1BXTxwcMu1m3FGnn4ITKl5wffGbjumvmid8DyJaxAwyTiy2uQRs
         uhiQ==
X-Gm-Message-State: ACrzQf1Nfla81Gwxh2voYoKhxtHam2D4LuBLXGHjysjuEIUQ6q55/bAD
        vGcQ0z2VEjZO+Q+jzllrIXV0Kw==
X-Google-Smtp-Source: AMsMyM7S/SZg7E79z2pIK6TZEBR7PJcdFq4iwCCt4Ah6wA1qmGEN+vlgOkkqT41AwzPXWYDk04hSmg==
X-Received: by 2002:a05:6214:2467:b0:4ba:f07c:d9f7 with SMTP id im7-20020a056214246700b004baf07cd9f7mr23211434qvb.24.1667419723966;
        Wed, 02 Nov 2022 13:08:43 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id x2-20020ac87a82000000b003a5416da03csm1886261qtr.96.2022.11.02.13.08.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:08:43 -0700 (PDT)
Message-ID: <b4239515-5d39-1f23-d937-a1e3ea64f91e@linaro.org>
Date:   Wed, 2 Nov 2022 16:08:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 11/12] arm64: dts: qcom: sc8280xp-x13s: Add
 PM8280_{1/2} ADC_TM5 channels
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        steev@kali.org
References: <20221029051449.30678-1-manivannan.sadhasivam@linaro.org>
 <20221029051449.30678-12-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221029051449.30678-12-manivannan.sadhasivam@linaro.org>
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

On 29/10/2022 01:14, Manivannan Sadhasivam wrote:
> Add ADC_TM5 channels of PM8280_{1/2} for monitoring the temperature from
> external thermistors connected to AMUX pins. The temperture measurements
> are collected from the PMK8280's VADC channels that expose the
> measurements from secondary PMICs PM8280_{1/2}.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

