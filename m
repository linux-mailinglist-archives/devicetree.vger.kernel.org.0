Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30CDC6CFDE9
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 10:16:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229747AbjC3IP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 04:15:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229869AbjC3IP5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 04:15:57 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 566FF6E93
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 01:15:53 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 20so18792628lju.0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 01:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680164151;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JA4XVHo0Eq19cyVZPkQAeO5VCdeLqQwOP0zPCiEBUMw=;
        b=EWXEC36M+TxkQLalkkn9rZ18ai2dy9NRazwNzO1L8FJUl9ResCIWtediINEPJ/Bxvs
         Je1bgkzkOTsNypIWNvYCAYtCWEC7j2Vl7x90ZXH4kPAYXioXtea9SaMQTs1VJHATL4oH
         fzRmSCrNRvWPUFijWJ3YqMnDUf4tnQCZF98UcZT4ELvZJe9fdWt1WTbLG6IkvAZMWtIh
         UvVi6CcHTEuDj6KqD9N3Jkz2fxHYaYxTRpViUBaD042syf7CiBpQ1HG5QVPS4F+B4eUT
         g3DZf7HJxDX8A7OWw/mEKRzD1/VYUv278u2YeOiFyFic3QnvuXxRZcsn3bSoGjNKLbIA
         Zn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680164151;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JA4XVHo0Eq19cyVZPkQAeO5VCdeLqQwOP0zPCiEBUMw=;
        b=YXDCQeBm7NnGxBqbgowy+CpkRMrBggLvY7K5XTC3Se2oetvi0gp5Qu6agvq6xnV2N6
         bbm/DXh1HZaUEiKuc1algyh9CG2LnvcUV2D2wgfjDsrxMw41bY9m+Y39gQX4wPLN02GN
         OtlkBdwJIJiywEyxNXG8BPgIvNxBY4W/Vz76H1ZzFk1kraWtbR4r7i8R2ZvddZSxE+F3
         vIxs7MGCNt8pbS8gHDrDoDmBBCXfeV6wqX+3H3rSi2vatl3+P4lhUHg8Pzq4GHUmBr7x
         Io2tqnjKwp6vTH7cjPDssXi6DJyjnt6tDYymtk1vT0TXBXyHoHcmC+FbRIfdggfig3HU
         ITDg==
X-Gm-Message-State: AAQBX9c4p34W1ED0899d5Zl4WaiHZMAfbr9/SkGsp6dFCUZJfcfi4Y6o
        7cbFic0BpASFhjAv0e20PYYVKg==
X-Google-Smtp-Source: AKy350Y8D7vwA4tRhgHdmVdiyKJ+l63hqNEVbOuIw5/rG0Pn7g7QJPS8YNRy4aPi5ZxXVQPb3M3Bcg==
X-Received: by 2002:a2e:aa1c:0:b0:2a1:9b6a:72b9 with SMTP id bf28-20020a2eaa1c000000b002a19b6a72b9mr1795529ljb.13.1680164151534;
        Thu, 30 Mar 2023 01:15:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w23-20020a2e3017000000b0029df8e31785sm4192341ljw.107.2023.03.30.01.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 01:15:50 -0700 (PDT)
Message-ID: <edb749aa-9ae5-81b2-77b9-416810c5cca7@linaro.org>
Date:   Thu, 30 Mar 2023 10:15:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 3/9] dt-bindings: qcom-qce: Fix compatibles
 combinations for SM8150 and IPQ4019 SoCs
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
References: <20230328092815.292665-1-bhupesh.sharma@linaro.org>
 <20230328092815.292665-4-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328092815.292665-4-bhupesh.sharma@linaro.org>
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

On 28/03/2023 11:28, Bhupesh Sharma wrote:
> Currently the compatible list available in 'qce' dt-bindings does not
> support SM8150 and IPQ4019 SoCs directly, leading to following
> 'dtbs_check' error:
> 
>  arch/arm64/boot/dts/qcom/sm8150-sony-xperia-kumano-griffin.dtb:
>   crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['qcom,sm8150-qce', 'qcom,qce'] is too long
> 	['qcom,sm8150-qce', 'qcom,qce'] is too short

There is no such change in the files. Document only warnings which are
real - happening.

Best regards,
Krzysztof

