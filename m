Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0208961972F
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:13:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231607AbiKDNNf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:13:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbiKDNNe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:13:34 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A3352E9E0
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:13:33 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id o8so3139148qvw.5
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1bnFZ7o4kg+fqVaSO5UqWHHFD2jpODXgYxhzkNtuqlI=;
        b=JvpieB1N3npmqXZHfwJWhY4LJava9QpaBTNT7a2mHKoJ70YY6k5LfpbanjxCvuYO+D
         g0jEvvkfF7CDgXwSEFv+i90DfNHG8nLCD25sBGbhIQ4S2MLBha/6bJM/RPs4lfsVYI+6
         o3P4T3LCNt4Uz/0jBJ7L/CRhloZWhqkBx82aIF+zqqQxZkzq6CWlqAparkH+m3AHi94p
         zaADUzIwmh5uvVeYXzLwsl78W6DGYjtlhZKpU89JtAegedn1xmwjRIfmWP53U/5zaHqF
         NUgjF4VFUqKFO25c6vFtuLBahQQ8BQ7rJrEZTYWa3i8j2NR+vNU5q/kY0bVa/2R1ng/v
         +2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1bnFZ7o4kg+fqVaSO5UqWHHFD2jpODXgYxhzkNtuqlI=;
        b=G4RTNrd+XHJpjtEe7FUJBKDDqevk6puxEWIYm5m4H7UigYPq8NNQ/o667/sVJQiP0N
         xteBi5ygwK6HCf1ZOBvMIlz5ibFPVTKa7chmfSVtj4b20iTy3RsA3xSewvbaKYgy/rpW
         11+256dGmcoF3X1jkutbRiVaoLlCYaNv5GMowqrYcQpIEpJ/dCVsLqgssgx7687Aae6V
         FsK8WkCK0nBaBwN81v30h6XiKZGGj2iagKTvIwHbXlLF77bzVK90FMbgkJMpyiMf9UP4
         vw2+k8CLm629OgSiNh4p4juY8OxOVWcDujvTp0u5lKhGDLcPJ6c6RqcrSG+9Crrh/cjl
         7new==
X-Gm-Message-State: ACrzQf1SJuYKSZTKjU0okvgOnxaU48UfARM+Em5OXr8mpmXR1wAEMIk9
        zHbZF3pnkOR7qXMsNu4x/6OINg==
X-Google-Smtp-Source: AMsMyM5X4IARocSixuDRx2dMkgmzWDzfdHur9P5jdQq+TlTDZVwjOV+Mu0q+kTJafF0mq1aPZzUhAg==
X-Received: by 2002:a05:6214:202b:b0:4bb:56b0:4979 with SMTP id 11-20020a056214202b00b004bb56b04979mr30734499qvf.94.1667567612401;
        Fri, 04 Nov 2022 06:13:32 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id u23-20020ac87517000000b0039a372fbaa5sm2377669qtq.69.2022.11.04.06.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:13:32 -0700 (PDT)
Message-ID: <73ce512d-1d2b-5e0f-86da-dffef06423fe@linaro.org>
Date:   Fri, 4 Nov 2022 09:13:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Rockchip rk3566 box demo
 board
Content-Language: en-US
To:     Andy Yan <andyshrk@163.com>, heiko@sntech.de,
        linux-rockchip@lists.infradead.org
Cc:     krzysztof.kozlowski+dt@linaro.org, pgwipeout@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221104123804.484109-1-andyshrk@163.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104123804.484109-1-andyshrk@163.com>
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

On 04/11/2022 08:38, Andy Yan wrote:
> Add device tree binding for Rockchip rk3566 box demo board.
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 244c42eaae8c..618c78fb9d5e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -754,6 +754,11 @@ properties:
>            - const: rockchip,rk3568-evb1-v10
>            - const: rockchip,rk3568
>  
> +      - description: Rockchip RK3566 BOX Evaluation Demo board

This does not look ordered by name or SoC number.

> +        items:
> +          - const: rockchip,rk3566-box-demo
> +          - const: rockchip,rk3566
> +
>        - description: Rockchip RK3568 Banana Pi R2 Pro
>          items:
>            - const: rockchip,rk3568-bpi-r2pro

Best regards,
Krzysztof

