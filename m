Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4490A5651AF
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 12:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234213AbiGDKEJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 06:04:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234230AbiGDKDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 06:03:51 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7919EE32
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 03:03:11 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id c12so137564lff.2
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 03:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ErZw4wls9zjNOFCXIe6EDDFh4ab3lDZZmmtoZlWR0dY=;
        b=w9LmTd0jhX810gGtspBgYoFJvLQMTTIvGy0sHKVh78nBe332rOAuFrYBVunrIBsPkg
         d5EfUKJxoQ8S8/v/G9LR7vXzCf3Cg9+qMproAQnX27mkaBzgVlzSwJzIALLGrtgmiKB2
         8UEOdKaykVSSim8/D2n+F2VJ/ErZ24EDb5l8lq9OmVvsUyINLrfKT0CMTaQ3LAMEAutl
         sJwByWinXftKaocsvU7ONzpWe1/9I20wZzhklPJLJpjYhvewa+RddER9zPq0Cb8UUhW0
         jeBEWNaP+1Um10fFIvtjpJD/oGuTFoZ0FOiuMzV5uutKQU16FLIATbpNBL6txv+2OcHK
         +lvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ErZw4wls9zjNOFCXIe6EDDFh4ab3lDZZmmtoZlWR0dY=;
        b=putmmfUrquviFRb2mH4GdsiGu54zffuVRPT04Pedye3+ER4WJHwQZXaR2e7Zm3ZKd3
         aWVsiUs6yATWc7VjXK33I2SS49ci0xlcpSJ0g4lXMnjE0oYbXw5H9jwmViOkeU50bGYU
         M+dpkLJGUtuYTSncUuzDN14Z9YbF069uXWYH3PiG0Rxol5kbEXCX2kgcxx7a7ktZYd65
         TA5fQVm0r6Xa6+guaajjtaxCQVWlKtuIqDcBA9OPbSdXRw2SI0hhS5L02cVKZJyDWTp0
         yG9hjKazBe7GR4mEAkDolN37EYf9epSAhcrVYM+yW+KpSbttqZSZ2mpMHG5cTHrkvH/r
         t5vg==
X-Gm-Message-State: AJIora87ngUDmT3vRFzh2bdrMq/5T3UMgEx/c2Yhtyi69pIBln0qw1Cf
        b3ACI8qcsJ2nLdPQjf5yLwVt8A==
X-Google-Smtp-Source: AGRyM1tYyxGAgUgawsgdOQb1xSttQaKF7iWrlqMgTBURgm3N4VN14WMwCOK+yH1mCjMy5QHOVA1rOw==
X-Received: by 2002:a05:6512:61:b0:47f:7f37:fad3 with SMTP id i1-20020a056512006100b0047f7f37fad3mr18847722lfo.318.1656928990188;
        Mon, 04 Jul 2022 03:03:10 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id b13-20020a2eb90d000000b0025aa03fba32sm4851141ljb.12.2022.07.04.03.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 03:03:09 -0700 (PDT)
Message-ID: <9303ad19-b047-9710-8c35-9911e9a47bc9@linaro.org>
Date:   Mon, 4 Jul 2022 12:03:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: qcom: readme: document preferred compatible
 naming
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Alex Elder <elder@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
References: <20220701074659.12680-1-krzysztof.kozlowski@linaro.org>
 <20220701204218.GA1478943-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220701204218.GA1478943-robh@kernel.org>
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

On 01/07/2022 22:42, Rob Herring wrote:
> On Fri, Jul 01, 2022 at 09:46:59AM +0200, Krzysztof Kozlowski wrote:
>> Compatibles can come in two formats.  Either "vendor,ip-soc" or
>> "vendor,soc-ip".  Qualcomm bindings were mixing both of usages, so add a
>> readme file documenting preferred policy.
> 
> Is this all I needed to do to stop this from QCom? </sarcasm>
> 
> This convention is not QCom specific, though the error mostly is. 
> Perhaps this should be documented generically.

Good point. I can this to writing-bindings.rst.

> 
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Cc: Vinod Koul <vkoul@kernel.org>
>> Cc: Alex Elder <elder@linaro.org>
>> Cc: Robert Foss <robert.foss@linaro.org>
>> Cc: Bhupesh Sharma <bhupesh.sharma@linaro.org>
>> ---
>>  .../devicetree/bindings/soc/qcom/README.rst      | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/README.rst
>>
>> diff --git a/Documentation/devicetree/bindings/soc/qcom/README.rst b/Documentation/devicetree/bindings/soc/qcom/README.rst
>> new file mode 100644
>> index 000000000000..322b329ac7c1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/qcom/README.rst
>> @@ -0,0 +1,16 @@
>> +.. SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +
>> +Qualcomm SoC compatibles naming convention
>> +==========================================
>> +1. When adding new compatibles in new bindings, use the format:
>> +   ::
>> +
>> +     qcom,SoC-IP
>> +
>> +   For example:
>> +   ::
>> +
>> +     qcom,sdm845-llcc-bwmon
> 
> Assuming the list of possible SoCs was maintained, you could make this a 
> schema. Though there might be false positives.

Indeed it works, although I need some exceptions for existing compatibles.


Best regards,
Krzysztof
