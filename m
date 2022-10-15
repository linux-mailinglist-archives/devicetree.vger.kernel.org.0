Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF42C5FFAD9
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 17:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiJOPOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 11:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiJOPOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 11:14:33 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05CF1101D3
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 08:14:28 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id r19so5421896qtx.6
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 08:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWtY9IbWt5il9NHyrw2WEzVDhghebg1APkZsyDdBupM=;
        b=Ekt7K3DLeH5An4km8nCETBo6O+2kpYAzQPq9HK44a8q44AwYn7d1xBTlsHsnITEELr
         LIbmbmJIfp7W9ZJre3SuVrpDXKpSA2o4Z+nEEVrpyJ8kJGzEyf5eienFpYH4e8MrIaoa
         Bv8V9dV+XD88iG23T9SNbHWyWI6pMNG18PmwwyIIaSWdHJKiDbJ3BUkirC+5OFbN76ZQ
         BJvLQYy6j855izl+3z+1aS7JniqE8q05n48e9FJI0BdAwKuBo+Ok4171iKofjfAdj593
         ZwGEuiPJlv6/+4ELnllepdoL36zBEEZy70G8TJQqMUIBKdoWznEEKqrfulH/xeommql6
         L0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xWtY9IbWt5il9NHyrw2WEzVDhghebg1APkZsyDdBupM=;
        b=M3fIj3LThy3uhaasICxRnWB2pCuGrMei+oS7HL5lXL8N+dnP2mTSZEpndq1GVCv0YB
         qK0RVQr/NqbeyGPuWC3mQWSV37x4GjE5k/iILQll9Rwr++k9CktWuWwV8wEZTpfq5G6e
         PUNra+sjFn8SwEknhrVNr4ZPm/mZzku57W2PMtBXGbEZn4g+UfeSY1D3sQpKIfEEr52X
         w0CBscX5aiYr6uOhd1Pm3TDQhjkWFlXmpGtM6LvHbw6LObwMKJykdQC3xmAYyyNU/crl
         efOgiKysp1yNEa/G8fxOuvxMuiGLhtp32SyG3xptxIwEuFrIcASvNGEOCK/+9E8MFRQC
         vSmg==
X-Gm-Message-State: ACrzQf2jCtRlN/WC9YJ6xHntojJ+gY8Gjm+vwKao0Q95h5mlUHQKFKOi
        r8iYkEb8KzyqQ0KiQRZPR+qhfg==
X-Google-Smtp-Source: AMsMyM7zH6DUMjoJWle+jyy6K2jNqugp2kdak+DoDBE1/iIesC19EcK38vi18d/rr2qIolI5TUyCEw==
X-Received: by 2002:a05:622a:178e:b0:39c:c9ac:b4ad with SMTP id s14-20020a05622a178e00b0039cc9acb4admr2332516qtk.82.1665846867179;
        Sat, 15 Oct 2022 08:14:27 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9477:c2f0:ddea:ea08? ([2601:42:0:3450:9477:c2f0:ddea:ea08])
        by smtp.gmail.com with ESMTPSA id i9-20020a05620a404900b006bc192d277csm5192263qko.10.2022.10.15.08.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Oct 2022 08:14:26 -0700 (PDT)
Message-ID: <19a408cb-995a-4729-dac8-ac8891909d84@linaro.org>
Date:   Sat, 15 Oct 2022 11:14:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 6/6] dt-bindings: qcom,pdc: Introduce pdc bindings for
 QDU1000 and QRU1000
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221014221011.7360-1-quic_molvera@quicinc.com>
 <20221014221011.7360-7-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221014221011.7360-7-quic_molvera@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/10/2022 18:10, Melody Olvera wrote:
> Add compatible fields for QDU1000 and QRU1000 pdcs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
> index b6f56cf5fbe3..68a80e1c77c5 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
> @@ -26,6 +26,8 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - qcom,qdu1000-pdc
> +          - qcom,qru1000-pdc

Un-reviewed.

Bindings do not match your DTS, so you are documenting different
hardware then upstreaming.

>            - qcom,sc7180-pdc
>            - qcom,sc7280-pdc
>            - qcom,sdm845-pdc

Best regards,
Krzysztof

