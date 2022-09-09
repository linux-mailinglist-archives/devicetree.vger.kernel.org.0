Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9C685B3138
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 10:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbiIIIA7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 04:00:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbiIIIAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 04:00:37 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AFF436DFC
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 01:00:35 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id bq23so1354506lfb.7
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 01:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uTcmPq9C8WmKzONhBGnLIvwBsDuAnPDz32iKl2zExk8=;
        b=CRizkv5r09PF/ZUTZdBDm6O6KVcB5h8NvvvVD3q4ustuzc46runapS8CiN+fyOJF9F
         nL3djjU0NVTYgSvDP4xopaL6WcW9pH8RgE6UZ9UUwuPAr32cya6XCocLN3x7P/nZA2pR
         FcVT4PFbXYQaZDXRZYtawmDdjysuoQyjHB5N1jCl+M+ADbPK6d3Schwa21dj1xYdE7/X
         /tvCp+PNmEQYSmy/CeqslQ+ubZB7u0pPUQ4T7t41M03yFKK/HNMXvMUa5zYXMY40qY3Y
         bunNOIxfsLF8ik9Hx+fVj7eUO740EydmHtxsVljssptyZvIdUA8HvIfySt0bPk5PNm7k
         d0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uTcmPq9C8WmKzONhBGnLIvwBsDuAnPDz32iKl2zExk8=;
        b=YWQOv/NYyJk8DnJXMOQmreCfI3pCcC3TdRKh8uQk+GJqy6kzkEEkqtVDWlEx+9zWep
         wjNLW1nhaXchdArlTzUDzJYNYaJYgfnF90IOWJX31Le7UrdNJ9UjeDyXQfJwj8zyAcvx
         qTXj/2VwVIGM4rQqQWl8tVaFmMlHZzwT89Ct5YSjo5aqVnyn86fLfmdc+/1d56+aG88i
         jGF9vIVtUsTve2x/GPIrMkrvVgIx1j5JfzcOXKRKJgbnxoZraK1Ph/bU9tR3umZ/nFAs
         /o0U230+ZXeTQ3l/QB7saNIcXwbHuN8naQ55RrD/HteUk8e7x5jFxeUWhMj22885UtCV
         NUVQ==
X-Gm-Message-State: ACgBeo2RuG7TY6wUJcO0PAaPoQIS+mlm7EA/SaFhptn7qyLcXemdX3Rt
        L7hlBCb5VS4+tDRDvRf2oJ1vPQ==
X-Google-Smtp-Source: AA6agR6uQAsLuHHqLvq59PBilY3DBtpqQYyXIG7ekWgfRm9sjbEPv6X7Cg92psHLV4ebHE5ZQvh3DA==
X-Received: by 2002:a05:6512:312a:b0:498:f5d4:52fa with SMTP id p10-20020a056512312a00b00498f5d452famr1164063lfd.311.1662710433406;
        Fri, 09 Sep 2022 01:00:33 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b0049480c8e7bcsm171213lfk.176.2022.09.09.01.00.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 01:00:32 -0700 (PDT)
Message-ID: <ad201ee7-d83c-9ebc-3619-64632f1f266e@linaro.org>
Date:   Fri, 9 Sep 2022 10:00:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 3/4] dt-bindings: remoteproc: qcom: wcnss: Add
 qcom,pronto compatible
Content-Language: en-US
To:     Sireesh Kodali <sireeshkodali1@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     bjorn.andersson@linaro.org, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20220908184925.2714098-1-sireeshkodali1@gmail.com>
 <20220908184925.2714098-4-sireeshkodali1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908184925.2714098-4-sireeshkodali1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 20:49, Sireesh Kodali wrote:
> The qcom,pronto compatible is used in the wcn36xx driver to determine
> which register to access. However, this compatible was not documented.
> This patch documents the existing compatible as is, since it isn't
> immediately clear why the wcn36xx driver uses this extra compatible,
> rather than relying directly on the regular compatible string.

The patch does much more - messes entirely all compatibles...

> 
> Signed-off-by: Sireesh Kodali <sireeshkodali1@gmail.com>
> ---
>  .../bindings/remoteproc/qcom,wcnss-pil.yaml      | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> index bc18139fdb91..5e4a97e9d330 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> @@ -15,10 +15,18 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,riva-pil
> -      - qcom,pronto-v1-pil
> -      - qcom,pronto-v2-pil
> +    description:
> +      Append "qcom,pronto" if the device is actually pronto, and not riva
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,pronto-v1-pil
> +              - qcom,pronto-v2-pil
> +          - enum:
> +              - qcom,pronto

It's const, not enum.

> +      - items:

No items.

> +          - enum:
> +              - qcom,riva-pil


Best regards,
Krzysztof
