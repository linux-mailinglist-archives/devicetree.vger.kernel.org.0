Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DE7657B58B
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 13:32:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232234AbiGTLcJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 07:32:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231826AbiGTLcJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 07:32:09 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B61536EEA4
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 04:32:07 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id u13so29752284lfn.5
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 04:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vE1DDTdSMSu0BCMGaO7at2qVYfDnw/cSZN0qW1IzOb0=;
        b=BpcMxXscs++dlvbm7hfl4ot+wnp69DZFLoKjSeXRBmwHgptcHIdn9rFi4FjIcHxzUw
         J3hLmbdBdLRFtBBmtmxK9uC6Itr2nAZoG8KeMxlPspAcTbP5NCFel4xXIf86HGU0Enwh
         5BXKvg40efoTnDVbSdIiPe9/s1Hrl2Qc32NjQAUg3Zc3spF9RIOMV6gWciM2i37qTKFC
         nERFQ08mYUOBqIfqQ1NvVYMm7Fk9SvmTDvoNZLAP+AyexsbXgj17YNzSernx56oEh1j9
         L9UpQSYeuSAe0lbjdQqGW5OoPGWcxG1E1Rx9VL5bcKFzf7Yfe74auYoMPAbal6c2HT4b
         7z0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vE1DDTdSMSu0BCMGaO7at2qVYfDnw/cSZN0qW1IzOb0=;
        b=CZwcCoFe681y59p6aPF+1J/Kaf6+oU3iZoMHqjfQmCYviz5AP8jEpMbARgsKjFERrt
         IaZW99pAo7g3VdGn+2uYiO02ITHycVf/ztH6Ovtk5ddHYFc/ZOkemYTUMkhZWlUZEnMr
         0LwPfL0sitUmOL4NF9mu+ZCwpjjk/ePFk0sSunaeSXgykS+xbm+giU/61mW8WkEPPPoG
         oxNmMmB6vu+y/4PMxOtkWNHIFDET2dSc2bdD6yYjp+nRzjTnH7EwdvdAitkfLjGudO/j
         WRlXKjtQl6+HfGNm8JrCfeOPLY0Cs3QiOVSsDLJdC9LGuMHK0RVrRx696XNqwc09Pa17
         jeGw==
X-Gm-Message-State: AJIora/o2M/IOCIwZosvBsmmt+FYT7PuZ7HzzwxWw0MhGrXqxFnxebX8
        O3iQbysNyrjAxuhhrDdrnMO31g==
X-Google-Smtp-Source: AGRyM1sdCXMj7pl6v4LR2t+sXr/IRvz5U7a1oGnWWqdjNGPkEPSYrvlTzfVGjLw3GXBIUxnN/Ru9lA==
X-Received: by 2002:a05:6512:3d0b:b0:48a:55d:e5eb with SMTP id d11-20020a0565123d0b00b0048a055de5ebmr19478436lfv.572.1658316726061;
        Wed, 20 Jul 2022 04:32:06 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id a27-20020a2eb55b000000b0025d5b505df1sm3166137ljn.136.2022.07.20.04.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 04:32:05 -0700 (PDT)
Message-ID: <d836f94c-4e87-31f6-5c3a-341e802a23a6@linaro.org>
Date:   Wed, 20 Jul 2022 13:32:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] dt-bindings: net: cdns,macb: Add versal compatible
 string
Content-Language: en-US
To:     Harini Katakam <harini.katakam@xilinx.com>,
        nicolas.ferre@microchip.com, davem@davemloft.net,
        claudiu.beznea@microchip.com, kuba@kernel.org, edumazet@google.com,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, harinikatakamlinux@gmail.com,
        devicetree@vger.kernel.org, radhey.shyam.pandey@xilinx.com
References: <20220720112924.1096-1-harini.katakam@xilinx.com>
 <20220720112924.1096-2-harini.katakam@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720112924.1096-2-harini.katakam@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 13:29, Harini Katakam wrote:
> From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> 
> Add versal compatible string.
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Signed-off-by: Harini Katakam <harini.katakam@xilinx.com>
> ---
>  Documentation/devicetree/bindings/net/cdns,macb.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> index 9c92156869b2..1e9f49bb8249 100644
> --- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
> +++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> @@ -22,6 +22,7 @@ properties:
>            - enum:
>                - cdns,zynq-gem         # Xilinx Zynq-7xxx SoC
>                - cdns,zynqmp-gem       # Xilinx Zynq Ultrascale+ MPSoC
> +              - cdns,versal-gem       # Xilinx Versal

Not really ordered by name. Why adding to the end?

Best regards,
Krzysztof
