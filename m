Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35A255E8EA7
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 18:56:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233894AbiIXQ4F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 12:56:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233791AbiIXQ4E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 12:56:04 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A361183F26
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 09:56:02 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a3so4747119lfk.9
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 09:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qCvUzRzeULor4WnIiJD8wT2Pery0VW3IjzzZAt+uUKI=;
        b=YrT3IgVkLxnd7lidhwQ5ASDEIJwxgK36UxOQkbdeRE7hB0B8wzZBtMF0jfsEL5rnMJ
         TmhP2cc7k2DOZULm2xKxAQwR6NEaCgCknCft51BBR5i6G0ierThFmNjmt+AUuxyQduMy
         t0eLTJ1C5ZZKjqwBCcmQjLPxu4HwHkEVQULR8JrXmZHTPgSyZv/yV9O+Ryxu/LElp6h2
         i42ASsvHNuDzXVQjaMHifVay2O70bcey4kpW8Rsxila4FZUIg/5VsM5ZEeM79Qk1DCbD
         T2Pq9JeMlZ19HLmQg+O+0Vq5X8cC2RKZqizzdRLL8sdmTKeRCWSRIeA2+Y8iTdNGzhK/
         mxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qCvUzRzeULor4WnIiJD8wT2Pery0VW3IjzzZAt+uUKI=;
        b=mUve30Mz4oVJKkgZRiVfRJB24MSepwo7R1PHchshBYbQ3i0Cg/lC5sbDYbqz838Ttb
         tYuK4zl8db7smx8day6iuqklHXsx4Cqo3X8L+GPzkGypLKDcDCRjlRH5o0QJdkRT/loG
         XC0wLYV8I/QZJ5lr3hCvCbgCM6Um6jN+0OdPhwWqtdLQeujRbCeAe5i+oKgPbwoZt/dW
         XWQZqUgKB+0VVBFPZrOoB27jJvsVuBZ6Qjw6bv+cWI1WnczHkyhN2kq65EUDiFLt5z3C
         XQZv4glXT1LAgehxHplVhpfuSGbJ+2SZQ8+MCImuDHS+Xh6sLl4PGwX6qKArxu91sj1F
         +aPA==
X-Gm-Message-State: ACrzQf1G69WR3ipHAmJWamS1Q2VTC/XF8ZgVdbLNjb2ny6g3a5KOVDRh
        K+khuZqFchcxyX3SiIsq65Y48g==
X-Google-Smtp-Source: AMsMyM4cBGD1nJDClwlGskZMtBadV77/jXdaK8NpBV5chtC2K4VAqeN5up0Rn8Uz0Cyv6BPxMYK2PA==
X-Received: by 2002:a05:6512:10d1:b0:49d:7dac:e2e3 with SMTP id k17-20020a05651210d100b0049d7dace2e3mr5464359lfg.224.1664038561051;
        Sat, 24 Sep 2022 09:56:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bf31-20020a2eaa1f000000b0026c2e0258bcsm1844780ljb.42.2022.09.24.09.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 09:56:00 -0700 (PDT)
Message-ID: <ea2d5008-d250-cc5a-e608-cb35a6ad67b8@linaro.org>
Date:   Sat, 24 Sep 2022 18:55:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] ARM: dts: qcom: add 'chassis-type' property
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220924154422.9896-1-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924154422.9896-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 17:44, Luca Weiss wrote:
> Add the chassis-type property to arm32 Qualcomm watches, phones and
> tablets.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

