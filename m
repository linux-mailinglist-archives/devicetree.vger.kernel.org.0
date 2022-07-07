Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 494CD569AAD
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 08:47:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232342AbiGGGrJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 02:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232136AbiGGGrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 02:47:07 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64DEE2C674
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 23:47:06 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id y18so10202320ljj.6
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 23:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ORqi6wxL3kK6m9SHgKlfeEe+zmKSxqFTgb7yiNIvOeU=;
        b=PraNs8gbpIt1Zs2+HzsxBWREEY9MzvD2us1oVGkjux8QNNHhQxXEfXEjV0Wxe4o3jR
         ZQlr47z3zj2GV5Ky41fn2utvGmCATv6SB0zDerZUdXAeAw0JPx2SXs5omCwZrfUZ9HBN
         X5ovgRJXELEd8rb+mI/fXw8h0Y66oO8bsA+0L1dQtP5Zy1H+s/VwO+9ZkDXXwsDRKaN1
         hrkZHfaEt73O6HmvPJc1b2iyvFwxsyFrqUDE7b987AtcxEgXt5G/xyE5ybZQmhONU22N
         2OE0zAdpb40Un4DQs2u+joOQjbqaS5XsSVBRvJqe142EJExfS7YlInY8zuflROo9vSw+
         m1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ORqi6wxL3kK6m9SHgKlfeEe+zmKSxqFTgb7yiNIvOeU=;
        b=m2Lpd+ZqH5TFYVN/pMAFNHmTlSG5Hz9KMHj5UizKTgOkrL0nEDS1VQoeT77e1DJKEc
         yqmB1drIIl2lfb7oh+EhKvU40LbDRY5ua56Hsao/Lgy/1xXpMD1syUjq2Gbo7g7HTUBq
         EZQtAyljqrBysbt6oAOW0mlcd2Y1+e/OxMqAvZE68Xbvylq70I4LuMWJ5lI8AqcPZDlS
         MgpBR3Ja/4g2KL05oLCnH3KchogIvCkaeKj/zx7M4vATQOP/f3zGYmDCuf1nlbZPdNWV
         Gvoh4xGSzYl7HTwpivr4jWr5RA0WxiFmOUSIQEU6nEUUD+FDPmnzR4APFUx8qhixl7LN
         RDew==
X-Gm-Message-State: AJIora8xxJxCgs7us0B2YT4Yx89utq/sZShTB86A2V6DmEn0Kjr4O1ds
        QC2bZQ25WnWWChRzGE6Xh0QGOw==
X-Google-Smtp-Source: AGRyM1u71iUPG3at0BpkKCazPwBmgMYBMalIpGwgfvn4YnquFPcwW+Y5hM3ZZajjLRXJGbGxm8go3w==
X-Received: by 2002:a05:651c:2127:b0:25a:897b:1413 with SMTP id a39-20020a05651c212700b0025a897b1413mr25381590ljq.121.1657176424814;
        Wed, 06 Jul 2022 23:47:04 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id y8-20020a197508000000b0048745483f2asm515250lfe.23.2022.07.06.23.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 23:47:04 -0700 (PDT)
Message-ID: <d5845ed7-5d40-bac3-a522-a14c8876cfea@linaro.org>
Date:   Thu, 7 Jul 2022 08:47:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add Moxa UC8210/8220 series
Content-Language: en-US
To:     Jimmy Chen <u7702045@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>
Cc:     Jimmy Chen <jimmy.chen@moxa.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220707054044.22266-1-jimmy.chen@moxa.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707054044.22266-1-jimmy.chen@moxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 07:40, Jimmy Chen wrote:
> Moxa UC8210/8220 use Freescale i.MX7d CPU
> 
> Signed-off-by: Jimmy Chen <jimmy.chen@moxa.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index ef524378d449..00b2df05087e 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -767,6 +767,8 @@ properties:
>                - toradex,colibri-imx7d-emmc    # Colibri iMX7D 1GB (eMMC) Module
>                - zii,imx7d-rmu2            # ZII RMU2 Board
>                - zii,imx7d-rpu2            # ZII RPU2 Board
> +              - moxa,uc-8210              # MOXA UC-8210 board
> +              - moxa,uc-8220              # MOXA UC-8220 board

Entries go here ordered alphabetically.

Best regards,
Krzysztof
