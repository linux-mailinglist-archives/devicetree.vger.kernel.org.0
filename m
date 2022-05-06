Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9E351D20D
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 09:16:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355142AbiEFHTe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 03:19:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245372AbiEFHT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 03:19:27 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F2766FA4
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 00:15:43 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id gh6so12806665ejb.0
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 00:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7g9JO/Ybw9irKMb1RLnb7HIkga3Dv3dwhtzTDOGzIqI=;
        b=eunXz/jJ22emEnm9j1ZKkdizjud+RpDosbQw03+WYs/zT4ezzVjJmgyCbF8K9QaChP
         q8/4A2wtC96OPJuvFDq0ersh77V8L5R7gM8k9azwtSHn9JPcjCrjzAk2LCGO31OT0Z4y
         PDXCBm/w/BVDih3HHieKmt5so84yoEw1kx2v8SPLu5VEcOlN24qhcFTBh8yKXbVyLbEU
         PHxv4bAg77gVeDU1RA7bToXYfmRdd5RulyxGNCBTn6FmIVG5hiGX33DHA+Zs3JWDzR/L
         T6u9XL4pozWRZXW264WrXSVsdHqjp2f7kku5ow7B1eQTp3JJB7TbIIAVpJMtfbnKFXcJ
         LIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7g9JO/Ybw9irKMb1RLnb7HIkga3Dv3dwhtzTDOGzIqI=;
        b=1fqqkrje64xPP8mkz+ZJCL39aDcQGck2ElsmaokElNQyZOR7MvKtFfGJ7qMzOdApMr
         CbKdMoGRg4DgxTyphiwh96SQ3yurzRb8iccsTYErag1YFLRi6u7U36/fpOy5cnDXBkhJ
         pzxBT0O1oZ9KF/frUiS6ofPDK5oR9oi+j251uqSorYk3+tSKIKcam0cY/KGpLvYJR/jB
         xKEGSJvKmOWTMki9Vaznc+RLHXZG8DSTinrXPfgDlJyM3t638qGehw2yUlOshOwRFIHb
         eZ0ikAHXZCpydJblVVe8AjBJH/Nuimb8iEWVnTM/r/NpBVN2l+BzAARUY52UQbxZgVvY
         rQSg==
X-Gm-Message-State: AOAM530M9IXQqJwkVcjuHub3OpQpLM4YKGpVmhNS6U7B3hjwSn6Xc3Gi
        XTt7+FPvoKCMYFSjIVKQifv3nQ==
X-Google-Smtp-Source: ABdhPJxgd3hK/qt9qIuLszkmZtLv2HjclvaSrS1ez9rOxs8wZ1arV9Hioosh6sfq5Fg2Oc7d0T6qxA==
X-Received: by 2002:a17:907:6e8b:b0:6f4:7147:a6ac with SMTP id sh11-20020a1709076e8b00b006f47147a6acmr1782778ejc.187.1651821342232;
        Fri, 06 May 2022 00:15:42 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id qz24-20020a170907681800b006f3ef214de6sm1605225ejc.76.2022.05.06.00.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 May 2022 00:15:41 -0700 (PDT)
Message-ID: <7c4b51a9-6340-ef27-708d-2ad96830edcb@linaro.org>
Date:   Fri, 6 May 2022 09:15:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v14 6/9] dt-bindings: interrupt-controller: Add bindings
 for SP7021 interrupt controller
Content-Language: en-US
To:     =?UTF-8?B?cWluamlhblvopoPlgaVd?= <qinjian@cqplus1.com>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mturquette@baylibre.com" <mturquette@baylibre.com>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "tglx@linutronix.de" <tglx@linutronix.de>,
        "maz@kernel.org" <maz@kernel.org>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "arnd@arndb.de" <arnd@arndb.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
References: <cover.1651805790.git.qinjian@cqplus1.com>
 <56fb5e9a35a901f15d8e9721385c7e916c181377.1651805790.git.qinjian@cqplus1.com>
 <550cd907-be2a-4e90-350c-fbc3bdc03728@linaro.org>
 <d4ec03ed722349dda9fa3357449ac612@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d4ec03ed722349dda9fa3357449ac612@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 09:01, qinjian[覃健] wrote:
>>> +title: Sunplus SP7021 SoC Interrupt Controller Device Tree Bindings
>>
>> Remove "Device Tree Bindings". This applies to all bindings patches, not
>> only to one.
>>
> 
> Did you means change
> "title: Sunplus SP7021 SoC Interrupt Controller Device Tree Bindings"
> to 
> "title: Sunplus SP7021 SoC Interrupt Controller"?

Yes, thank you.


Best regards,
Krzysztof
