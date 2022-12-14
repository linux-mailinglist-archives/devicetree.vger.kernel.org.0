Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDB8964C66C
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:55:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238001AbiLNJyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:54:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237956AbiLNJyg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:54:36 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1681D57
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:54:35 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id h10so6095729ljk.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R8EzNEAgwzYomqvjIPtt320Z4mc8BVXKL5MkEZzJO8U=;
        b=agXh3Do5P4t1pmIZFiC7C7W3cbw91CKhYp94OmXPlGi7nie145bY0XwZwQ/v3TrkVW
         g699syysxVtbQx/K7KhLSjveR5xc+0Hxtx8prvQzSLUfs1E2MLsa1yjfieabdDToA25v
         z5jawduElToaBsb6bRRillZJAlZhO+1YB6E2sem2/JFAIt/fifIJ4v6iWQnMNljn3lYg
         +UNRwjsQ9Z3mrMzWnDF9wzlBDLj0jK7v3yaH5OiAVqYbet6t9Mud3U+x1dH3rNGvg8bR
         V6/NSdkzIdjs/WZBOy0M9QHH41M0MkKxs0gF77twEyMTDSJMeRdNG1NwQQE3neXU9Hhw
         rg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R8EzNEAgwzYomqvjIPtt320Z4mc8BVXKL5MkEZzJO8U=;
        b=p1afzrT358TfLUx1zP2qT+3nxOEmAHx+p9opwbpNnE9bUtnHf8P2fRKR5VzuYdIQuc
         0OlO8mMrH3cc5jbOmvzb7mfBYLW51isLKed1ISpztoe0fgkRgjUBarkrGWVYb8+8kYuE
         QXTj/frb+1x12EJJEGRmDiBm+w8yyUD6r8/IVDBWVe+ufYczoJBY+DU7HCD+E25nas7x
         SCbjDTBdQbdM1OgiA5CsQ00+HFWzMHBe4Z1mAXkHwwIAZ9nl2+f2v+z1JuFiWpvCTCUs
         lqKxstl07u+IkYNR1uOjJMF92NkmRamY9AYlWgf0dDaUAVUOsOwjgmM9luo1RvMFxbRt
         +/Wg==
X-Gm-Message-State: ANoB5pnANgzh4L0I775HEN676muW/gZIy3fZH7L7AOPPCQdQLtC+JW+z
        lV4t5J+K9xNobGhg7uKWSMZy3A==
X-Google-Smtp-Source: AA0mqf5MH17rQRCr7E+If9oOsnaUnGQyLICSw3RfYoz4nhcFY16UxqFkZdfeZSZZulL6GPI8ZZmsPQ==
X-Received: by 2002:a2e:6e17:0:b0:279:7e54:8386 with SMTP id j23-20020a2e6e17000000b002797e548386mr6252259ljc.34.1671011674147;
        Wed, 14 Dec 2022 01:54:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b15-20020a056512070f00b004998d9ccb62sm744242lfs.99.2022.12.14.01.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 01:54:33 -0800 (PST)
Message-ID: <76c5cdd9-7b90-7ce5-02c4-a2a6e5bb3a30@linaro.org>
Date:   Wed, 14 Dec 2022 10:54:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 3/4] dt-bindings: iio: accel: fxls8962af: add new
 compatible string
Content-Language: en-US
To:     Han Xu <han.xu@nxp.com>, Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Sean Nyekjaer <sean@geanix.com>,
        =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        Matti Vaittinen <mazziesaccount@gmail.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Clark Wang <xiaoning.wang@nxp.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20221213171536.1880089-1-han.xu@nxp.com>
 <20221213171536.1880089-5-han.xu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213171536.1880089-5-han.xu@nxp.com>
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

On 13/12/2022 18:15, Han Xu wrote:
> Add new compatible string for the NXP FXLS8967AF accelerometer sensor.
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> 
> ---
> changes in v3
> - Start commit message in capital
> - Describe all these chips are compatible
> ---
>  .../devicetree/bindings/iio/accel/nxp,fxls8962af.yaml         | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/accel/nxp,fxls8962af.yaml b/Documentation/devicetree/bindings/iio/accel/nxp,fxls8962af.yaml
> index 65ce8ea14b52..8f07ade21abb 100644
> --- a/Documentation/devicetree/bindings/iio/accel/nxp,fxls8962af.yaml
> +++ b/Documentation/devicetree/bindings/iio/accel/nxp,fxls8962af.yaml
> @@ -14,12 +14,16 @@ description: |
>    SPI and I2C interface.
>      https://www.nxp.com/docs/en/data-sheet/FXLS8962AF.pdf
>      https://www.nxp.com/docs/en/data-sheet/FXLS8964AF.pdf
> +    https://www.nxp.com/docs/en/data-sheet/FXLS8967AF.pdf
>  
>  properties:
>    compatible:
> +    description:
> +      These chips are compatible with each other, just have different IDs.

As pointed in other mail, the chips are not compatible, so drop the comment.

Best regards,
Krzysztof

