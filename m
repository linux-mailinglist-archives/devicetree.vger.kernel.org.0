Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63C6273CF40
	for <lists+devicetree@lfdr.de>; Sun, 25 Jun 2023 10:18:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbjFYISd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 04:18:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbjFYISb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 04:18:31 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F38B8E5D
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 01:18:28 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-987c932883bso313448266b.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 01:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687681107; x=1690273107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YyYrDJ8fuYo21IUU/41iyM7E0JOtMPHgyXxR9kefR/Q=;
        b=ZY8jTAI9ThnU4zFzzORAoTNLErx+bT3/6ych0xkK/T3UwWqZP0FjzyYeEzsS4+E9J4
         0ZTxB5Q4AU30m2a/n7nX/znyX/e/saCYFeZ+VGy8o0ozHK5KwVP/lXzJyHISaXYc1Gyh
         /SGg8SzGLXoxU/Pun5F5RB28zrhHgvapuOB+tzQbcaAkqLYgW4ZrGBPf/2x6JbYaNinQ
         ENBhWFOQvAegM2g56rve8cQX+yHzaEgQK+SnJB81yhEbgI63W56bNmNoImqreLqeaDYc
         qtnLK+OnnxZuUCMkInykb4mAcqThf1nThBxlYuEsEsB3v3Xjvezd7G9p2fXeYRYJtMWy
         SWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687681107; x=1690273107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YyYrDJ8fuYo21IUU/41iyM7E0JOtMPHgyXxR9kefR/Q=;
        b=eVkzmKJurcj2uzugTCRJvH7esTriSbY/NXyhlemMMc1Od3ldxci2STJz1ENfxx79MX
         LvnEmquHqUtPFBA6i4Ln/mlWYCgeFJVsZtz7TOubMpAW6/iVieguw3MusRf8HDmoW3Ze
         xFJhyOxr5nAufSI2RqBn8S3RI/GT4a5cNn+49dCKfuo4WFi6J28BxdKiusYF40Upi+/y
         OukrNRfd9NfuPoB1rvUTwpyq1UHvDr7mj8uhVIhqrG3pPaHeaDBDgPYPOIn0t9oxVuk+
         S54yhqYJX6zdeEcDXNAVrVHzh3iv7Ux/wMruE6Jm9rRz3F3tjTocW3qcy2UFBRQ3eDYC
         pw5A==
X-Gm-Message-State: AC+VfDyC2WvJcxYf7wzHS84eyT5NsjiCRnc3O4yXft1HPC1kYyAj0M/2
        Nz2TCDOusByc86enEHHIx/OW9Q==
X-Google-Smtp-Source: ACHHUZ7yzJ6tsypegBOiWbbiSkyN2uURwFLVu+TuwX5Dsxfgoq6d6pwakhXySjJu+SRFru1lBfLLDQ==
X-Received: by 2002:a17:907:26cb:b0:982:bbc7:15c0 with SMTP id bp11-20020a17090726cb00b00982bbc715c0mr24851166ejc.66.1687681107002;
        Sun, 25 Jun 2023 01:18:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709061b4e00b0098880feae36sm1816796ejg.153.2023.06.25.01.18.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jun 2023 01:18:26 -0700 (PDT)
Message-ID: <d26640a0-52f6-9a4a-404d-fb1b5223924f@linaro.org>
Date:   Sun, 25 Jun 2023 10:18:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/4] media: dt-bindings: media: rename nxp,imx8-isi.yaml
 to nxp,imx-isi.yaml
To:     guoniu.zhou@oss.nxp.com, linux-media@vger.kernel.org,
        linux-imx@nxp.com, devicetree@vger.kernel.org
Cc:     laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, xavier.roumegue@oss.nxp.com,
        kernel@pengutronix.de, jacopo.mondi@ideasonboard.com,
        sakari.ailus@linux.intel.com
References: <20230625080916.3553621-1-guoniu.zhou@oss.nxp.com>
 <20230625080916.3553621-2-guoniu.zhou@oss.nxp.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230625080916.3553621-2-guoniu.zhou@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/06/2023 10:09, guoniu.zhou@oss.nxp.com wrote:
> From: "Guoniu.zhou" <guoniu.zhou@nxp.com>
> 
> Rename nxp,imx8-isi.yaml to nxp,imx-isi.yaml since the binding doc will
> also be used in other i.MX SoC, such as i.MX9 serials.

Subject: you have too many "media:". One, first is enough.

> 
> Signed-off-by: Guoniu.zhou <guoniu.zhou@nxp.com>
> ---
>  .../bindings/media/{nxp,imx8-isi.yaml => nxp,imx-isi.yaml}    | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml b/Documentation/devicetree/bindings/media/nxp,imx-isi.yaml
> similarity index 97%
> rename from Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml
> rename to Documentation/devicetree/bindings/media/nxp,imx-isi.yaml
> index 6038b9b5ab36..1ce9440bde32 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx-isi.yaml
> @@ -1,10 +1,10 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: http://devicetree.org/schemas/media/nxp,imx8-isi.yaml#
> +$id: http://devicetree.org/schemas/media/nxp,imx-isi.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: i.MX8 Image Sensing Interface
> +title: i.MX Image Sensing Interface


This patch by itself does not make sense. Could be squashed or just drop
it. No real reason for renaming.

Best regards,
Krzysztof

