Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4AED669E50
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 17:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjAMQix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 11:38:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230496AbjAMQib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 11:38:31 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F4327D258
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:35:40 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id i9so31927357edj.4
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j+i5YU1JrTXRnDcI+3MtGP5JXCVMjZlHjuJt57lEasY=;
        b=hTYNHQ3kVgma7efrxWhS0jCG4N/WaAWX360BUOmAkkbuyrAJSmJnKbv9j6eekdpubS
         awGnoV7CxiLNlgaFk6P8IDtxENoZ/QL6sr6mVcfk8eCAnr8a0vngNAgtUJyEyIQBQCvE
         QCVH/TfPdKSqM2V/RLZvWjqABe8c9Zgx67JiOIHH0Fci39DEQhb+k+DopL1cuk3ZQNtC
         kmhS3rpsS3+/3eDvlkTobH8TmZIDYD5p9ChcQOrgWc7i+c5R7Ag1kjI5NN7LM9l5leFq
         B+WTOwYqyff87WOmemM5VstAEytH1VZS02e9bUI4DiX4YuMtD/NYR1XgxYbb+HzXyMYt
         8CBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j+i5YU1JrTXRnDcI+3MtGP5JXCVMjZlHjuJt57lEasY=;
        b=yIHNB5YvuLOt64TIVFEyZR42npMlTjp1IyqsSx4dG4YWK9sE3nAUjkrOEl79FxtvBf
         ut01H5sanSuL8rECXO3ruF7jrC2MTjFRwhVCAXKM9E9qkE3LfYO2oOSetqRZhmi9erEu
         ltofDyFCTTYpA1MoyUiyi5JdkGzIkmPxuVZ8CygP5EtVeN1YrTikv4Vv8gA5mnreuq5P
         0PCN269TC4a9RcYlPZrzAyQVK4QU7o6cbHvttv3a+pVfiNpjnEY24hrrLjFqEqVyTe20
         NgJmn9XcucbH7tik2BbtY9A67qLbQKLuO/KZKed/c4s86tcwSI2pyUtzO3gKkhCyptNc
         7zcQ==
X-Gm-Message-State: AFqh2koDF3x3cTM0wylQdlRrLE6Azr8ubJh9U3RUMZRWmxcz0i0fc9Zy
        bUm7xM9Rr/17Fox3CbZeviFtjQ==
X-Google-Smtp-Source: AMrXdXvjyqT9/V9pwWK1lgdBBUpd5OgsR8LKuFm0wtI0SNnmsfAhSWd/dQhOl9f5KkuCEBQaT1KwxA==
X-Received: by 2002:a05:6402:3818:b0:49c:1fe4:9efc with SMTP id es24-20020a056402381800b0049c1fe49efcmr3137324edb.40.1673627738757;
        Fri, 13 Jan 2023 08:35:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id el14-20020a056402360e00b00458b41d9460sm8045410edb.92.2023.01.13.08.35.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 08:35:38 -0800 (PST)
Message-ID: <8a305883-7f7f-2f2d-a7a1-8c2a6b5e72fd@linaro.org>
Date:   Fri, 13 Jan 2023 17:35:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/5] dt-bindings: scm: Add compatible for IPQ9574
Content-Language: en-US
To:     Poovendhan Selvaraj <quic_poovendh@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
        arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, robimarko@gmail.com, quic_gurus@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_devipriy@quicinc.com
References: <20230113160012.14893-1-quic_poovendh@quicinc.com>
 <20230113160012.14893-2-quic_poovendh@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230113160012.14893-2-quic_poovendh@quicinc.com>
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

On 13/01/2023 17:00, Poovendhan Selvaraj wrote:
> Add the scm compatible string for IPQ9574 SoC
> 
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Co-developed-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>

Three people were co-developing single compatible line? I have some
doubts... Please include only real entries.

Anyway you miss changes to allOf (and/or rebasing on
https://lore.kernel.org/all/20221122092345.44369-2-krzysztof.kozlowski@linaro.org/
)


Best regards,
Krzysztof

