Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A540250E7C7
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:08:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239095AbiDYSKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:10:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232257AbiDYSKa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:10:30 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEF7043AFB
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:07:25 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id d6so14334812ede.8
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=O9XRVoAwaLqAz0VKvjdeTs+/WnNOyWkzSBKJjr1GgWI=;
        b=KoaLI3WM6grOMDa/FBfYgJOEeXjsYzxUTObsQw6bUlLEy23Gf6/trLsbjs4thc5+om
         +oRP1e9jWYmCno0y3RYw71REOH1VzySgtXbWYkfwyoSB+WY7Ow0JSEVGLl+Nk5JdmeIz
         JVaDGhJVztFjgYH8uSq/Ol6LzmnrYjBP81l9D2loWzb0nCDaam5BfqCLB6Vjzez9+3s3
         cAfL3MZBIHHvit45pXqWwVz1sq5EFA38dbnXLCvbqJno3yJE55Hgwr60XhF7wL6dR3FR
         yrEeHORCoPqGl5xWPogNLGmRsUqh4gT7jkpMgtJPZcJbKfe4bMSvwXWLV60CTLXqBu2f
         JDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=O9XRVoAwaLqAz0VKvjdeTs+/WnNOyWkzSBKJjr1GgWI=;
        b=HpjvuXmpTPAHH8ePvDOxpWPdSZGYRskYZqEaY1uYtVxyg1rK5OTEn4zkgP4CHKpLYQ
         wPx4tMN2jfbsCpjISiKvzh29FF4d2AmENJJOzRQIXy/nOdpXfiSSwS/hUC5FUFkoGrio
         QsyNm9F1K1ZZGSRx4DSvwl/TvbZe1UOTXRV0l6KqvNnkRIDqD6lk5YRCxTKDY2aSyPz3
         GAMb3yA0a8c2kPr+2UpA8bweJTnW4DpD+oG2QAqVtdvwDyeqXDHqnAlsui87jXJL+jli
         LHfre/7G7CUMK9RvQXbCijHDVPgIKEYkwRdHGXOEEQ7WIam1tBwZong7Srm+3aLxDq3D
         UrtQ==
X-Gm-Message-State: AOAM533BfR2fM3PCaYv+lO9Wck77Lj3Ddvg6qOCiwmIXQkKX85CYRR2z
        IsKQUhbQ2HAVixqriqLxv+thXA==
X-Google-Smtp-Source: ABdhPJwa+byKv5S02qlMuGalcgKB61+HRaH8VosHoz/v2tW0VkTTVPLO8+wiJ+jqDrfpL08r3LJcwg==
X-Received: by 2002:a05:6402:4253:b0:423:e4e0:fdd8 with SMTP id g19-20020a056402425300b00423e4e0fdd8mr20208800edb.193.1650910044403;
        Mon, 25 Apr 2022 11:07:24 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d11-20020a1709067f0b00b006f395247b5esm1414114ejr.84.2022.04.25.11.07.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:07:23 -0700 (PDT)
Message-ID: <2c347033-bd63-05a8-94fb-2eb467e63e76@linaro.org>
Date:   Mon, 25 Apr 2022 20:07:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: rockchip-vdec: Add
 RK3328 compatible
Content-Language: en-US
To:     Christopher Obbard <chris.obbard@collabora.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Elaine Zhang <zhangqing@rock-chips.com>
Cc:     linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220425123215.1055251-1-chris.obbard@collabora.com>
 <20220425123215.1055251-2-chris.obbard@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425123215.1055251-2-chris.obbard@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 14:32, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 089f11d21b25..ce06835e8d61 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -20,6 +20,9 @@ properties:
>        - items:
>            - const: rockchip,rk3228-vdec
>            - const: rockchip,rk3399-vdec
> +      - items:
> +          - const: rockchip,rk3328-vdec
> +          - const: rockchip,rk3399-vdec


This should be rather an enum with rk3228, so:
- enum
   - rockchip,rk3228-vdec
   - rockchip,rk3328-vdec
- const: rockchip,rk3399-vdec

Best regards,
Krzysztof
