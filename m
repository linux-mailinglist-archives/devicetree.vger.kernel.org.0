Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37C7C691A7C
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 09:58:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231567AbjBJI6h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 03:58:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231450AbjBJI6g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 03:58:36 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE51B741
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:58:33 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id z13so3291297wmp.2
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ef2U5c6HeqEw6s0y4iUYPmBBD++bKxShMuYw351drKo=;
        b=CmYSJWFtRLMqTRalC5Jt/GNXUu8cHnMEtFuC3I31jOku5857/RbxNzvYNWkg99QVbU
         Hc337k+3oI4rC/1MnDLqeptmNfuhSmpQr/tP6Qsi8GGJqzBzSWtGO6Fx3V3mryP1Qtqd
         Xncu7ZFmtT1Za3b8ImUoCFMw/usgQd+w8AyecSFgN8Xe9hXVvpAIeHJ3nuZXFpbjWfoA
         cf2qmNt8CR0+UqzVVSnSPBmRLqh0jbjXtw0XvE7EIO2/gkLNRf4tdztuBgh9tvTNk9v+
         T4j+9Pn5SamHLColFrzEyBEg8iDEyGAXsXgacD60cozCyD+GLdEpT+41x9AL/GVw9Y3c
         sesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ef2U5c6HeqEw6s0y4iUYPmBBD++bKxShMuYw351drKo=;
        b=k8VAVM5LuWbvN6CvaadBkp7IBfei+Y3LHSRn0A4kfMcboammdkqL5/y/JA7PmGVS+K
         KuRnZWH3ai9CEjE06jqrSZB+dQWXVAmFcpTu+blYVLTApi9eDULMMGR1iQLrn4Sqqc7c
         HF9Zx/Glq9SjC9t7egxKL/jYf+lgxYFUwWup900tbcAA3hrmwz8P4UL/hPMBRgtDqid2
         EIAUg36U5kiJrebLb6Z/Dju4F6vx+/xizgArQ+KZBB+xt7fDQPU+AQ96lm7EsruDGNzf
         LWrpn0/Xqrbo1MCT1BkbhhgKlDe/QTI7xqbAvH3wIDkmStZTAk5fOkW7hk7PG3qTVFz5
         PE1w==
X-Gm-Message-State: AO0yUKWvBVWqwDidEj+UYwBiFCIEmGeFGriqcvokSIb3NkTysP5sYwe/
        sXQEYSA7OClH9HErsxdrYVpEag==
X-Google-Smtp-Source: AK7set9oHBwJIydgEflq2gjHcx3YTMuNejy5r36OyrU8wx4e+xazuE/z63QBBU8eT62nkcUjUCLvow==
X-Received: by 2002:a05:600c:91e:b0:3db:331b:bd57 with SMTP id m30-20020a05600c091e00b003db331bbd57mr12299188wmp.23.1676019511594;
        Fri, 10 Feb 2023 00:58:31 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c10-20020a05600c170a00b003df241f52e8sm3989001wmn.42.2023.02.10.00.58.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 00:58:31 -0800 (PST)
Message-ID: <d1d1bd4e-0205-24d1-9589-6d6b57b6d477@linaro.org>
Date:   Fri, 10 Feb 2023 09:58:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: qcom: add the SoC ID for SA8775P
Content-Language: en-US
To:     Eric Chanudet <echanude@redhat.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230209095753.447347-1-brgl@bgdev.pl>
 <20230209095753.447347-3-brgl@bgdev.pl>
 <20230209175515.xrebz5edmsi4xkzv@echanude>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230209175515.xrebz5edmsi4xkzv@echanude>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 18:55, Eric Chanudet wrote:
> On Thu, Feb 09, 2023 at 10:57:52AM +0100, Bartosz Golaszewski wrote:
>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>
>> Add the SoC ID entry for SA8775P.
>>
>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  include/dt-bindings/arm/qcom,ids.h | 1 +
>>  1 file changed, 1 insertion(+)
> 
> Reviewed-by: Eric Chanudet <echanude@redhat.com>
> Tested-by: Eric Chanudet <echanude@redhat.com>

How can you test a header? What type of testing Redhat does on the headers?

Best regards,
Krzysztof

