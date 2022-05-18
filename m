Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD11352BCFC
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 16:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237310AbiERM6z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 08:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237099AbiERM6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 08:58:54 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF811A4087
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:58:52 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id w14so3425802lfl.13
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=/4c75HBBrQtyKZe1oTaF49nSMgrQWL8mcueI0q9ffG0=;
        b=Fn3iBHWHbWALoWRK4bXWK2xHCuOZTlC8ktsMz/7Hv+ylyj0OeUnJo3Cqk/FsAgiPgY
         JUgnBewMkagrlaPd0nQWWeTbOtSITkV3dVk3+/nFJQ/Gp4qcWNtrgh0JcJ8aSi4jC3zc
         pYAH0I3iVt33AKNZPXla31LyhznORJ44hwQudh3KqvREyrg3JcVdX/pjtklgEu9xIraK
         beMVtiiBFlHgIBo9h8jRoNl26CLQsD3r8V8A91dFLhhloZkpDi4I36vgASQoGYASAXwK
         fmwyQvr83xOpf4vOLV1ESdz9ejMUs+QkyNlMamCysAbo58Aqelis/gX9d2Exs3/OQuzX
         4QcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/4c75HBBrQtyKZe1oTaF49nSMgrQWL8mcueI0q9ffG0=;
        b=ghrsrgS72gMf4tozoR/Qlel67i4L7gefgwWHVqkGzzWFryIf39kFimdFvaKsziy8om
         dueEwL4sF3oUbaUezQL1B7TLulUaD8yk3fxMahXIqFlWBftGR5rhOlru3UfPOPVj7akw
         TLRGmb5XbXdVEb5EHb8vL1i2+WEw18s7Nz6trQ1sBN12Zmq6MrMyPXpxP2qVSvpAxbuA
         Kb7JmcZArzC9S3zqRR9A9jqmMDg/kWaoWJgeeKB1otYPmMTbKa7CZWjODUuFHCSIzkLG
         ggFxnb99VVLhvmlc/Ieu1nfkcvw1v8xAVklq5nVEpBayaD5rwZ4dTzz9uif7c1N4aor2
         EGbw==
X-Gm-Message-State: AOAM531/uIVAOyAs2swjU+CmjLv3IFIPx0Mir4hK1jzSihtf8ln6Rw6K
        9G2wxjcowx2x+4C4TJGW+jQQIw==
X-Google-Smtp-Source: ABdhPJwxaxxcSNq9dQhSTP/uq5UypNwjPEXpFOUN8vGoyWSoL+krXde0Kki/b83Ct0fzkJSkuO0OZg==
X-Received: by 2002:a05:6512:108f:b0:473:eded:175f with SMTP id j15-20020a056512108f00b00473eded175fmr20555796lfg.630.1652878731217;
        Wed, 18 May 2022 05:58:51 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d17-20020a056512369100b004744d5f8f26sm208264lfs.52.2022.05.18.05.58.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 05:58:50 -0700 (PDT)
Message-ID: <2905b9ae-df66-eb12-60fd-306ea2d3d626@linaro.org>
Date:   Wed, 18 May 2022 14:58:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/6] dt-bindings: regulator: qcom,spmi-regulator:
 Convert to dtschema
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220517205341.536587-1-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517205341.536587-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 22:53, Robert Marko wrote:
> Convert the bindings of Qualcomm SPMI regulators to DT schema.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>


> +$id: http://devicetree.org/schemas/regulator/qcom,spmi-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SPMI Regulators
> +
> +maintainers:
> +  - Robert Marko <robimarko@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,pm660-regulators
> +      - qcom,pm660l-regulators
> +      - qcom,pm8004-regulators
> +      - qcom,pm8005-regulators
> +      - qcom,pm8226-regulators
> +      - qcom,pm8841-regulators
> +      - qcom,pm8916-regulators
> +      - qcom,pm8941-regulators
> +      - qcom,pm8950-regulators
> +      - qcom,pm8994-regulators
> +      - qcom,pmi8994-regulators
> +      - qcom,pms405-regulators
> +
> +  interrupts: true
> +
> +  interrupt-names: true

I think we misunderstood each other. Old bindings indeed did not require
the interrupts, although if present they should be always defined.
Therefore here you should specify number of items and their names.

Rest looks ok


Best regards,
Krzysztof
