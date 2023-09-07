Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 850DF79794D
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 19:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241227AbjIGRKY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 13:10:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241566AbjIGRKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 13:10:22 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CCC110FB
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 10:09:50 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31c5c06e8bbso1155756f8f.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 10:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694106526; x=1694711326; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KGhxv+wLkUlJTnXgtlH4J46AYd9o45ySTLmRTKlekWI=;
        b=WVpEhRMt87lQ3vwIcZMI5+tbTzjT4waYNswZkEXMwfDhseBdS3EoBewXRnDHg4TIwh
         1jQiBjRzeV4IA2K6F7zCUpqRRUaBvxi+5X2ITn+WvQasXUojjiqF3oPaoMoNoW8x+KPM
         DN7s8ivQ+2oaHaSwWYSGPZMU419tHOd4ck8YeA2bwczahKWo154WLTXPjrxyKS6y3M4T
         dKddFIj5DY1mxeT8GSOtkUoxAIswkJ031UqH77aNodcNh7IXtyKuA5fGLJjpZdxuVNtM
         IaC8xlMb5s/5gmsk+UGpQmrf1+N9ux4lOoEugLmm66qsxAogzBgu21v/ORDtjikTSYSs
         7vjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694106526; x=1694711326;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KGhxv+wLkUlJTnXgtlH4J46AYd9o45ySTLmRTKlekWI=;
        b=iYLXdkoT2XFJ4waypUE0J6UP+dSdy6jqqmQ0o7MBEXne1ujlg04cgyYpUzb0ZFKBE6
         zWQqQOUY9HMDpmVmUwwBkh642Sh22bcGT6IHg/F2SxIRv1YzKRTtNW0RxuPTVmOgLpkI
         UZ8fwcZD8XpQ85niHsw9sCExYKxijTE6nYfKpD2p1ped85H52sl4dZyxjnM6NutlYFQh
         niBs9w8HbscGzQ2wOzdoCUmAUO3SuIApGYrT9Y/xKDY/VFjCi7UWAl4bhtEP/Wmk0+q7
         XgF5TINenpHnlDWl4AKpNPhDcZLO4zeqZpLngiBzGvEvl1BgH7xnbzUtKMSycC/SnqCt
         ZytQ==
X-Gm-Message-State: AOJu0Yxm+fMzODggqd+USJ3pgY9uVqfNxa/n/UEHH2k+rsWf0cIn0mKa
        G1y3Z2JZPcpuyDBTNLLarR9WxNFRYqpG79YVT4kPAA==
X-Google-Smtp-Source: AGHT+IHgZdZSiR//XinTA9Y8E8bS2xBu6CE90k9cVQP1rRMZIv9GSOKD+LJS0NcyLh090bkwtAQy+Q==
X-Received: by 2002:a17:906:19:b0:9a1:ec3d:8ffe with SMTP id 25-20020a170906001900b009a1ec3d8ffemr4567309eja.18.1694066647510;
        Wed, 06 Sep 2023 23:04:07 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id qx12-20020a170906fccc00b0099bd86f9248sm9922585ejb.63.2023.09.06.23.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:04:07 -0700 (PDT)
Message-ID: <2de8953c-f1c5-3c17-5c95-973ef550bc32@linaro.org>
Date:   Thu, 7 Sep 2023 08:04:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v1 08/10] dt-bindings: cpufreq: qcom-cpufreq-nvmem:
 document IPQ9574
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>,
        ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1693996662.git.quic_varada@quicinc.com>
 <e0f54a4b249f24b10d3dc21a0224718e46ebd158.1693996662.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e0f54a4b249f24b10d3dc21a0224718e46ebd158.1693996662.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 07:21, Varadarajan Narayanan wrote:
> Document IPQ9574 compatible for Qcom NVMEM CPUFreq driver.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

