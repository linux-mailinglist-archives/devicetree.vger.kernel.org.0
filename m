Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A036619A4F
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:41:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231707AbiKDOlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:41:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231549AbiKDOlN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:41:13 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B46B2E9E6
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:40:09 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id f8so3162061qkg.3
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PyvJmqfVd3VWZ6qT3QcDKlMRwX0tuZC6y8gqtlY2QQA=;
        b=XuHHuPvtW7n/ae334FbybZk5e6sApLe3e25U6E4nnq25nxh9wNpvB7oQNkrFK8VWoH
         uCh43xJHE5FNlJVaAoW08YllApoVQDkF9dqZQWGBD30cbk9yfbNsHaTOIs+ZIdg3RjBb
         KP/x0QxAyFQuHeujcNFvVFtHvj61DTw3qq2Pfditfj7cwI/vr2YqHKvaQlTO4XJI6ETY
         KLRRf8fx+SV7CuiGyBJd6nEYavOkc5n1kccM4qqngm7A3ZSBNDh6KNKNDqAp7KFApTMw
         YGOfg00xkUO8OsVm9eCYUJwdJvwzse3gadlOioGmZWH0BySOj2y3Zvdg+shvaqp6LFbH
         uhpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PyvJmqfVd3VWZ6qT3QcDKlMRwX0tuZC6y8gqtlY2QQA=;
        b=KZJI0bvIi93K52dqhZWINzjJ2jujAZqsNa/dBVIhLT32u18ccAJtzWJ4F7hQ5fsTK3
         694oJbhZvxyUF6jHuVm8qx5eGJil495FyclVrY6A3MZgPWdFg7tvItTXcNS43NOR7bRp
         VjYUDr2looZeuuI4rBAep9RQ2Yjc9nRNo/8OwYGBrLoouxVP6eNjdCS1Ay/l9CpekprA
         LvD5dv3pdbgDhlIurITNtiWAJplWU/6/cvUVjaCZnpqbkngmrLfnqJ+F48eqWbmTW/BN
         yGRNTfoVtXVD5s2Hayd05XUnTxVmP1OKHBeD+drwCTfpnhAsIuWtMPUW2ZWdb2SXAExi
         LorA==
X-Gm-Message-State: ACrzQf2xvbLD4uY2mAnquVhN85HvtFUk0FVZLfg9+32QzjCUu+eV3t6l
        QD7rP8X0XdaJQ+hY++BuNXhBDw==
X-Google-Smtp-Source: AMsMyM5Z/pnVlrEnymh86VDXfzfu57GuOwoaAAvM7+ASGUY3OQVMp+SOa6WfLoOIEonExNPUkIH3fw==
X-Received: by 2002:a37:815:0:b0:6e6:33c5:b27e with SMTP id 21-20020a370815000000b006e633c5b27emr295016qki.152.1667572808604;
        Fri, 04 Nov 2022 07:40:08 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id u32-20020a05622a19a000b00398a7c860c2sm2623890qtc.4.2022.11.04.07.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 07:40:08 -0700 (PDT)
Message-ID: <dac17c7a-ef18-55a4-64e0-79ff9b8bbab2@linaro.org>
Date:   Fri, 4 Nov 2022 10:40:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/3] dt-bindings: imx6q-pcie: Handle various clock
 configurations
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221104131044.103241-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104131044.103241-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 09:10, Marek Vasut wrote:
> The i.MX SoCs have various clock configurations routed into the PCIe IP,
> the list of clock is below. Document all those configurations in the DT
> binding document.
> 
> All SoCs: pcie, pcie_bus
> 6QDL, 7D: + pcie_phy
> 6SX:      + pcie_phy          pcie_inbound_axi
> 8MQ:      + pcie_phy pcie_aux
> 8MM, 8MP: +          pcie_aux
> 
> Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Alex
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 74 +++++++++++++++++--
>  1 file changed, 69 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 376e739bcad40..1cfea8ca72576 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -14,9 +14,6 @@ description: |+
>    This PCIe host controller is based on the Synopsys DesignWare PCIe IP
>    and thus inherits all the common properties defined in snps,dw-pcie.yaml.
>  
> -allOf:
> -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> -
>  properties:
>    compatible:
>      enum:
> @@ -60,8 +57,8 @@ properties:
>      items:
>        - const: pcie
>        - const: pcie_bus
> -      - const: pcie_phy
> -      - const: pcie_inbound_axi for imx6sx-pcie, pcie_aux for imx8mq-pcie
> +      - enum: [pcie_phy, pcie_aux]
> +      - enum: [pcie_inbound_axi, pcie_aux]
>  
>    num-lanes:
>      const: 1
> @@ -177,6 +174,73 @@ required:
>  
>  unevaluatedProperties: false
>  
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6sx-pcie
> +              - fsl,imx8mq-pcie
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4> +        clock-names:
> +          maxItems: 4

It's confusing to have these separate from the items. It's actually not
needed. Drop entire if and put clocks-maxItems: 4 in the specific if below.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx6sx-pcie
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pcie
> +            - const: pcie_bus
> +            - const: pcie_phy
> +            - const: pcie_inbound_axi
> +    else:

These should not be if-else-if-else because you create more and more
indentation levels which hearts readability. Just make all these if:then:.

> +      if:

Best regards,
Krzysztof

