Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD23C6CB750
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 08:40:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232480AbjC1GkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 02:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230452AbjC1GkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 02:40:09 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEEDC19B2
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:40:06 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id ek18so45339766edb.6
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679985605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KS01sPEbTq+ygcPzS1GxIzVdABG8Hy8NYqv6mG/Q61E=;
        b=Y1eKKHjCjGGKosnQoBeNxL1IOgLvcdlzRP7nxJFwVS1HRD83UmzD1USFQJW7LcXYOR
         2iANqDsd5//kEqVAQTis7pvycAxh+Q83CC9i0zYera6cqbIsnNc86HKQ6j2qdYfg+jw/
         UOksy3cN9eubli/mkqeuzSNqwjSb4GIisKdoQjq/i9I+qGC6tnunQ6f8/LTWO2J9wbEk
         KaSa8W13tvxHCvIZHhS5Uh/8q3nGwfzmjvhPQ0FlH8BGBRIAK5cHUE7sUsThIVJG5PDp
         2uQamEHpRO/9/bmlkb38ybAgg2x/SwVckDWIM49XDezQthXULEZWlnngXp2Lgw/9PTBL
         J92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679985605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KS01sPEbTq+ygcPzS1GxIzVdABG8Hy8NYqv6mG/Q61E=;
        b=KjkUD7dwsbmHXNvZlGiu0qvH/tZtWpQVwxvZKLUWr49kBwxxI7WYBSnIBcfBNULK5g
         ToV7Vtfne05eRdOy1OvKchjc4tYWPHSJIwge9JTV2Z8j6ui38pyHmB39qMRatUJepn4J
         M7DlcfzVwN9QdGCTMeIG0fSf32HLMagS50gDFXpQwIHdULxT9G5U1Qy+dP6aaJVGWwPR
         HduSdknvg3n1jK0aL9rSxShs9f50lud3dQjm+lfrB9uhLSXUUJ64CqECzpX2j/eWIjJr
         4PBhM4YqZrBUZ3Bss32joBzsMXIkMQAKFPoGE/nM/HCyIEf2yvGCfKXCpiswe6XyM4Jb
         h20w==
X-Gm-Message-State: AAQBX9dG9QT9e8WBvYFMsr4gCRnoKhSFDf/gmkzKPwuYVDFTsL78KU0j
        gCxhtxjTzjZMUNj0vZOhbH69bQ==
X-Google-Smtp-Source: AKy350ag5jc21SpgvGjtcfe5iqQzGFQTsZBfMCKtrlipgo56KJ4JXFi5xmsf1BmySij7IfyHpCsfbQ==
X-Received: by 2002:a17:906:81d5:b0:93d:ae74:fa9e with SMTP id e21-20020a17090681d500b0093dae74fa9emr14858648ejx.7.1679985605412;
        Mon, 27 Mar 2023 23:40:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id v25-20020a17090606d900b008e22978b98bsm14934354ejb.61.2023.03.27.23.40.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 23:40:05 -0700 (PDT)
Message-ID: <abff6c64-86d7-5ab5-e046-31e293eb9b9a@linaro.org>
Date:   Tue, 28 Mar 2023 08:40:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/3] dt-bindings: remoteproc: qcom: adsp: add
 qcom,sdm845-slpi-pas compatible
Content-Language: en-US
To:     Dylan Van Assche <me@dylanvanassche.be>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230327183736.496170-1-me@dylanvanassche.be>
 <20230327183736.496170-2-me@dylanvanassche.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327183736.496170-2-me@dylanvanassche.be>
Content-Type: text/plain; charset=UTF-8
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

On 27/03/2023 20:37, Dylan Van Assche wrote:
> SLPI DSP remoteproc on DSP is defined by the 'qcom,sdm845-slpi-pas'
> compatible in the qcom_q6v5_pas driver. Add this compatible to the
> devicetree bindings.
> 
> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
> ---
>  .../bindings/remoteproc/qcom,adsp.yaml        | 19 +++++++++++++++++++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

