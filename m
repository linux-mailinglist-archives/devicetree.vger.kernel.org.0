Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E85157149E
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231991AbiGLIbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbiGLIbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:31:41 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A659C3190A
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:31:40 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id r9so4711143lfp.10
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2Qek6UIHQ+bbCaaLnSaW6r64q6VM+tLrxNDw9LwIzw0=;
        b=q5JieP0nD1nb1WONStATLcRP5Gl7TEysSwqRsbz16Aa1NA0dPPjSljZkAAgT6/tRhG
         6VLQfc5B7FqJF2WtL15C0h/Z8c5syWmEvZ4sFc2rr9Lfe/+uZW+Uy4oI9CB/+RCex592
         IeRL4hDjn42wtoAo0/CsI07N4JDEadx3YRCjHc8R+E4Tvp4EQQw1B3vn2taMHjthwum8
         AyjosCfNoI9A4MM2ln8XfIFNWM6oX94V+NgXFJiJfwLGzHxgM4y2OaUjGEqGOenQ3kuK
         kuoZghny1QSUNlTQ++hfreBwu6Zf8PC1HuPtBKR4dhSfCWbYRHvPUpamjO9wY2TICf4P
         n3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2Qek6UIHQ+bbCaaLnSaW6r64q6VM+tLrxNDw9LwIzw0=;
        b=W/CVT9I9B+ab23ldwIxSz8fPqOimhgXbgsenWv7DlOQdbemWkQj7DSHUiZAGWBQkYR
         Csy8znbHILJI/J/03slkma/dW7IjTvwQLkea+nPjvmq85OxKP9VCBYDkUIdEXcp2yDd0
         EoxMWC9qKlxxbeX5lxVXkoOx44Ml9Cu2NjJFRvYgvVdl4Cx2x93DEs2FcFYRYmP2Q6se
         g5oLMN8HsvWj88JD+qkDKDxmZov4MZ4UtN7Udpuhzgh43PN+FNnRnN1QzzXIGqw7nCxj
         qS5faPuC8egBtqJQm/uhn2VMBUQ0OvF8Dpx6N++vUiBc7Qp+boUOL4lCrMHmlLYnOlJU
         cI+A==
X-Gm-Message-State: AJIora/s0Vqd0/eSeXbfedCvkXw2zSCrp3SWeE7xsRDazhhMrvpX7NrW
        LP9hTyZ20BKq7Nf0p1AXu4K0Uw==
X-Google-Smtp-Source: AGRyM1sErvlK54KDfmiepBO87G/PzDDHBO3xqVuq4WopTZAFMkYpJG4tiwF07DITvORCx+p1AxegEQ==
X-Received: by 2002:a05:6512:12c9:b0:489:fa6e:d371 with SMTP id p9-20020a05651212c900b00489fa6ed371mr374610lfg.37.1657614698997;
        Tue, 12 Jul 2022 01:31:38 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id c19-20020ac25f73000000b0048759bc6c1asm2052737lfc.203.2022.07.12.01.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:31:38 -0700 (PDT)
Message-ID: <68d60eb6-605d-153b-3074-37d1777ea6d8@linaro.org>
Date:   Tue, 12 Jul 2022 10:31:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/3] dt-bindings: power: mediatek: Document phandle to
 SCPSYS syscon node
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        chun-jie.chen@mediatek.com, weiyi.lu@mediatek.com,
        mbrugger@suse.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com,
        nfraprado@collabora.com
References: <20220711122503.286743-1-angelogioacchino.delregno@collabora.com>
 <20220711122503.286743-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711122503.286743-2-angelogioacchino.delregno@collabora.com>
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

On 11/07/2022 14:25, AngeloGioacchino Del Regno wrote:
> Add a phandle to the syscon block providing access to SCPSYS registers:
> this allows us to avoid using simple-mfd for the SCPSYS node and
> nesting the System Power Manager node inside.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/power/mediatek,power-controller.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> index 135c6f722091..848fdff7c9d8 100644
> --- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> @@ -39,6 +39,11 @@ properties:
>    '#size-cells':
>      const: 0
>  
> +  syscon:

This is not a generic property. You need vendor prefix and property name
(can be followed by -syscon).

> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon block providing access to SCPSYS registers
> +
>  patternProperties:
>    "^power-domain@[0-9a-f]+$":
>      type: object


Best regards,
Krzysztof
