Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F816587A9F
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 12:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236136AbiHBKZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 06:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235114AbiHBKZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 06:25:11 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CEEE232
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 03:25:09 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id y11so21257092lfs.6
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 03:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=32riGaBNwk3VyE6hdv+6XAqjeRv6luXruUcdG+hakbQ=;
        b=b6nSHDRd+QIf+kmD8yFl2XXoQ+t/lW5t1U8cXmezYH1hL/VW/w8RxVa2zqq6GS3qgB
         a8T2zSPYz6ZduPNDPwRnuSE2537utEOyey8hWXAR5KvFfcw2K6TgKp5EiGglOz08N3tf
         yAHvpM8CQUq3bmUs1NZoc1DfKNm2oJ63pPFRZ8eAVn4KpjUZkRXveWtfP1098DwbDIFE
         /LY2tvIAKo1uUjC2X6cH5vrWqLT5WCLtvI3CUTlKtWq8O8MpywrR4xcFsRT17XXEl9hs
         +9z+nbA5NeLqNNRUMwSZgiO+sqYDz7idzMqc2RA3rNyX9Edkw+e4BCVWbw/eNX0pGEHm
         tweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=32riGaBNwk3VyE6hdv+6XAqjeRv6luXruUcdG+hakbQ=;
        b=E4ftRfeaz37gjT+h8Ptk9Zu6NVXoX6H2vkmWGGqtUc/GIuWhDBJaUSFSB4MmGygHwr
         KIB82N5E6rr/1GjNx/Ku7CCUUkLS4lxPbKQtepwzjNo+DpnxHMVryRCQmBS8R4uSpzD5
         j6vWdm8GdwuzJB3PcrgrbaikvaowN01sPoNWYbPvVy2NEwoAKPEh8HGJs3ncfwZIhq06
         4HkQWGiBLsJuVLrCv1CXMvyKi/quB6v4RjSmIp2ZR87P7hVThnCd7Ki29XL9kVnFm9w7
         D6t3zRFxrueyQynN2hYstbIXrkhlQu4BmCRn4aZ+EBabXaiIAlmU0UcZ4GaffCpq8W6/
         M7Pg==
X-Gm-Message-State: AJIora8kMr6SML1Z9jbVXOGEOzyjS2G4yTQGFpTTOGYkOYqUFaVu3Zeu
        Lp48IeCQM2jX9ZXBneq43E6b9g==
X-Google-Smtp-Source: AGRyM1u+TP2rU6tMjJYBCvpxi30NLlMB5vS9w9pZe4/rLLuZSbqipQFppJ/UeMA3ywR6StzKur38dQ==
X-Received: by 2002:a05:6512:3981:b0:48a:6fb9:74b7 with SMTP id j1-20020a056512398100b0048a6fb974b7mr6811569lfu.98.1659435907780;
        Tue, 02 Aug 2022 03:25:07 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id f8-20020a05651c02c800b0025e66a771efsm7596ljo.136.2022.08.02.03.25.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 03:25:07 -0700 (PDT)
Message-ID: <3406e537-cc97-42c5-2342-cee18e8054fc@linaro.org>
Date:   Tue, 2 Aug 2022 12:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/3] spi: dt-binding: add Microchip CoreQSPI compatible
Content-Language: en-US
To:     Naga Sureshkumar Relli <nagasuresh.relli@microchip.com>,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor.dooley@microchip.com
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220802070518.855951-1-nagasuresh.relli@microchip.com>
 <20220802070518.855951-2-nagasuresh.relli@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220802070518.855951-2-nagasuresh.relli@microchip.com>
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

On 02/08/2022 09:05, Naga Sureshkumar Relli wrote:
> Add compatible string for Microchip CoreQSPI controller.
> 
> Signed-off-by: Naga Sureshkumar Relli <nagasuresh.relli@microchip.com>
> ---
>  .../devicetree/bindings/spi/microchip,mpfs-spi.yaml  | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> index 7326c0a28d16..8d252eb8c460 100644
> --- a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> @@ -14,9 +14,15 @@ allOf:
>  
>  properties:
>    compatible:
> -    enum:
> -      - microchip,mpfs-spi
> -      - microchip,mpfs-qspi
> +    oneOf:
> +      - description: Microchip's Polarfire SoC QSPI controller.
> +        items:
> +          - const: microchip,mpfs-qspi
> +          - const: microchip,coreqspi-rtl-v2

This is a bit confusing and it is no described in commit msg. You change
 compatibles for existing binding. This must be a separate commit with
its own explanation/reasoning.


Best regards,
Krzysztof
