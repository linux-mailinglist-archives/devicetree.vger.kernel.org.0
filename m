Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EA415F21EA
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 10:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbiJBIOg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 04:14:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbiJBIOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 04:14:35 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 372F33D5AC
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 01:14:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id j16so12697051lfg.1
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 01:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=smyTsAfUE7heT1neJ/Is5/HlV2l0xWqGYA+JzcTkHvw=;
        b=jSsmyNqURAbVD/ZMrciFDVcrqSRgnz5VehOkGMBmJA13iIfUr6lO65bKjY1tEpsNCf
         MFDkLajwO9vaG2IbzTV/Nk0WZDTTaXFSfP8BppwOLOHeChp2FIao1uvUy5v519Z2DNRa
         BH39s7NQBiA2iEmeFSywNBI4mkXNu3QeaX2YDv6BPGbecvBfRktS5bO62JiplMvA6O2f
         jCaolCJ7b5nb17CQoQYCDohYBek+FlYqgyv5EQiXLHESfnaVtxTCWbaP3QYbljk8Qgs/
         K/a64XHm2N5Pxpg4VeEfJ7uN8vIGKn76/uA6K8SG7JXllii9ecBU7Zcjo4XsLiLS4Bcn
         XPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=smyTsAfUE7heT1neJ/Is5/HlV2l0xWqGYA+JzcTkHvw=;
        b=1pOS7jlgk+Urgz45AfBXsxqx8Rk1psUTo13JiOvbgC1GOFm1yJ4ezmpb1jDsI7NDKK
         XNFkdG2pm5VkmP3fvQtCjS+dQn30Xm1opYp1iDbKBhk36g0xnPOecHGHSPYPTkzgYbyt
         ++GNRz0/7ntfZ0OQQ18OiD7cbEUikORAHqQgxu7BWMFyRkPNfmz2U4KI8zqXbRn2i9G3
         FGPjkqfRo3LCS/qI+96rzZ7CF9OiyLZwIWMSQapQjJ9ffyhxuGlYcJrkEp3Bgbbv0gGr
         cPhgTEpjzclIFngTY2TdjMhBYiiZGDvpMD6SE0qHlOUNP9k8MWbv7v1vScmCsgpJ/R55
         hc0g==
X-Gm-Message-State: ACrzQf1Dxp1ydptB8HRNMjRIYRlTbIyTiTj+h79Vk5DATvFrBEixNg15
        kQhoHJAOoTpivER56zeWEute/w==
X-Google-Smtp-Source: AMsMyM6kN2WlymcwRx3G74EsH5UWcyFaZoIV9fwvMQs5ttOtWbj/x+4qocHzm6XCGdS8mf0/ctiAQg==
X-Received: by 2002:a05:6512:1399:b0:486:2ae5:be71 with SMTP id p25-20020a056512139900b004862ae5be71mr5494157lfa.246.1664698470593;
        Sun, 02 Oct 2022 01:14:30 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b18-20020a056512305200b00498f0434efdsm1011302lfb.19.2022.10.02.01.14.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Oct 2022 01:14:30 -0700 (PDT)
Message-ID: <9da2cca9-bc8d-c9ae-7611-6fcee37bbe21@linaro.org>
Date:   Sun, 2 Oct 2022 10:14:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] dt-bindings: dma: gpi: Document SM6125 compatible
Content-Language: en-US
To:     Martin Botka <martin.botka@somainline.org>, martin.botka1@gmail.com
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221001185526.494095-1-martin.botka@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001185526.494095-1-martin.botka@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 20:55, Martin Botka wrote:
> This commit documents the newly added SM6125 SoC
> compatible.
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> ---
>  Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> index 7d2fc4eb5530..a21c40fc6439 100644
> --- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> +++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> @@ -21,6 +21,7 @@ properties:
>      enum:
>        - qcom,sc7280-gpi-dma
>        - qcom,sdm845-gpi-dma
> +      - qcom,sm6125-gpi-dma

Please rebase on top of:
https://lore.kernel.org/linux-devicetree/20221001211934.62511-2-mailingradian@gmail.com/

and mention it depends on it.

Best regards,
Krzysztof

