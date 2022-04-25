Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7BDC50E8AA
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243583AbiDYSxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236979AbiDYSxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:53:00 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF6E1299CC
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:49:55 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id k23so31432244ejd.3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1hQTA1PGEYJsN4F8Y7LWNocY0SyIgUb8snsbrurEsxY=;
        b=kUe9aP3x6KEkRUZaYvCY++blrSutJseBMZRhCerxhLL1c9xR0GoAra5ZoTKKTrvF7k
         /qmV4Wkd74AywNlRdILJq17jgbxPmSyKaIlztwopoyTJas3OXUp9EVeJyPHO0AqA7tX+
         Df6G2gMcSCvgfIEVC5/9upKiSIpd4W0pqAQdjvKneSGWLIdEIQB7ablwhGsDWd4OcBrW
         Hnyni48nvIqifVqc0NtxS/J4h5kJkg0OK4ysSU+eLdHXHlDZcgMONGQXobfSDyeR13hV
         ZXq4P+Z/swEmHVMSfCUjIVa2UTfaqNU1E9ps0xWn3l2ZbAHeCzuxQMhzP8xrgp0jhOl7
         X7+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1hQTA1PGEYJsN4F8Y7LWNocY0SyIgUb8snsbrurEsxY=;
        b=6gc/8/gwPpC43neZf+I8cmdppsSS9X8BcJ6+cxSg20vJHGpsd89poV9d7QZIfmSHAX
         ahIJjNV8syOHDqlVD4EMbN74o/KHwIYg5HLGgbHx94QKNuRj5Z64lr2xvzVucZkXo6BA
         XtzxPvQ86nySKbtoBIxxelitIADNgSZcCGITmVCsXcwi+cFFYlBD0FtbtTY7V6oVzmmp
         dnzk36yT1pPkdm+uRpZo2j3SPai7YTzuFMLWpCTZPNa3Z63Nj6eebWb2zow3nOMoL18u
         KCFSgEcZ9SpVt7GKZ0oPjSGzGzrfqQz2LmcZCqJ6T38bjech9aFJwUHePelJsUWpqewJ
         RP8Q==
X-Gm-Message-State: AOAM532UhY/+TS7Hke+yV2l8osf+DYmGaYwz+7XRqN6h1xoSdXXlS4Pl
        HaQsXEJ9amRGTPA22sml/TpE3YoCm15vBA==
X-Google-Smtp-Source: ABdhPJzUt2DP4UQfV/ZTp6ZBoo8SY1ibuzP80xsKb9tbKknWYQr2g4Vfi4eM+BJ+L6AuN5QTPMVf8g==
X-Received: by 2002:a17:907:a40e:b0:6f3:998a:a082 with SMTP id sg14-20020a170907a40e00b006f3998aa082mr5103914ejc.229.1650912593827;
        Mon, 25 Apr 2022 11:49:53 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b16-20020a170906709000b006f3a8aac0eesm278385ejk.0.2022.04.25.11.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:49:53 -0700 (PDT)
Message-ID: <de0b6b20-7b4d-64cb-0ae0-457bbc78cc59@linaro.org>
Date:   Mon, 25 Apr 2022 20:49:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: Add Atmel AT30TS74
Content-Language: en-US
To:     Peter Rosin <peda@axentia.se>, linux-kernel@vger.kernel.org
Cc:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
References: <abe35ea9-1929-941a-6391-2ce1bc047161@axentia.se>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <abe35ea9-1929-941a-6391-2ce1bc047161@axentia.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 07:59, Peter Rosin wrote:
> Document the Atmel (now Microchip) AT30TS74 which is an LM75 based
> temperature sensor.
> 
> Signed-off-by: Peter Rosin <peda@axentia.se>
> ---
>   Documentation/devicetree/bindings/hwmon/lm75.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/lm75.yaml b/Documentation/devicetree/bindings/hwmon/lm75.yaml
> index 72980d083c21..8226e3b5d028 100644
> --- a/Documentation/devicetree/bindings/hwmon/lm75.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/lm75.yaml
> @@ -14,6 +14,7 @@ properties:
>     compatible:
>       enum:
>         - adi,adt75
> +      - atmel,at30ts74

Looks like wrong indentation.

Best regards,
Krzysztof
