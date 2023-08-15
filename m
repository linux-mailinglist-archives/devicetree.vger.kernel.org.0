Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F5177C6FF
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 07:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234607AbjHOFT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 01:19:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234709AbjHOFQ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 01:16:58 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A38D61FF2
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 22:15:58 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so678872966b.3
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 22:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692076557; x=1692681357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9DcNIhmYiedc7YAAaUDTwseiwW1WSirSX4X1QMozncM=;
        b=EqFsvYUS7kD514OEFpT729cORUW7iOU9gyABhtRxUw/iso84K/+FIupjT14goCyRoT
         IGCw+Ot99zcvkJQ1VyOXNkju5piuc38G79TCSddAlpiPG5IiCNJU+SqGb+Ob0NkwScEI
         xUquHpa2anpapPtWOK9H+aBy3Ciby+QsqTAk7JyukpkMZPNWHdXVZobISSexqKG/wTGB
         RHhIzO34Cq1nkNOvhNS9vva9ymIpE0C1iVIEwlTsssUNDRR4dUkVd45NU6O67dbs0Hs8
         RXLWeyN1Ks+gk0QyP3K+P/NpA6WTmyiIXH4FdpAlGfqMhORcCM6fS6c0DBwqLxqlUpUS
         paLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692076557; x=1692681357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9DcNIhmYiedc7YAAaUDTwseiwW1WSirSX4X1QMozncM=;
        b=Ng7WGg7fzPZ/2pjQzSJbzStEdq5VfOv4frzT6wRmgsLCZtGLvRwPLRfdNjsvQBCHfO
         oba/WymcVPknNFDiLxqPRyz+fumBTxCmdfXTO80ePxwqR8diPYlyrEhxVljvkln5bbN1
         cBSTsl5JkVuJbRFI3w9o/U5Xa0x6t+xEJEmKoknzJQeLfCExystwk1nGSb9D4CqDNWcg
         qhhyFVwfIi57AUWjbcBt9My1I24f8R3DgrawcDCJ5HVg+PhQBkTgN4eg4sRmcmhN0nT3
         tNPAYVke/LAiESGV2BokvkYBwvpfodAmNCkNWOG2P+9A/seoOk8pLjf42twP8Et2wZvV
         gjuQ==
X-Gm-Message-State: AOJu0Yy28/hcCVec7fFzNV1TqvFn54wGkYUZRP3BgaQZIHL7nDF1xzVU
        uNBeq5ou0CVDTEMNlzqReYIe7w==
X-Google-Smtp-Source: AGHT+IG1RrxofX9CeLU3M5cH+vSbJ+2a07TkS8A2zon57uWZ71OkHwvioJ2MjmW8tI5SL1pQZJX3zA==
X-Received: by 2002:a17:906:5306:b0:993:dcca:9607 with SMTP id h6-20020a170906530600b00993dcca9607mr8692678ejo.2.1692076557112;
        Mon, 14 Aug 2023 22:15:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id w20-20020a170906385400b0097404f4a124sm6517600ejc.2.2023.08.14.22.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 22:15:56 -0700 (PDT)
Message-ID: <1c385849-490e-1d78-0394-1ca51e3ce81d@linaro.org>
Date:   Tue, 15 Aug 2023 07:15:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2] dt-bindings: arm: mediatek: convert audsys to yaml
Content-Language: en-US
To:     Eugen Hristev <eugen.hristev@collabora.com>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        angelogioacchino.delregno@collabora.com, matthias.bgg@gmail.com,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org
References: <20230814085342.8474-1-eugen.hristev@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230814085342.8474-1-eugen.hristev@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/08/2023 10:53, Eugen Hristev wrote:
> Convert the mediatek,audsys binding to YAML.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> ---
> Changes in v2:
> - remove comment reference to inexistent binding

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.

...

> +
> +  audio-controller:
> +    type: object
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        audsys: clock-controller@11220000 {
> +            compatible = "mediatek,mt7622-audsys", "syscon";
> +            reg = <0 0x11220000 0 0x2000>;
> +            #clock-cells = <1>;
> +
> +            audio-controller {

The binding and example are incomplete. This should be sent together
with the afe conversion.

Best regards,
Krzysztof

