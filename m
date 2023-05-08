Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1516E6FB4F3
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 18:22:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjEHQWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 12:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233725AbjEHQWQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 12:22:16 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6F14C04
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 09:22:14 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-966287b0f72so395392066b.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 09:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683562933; x=1686154933;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XpcKYq5WNbrrjAsU7QABCwsl+Vtpgt8ratCRA6azzLU=;
        b=F8fFaT4exJ15WiriCuCDj7OiPh+SryIAo2VIJkZ0aTKpamfXKgR+7Vwl+XjcW3rrRY
         RfByxRr3dWp4i+we8nzuCRi4fbYXfFy9B8c/VhT6OY3H2X8Forvmm1NJcoqHdQG112DD
         o5OnOjXgn+ZsQvQMIy6TNDGOc9of5zwDud2axxHOxARl/VC7bqXwXuoMic/rY4Gn3vdl
         OXo1A76MWpYzLsp2hz3Zd3LDCPtMXsEQemUgWlIWSQ8zWxjfenWEV+q6UYRN9X8FH3lm
         tttA7kFmQioyLLy5nq7deQQZHIvqw1RywTxofXod2A6lKWtaFLWxVSzSA5d/kbSO+QlC
         FpqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683562933; x=1686154933;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XpcKYq5WNbrrjAsU7QABCwsl+Vtpgt8ratCRA6azzLU=;
        b=U6PBl59M+PsE1awKlPhAw3moNMJpsp2Ezyz0v+uCC2hT22oyEWmgSOPKfwKKgwBbRp
         nLwJp1QTHUmhZiJeL+uL3E8Miv9fD2Y0UoGPHN5NDA8JAR07SiGSVFxvwWFqK4joVjNy
         yI8dVlfMa4ynIg1nGsMx08mK6StVaysBWQomN6TQ+uwp6244oC11UFctXM46YZEYeFMb
         qan8KjoubqUa9OAFwRSfphk8VJ61kfaszdOn24Pz7b9TWSE1WPXLNREBJKLtupAcQavL
         pJgNb4xxIE+uxpiLD/cE3HWRfxu9MQSbNsUv6i1ng0W5/7fBKMQJ3A2wStO3R18ztPw4
         a6mw==
X-Gm-Message-State: AC+VfDy5505vE7DEnkb35K/O6Ai2ghWxhA7oWgZw7bdL3QfiIAxVbeSp
        v9DagDTGU23uKC1aoFX8kfZBYBiYj7avLHN1fEA=
X-Google-Smtp-Source: ACHHUZ6C0tR9B3FrVoNNhKWZTeKkcQfXspZdKGpP/WKSbwK/PFncjib6aLbjJw4xTQeMJ2HBm09mwQ==
X-Received: by 2002:a17:907:934d:b0:959:c6cb:9fc8 with SMTP id bv13-20020a170907934d00b00959c6cb9fc8mr8791011ejc.29.1683562933067;
        Mon, 08 May 2023 09:22:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id l21-20020a170906a41500b00965c6c63ea3sm165594ejz.35.2023.05.08.09.22.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 09:22:12 -0700 (PDT)
Message-ID: <dd0deabd-defa-7ead-4720-c93bdf17feed@linaro.org>
Date:   Mon, 8 May 2023 18:22:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: tegra: Document compatible for IGX
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Shubhi Garg <shgarg@nvidia.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com
References: <20230508102733.1751527-1-shgarg@nvidia.com>
 <168354524653.789162.6725251128865957840.robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <168354524653.789162.6725251128865957840.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 13:27, Rob Herring wrote:
> 
> On Mon, 08 May 2023 10:27:32 +0000, Shubhi Garg wrote:
>> Document the compatible strings used for Nvidia IGX Orin Development
>> kit which uses P3701 SKU8 and P3740 carrier board.
>>
>> Signed-off-by: Shubhi Garg <shgarg@nvidia.com>
>> ---
>>
>> v2: sorted IGX Orin position as per part number. Since
>> P3740 is designed prior to P3768, it is placed before Orin NX.
>>
>>  Documentation/devicetree/bindings/arm/tegra.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.example.dtb: camera-sensor@3c: port:endpoint:data-lanes: [[1]] is too short
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: port:endpoint:data-lanes: [[1]] is too short
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.example.dtb: pcie-ep@33800000: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml

These can be ignored.

Best regards,
Krzysztof

