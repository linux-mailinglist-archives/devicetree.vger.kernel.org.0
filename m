Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98673590EAF
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 12:06:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237877AbiHLKGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 06:06:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237293AbiHLKGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 06:06:34 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF5479351A
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:06:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id v2so697609lfi.6
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=azcV9dUXGLyvJ1HXCFQoiPwl4R9cCXQpr4RG4L7Q6lg=;
        b=dIG2Kf/ZtELw49VJpK+5sIi7pN0IcACaYc9R1dGcXjyTAFWRnXKUVatGx7jwn7I2g+
         5WZthg9JH1FPpw35LSFKs+heVsW9Wa90ysn3lR5pxhm9LwrTfigv48SjYjfnvoYpz+NH
         6f9gvK+Nw+bz8O5LpdrTM7NDOhSliLul9bYglUO9/f+5uAzfAasvoSPYzHBIkNBZbklK
         s03yX2Qc+t/KsTrbrj8iI4oP6/CNG01UdybTA355UkjVY0u8CfSHTjKPmGWK/wn9VOpi
         qcl/g3Kp6pCuxfG01+3Nt3Zcy5cdPdEl1t+u9Vt6EuRyR2umLJrp+04XMmS0QKx6E5yl
         nHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=azcV9dUXGLyvJ1HXCFQoiPwl4R9cCXQpr4RG4L7Q6lg=;
        b=lQL63M6b7EVm71ZEi4VMH/vEoJ/zB2LPdsMjCOCbuvVwQkdstM50xN0TVRv/HNOGH/
         ioq/yuKfOO5qXxuAt6h9dFvh3qwE3bviw5/GUJFgOx2Ue5I1ZJjZhcW8HFPvwaIVGbEK
         pJvDiHvI82sXv/Oanu64DfCR5s7QywRip+woWtqYhWxH/JpdFxEY2on7cp/7sFD3vIRz
         pHRs7dzUz6xY3mMVTb+suAr3CU4iVW+5z5atcYCOhd09C40eeQXe3sfpBEjVrQOcfib1
         kdYET15fM5xOW5HrHJ5n2DdR5I9XMf+4sfpuMiYzP1o57LgShWHKbH2iRYk3wnUyo5Kt
         tYxQ==
X-Gm-Message-State: ACgBeo0K2J4cl0B4HynlbZ+GfDzcg1aW8Kw9rvRZAHBD0cOdaG8FUv6r
        ItKetOvaXaGDfNn3DENpkF1CiQ==
X-Google-Smtp-Source: AA6agR6JKxA0NhGbseGy7N3sH5d8PuTIZDW8lB7MYEIYhdenJTipcSBK6J4XoMJ2hVVvH29Ktsjwuw==
X-Received: by 2002:ac2:4f03:0:b0:48a:6061:bd8e with SMTP id k3-20020ac24f03000000b0048a6061bd8emr1146671lfr.647.1660298791278;
        Fri, 12 Aug 2022 03:06:31 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id p4-20020a19f004000000b0048a98b7bad3sm157586lfc.197.2022.08.12.03.06.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 03:06:30 -0700 (PDT)
Message-ID: <5c187887-c458-8b51-c510-60143d325972@linaro.org>
Date:   Fri, 12 Aug 2022 13:06:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6350: Add GPI DMA nodes
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220812082721.1125759-1-luca.weiss@fairphone.com>
 <20220812082721.1125759-4-luca.weiss@fairphone.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812082721.1125759-4-luca.weiss@fairphone.com>
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

On 12/08/2022 11:27, Luca Weiss wrote:
> Add nodes for the gpi_dma0 and gpi_dma1 which are (optionally) used for
> various i2c busses based on the qup firmware configuration.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 59 ++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
