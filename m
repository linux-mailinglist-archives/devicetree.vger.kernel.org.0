Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EAF7793DC2
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 15:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241088AbjIFNei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 09:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235845AbjIFNeh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 09:34:37 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F4A310F5
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 06:34:33 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99c93638322so206862666b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 06:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694007272; x=1694612072; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lUvSvKUaI9jM7APVyUfAw53E9ZhyDpJtbSHLwdTGqM8=;
        b=l/cCpz4oFGpGYiRgSD2cKZwFltpj/Ame8thJsY5UzmP2fiLRPQu9uLdFL+yV32b6NB
         J98i4xxn4eBXD/wHgagujTBqGGaT7M6qtNiKLEcxyFYZdPbPZCk+VFkK1UXP2Bns2w6F
         HGU22RsQ2sMpbBNIDO+pEyI/usVMvfpXYU/x5nWbqYiTVvtf+KlM5SQD1QY9WCAEkMg0
         0SnRpvEsAm3i9xk9kjMbUuR5inM6KsVTU2hBDbQH2bO3Z1SpkRshaLi4sv2U5OXJoSS1
         hy/BcPjjrM37Qt1BeFSwn1M3WgN6OaylYADxNviYIJgKBHa8tC8dmhgcTQRLf+zh2Jnm
         523Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694007272; x=1694612072;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lUvSvKUaI9jM7APVyUfAw53E9ZhyDpJtbSHLwdTGqM8=;
        b=G98/cx84mUejeQEw+spiCG1xPRcWGJM6rkvsuhifR884QlZyUABxpwTCqz2BWefibq
         n+6G6N7TytA6PjX39+vPIcJF5uVm76Kzqsn5bSkt2z7e8fymiWsmtk+zeKxg8jhTrzqc
         hzQaIPH9Kgju+B3amtP9ZNGquwk1v0UX54Hled/El2RxPpDi5gWY2s7McZO44iekKxQz
         N3QHaL1+0HsNMcphO4hgX/8Em9ksI+f6UEdQ2vIIx7L+x8b0tEMFh7VVbb946lqzpicc
         qrqnSW6G8J1nFweMNmMFfcCwa8qi7sel62mxd0HSfLukFVzAoy6GNf/pIPElRB/49kB1
         yJAg==
X-Gm-Message-State: AOJu0Yz8+jbGaQS37QQJPDFtaWbyRaRcjzSzInc9myzXyHTPcaqwdGvD
        L3Gy/ZbRKGfhDQZ9Y6++NNm8fw==
X-Google-Smtp-Source: AGHT+IH0ewRIkYKg0go+8hBWldfPMNlrRyX/G/TxBFdICsMBmJS+8NZ3XjbC8n+zTti1vGaHWz2XGg==
X-Received: by 2002:a17:906:3003:b0:9a1:eb4f:56f with SMTP id 3-20020a170906300300b009a1eb4f056fmr3273088ejz.13.1694007271951;
        Wed, 06 Sep 2023 06:34:31 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060e9a00b0099cfd0b2437sm9070145ejf.99.2023.09.06.06.34.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 06:34:31 -0700 (PDT)
Message-ID: <04bf71a9-cfa6-60c1-ecbb-c8e2865d8d15@linaro.org>
Date:   Wed, 6 Sep 2023 15:34:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/4] dt-bindings: remoteproc: qcom: sc7180-pas: Add
 ADSP compatible
Content-Language: en-US
To:     Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     David Wronek <davidwronek@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230905-sc7180-adsp-rproc-v2-0-8ab7f299600a@trvn.ru>
 <20230905-sc7180-adsp-rproc-v2-1-8ab7f299600a@trvn.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230905-sc7180-adsp-rproc-v2-1-8ab7f299600a@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2023 12:41, Nikita Travkin wrote:
> SC7180 has an ADSP remoteproc. Add it's compatible to the bindings and
> refactor the schema conditionals to fit the ADSP.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
> v2: Refactor similar to qcom,sm8150-pas.yaml
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

