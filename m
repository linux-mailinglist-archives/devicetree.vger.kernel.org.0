Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C63A6737274
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 19:16:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjFTRQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 13:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjFTRQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 13:16:30 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 826AD1730
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 10:16:29 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-98746d7f35dso623333066b.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 10:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687281388; x=1689873388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4pF+pbuKwnnUSf7HjydZZ4Y6kXmV3E8StMoT4kTs5Yk=;
        b=J4qs28kqJpyhRb76QRp0I40cAnEaxKxBKkXMXnsUK1SP/LyXeHWqxRClnHzdvqv2eP
         JRaLqIv7GOpgvUuNPQbEXebCYL0itLC7W6Bq5X3NVXuEK164vSfo9eZ2L0lQ6CbwmZ61
         TfzVDrpwKoGcsimDrCPZL10b3/O8Fv1MroAtHDfLK4A2B5ilxRmpQN4vwAaGNVUeyvRZ
         HKu3SSS5+2N4Yc2OFuiX2QC5NTDZ+lHlR5yehThHBUyUVhOxn4x10ImF+bvqEJZS9B6r
         B3Z7vc0g3dmxmyyP9tBvhO4IP0RZhNm3znLMy3aOMQj5Dus/3431mApyqcPIfEDqwXqz
         ic5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687281388; x=1689873388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4pF+pbuKwnnUSf7HjydZZ4Y6kXmV3E8StMoT4kTs5Yk=;
        b=jIoSr1luxUKeeu9INsapYgvbOHh6hMqlS9JgaxqRzn6QCTdmw/e9gDxtNKc0T4rnKn
         JS9lKeMUl+LqyxsBtpVk9CEaABb63dD/xdp1uKaEA2hbCogfas/F3LQbIUAQnMh+Cpu+
         noHgtkyTRwUX4q+npf/2nC+jx/sTiX3vxN8wRtedQ0ZOJ/KW/Y8+488hpv55gt+x3zP0
         JJn2kquvjN+7UKYX+OV1WgB+8bXLwCf+BXjeqkZZl2rlJePsaAu5sJ+j5l+Itekm4ILm
         P/rZF0XzY1fqpHKjdjFBQedPSgUUSlYemcyySDBoQ1zzGjDm0UgW6OPhgJL9vnRpQ9zJ
         Tpfw==
X-Gm-Message-State: AC+VfDz9kskSA2jVXKyDpJV95Nq0APXiUYAB8OxDh0StGyuHbI4B9KZ2
        XHA6QMUCDmtDZs21LR8ZHv9wsA==
X-Google-Smtp-Source: ACHHUZ6JpIdZ+DsHzq/hrEBvw1zDmz7mGJJKZVMQvPZoMnHUZFDF9712tTzeKqGk+c3TMjn0w5lLjQ==
X-Received: by 2002:a17:907:d0b:b0:974:55ea:1ad8 with SMTP id gn11-20020a1709070d0b00b0097455ea1ad8mr14239950ejc.63.1687281387968;
        Tue, 20 Jun 2023 10:16:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id y19-20020a17090614d300b00982d0563b11sm1715211ejc.197.2023.06.20.10.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 10:16:27 -0700 (PDT)
Message-ID: <5ae8c143-64cf-469d-b4f2-bed5bd9ee87b@linaro.org>
Date:   Tue, 20 Jun 2023 19:16:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCHv2] dt-bindings: arm: socionext: add Synquacer platforms
To:     jaswinder.singh@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org
References: <20230616035813.255062-1-jaswinder.singh@linaro.org>
 <20230620170725.13794-1-jaswinder.singh@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620170725.13794-1-jaswinder.singh@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 19:07, jaswinder.singh@linaro.org wrote:
> From: Jassi Brar <jaswinder.singh@linaro.org>
> 
> Socionext's DeveloperBox is based on the SC2A11B SoC (Synquacer).
> Specify bindings for the platform and boards based on that.
> 
> Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
> ---

Attach changelog after ---.

>  .../bindings/arm/socionext/synquacer.yaml     | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
> new file mode 100644
> index 000000000000..c582d9c31213
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
> @@ -0,0 +1,29 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/socionext/synquacer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext Synquacer platform
> +
> +maintainers:
> +  - Masahisa Kojima <masahisa.kojima@linaro.org>
> +  - Jassi Brar <jaswinder.singh@linaro.org>
> +
> +description:
> +  Socionext SC2A11B (Synquacer) SoC based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - socionext,developer-box
> +              - socionext,synquacer
> +          - const: socionext,sc2a11b

That's quite different change. What is synquacer in this case? You claim
now it is a board, but based on previous discussions and U-Boot source
it does not look like such. What's more, it does not match U-Boot
sources and there is no Linux user of this, so it contradicts points of
our previous discussion.


Best regards,
Krzysztof

