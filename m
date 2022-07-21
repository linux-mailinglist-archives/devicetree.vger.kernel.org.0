Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A918657CE03
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 16:44:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbiGUOo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 10:44:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbiGUOoz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 10:44:55 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B608287203
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 07:44:51 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso3473583wma.2
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 07:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=69ydrAd7VD8ZV4ehf6ZQSkrk7cQZ4KVAcumhEU9GOBE=;
        b=v+MSWv3jsuhPI8MOrhpQCczuRCOsBsbkyML0eXqiPfXL1c8SQRwrl4yQQYq6h+Zam0
         xSRmSe3ZbCPYN7P/HLDJ2fMiaq2UBwwQqlOubSlVHT9rN/KVzWxsa/GPsoRd+uPIz8wV
         HIiMZxMugV/fCIU+0ech1hvyhSu+VBIVeFcRPVs210S3C9woW82mB/fty0K/pQGcb2o3
         RAFlIm0Clw0x1no/YbVYyrpEXoguSUqmL2bYGDY5FDQ7PwZWG8AgoPEuZD6CXIO+YvHK
         ajKUjSCbPFu65iu5kH3o/5/LZoBwHuUZNUIiwlNmRtXAoBvN38r2hpiNq2bVyACs7Ktt
         DENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=69ydrAd7VD8ZV4ehf6ZQSkrk7cQZ4KVAcumhEU9GOBE=;
        b=b2FHGcWKsnQL954K3xcEREUFr46B4zRPiiBDjSoxzttr9sfDBdwzu5oVWHR9ehnAbv
         nKNHUBNKGMexBh44/aDDZc4DguJaBMufkULQ/bcQ+M+qs+pfAQtgF4UOD6Vyo6346Pj+
         i6RpKnDAweey4UQanYckj+gfYorzZo0fQkNikCE9ILlG5OPgbr6uKBSMcL9y/6pzesCQ
         lQDi9tr3rb5DngMBWExlyuuqSjc4bDYatSEW14TO2ZBrXcce+bM8UYpxjdG6SYNw5bh9
         pGewl7Nd/7pFIRsaqAtveQ/ft5wVErCzawYepOuljKj/g71kM9z35vQgfrksonack7Jy
         puEA==
X-Gm-Message-State: AJIora+Y8c9ePyDSfpsKKzAyZf14sw5UFp42ChB8SerVT05JRx9YlQfk
        aHuNQiFjaD8kGgmUGPxgjTo/iQ==
X-Google-Smtp-Source: AGRyM1vwqk4YBhefti806ymMWo/noKrgKxFoOV3SpxLphHfrmlFn4YIv+GbcmjvPfqI9ywaKHcoKqQ==
X-Received: by 2002:a1c:f313:0:b0:3a3:1117:282d with SMTP id q19-20020a1cf313000000b003a31117282dmr8809289wmq.40.1658414690178;
        Thu, 21 Jul 2022 07:44:50 -0700 (PDT)
Received: from localhost ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id d12-20020adf9c8c000000b0021e1a801e30sm2149297wre.22.2022.07.21.07.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 07:44:49 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 3/6] dt-bindings: mediatek,mt6779-keypad: add
 mediatek,double-keys
In-Reply-To: <4084d7e6-e722-a4a7-1a34-c50983f7d93a@linaro.org>
References: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
 <20220720-mt8183-keypad-v1-3-ef9fc29dbff4@baylibre.com>
 <98ec7967-d007-46d7-ef54-aa41426b5f9f@linaro.org>
 <87r12eh9qe.fsf@baylibre.com>
 <4084d7e6-e722-a4a7-1a34-c50983f7d93a@linaro.org>
Date:   Thu, 21 Jul 2022 16:44:48 +0200
Message-ID: <87lesmh6e7.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 15:51, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 21/07/2022 15:32, Mattijs Korpershoek wrote:
>>>> diff --git a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
>>>> index ca8ae40a73f7..03c9555849e5 100644
>>>> --- a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
>>>> +++ b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
>>>> @@ -49,6 +49,12 @@ properties:
>>>>      maximum: 256
>>>>      default: 16
>>>>  
>>>> +  mediatek,double-keys:
>>>
>>> Do you think there could be another MT keypad version with triple-keys?
>> 
>> Of all the SoC's i've worked on (MT8167, MT8183, MT8365, MT8195) I've
>> never seen a "triple-keys" keypad.
>
> OK, but the binding you create now would be poor if MT comes with such
> tripe-key feature later...

ACK, I'll send a v2 to transform this into a uint32 property named
mediatek,keys-per-group

Thanks,
Mattijs

>
>
> Best regards,
> Krzysztof
