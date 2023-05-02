Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 980386F3F89
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 10:48:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233934AbjEBIr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 04:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233941AbjEBIre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 04:47:34 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B63B85FEC
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 01:46:18 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-94f7a0818aeso573555166b.2
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 01:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683017174; x=1685609174;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zw0ZB17Cle846OeF2XGobwdDDoFs+jkGlDpNy6ccfBw=;
        b=iDuDax8k95dE5ZwEAuti1Tiz2XgW+YmLRi7TJV6jCaqw6lbFFO9fjLp6oxrXBWxMQK
         nhx/hJgHeCCRbHlwcLNVWKdIn/o349sZaxUVo0Jb39jxZ/v2e/32dD1jz1tLUN4iB5bM
         ACtECUEuqoQjKpee6Rr/QKYLdqJSLsPv8TU9WOuVZb2jrL20HGI2Opo29gohHQk9eB2q
         uHAiXN4JL8xXHABVSam0uEsADNVwFJpHQgqrbQ4KE12Itn7qwJgPgvaJSz0nKHFHq4y+
         X2PzwF36TUyNSJ8KeHMGSm63h1LpzqPYDc/Od/Zsjj2ipB7sOyzpv9FIShPC5yL6xt5p
         lDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683017174; x=1685609174;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zw0ZB17Cle846OeF2XGobwdDDoFs+jkGlDpNy6ccfBw=;
        b=XjmmxtYwtRahlzG/OcIPw5Bc0VT1ezxYOBBvW+WBEDCJgMivD1aK4MaOrhbhZ7X+LZ
         J3c25Ws98xGcVRKs67bBJHeL2iAaidLQ2LxX1hrfTLqu4NhOYhNYMBxLVeHw9kYmA0Ur
         j96wSjNW4bVrQ3zk7dslSyIMUzsNLGgIVhosqYkObl7zOMEEF5sMUdQdfGlxdII1uGcx
         JgTFqqC62+IZlE4CEWgwPdMj+rZ9SpXG4yILx8ZV3Fp0xa9YSiLUNEuwraT78/klSZRq
         le5efw3oywO7rvqcPug/AtxphYHRUYaQR8uvv6UpO5TR47NxNsaXM/8waUNCB6BmzGo5
         ufVg==
X-Gm-Message-State: AC+VfDzmx4SODO2SAR8e/pM35nYL4oXkk7TlnQX2XsSioYKf1Ok3J/fK
        goRiFwYEURlXEjJkhhtHXl11XA==
X-Google-Smtp-Source: ACHHUZ4zLrbfZlvsZe1+vBIsZru/9xib2IJ9u2zGFrd/YXBeWhWgfNbG3TEWBxfrj1euW+12LrzS1g==
X-Received: by 2002:a17:907:c21:b0:960:7643:c972 with SMTP id ga33-20020a1709070c2100b009607643c972mr16747769ejc.55.1683017173820;
        Tue, 02 May 2023 01:46:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bafd:1283:b136:5f6a? ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id qw35-20020a1709066a2300b0095ef7268ba9sm8444490ejc.41.2023.05.02.01.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 01:46:13 -0700 (PDT)
Message-ID: <cfb17cbc-b8cf-c3ce-cf77-7e13e12c42eb@linaro.org>
Date:   Tue, 2 May 2023 10:46:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v14 2/4] dt-bindings: i2c: Add Maxim MAX735x/MAX736x
 variants
Content-Language: en-US
To:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        Peter Rosin <peda@axentia.se>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230501091552.847240-1-patrick.rudolph@9elements.com>
 <20230501091552.847240-3-patrick.rudolph@9elements.com>
 <fd20cad6-34f9-5f3c-abe7-cdf3a93d712c@axentia.se>
 <CALNFmy1gxUD-C62SH5GxA=fq8eKYxiOHe8wqXGsVdzsyiJc6Xg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CALNFmy1gxUD-C62SH5GxA=fq8eKYxiOHe8wqXGsVdzsyiJc6Xg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 08:52, Patrick Rudolph wrote:
> Hi Peter,
> it could indeed cause problems when VDD1 != VDD2 and at both needs to
> be enabled.
> The pca9846 datasheet seems to refer to VDD1 as VDD. Thus I could add
> an optional "vdd2" regulator to the binding and driver.
> 
> Please let me know if that's what you had in mind.

Don't top post.

In such case vdd-supply should not be used for VDD2.

Best regards,
Krzysztof

