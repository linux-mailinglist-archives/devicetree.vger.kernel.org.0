Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D8395B4F64
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 16:15:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230404AbiIKOPA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 10:15:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230345AbiIKOO7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 10:14:59 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75041DF8C
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 07:14:57 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id r12so6132521ljg.10
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 07:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ddlxEjUCTa5p+PAW4T51jeoxEb5xm1//QtVZS2B2ZgI=;
        b=Pm5lgItTseorDVzE7EcLBSIE7xajSLwpFiaQ7ZXfo/QmOGxopfTWQiCuzwkc5Vee5n
         hYqVXFbIFAxcKLG8SKRBEzvjCblPH0Em4s0y3JyZN/7qHdE8sH12SsLjtMYPfZloGC9H
         r2TXYqW6LvWmJSLNFuPo4Wt2WXUuA78oOJ78yE5B/xgjE4bsW7nLG/ZAuxcA+0QL5feZ
         zV9ou4IIxW7ZdOrVRQFlIZDyjn4pYiQKysTmnzxGInc4d3JgIYfHEFIrLkErn7wOZSjV
         b9PBLy11MqGtddV6ZnyNFN7dPnbFtHyyDRiNOJSJSzCT7L/V4YPWNLyqq94x5304S+SG
         lbIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ddlxEjUCTa5p+PAW4T51jeoxEb5xm1//QtVZS2B2ZgI=;
        b=tRzMDDh88WpRECUo52YQEy7+3wPNcBxCGTt/OgO6fjQ2CKJDueGEUWvbyewvyg8DlF
         Iu6Lv+ohpPaMDf5sIB9vAsojlJHMcpjgJ0yucWC4U8VOVWgnp2/dZYUqm47EbWnz0ANw
         AlfwNUxWQy69kLCU7CQEobfLb8xpevady+aiad2RiBvNkXBRwcJK0gtOiVBy0SCqgqeh
         wZaFonNUJcHS4QjcQQF+knVbJmh0pZbp5g4/7OwKjdFIj+L3Ze5sDgG4zij1TxHmJ1Wx
         jSGqlKq9A0/t+CjBbHQsplnH6KWGZ6E/IcE2Kj0kYkDBFiSugBkLkS5DPXwnNfQ7vqKh
         H9Ug==
X-Gm-Message-State: ACgBeo1Syh2wIWs4PcpXjWoMalQSJoYlRLr1LPNW8WOhyo7dJqLI1gLm
        KYTxHaZcCRhL6DlT/ZKqcZ5TAA==
X-Google-Smtp-Source: AA6agR6/WvcfCz+aB6nzGKHOQzd/f18YPvf0ok5/H1DGcGun+eLMBpR7AZ8TZeI7MuUlFXNCufiC2Q==
X-Received: by 2002:a2e:9b91:0:b0:26a:ce59:c517 with SMTP id z17-20020a2e9b91000000b0026ace59c517mr6117571lji.181.1662905695793;
        Sun, 11 Sep 2022 07:14:55 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c9-20020ac25309000000b0049488c97d39sm617989lfh.212.2022.09.11.07.14.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Sep 2022 07:14:55 -0700 (PDT)
Message-ID: <11e61fa5-f770-9c9f-23b9-3d1dcb205bc5@linaro.org>
Date:   Sun, 11 Sep 2022 16:14:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: pci: qcom,pcie-ep: correct qcom,perst-regs
Content-Language: en-US
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20220911135547.23106-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220911135547.23106-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2022 15:55, Krzysztof Kozlowski wrote:
> qcom,perst-regs is an phandle array of one item with a phandle and its
> arguments.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index 3d23599e5e91..077e002b07d3 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -60,8 +60,10 @@ properties:
>                   enable registers
>      $ref: "/schemas/types.yaml#/definitions/phandle-array"
>      items:
> -      minItems: 3
> -      maxItems: 3
> +      - items:
> +          - description: Syscon to TCSR system registers
> +          - description: Perst enable offset
> +          - description: Perst separateion enable offset

Unfortunately this still complains:

qcom-sdx55-t55.dtb: pcie-ep@40000000: qcom,perst-regs:0: [28] is too short


where 28 is the phandle...


Best regards,
Krzysztof
