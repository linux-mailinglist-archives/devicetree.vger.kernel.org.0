Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F62766CF47
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 20:01:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233771AbjAPTB4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 14:01:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233795AbjAPTBl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 14:01:41 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 137DD244B8
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:01:40 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id w14so24631841edi.5
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gV8YKiyC4XQgkQ8HT5ZnhD72I1bcdeHNkkR8d7l2kAc=;
        b=wz590QBZ9n7SqAT6woa8JJ7aMqVrAi1iq7PTbO49b5ZEoG5TTC5TO+CM6KFQcBIz9R
         Jz2Lx5t/3kRWyvalT6zFMM41kM3ZNuIoyYFOK4HWFNhGG72+Eu0L7woT0PJ7SzsBGOBu
         1kaA02IcS9qNf/qWPDheFuy/wOQSc5R//+zuXI2dd9Vty5vc/9CgRuBNLVQ+AAnCt8RK
         8Vqx7V5PJJOy9Ay/qhJHNTkywSqF1theCFkxlMlB3eh8xRWRjaqajxEEYNbAbvDBRhkD
         zym5L9urPFU8uILfNUNPJwGkpqFMefnZGUNtdVc7EDPV0v3J8c5JWjP6JV0KBqrESkmj
         Y6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gV8YKiyC4XQgkQ8HT5ZnhD72I1bcdeHNkkR8d7l2kAc=;
        b=5r9VberYAoZq9HB/Rw9ipZ6yv+2Fa/rwy/fuHMQeNv0ud50U82pCnNncY/kop7Csf5
         DxK/WKHqo0WyINbNyISjHdW53tm+01SZEZiP5lH/iTG7wI2iC1UPkziV2UgTSydtWreA
         vBrDsTdz2bIryu0QgKrn6yTyW7agqNgUJVrgf2Ib6PcBpfNXkSQZbPWLceMHwWPrsmTY
         aC+ZbGBjemPq4PD6R+ZaB+5fLHS9DrxR75U9LCP6Pz4rv3RP9mWy6QT5H79fOQe30AWB
         6Q7DDgtQRmqKnowvTZ1E7iQj6UJB0R6v7i7wvBMaW8eRL9yE+KcaMFlnYFivVpjdK3FE
         P8Vw==
X-Gm-Message-State: AFqh2kpzM7PoopCyiO/j3NIkCZ9qTQTYzI4Ta8qaiARuerpIT6HqulT1
        mlssoHiZW9OecwIkbDBj+IyU1pBijOZUfECA
X-Google-Smtp-Source: AMrXdXsmXfiFB/4Secti9mKyegCCIxsGpBAPMb+KlSGitXE5MGm6OdBqWGLVy1ca67ivp1/3f/1I8Q==
X-Received: by 2002:a05:6402:35c1:b0:46f:f36b:a471 with SMTP id z1-20020a05640235c100b0046ff36ba471mr469094edc.22.1673895698702;
        Mon, 16 Jan 2023 11:01:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l12-20020aa7cacc000000b0048a31c1743asm11686821edt.25.2023.01.16.11.01.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 11:01:38 -0800 (PST)
Message-ID: <ecb38da8-ce40-7b26-2fb3-088d859af814@linaro.org>
Date:   Mon, 16 Jan 2023 20:01:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
 <ba8104e3-efb0-e092-573c-0e1ac57f1052@linaro.org>
In-Reply-To: <ba8104e3-efb0-e092-573c-0e1ac57f1052@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/01/2023 15:53, Krzysztof Kozlowski wrote:
> On 15/01/2023 15:19, Heiner Kallweit wrote:
>> The compatible strings in the driver don't have the meson prefix.
>> Fix this in the documentation and rename the file accordingly.
>>
>> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

and un-reviewed. As robot pointed - please test the bindings before
sending. :(

Best regards,
Krzysztof

