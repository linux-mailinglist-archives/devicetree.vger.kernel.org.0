Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9549F6EA561
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231363AbjDUH5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:57:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbjDUH43 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:56:29 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC6A9EDD
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:56:06 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-504fce3d7fbso1955549a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682063765; x=1684655765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o/hF7YS1JXj10nBbSZ+Qi8Uah3qSsyNus94sL6M1gzA=;
        b=alzFSNMKCMSWX5/Mj3d0A5TlGxT4IEQSzZbBtlkInBbjJHtdT5ci1AW0xgOwpCNwP0
         JoUoI7G1xJ+GVO6ygcCW6DP7J5OrUEUgriP5+9sHuWrhRWpTPSjaWnC2znpow9mOwqIs
         kTknhnDzxd2SkRxHEPU79yQfca3bNaitgZtIdGaI9P5yKUeExDk8a2y47Wt4852UUTKr
         m3ntgboR1IslTIYB6xdtpj/7c0/1MKktv8gMk7pgH1uf6QrSQQczfYqsYTFHrPeUWBVB
         D+p1mxJL+yCIsrIWddg3FYQOn3e8P+rY3MQrytEM83EdELOLXULgJ47x3xHe+mOhM3JP
         MBkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063765; x=1684655765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o/hF7YS1JXj10nBbSZ+Qi8Uah3qSsyNus94sL6M1gzA=;
        b=U/sQ+orkJ0an5DkO/+5hDA/yaKd6aolzpyCRJ2RGHo4QIUUqHs52svRIToTdmqgjCe
         +VrYL51pikvKXbNoZOUE0/IdBwYz6B8Gov2Gomi4+N5zVFpljKomOJtcvvuBIOGB6OPw
         g851Ow+yTMFKYNl8DHcCyJTz2UyCg23KFk9XPys8IecuRfF+7G199OIl6Gst+vMhEalC
         0pNZ6Wv+XB/aHPWndyal3C7+cfZgXe4oQqoCISlFFuddhhCHyUCLRDxRQW4pbrHtehl/
         7vyiNuWV0zbyJKiYAermlBbmyePPGMNdXk/lNUtQkMX+yugc5HXVFPdNGC3U2V0Tp38z
         ef6A==
X-Gm-Message-State: AAQBX9eSZRmVuZvc8XSECtzQrl50a+vlvYMbJf589kmCedkAmz7+AP7g
        /b2WD1bMLZ07Pd27SirvQLrKcQ==
X-Google-Smtp-Source: AKy350YEEZtGZN2b6N4rT0q2b7Jl5HiciSTCRErgLiixS3WyRnwyNxGxv2aXXoIoHCWVsnlgs4ihCw==
X-Received: by 2002:aa7:d94d:0:b0:504:80a4:d019 with SMTP id l13-20020aa7d94d000000b0050480a4d019mr4456746eds.12.1682063765182;
        Fri, 21 Apr 2023 00:56:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id d12-20020a50fb0c000000b004bf999f8e57sm1575248edq.19.2023.04.21.00.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:56:04 -0700 (PDT)
Message-ID: <1068b0ea-22ef-b9fb-cb9e-431337fb445b@linaro.org>
Date:   Fri, 21 Apr 2023 09:56:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 1/3] dt-bindings: nvmem: rmem: Add
 raspberrypi,bootloader-public-key
Content-Language: en-US
To:     "Ivan T. Ivanov" <iivanov@suse.de>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230420122924.37997-1-iivanov@suse.de>
 <20230420122924.37997-2-iivanov@suse.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230420122924.37997-2-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 14:29, Ivan T. Ivanov wrote:
> On RPi4 the bootloader[1] will copy the binary public key blob
> (if present) into memory location specified by this node, for
> use by the OS.
> 
> [1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes
> 
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

