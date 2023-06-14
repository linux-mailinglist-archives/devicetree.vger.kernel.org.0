Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA68572F5A9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:13:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243229AbjFNHNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:13:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241484AbjFNHNm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:13:42 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78C701BC5
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:13:40 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-519274f7b05so143115a12.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686726819; x=1689318819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=esjhB6FNbC1EpA195+AAnAhSVw66W/f4eIwLMazyni8=;
        b=Qdmt9FtZE9pDCTgj2b/5u43jUbAH+QGW34yMXH8ELwLQaPlaOaQqFvONc/VLmRbzzv
         mbRB1WjOKYWr8ChYE+wGsye+zvj3Rf9QG6GUf3YAjax+r/sPr5KbZwES2CQslsL5cGd8
         Dsi+K0uIjfSK7N5dwOF7yy6uGJKEXyQChR6wWtjFdHbXJbMcP+ewflU2MLR7VNZev3yn
         nkwayUyejXjvlCwFVASsYYy/vZ2qSPjvVmdf9wzQqSMgmquEGMOEjdY845CoGc6imcY6
         jnaY2CgDyYrSZtePupztTtufCgdstxTql2RDns+378YujR/unp8diGu43Beq+wsCZj9t
         eM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686726819; x=1689318819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=esjhB6FNbC1EpA195+AAnAhSVw66W/f4eIwLMazyni8=;
        b=SxiF71/8tU68qzEZu0RO3f9NcWPv9dzGcyR8Tbf+iM7oIQRSlxAi5tPf/k7JwdEkte
         KZJCW+UJuZ/r7NcXxSFcsBODpkLK9Xn344TbcCG4i0Skr+dnHLpTwtpJS6KigQX2QEoY
         xsUJMOVUPY6bpUXyhaeiWiIyhbbGxH3BZiyAH1VK1ay6hd7FxW7ppnSTKfFeEfqMRjWr
         OVUJIx5e9rMZFT8F2ePppbiSgfWzAuDBaST1bHoL4CIKdmOFv/QQOxu95aIQKfXqhI6P
         D+yZyFpsxGLFeKnM+r1MjtqmZeE1re0gIo7DST1UEzHZ6uU19fuym9cMcnxOAm0TltYl
         RQPA==
X-Gm-Message-State: AC+VfDwb1j+DNzf7l4zpeluZJ+0R8Wn/q6L2V6NpS2YUrRDO5nb4PG6V
        pamGLV9ixe8nsQGrysl4p+TOog==
X-Google-Smtp-Source: ACHHUZ74GqZI5n7DD7l+seK7RspzJy2be50nrAxgF0QALAzfeJz/QPWtgJwKx1qQM3opxU4IOBMSyQ==
X-Received: by 2002:aa7:d9c1:0:b0:518:6e09:425c with SMTP id v1-20020aa7d9c1000000b005186e09425cmr3395161eds.9.1686726818958;
        Wed, 14 Jun 2023 00:13:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id v26-20020aa7dbda000000b0050cc4461fc5sm7296614edt.92.2023.06.14.00.13.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:13:38 -0700 (PDT)
Message-ID: <f5b5438a-48ce-8151-cfaf-09b4c5965c97@linaro.org>
Date:   Wed, 14 Jun 2023 09:13:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 02/26] dt-bindings: phy: describe the Qualcomm SGMII PHY
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-3-brgl@bgdev.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612092355.87937-3-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/06/2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Describe the SGMII/SerDes PHY present on the sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


> +properties:
> +  compatible:
> +    const: qcom,sa8775p-dwmac-sgmii-phy
> +
> +  reg:
> +    items:
> +      - description: serdes
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: sgmi_ref
> +
> +  "#phy-cells":
> +    const: 0
> +
> +additionalProperties: false

Please put it after required: block.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
> +    serdes_phy: phy@8901000 {
> +        compatible = "qcom,sa8775p-dwmac-sgmii-phy";
> +        reg = <0x08901000 0xe10>;
> +        clocks = <&gcc GCC_SGMI_CLKREF_EN>;
> +        clock-names = "sgmi_ref";
> +        #phy-cells = <0>;
> +        status = "disabled";

Drop the status.

With above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +    };

Best regards,
Krzysztof

