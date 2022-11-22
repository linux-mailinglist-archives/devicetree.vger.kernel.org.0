Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C04616339B9
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 11:20:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231368AbiKVKU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 05:20:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233348AbiKVKUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 05:20:05 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 846425ADE0
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:18:45 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id x21so17381435ljg.10
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zq7tmKJ3jQgpCTzdBQLwKgRjaok1pzij/wh5lhMwLR8=;
        b=gTVnveVqIDUqidOeC1pnL3BaDpkAul1iDPFrsgX3ZS9dOcmSuBLumcYOdiz7+Jt1mP
         iLA01i7jfc0PaHmvMbfdOmIBKC8Ic32lb9y9bUURD/kBp2sykD5HxxrMgyOaEig3lgeV
         FzU8X6g/uinHHoQp3CFINNTJqU1Mo/nFKSEtwMeU9ksM68ZITCKJ4UKnghtHYWz5TIxm
         o/Wd1OGsL0qF/cYzkXLQLzvqjjyY+KxPyAuenwkrtaJRpchsaAN9Hq5cX/nU5dhVO5pv
         izYTo5FWF11miqJv1CM8Hi3Vozg6PrBOWaX/e+PymH4PJwxTPrMyyA5rYCKzAUxEUmJh
         iDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zq7tmKJ3jQgpCTzdBQLwKgRjaok1pzij/wh5lhMwLR8=;
        b=6buPi8Aq7Ict/bPisk5i1ExpKfdWp89FDJN6ZWZ+gVnMgK5S95WyST4G/1w1tZjq6C
         AOSvGl69Q2hmrifx2pMrK84rXcEBXvRr3iaI3m+Qk+fMil9/henoz7pTspkml0rA5IYp
         GIKBRPCiHKp9bkvCS7x0QFxr1Bc7QVRbGrUhrF4u6EhijwHpMAkwp0hgDUNAkEbznmIp
         yNnKyLZKpta+yKhnncERDm6N7cYrRFPWajcjb99aFAPoQ/OTeMzP4NDStis/4b8MNe5b
         8+LIkF71ItBeZSDkVTgnFrir82ObCA2Vtthwc/2lv2NojtqxOnSlVGUmb1LPAyinv1gT
         jzLg==
X-Gm-Message-State: ANoB5pmRRwpexqLCsFvuQvCdfU7Zl7pXlqCnbG2Ik5UZt9nDujh3bzdP
        NFrGEj8bwzD8HFv/M1NBMwX0PhimOIB9jw5A
X-Google-Smtp-Source: AA0mqf5XK+Ix5qrPZfrW2slmEaLXx6QSiA+XPrgfYDyqjWtz8aMClg9ViQTKO0zivhN/lKUVQw92RQ==
X-Received: by 2002:a05:651c:1511:b0:279:4212:f1d9 with SMTP id e17-20020a05651c151100b002794212f1d9mr4372272ljf.433.1669112322476;
        Tue, 22 Nov 2022 02:18:42 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p2-20020ac24ec2000000b0049b8c0571e5sm5202lfr.113.2022.11.22.02.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 02:18:42 -0800 (PST)
Message-ID: <f7334274-3c49-6f8b-48eb-12ec5b3a8e95@linaro.org>
Date:   Tue, 22 Nov 2022 11:18:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: mfd: da9062: Move IRQ to optional
 properties
Content-Language: en-US
To:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Support Opensource <support.opensource@diasemi.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>, kernel@dh-electronics.com,
        devicetree@vger.kernel.org
References: <20221122095833.3957-1-cniedermaier@dh-electronics.com>
 <20221122095833.3957-2-cniedermaier@dh-electronics.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122095833.3957-2-cniedermaier@dh-electronics.com>
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

On 22/11/2022 10:58, Christoph Niedermaier wrote:
> Move IRQ to optional properties, because the MFD DA9061/62
> is usable without IRQ. This makes the chip usable for designs
> that don't have the IRQ pin connected.
> 
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> ---
> Cc: Support Opensource <support.opensource@diasemi.com>
> Cc: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
> Cc: Lee Jones <lee@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: kernel@dh-electronics.com
> Cc: devicetree@vger.kernel.org
> To: linux-kernel@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

