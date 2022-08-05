Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A163058A617
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 08:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237426AbiHEGtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 02:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237424AbiHEGtX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 02:49:23 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFE966FA14
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 23:49:21 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t1so2138142lft.8
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 23:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7EUN6mgYtvmab9+9xYnDik55xkpctoRpJSTqZ3obc7k=;
        b=N6mJm80XjBqVXo/IbXj00jmu8VAkJXLCcAR8tgQ2afEMNFyI3C0xjff96RfQlNiINh
         zT7hZdHRCUBTy05f4IheB9Xu8cDFQB9rgKHj0rXwTscEpOrP4g7DhWCr3TxFULYIP6wm
         y3iWiJ/3iT0c7Uvxxe4Tn/Y+elBahmPXmxch3HmW0KwA4/0tFhqt6WtfmQAUIIuJ4gq+
         74203AVzxtXsTD9jx2LtwyCmlUajZnlw5wmKDeSHn3aeSd6OpO1iBpzwQPy1ncY6DMfC
         R5bCFoeSD7zxJ6HBWO/EafXTwnIV8ByQ/AWHBWSh1tnaRhtfzW1wh/CCKSM0zZ5frdrQ
         rD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7EUN6mgYtvmab9+9xYnDik55xkpctoRpJSTqZ3obc7k=;
        b=mQ4PS6cUmO2tTX80oJqZSKNvJQKKgSn1fGTCH6VE6LeENr1jhhparJ25s6A4K+kCKb
         oNFLXfk21BDliLutyw1HF9icVLst/GelX4NSryiPIMbWjNfdbf4MlP6d+imCVVADNGv5
         T8ZDmy9PjJJrnWhWk4BoOILfVot+bgznCRqt4DLWvlCO/FOhYm4xVwdRN7DZl90+NziG
         /F5bjJh3uvgZ6xvzTKYkzxuvQFEFJimSZgMOIp5B0FgWWfhX0vNhpkdTZwAq9CldhEnN
         dGTmepveSoMBInG9QAA7HSMaoMQ3gpArTpf2TT6CjskQRGI6pQxij1Fnc/bokmNdMGRN
         8JXw==
X-Gm-Message-State: ACgBeo0I3YbzmQuA0yt1O9YLmuFA0dRJnhida+A29+l8f+k1ICOUVCvc
        WI230YvBBDEdnOFlU7/MLBN4Zw==
X-Google-Smtp-Source: AA6agR47AKu8+Dquc1tvUBq64luu4Y6CBLJt42MI5yUUSbfwGNOzOKTHtmqOaeJQ19EmscutbMy61w==
X-Received: by 2002:a05:6512:31d0:b0:48b:1262:23be with SMTP id j16-20020a05651231d000b0048b126223bemr1961478lfe.679.1659682160256;
        Thu, 04 Aug 2022 23:49:20 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id o3-20020ac24e83000000b0047faab456cesm361251lfr.237.2022.08.04.23.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 23:49:19 -0700 (PDT)
Message-ID: <a83c5784-6c86-497c-78d8-1550e8add7ec@linaro.org>
Date:   Fri, 5 Aug 2022 08:49:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 2/4] spi: dt-binding: add coreqspi as a fallback for
 mpfs-qspi
Content-Language: en-US
To:     Naga Sureshkumar Relli <nagasuresh.relli@microchip.com>,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor.dooley@microchip.com
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Valentina.FernandezAlanis@microchip.com
References: <20220805053019.996484-1-nagasuresh.relli@microchip.com>
 <20220805053019.996484-3-nagasuresh.relli@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220805053019.996484-3-nagasuresh.relli@microchip.com>
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

On 05/08/2022 07:30, Naga Sureshkumar Relli wrote:
> diff --git a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> index a47d4923b51b..84d32c1a4d60 100644
> --- a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> @@ -18,10 +18,12 @@ allOf:
>  
>  properties:
>    compatible:
> -    enum:
> -      - microchip,mpfs-spi
> -      - microchip,mpfs-qspi
> -      - microchip,coreqspi-rtl-v2 # FPGA QSPI
> +   oneOf:
> +    - items:
> +        - const: microchip,mpfs-qspi
> +        - const: microchip,coreqspi-rtl-v2

Eh, this does not make sense after looking at your driver...

Best regards,
Krzysztof
