Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B489E727876
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 09:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233965AbjFHHPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 03:15:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234131AbjFHHPJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 03:15:09 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0221E19A4
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 00:15:08 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-97467e06511so54832666b.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 00:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686208506; x=1688800506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1sd05CLDYUSvBW3GOCX6CLVAicdJRZHkCzuK6EVK+t4=;
        b=rsu5m2iEH34QOsXVOnjWvmLBFdKyQWc7ps8rhXGL7otj6DyrQPgK6OqmEZyPSctaPr
         9jz74ROAyIx4pNRpN+76HajlmxElGqb+N6JREhMttjIChF+7qmtL3Mbw0FEkuITN7sGf
         Oz67H/s8Y5j5QPgQOsKUnveC1jBjjiozx1WPjhZ7qd5D4Y6L1PXYiH0zjZvnnlWvNcPd
         71ll6RrJfzBFk3PrbXfV56kR1S0i3xiqJ7NSRp6RqiGNNC+O/i5qqsGu0CHoSKP0Pu2/
         da4ZpHaKdWU48GBKpvWcv3CeUBrauB+MsiW+2dCt7lAmmodb4iAMVf0rxpcf/QqPlYPi
         I8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686208506; x=1688800506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1sd05CLDYUSvBW3GOCX6CLVAicdJRZHkCzuK6EVK+t4=;
        b=JhyXVhzBYFkHqMlY3Cl0JbFIwns6rhKivy7N/lyfGLN5OhABGb5NUNM3lz+v2eH1z0
         SmK+VSo9hU75nHefyck4wO3/aSDF/i+9M34cozXGQD8ZqM4mfnlUmNdrMUJER99WlM1h
         YzRbyCTPTsNdAbp4JZ0Zu5LizQJOYfZQ4ZJjedOMqiCy+5P3uyiERv5zIi8p2hDIQtog
         v73YUBbiRjKOmtlsQ5b2qIXsfsRnwP4Y4W0ZMrF5URoFwHAghVFviVHTJhkRW7QHwQe8
         Fm/FoU5tL2D/XWuqv6APX5JAJXBmVcSORSXwRYH4uwmqA6S+nXnp0vQV4ewfrjrCAlug
         4RIA==
X-Gm-Message-State: AC+VfDzuM0itOy5jCsf+hRENmkkMZaHjc3MTXQQRhD+Eu3BJjfQRpp5y
        PmE+GeOb8Q5ffySrdTLAJChkCA==
X-Google-Smtp-Source: ACHHUZ6o28Ei4sxl7rCD1F+9lYLgiWHAPjBPWLZKnkrR4M1vnXe8LnSs39VAtYvmcENHIY8C+m+XnA==
X-Received: by 2002:a17:907:7da4:b0:974:1c98:d38e with SMTP id oz36-20020a1709077da400b009741c98d38emr8670170ejc.2.1686208506478;
        Thu, 08 Jun 2023 00:15:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p10-20020a170906604a00b009545230e682sm305674ejj.91.2023.06.08.00.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:15:06 -0700 (PDT)
Message-ID: <f2e17e0e-9c2e-3693-54fa-de3ba5eac846@linaro.org>
Date:   Thu, 8 Jun 2023 09:15:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Content-Language: en-US
To:     =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= 
        <stanley_chang@realtek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Michael Grzeschik <m.grzeschik@pengutronix.de>,
        Mathias Nyman <mathias.nyman@linux.intel.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Ray Chi <raychi@google.com>,
        Flavio Suligoi <f.suligoi@asem.it>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-2-stanley_chang@realtek.com>
 <79201bd6-6048-7013-aeb7-34d218139844@linaro.org>
 <8cb2d82c3b484262aa866c5e989fc8cd@realtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8cb2d82c3b484262aa866c5e989fc8cd@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2023 08:59, Stanley Chang[昌育德] wrote:
> Hi Krzysztof,
> 
> 
>> I commented on your second patch, but everything is applicable here as well.
>> You have many useless debug messages. Many incorrect or useless
>> "if() return" which point to broken driver design (e.g. concurrent access to half
>> initialized structures where you substitute lack of synchronization with
>> incorrect "if() return"). Undocumented user interface is one more big trouble.
>>
>> I doubt you run checkpatch on this (be sure to run it with --strict and fix almost
>> everything).
>>
>>
> 1. I use checkpatch but without --strict. I will add it add and check again.

Around 300 issues pointed out...

> 2. Do the debugfs interfaces need to provide a document?
> I don't find any reference about this.

Not sure if we have it in docs, but it is discussed every now and then...

https://lore.kernel.org/all/CAMuHMdUaugQ5+Zhmg=oe=X2wvhazMiT=K-su0EJYKzD4Hdyn3Q@mail.gmail.com/
https://lore.kernel.org/all/2023060209-scouts-affection-f54d@gregkh/



Best regards,
Krzysztof

