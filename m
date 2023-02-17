Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9940169AB6A
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 13:24:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbjBQMYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 07:24:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230031AbjBQMYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 07:24:52 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B221B6604F
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 04:24:51 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id dn12so11329093edb.5
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 04:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DRkSEUhCAUqv74wpKQpFMHAHpDnDB3DUCdgSs3cTD7U=;
        b=yrhtxWaVZlsZz8EAYHhKo7z7Qcf1xkV9vdz92vZLkg1+ezMyi9xaXJaWg/95UNi0wo
         RnfgOOSDKqYPcyICelGJD3NSH50xT9pbF0cS5bi89GeBAyl2U3Ju/+apjBqUMRMiKkom
         HARKsLb0z+pRqvzxeNzxDsyfRLuDWLcT7nGxjWtIhSquM9eBU6u5W3QuSJCIAwAl1AM4
         ZHSht6gdaLYv6YFVaF20yHxTVg52ihws/Ad/snpohhc6ZqWmtaT+WXlPsIhNPsoZs9AK
         ouTrvhYfy1IuV/5WWYkQHEhdp9mxPgkK2XtsL9q0+J65UjkmWbdQY/m9Y275kq43JDWY
         a0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DRkSEUhCAUqv74wpKQpFMHAHpDnDB3DUCdgSs3cTD7U=;
        b=VCi/4YQbEkw0svqxjgNdUVyaJBo6PxuLHQQ5PMfpIfaFAomjCYD80HMDLFprjPtq++
         p/x+Doz/rh3e1HuCNIJbHJ1LlFuPhWufZhPa9ANDkc5XF6RbeHgyyIKYEXRhwQDFRgWD
         Ol6DhK+09hsVWLgybkjv82cx4huWfUQ9BPPVmGITDTkoerYUkhw6uUu1Te/AzJsrNWxy
         tXr1/xicYJbDS3ORGH76Oytt+inLlgUk0tC0QSE+51a4uMGax+GejaKwIWpAIBsIJb0E
         YMa0Jtc3hZ4y9f2sHklYOj92gzAnFj2wPsrhurpomJ/GqCjYUPo+cccqM/GOzd9WhHOK
         auiQ==
X-Gm-Message-State: AO0yUKWtqGS/dFvgDIJyqd7282f/V5lfKLRBq5GNicpJjYE/sR5YEgjJ
        hyD2Pj3pn3Fb393nPBtJFNO9nw==
X-Google-Smtp-Source: AK7set/DBCXPYASdQ2V+puV5InoxI88AENgUj/1Lry6p1oLbNzI4+03pYsQYxh01xdrYlB9uSD988g==
X-Received: by 2002:a17:906:a451:b0:86f:fbcf:f30a with SMTP id cb17-20020a170906a45100b0086ffbcff30amr11172660ejb.58.1676636690249;
        Fri, 17 Feb 2023 04:24:50 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n11-20020a170906688b00b008b13a8ec56asm2074181ejr.110.2023.02.17.04.24.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 04:24:49 -0800 (PST)
Message-ID: <48cb00cd-961c-b72f-fba8-1842d658e289@linaro.org>
Date:   Fri, 17 Feb 2023 13:24:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/2] dt-bindings: display/msm: dsi-controller-main: Fix
 deprecated QCM2290 compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230217111316.306241-1-konrad.dybcio@linaro.org>
 <c49904be-d842-fc12-a443-17f229d53166@linaro.org>
 <a4eaccfd-34ba-15f3-033f-165b46c43317@linaro.org>
 <a158bca2-78bf-5b38-60fe-88118e8b4ad7@linaro.org>
 <ab35cdcf-53ae-a3f2-fc08-d0f58c51a0ae@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ab35cdcf-53ae-a3f2-fc08-d0f58c51a0ae@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/02/2023 12:36, Konrad Dybcio wrote:
>>>
>>> compatible = "qcom,dsi-ctrl-6g-qcm2290";
>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/sm6115.dtsi?h=next-20230217#n1221
>>
>> I meant, that original commit wanted to deprecate:
>> compatible="qcom,dsi-ctrl-6g-qcm2290";
>> compatible="qcom,mdss-dsi-ctrl";
>>
> Okay, so what would be the correct resolution?
> Drop this patch and keep 2/2?

First, it would be nice to know what was the intention of Bryan's commit?

Second, if the intention was to deprecate both of these, then this
commit could stay with changes - make it enum for both compatibles (not
list).

Best regards,
Krzysztof

