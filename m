Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F97167689D
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 20:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbjAUTyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 14:54:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjAUTyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 14:54:09 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA1431E9EB
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 11:54:07 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id h12so3557492wrv.10
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 11:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aZ3lscIdSLU+4qIlRSUCjLYlbjbSdnG8zs6ToV30DxU=;
        b=Oz5Fnvrnby7oW6zTWqW1zxkjEzcy/jmRzX92SvSUGXScHBLJdNj9IiNk3YLtjcaoL+
         yyZgJAiQV+CqvrpWaLyQ4Ga3pfXOZ9NlOwPzE71Cil2H2TsEHBKPz4716f4Fz5exxA3x
         v2SZR1my3nbXIhBZVqpotGJzDWwLF8GBRW+FDV80SI6En2qNdQgP/A2O74CPQ3Uq0Pju
         j0rttR9T2n55ZnsZjNN+N8z6s8lue4KIcTkDKAWKIzk97sTBFCpLISbYKgVpyeZ1iijz
         iISn0AzDY0j0rt6vE1+tPXyOrYtoTbEOBco307KtQj7s+9RKz3P5Xa6aBLv4iAwImwYi
         hxNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aZ3lscIdSLU+4qIlRSUCjLYlbjbSdnG8zs6ToV30DxU=;
        b=vePLKqsOU13yDTzgUNoZ+kngFiy0j8HHB/s0umRTf3ViM+1g1ltYAwaOhmMnVFjLFo
         pelmvNo/XyfOhFkBShN0BkRkG/4eFBDfYADJEwIGyp+Vceue6SGpYDst4Wy6tXfPCxkq
         vaX6A/FffFagUrtnLeCdS1b8dFt8P9ljjL71t/A1uK1OezUfsK20JYXNMG5kLy1TjpCY
         kBiTf1S3dQaqVAyjq37PZkwh9ca73iKRKVi8N1R5A2Iap1O1zTGdR2QEuUQy+Nbwte7W
         J+cboT9VtZqTS0o3h/z0ovMiYyhBwCx4F4s+H0MFqscohkydsl2BO5Y/2iyyqTzBtK9r
         LHwg==
X-Gm-Message-State: AFqh2krbVx+v8OKplfdSnmOBQpmbwEImJnWH/t0fyst94O2Qi+4oNz25
        ViArz5AHWdzpCpMzWYRz9M7a4w==
X-Google-Smtp-Source: AMrXdXtYS82v/b4y0FPCVqaPwE8v3KskzZ9J4Xd26MDmSRADASIUt2JfBjMGU8kMvCJgAuCBEdSYIw==
X-Received: by 2002:a5d:6350:0:b0:2bc:7d12:7400 with SMTP id b16-20020a5d6350000000b002bc7d127400mr17170407wrw.36.1674330846310;
        Sat, 21 Jan 2023 11:54:06 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t12-20020adff60c000000b0024274a5db0asm620539wrp.2.2023.01.21.11.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 11:54:05 -0800 (PST)
Message-ID: <25a3eb81-dd0d-5c52-7f7a-a052d8ba46b4@linaro.org>
Date:   Sat, 21 Jan 2023 20:54:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Fix bindings for APF28Dev
 board
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230121140053.10242-1-stefan.wahren@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230121140053.10242-1-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/01/2023 15:00, Stefan Wahren wrote:
> Adjust the compatibles for the APF28Dev board in order to fix the
> dtbs_check warning:
> 
>   DTC_CHK arch/arm/boot/dts/imx28-apf28dev.dtb
> /home/stefanw/torvalds/arch/arm/boot/dts/imx28-apf28dev.dtb: /: compatible:
>   oneOf' conditional failed, one must be fixed:
>   ['armadeus,imx28-apf28dev', 'armadeus,imx28-apf28', 'fsl,imx28'] is too long
>   ['armadeus,imx28-apf28dev', 'armadeus,imx28-apf28', 'fsl,imx28'] is too short
>   ...
> 
> Fixes: 3d735471d066 ("dt-bindings: arm: Document Armadeus SoM and Dev boards devicetree binding")
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 3ba354578e8f..599e8fcec6bc 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -88,12 +88,18 @@ properties:
>          items:
>            - enum:
>                - armadeus,imx28-apf28      # APF28 SoM

Not related to your patch, but this looks odd. This is SoM, so even if
it was made a DTS, it cannot be standalone board. The DTS or the
compatible or both are misleading/incorrect.

For the patch:
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> -              - armadeus,imx28-apf28dev   # APF28 SoM on APF28Dev board
>                - fsl,imx28-evk
>                - i2se,duckbill
>                - i2se,duckbill-2
>                - technologic,imx28-ts4600
>            - const: fsl,imx28
Best regards,
Krzysztof

