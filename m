Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A19E72F63C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234344AbjFNH0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:26:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243700AbjFNHZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:25:47 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DA219B6
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:25:45 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5169f920a9dso12975016a12.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686727544; x=1689319544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZYUp6f+gg9nccS7jAmhavJJDmvTnWdlOMMShB2IfyLM=;
        b=f+YcEOcsWR8xL+5nkBdWG/XfQuwyydCnwar9FyE0t3Il1q/TbBYviUimty8SCA+6JI
         OVAHeuvn5JYITI7W9hGiUU7vMeA0ISeoGPV0GNyi9lbrYkZ/vU9OKmTFoGEG1EaL80EF
         WoVjyhNosru4+9vZSX4c1N0vtx2IB2ySXYBz2+3wBy7u5yU53WuKY2tKmVQuJbfPkb6V
         ex3iX/Qm0KBiyzrxddSfGNS3SqjqzEj+Dyw+rK8fdfBGTds/xOsFw2TDpwSP/IS5ZAg6
         +eWVXA0FHOT9SHrACDTibQjZ80tQRKeJNAW01TYc+zt+xoOxBvHkKneW41gn8SX8Pj95
         V+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727544; x=1689319544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZYUp6f+gg9nccS7jAmhavJJDmvTnWdlOMMShB2IfyLM=;
        b=arnKSGRuIZ5GRHV8J2RaVzTCFXR5Ryd6pAu1irMKKOUkXflGldKM/DZ3x/p5W1bWYs
         fZM0MU0hfgR/0AdSxVOIWXGjP5xefQABWPz27/Foa1uhckoO3+KwVi0QM/arrCuntIYu
         O96gxrUWlTMCtPaOgnVtvm2FzLm3CskDS8TGY3sbL3/5MXttRVRe/cUquUBNkxtbbix1
         oRQ4kW7ia+IT6EdY5r4JFGZqqE6CvkQnFxjRizL59jg7t0Ae2dbyQWxjI8rp5lx0vyaS
         23YmaS+oW1M7FakJN17L99VRCKfMxGzFlYypeLCoEMlTFnn54w/MiMLxuhtMGCoBSRxY
         cdIQ==
X-Gm-Message-State: AC+VfDxMJ+Dq9xFHk/2fQeobszz68NS+VySeOUvzhwN8sdAs+2qWjmV/
        fNChkfekg/FSR8idoR9I4H+FDQ==
X-Google-Smtp-Source: ACHHUZ7mP70TiHTncN1MepuY33PcI4oQtT42XBiiH2VcreWZ2uAPSk4CyOcrDDgSGNYQSZjYSpcrNQ==
X-Received: by 2002:a05:6402:180f:b0:513:fa61:397a with SMTP id g15-20020a056402180f00b00513fa61397amr816136edy.12.1686727544263;
        Wed, 14 Jun 2023 00:25:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b24-20020a056402139800b0051827a12b47sm5256406edv.15.2023.06.14.00.25.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:25:43 -0700 (PDT)
Message-ID: <712b2650-f0c1-088a-612c-ef6d6bcc1eb0@linaro.org>
Date:   Wed, 14 Jun 2023 09:25:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 20/26] dt-bindings: net: qcom,ethqos: add description for
 sa8775p
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
 <20230612092355.87937-21-brgl@bgdev.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612092355.87937-21-brgl@bgdev.pl>
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
> Add the compatible for the MAC controller on sa8775p platforms. This MAC
> works with a single interrupt so add minItems to the interrupts property.
> The fourth clock's name is different here so change it. Enable relevant
> PHY properties.
> 

I think the patch should be squashed with previous. Adding compatible to
common snps,dwmac binding does not make sense on its own. It makes sense
with adding compatible here.

> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../devicetree/bindings/net/qcom,ethqos.yaml       | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> index 60a38044fb19..b20847c275ce 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> @@ -20,6 +20,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,qcs404-ethqos
> +      - qcom,sa8775p-ethqos
>        - qcom,sc8280xp-ethqos
>        - qcom,sm8150-ethqos
>  
> @@ -32,11 +33,13 @@ properties:
>        - const: rgmii
>  
>    interrupts:
> +    minItems: 1
>      items:
>        - description: Combined signal for various interrupt events
>        - description: The interrupt that occurs when Rx exits the LPI state
>  
>    interrupt-names:
> +    minItems: 1
>      items:
>        - const: macirq
>        - const: eth_lpi
> @@ -49,11 +52,20 @@ properties:
>        - const: stmmaceth
>        - const: pclk
>        - const: ptp_ref
> -      - const: rgmii
> +      - enum:
> +          - rgmii
> +          - phyaux
>  
>    iommus:
>      maxItems: 1
>  
> +  phys: true
> +
> +  phy-supply: true

Isn't this property of the phy?

> +
> +  phy-names:
> +    const: serdes

Keep the phy-names after phys.


Best regards,
Krzysztof

