Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11BDC512C13
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 08:56:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241896AbiD1G74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 02:59:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235345AbiD1G7z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 02:59:55 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D7572B19F
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:56:41 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id dk23so7620695ejb.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sMmOD7GMEu0/gsFoG9iqyQyFiCKRtOd12iyqG/63olA=;
        b=QOWbX6PH/GWuJhnKuTgq7cjozoP88TYKSMHfYLVvD+t6SpJ1bN/CQ1ebK136Z2NcMD
         ot803Y0xBpZmxiRNBL5lza5CkBU8AZ5PZPk1/TtFiBG5DmbnGnt2nG/IsrovXPFA9qN8
         LfRDMeQ4nAlRXcL4LBUlROGjn6zRLtzhX4y4Qt9KMo7dGL3RBh3C1CvVYiIc769uudqB
         gMawnH1WWU8645kWmBliXd4EQAgUBQn1P/vLlrPAqk5+CvaeJ56dsA+Y3EfWjQz3EYsB
         U1meYTY3gYh6i2aVVnSWgeqZo0O60fRTNNM2FgH3rx8rQv1XpRdMIAOikV/Aa3+2akvg
         Jjhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sMmOD7GMEu0/gsFoG9iqyQyFiCKRtOd12iyqG/63olA=;
        b=xntYi/VG2jZkSWEG0+elVUKnX6loDTsqZVwepCcNtZFKsBxZvsBWWf9vVa7HOtdrM8
         ZUyPjqaYC4+vdLKlAWPPmO2/BTm0ov9IEy5jOo15It+NPfvNo+7gOd2aZrHcA/oMAaok
         tL4beo2a6Rb1mYJ53gBYJ7vp2afNuZyMCP6oIWdrCvnPABSHp37nGtWO/hebPzhGQR4P
         R2H3O+E7ARtmgrVQD+dR8aNkrJiGaTkCQ/eAgaQIDp4NEZ0OxtAanwpDpvDJLarKUD11
         LiFsRHksulLHS2YBoUVnJtt4XBxIuKDKpNQr4wdTOjhQFMMU/pAYhSH6x0ZXTbf7B+Fa
         2Uhg==
X-Gm-Message-State: AOAM532DH8bTNGq3EIvvr6Ex+aeg17kqy3PeHAapzuDgXGZx0WL4aQQa
        PBlTeUPeIpa0TUgd2m7Mgcpma51EvgfjRA==
X-Google-Smtp-Source: ABdhPJyHs2CcAo3hM0iwJpMnUhMYNDytz03ohxNqhQvdBuPX83AJ83SUKNTfFuzXRtXfHfQT0v91Bg==
X-Received: by 2002:a17:907:6294:b0:6e1:ea4:74a3 with SMTP id nd20-20020a170907629400b006e10ea474a3mr29866571ejc.168.1651128999848;
        Wed, 27 Apr 2022 23:56:39 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m21-20020aa7c2d5000000b0042617ba6395sm1002195edp.31.2022.04.27.23.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:56:39 -0700 (PDT)
Message-ID: <4d37f41c-4463-73e4-7271-8d191e9953af@linaro.org>
Date:   Thu, 28 Apr 2022 08:56:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 01/11] dt-bindings: iommu: arm,smmu-v3: make PRI IRQ
 optional
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-2-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427112528.4097815-2-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 13:25, Andre Przywara wrote:
> The Page Request Interface (PRI) is an optional PCIe feature. As such, a
> SMMU would not need to handle it if the PCIe host bridge or the SMMU
> itself do not implement it. Also an SMMU could be connected to a platform
> device, without any PRI functionality whatsoever.
> In all cases there would be no SMMU PRI queue interrupt to be wired up
> to an interrupt controller.
> 
> Relax the binding to allow specifying three interrupts, omitting the PRI
> IRQ. At the moment, with the "eventq,gerror,priq,cmdq-sync" order, we
> would need to sacrifice the command queue sync interrupt as well, which
> might not be desired.
> The Linux driver does not care about any order at all, just picks IRQs
> based on their names, and treats all (wired) IRQs as optional.

The last sentence is not a good explanation for the bindings. They are
not about Linux and are used in other projects as well.

> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/iommu/arm,smmu-v3.yaml           | 21 ++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> index e87bfbcc69135..6b3111f1f06ce 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> @@ -37,12 +37,23 @@ properties:
>            hardware supports just a single, combined interrupt line.
>            If provided, then the combined interrupt will be used in preference to
>            any others.
> -      - minItems: 2
> +      - minItems: 1
>          items:
> -          - const: eventq     # Event Queue not empty
> -          - const: gerror     # Global Error activated
> -          - const: priq       # PRI Queue not empty
> -          - const: cmdq-sync  # CMD_SYNC complete
> +          - enum:
> +              - eventq     # Event Queue not empty
> +              - gerror     # Global Error activated
> +              - cmdq-sync  # CMD_SYNC complete
> +              - priq       # PRI Queue not empty
> +          - enum:
> +              - gerror
> +              - cmdq-sync
> +              - priq
> +          - enum:
> +              - cmdq-sync
> +              - priq
> +          - enum:
> +              - cmdq-sync
> +              - priq

The order should be strict, so if you want the first interrupt optional,
then:
oneOf:
 - items:
    ... 4 items list
 - items
    ... 3 items list

Best regards,
Krzysztof
