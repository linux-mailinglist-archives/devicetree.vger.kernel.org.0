Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87CD47687A7
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 21:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbjG3TtI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 15:49:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjG3TtH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 15:49:07 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 768CEE5
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 12:49:06 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-522c7b81ef8so593993a12.2
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 12:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690746545; x=1691351345;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K0RMQyHf1S3Bsa35UR4acJ/fdA34+QRYTwD5K564HMM=;
        b=PdbGH6vUkI5RQ3CsT3okvuaa4Tcwo6GZad0kgWK/QuxR3QVPimaMRiv6d2GJUcGdqZ
         6wJWS0nJlo6X5BNG5jmYttbJ0eYPO3LGZ4y+NsVyDlnqddRtYPSLDEt2mj4GEwH2tiIq
         5s7wiSK7DUzLI2jsISRff6MAi5Aipr4KhKwvnuGauNEVViVg33sBJRNsr5EMCYFbTbgU
         12C8OVJfKdKbHH8FY3jkjakNdtH9r2hLtbSDLMViwbxmYmtpBXJa5YWjPJ5p69yMrqcD
         d3qDM48XHPzuZiacpWAjHdEVIWmyJI5xSGoPsjTjUSNx4QL9RvwOE+08mlUlmuJKVdr6
         OOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690746545; x=1691351345;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K0RMQyHf1S3Bsa35UR4acJ/fdA34+QRYTwD5K564HMM=;
        b=AO/10hsDNChD8HPBRyS0Y2lsqZJ8ire1i2Gfq2gfkXzu3giAB4MBWqRqGH/S5KoEqv
         sPDcXJfJ5GmmhUxaSehjGCjeS4rZfxG2+deAfAD6izQn9XMgPLssV0duJQRA+xishQLr
         lnfZt4PdnOdkMdNqBSdnbFqoggvDGvQn6VlDjTHfC8453nNEe7CEUBsRryP1oPebTyII
         7Jun2RTQxd7CnxMnOTOXpTpn8FfrPWsWj3EMA8FlhJCJxEQhblKtzubNc0i7SoiUanq6
         lnlEZ06SXYPIeL8W1Ef6Gi32Tm759RlQoO6CSKDwoAf8hgCvm/fqrshn2xMVNHAj3mtn
         1Keg==
X-Gm-Message-State: ABy/qLaPakT1hpxmuX4tLMcYuW0c+6TL/tMJJIpPUxsGR19zVvC4LbQt
        dk4xpJReaWNDFwLJAloK95sgIQ==
X-Google-Smtp-Source: APBJJlHrpb+viUP1W8CeU7uOtAtMAoCLVyCpfXOl41PJX7SxhNONrYammNz0vfDLN9J1iEhBRDJV9A==
X-Received: by 2002:a17:907:a0c6:b0:96f:8666:5fc4 with SMTP id hw6-20020a170907a0c600b0096f86665fc4mr4970673ejc.50.1690746544975;
        Sun, 30 Jul 2023 12:49:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id v25-20020a17090606d900b00992e265a22dsm5085950ejb.136.2023.07.30.12.49.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 12:49:04 -0700 (PDT)
Message-ID: <deea8977-53a1-31d0-ba3d-8daac1ab49c1@linaro.org>
Date:   Sun, 30 Jul 2023 21:49:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] ASoC: dt-bindings: Convert maxim,max98925 to DT schema
Content-Language: en-US
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ryan Lee <ryans.lee@maximintegrated.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230730194230.34447-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230730194230.34447-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2023 21:42, Krzysztof Kozlowski wrote:
> Convert the Maxim Integrated MAX98925/MAX98926/MAX98927 speaker
> amplifier bindings to DT schema format.  Changes during conversion: add
> sound-dai-cells, already used by DTS.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

...

> +  imon-slot-no:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 30
> +    default: 0
> +    description:
> +      Slot number used to send current information.
> +
> +  interleave-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]
> +    default: 0

Ehhh, two drivers have actually different property for this and the
original bindings were not correct. I will send a v2 unifying it.

Best regards,
Krzysztof

