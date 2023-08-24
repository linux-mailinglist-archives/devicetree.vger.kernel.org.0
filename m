Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C75C7787761
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 20:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242941AbjHXSBh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 14:01:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242938AbjHXSBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 14:01:08 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61E311BDB
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:01:05 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so104472e87.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692900063; x=1693504863;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cPxzv9t3p39NU/gbtPOY6IoN2rD1VfceHzg8RtFq2Bg=;
        b=f5esVyKQZ71yizujJYUIxZT8FsGtQ242ReO/a7NQ5Qmp8n9byp8JLP1U4lU8TNL1nA
         QrOzJWM4Rt4NwMvbi7DMi9zyB72syss94Xt0ADsdKSoQf1CU/Z0a5qFXD412/69y8Oox
         1Rn9l2gjjBkGIfcGM0+krsGoE2rbcQxxITrgCtEURkXqVi9fI0OIusURAJxuSfgG48v7
         wuLto5fodq20ekA+QrG7PoAcnlhUk6COyKzL6vMXwg637jy1oSczgdncZnebqmePC1d4
         STU3zhX+I2bXhvbAHYIgGjp+NNUHzemsK3OUTd3/1LeCI+Q1r1iii7eaSSRuMnFfje6T
         c87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692900063; x=1693504863;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cPxzv9t3p39NU/gbtPOY6IoN2rD1VfceHzg8RtFq2Bg=;
        b=SmoUyYUX0poAer892bVIl634TAEzHnG+368ZbG2jz5wLbG9yPkMKUwvn04M9+Z2fhW
         0b7/LJrs8Wtil48VbYc35jazbKTAPS6f4rmVHNFzU7B2d7BDbgL4AbyflowzaOJGuWqc
         gmHBOwhTAq9xPkyCsN8qr7FK6FR9IZWGD1KcrbCg1ogoQlI0Jp7OCtntkHi5lob/ZirT
         mBsjSVODbOS1VYwf8Fn8gzout4h/dctQSuQzXp/dHCUsz4ccFGcaELHNq78Dk1g/JUIv
         jghXfBwTnxT9RMLglc9oOu/8w6RqA+Th09hOFvOkDqLrnQdktIQLAhVSVcUVwopws1vd
         xI7g==
X-Gm-Message-State: AOJu0YxTkRMvLNo+J0qt6yB+x2Wi9ZGvi1rwo78aHtPoqUDxYlnUfGC1
        e0xVIAkPPaVReUIh3zdszKmQCw==
X-Google-Smtp-Source: AGHT+IF3oQjhQ/CrsCHxbcStZaLH02wx5R+6zcPSfNyc15LlOGfevXm2PkaqTPDf0az24ueTeNtBMg==
X-Received: by 2002:a05:6512:3444:b0:500:78ee:4cd7 with SMTP id j4-20020a056512344400b0050078ee4cd7mr9528093lfr.23.1692900063647;
        Thu, 24 Aug 2023 11:01:03 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id c6-20020a056402120600b005232c051605sm17323edw.19.2023.08.24.11.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 11:01:03 -0700 (PDT)
Message-ID: <f935f35f-e00b-4ebe-2071-de9d8f2f6512@linaro.org>
Date:   Thu, 24 Aug 2023 20:01:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/3] iio: adc: ltc2309: switch to new .probe()
Content-Language: en-US
To:     Liam Beguin <liambeguin@gmail.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230824-ltc2309-v1-0-b87b4eb8030c@gmail.com>
 <20230824-ltc2309-v1-2-b87b4eb8030c@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230824-ltc2309-v1-2-b87b4eb8030c@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 18:55, Liam Beguin wrote:
> Recent changes to the I2C subsystem removed the id parameter of the
> probe function. Update driver to use the new prototype, and keep this as
> an independent commit to facilitate backporting.
> 
> Signed-off-by: Liam Beguin <liambeguin@gmail.com>
> ---
>  drivers/iio/adc/ltc2309.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/ltc2309.c b/drivers/iio/adc/ltc2309.c
> index ee1fd9b82e2a..d26bbd70b0ff 100644
> --- a/drivers/iio/adc/ltc2309.c
> +++ b/drivers/iio/adc/ltc2309.c
> @@ -158,8 +158,7 @@ static const struct iio_info ltc2309_info = {
>  	.read_raw = ltc2309_read_raw,
>  };
>  
> -static int ltc2309_probe(struct i2c_client *client,
> -			 const struct i2c_device_id *id)
> +static int ltc2309_probe(struct i2c_client *client)

This patch does not make sense. Do not send patch (1/3) which does not
compile and is buggy, just to immediately fix it. We do not add known
wrong code.

Best regards,
Krzysztof

