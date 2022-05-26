Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C786534F1D
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 14:30:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347258AbiEZMaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 08:30:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347247AbiEZMaA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 08:30:00 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19AA24968B
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:29:59 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id m20so2641891ejj.10
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aLoZyAFphV/+60wu8181za3z3TK7CcZiTOyjHwozI0E=;
        b=IMbPSBOijUcaivu5Arrk0t2nJPwfbUW7Sga0kCu3L8a6WXzxUjePZz2p4dv+dO6Zow
         khevmCi6bSuaABdqA1N7e4+O4+fnWNgvtMqH89zOkZYEjveamQP6irdAnpIsve41AKmT
         9u5vJL4aMl/QYcZhX58Rjl1KhFeeqMu/zLWwNnPt+obrgE7ByQj3qQdf4qUQ6MN0U2iR
         pN5/rzMMalA5gDnrtjKo+MFmvEJzeStT9w6aVmYWPyCoPNRFZk/wNXCJcmTrLlyV3Yia
         1QY3v8q1OYU6h8Nafh/gSG7XFuzJOSTDVh765PoY+A5bbydjmSLk3RFkAjSvIOh4KtZO
         iXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aLoZyAFphV/+60wu8181za3z3TK7CcZiTOyjHwozI0E=;
        b=MdHF7PuWqEvLnVXJplzpSSPzeYlbF5D5j/E/OJREpLj4FbvrJV+f8MI1+///5Pd5f9
         PB/yZaonfq7pma8d+TtDlgA0Hjnife1yB8R/hdY+vyhQl6aUhY76F8V9QUJbu30XtuEw
         7VNuf8LRoSiavOARgWZW5seoAbCLaF8jv62+LOfn1VCcKpqATRDi75VMAeY2QYCr5qmi
         7Ni6AA0mmW1g+1WKk1tCgbWrUMx1QEEEziwbOBK0st3Rt+B84K1JOXyZJeo+g5a7BP//
         657JVkB5lr1qOMRY0dQPRnbaZaj9xnYQ8Y+3w1g9BZ1dw7YQ9K/hvBixWiLP83i8Pmaa
         QLgQ==
X-Gm-Message-State: AOAM531iE3MywC39DG2gu1oPOJjxlYCL4gNb/a8zXDTeJFAps7Wh6VtJ
        KIFXsFD8bKbP4ZnQRJ2NF606+w==
X-Google-Smtp-Source: ABdhPJxG77domyUfSS44VyjZJFYAAxPQs0E5cMcm+PO05g3XF9SR+kU+148+z/UT7qbqHImcDWlLiQ==
X-Received: by 2002:a17:907:971a:b0:6fe:bdf6:b67e with SMTP id jg26-20020a170907971a00b006febdf6b67emr22107884ejc.312.1653568197689;
        Thu, 26 May 2022 05:29:57 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h8-20020a1709063b4800b006feb3d65337sm474568ejf.102.2022.05.26.05.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 05:29:57 -0700 (PDT)
Message-ID: <8c4941a1-e047-1352-32ba-8595cd0143f0@linaro.org>
Date:   Thu, 26 May 2022 14:29:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: trivial-devices: Add two I2C TPM
 devices
Content-Language: en-US
To:     Alexander Steffen <Alexander.Steffen@infineon.com>,
        jarkko@kernel.org, linux-kernel@vger.kernel.org,
        linux-integrity@vger.kernel.org, devicetree@vger.kernel.org
Cc:     peterhuewe@gmx.de, jgg@ziepe.ca, krzysztof.kozlowski+dt@linaro.org,
        Johannes Holland <johannes.holland@infineon.com>,
        Amir Mizinski <amirmizi6@gmail.com>
References: <20220525165849.7789-1-Alexander.Steffen@infineon.com>
 <20220525165849.7789-2-Alexander.Steffen@infineon.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220525165849.7789-2-Alexander.Steffen@infineon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/05/2022 18:58, Alexander Steffen wrote:
> Both are supported by the upcoming tpm_tis_i2c driver.
> 
> Signed-off-by: Alexander Steffen <Alexander.Steffen@infineon.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 550a2e5c9e05..dc52822331dd 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -135,6 +135,8 @@ properties:
>            - infineon,slb9635tt
>              # Infineon SLB9645 I2C TPM (new protocol, max 400khz)
>            - infineon,slb9645tt
> +            # Infineon SLB9673 I2C TPM 2.0
> +          - infineon,slb9673
>              # Infineon TLV493D-A1B6 I2C 3D Magnetic Sensor
>            - infineon,tlv493d-a1b6
>              # Infineon Multi-phase Digital VR Controller xdpe11280
> @@ -323,6 +325,8 @@ properties:
>            - st,24c256
>              # Ambient Light Sensor with SMBUS/Two Wire Serial Interface
>            - taos,tsl2550
> +            # TCG TIS-compliant TPM with I2C interface
> +          - tcg,tpm_tis-i2c

One flavor uses tpm-tis, another tpm_tis... I guess it is too late to
make it consistent, but let's stick to the one more reasonable, so:
"tpm-tis-i2c".


Best regards,
Krzysztof
