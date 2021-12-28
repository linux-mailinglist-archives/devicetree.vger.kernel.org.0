Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39E5148096A
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 14:08:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232035AbhL1NIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 08:08:15 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:35280
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230477AbhL1NIP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Dec 2021 08:08:15 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0B95E3FFDE
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 13:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640696887;
        bh=xibL3Er2RlJO3Lyq5bFLO5eoLWJoOakTjgo7xp1xbB4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gDA4ryiGoyY0zzXTXjEtEipfjiWbV3XlbfUhsqso0SwRFq7sQoOCCaXMnnshcToM6
         NmDyHPHqj/DMVyWAK7yL21XpiKL3buXOnezWn2Qf84601FJfkPsiqe26lkETLX6ve7
         s1pfs9UcpQfvN0s7fE2Dquco3NpnQxoWBg4nPRxlgAvzjAElYQbxuu5x4MejrlreO1
         NcL5Kt7EOGOW6bK4LtJ2oxhaDLQKTA89MaB80TuaTn12Tg3aDoRjxy2ay5HJRVZEUa
         i1UIrR5Io2D8YEGfToECdlKbkqMcczoDTaeQ8iRk3YYqKawN9Q64qaRkfL9Fs47t+d
         DHNhbkNoC7FAQ==
Received: by mail-lf1-f71.google.com with SMTP id g18-20020a05651222d200b0042612bda352so4195281lfu.11
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 05:08:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xibL3Er2RlJO3Lyq5bFLO5eoLWJoOakTjgo7xp1xbB4=;
        b=kuAe92FhxzzEXJXhSdR2tKQfy+UYErQC0LV1IX9RJR1PSCbT5QCdQdC3C6ifz7bkX3
         uKrps0KOttoGzgNWk4mQmwnWdLZM0iJ20tcHkcUpoLYUy1BQNIsWZGy4smVEPS8pQKTV
         AJ3HF3wIuomeV0j7uJzK2t/nMybEZQCc65AWs0K1c76NzVzT3p0JQTRoSdtJzJLpCEqS
         1hFZqcdKwLEFExaONur2fxszrUTQ0NH76ln3ZmAZrrQN3TpywVBzapfIlhMkF9ziL8Id
         zw6RXpL9AsrXOn/nOCPlt7CpdbEDRFd8gDHd2BVJdYCS9fd9l1wa9j61PBPvWLnjjsAY
         r/FQ==
X-Gm-Message-State: AOAM5300nXzRW8dHafmeWSNfUAmGmW2j2vBdqiJrnZQQZki+H2UeMZji
        6k7OQRPRj/VhGMnTIdU+zByyYfLhGywYIVanoR0RS0meGwriHxcW3RoNC1OMFJTy0Ks/0sQyIC2
        E3iH0ocQ2PLuV7TFdqcr1CMSjMKb6bt9NXyyKAEQ=
X-Received: by 2002:a2e:a781:: with SMTP id c1mr4586648ljf.115.1640696886146;
        Tue, 28 Dec 2021 05:08:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxFjwStqYRxpYpd5M+oo66/YQIJRdAQIrnEgPtyPnApN6cw5bAhO3y932dFaMY9Y2MWm/0NKg==
X-Received: by 2002:a2e:a781:: with SMTP id c1mr4586620ljf.115.1640696885915;
        Tue, 28 Dec 2021 05:08:05 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id bt9sm175878lfb.206.2021.12.28.05.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Dec 2021 05:08:04 -0800 (PST)
Message-ID: <5a3d7233-8ce0-dbb5-aac4-393caadf2a6a@canonical.com>
Date:   Tue, 28 Dec 2021 14:07:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 2/8] dt-bindings: rng: atmel,at91-trng: convert Atmel TRNG
 to dtschema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
        Tomer Maimon <tmaimon77@gmail.com>,
        Matt Mackall <mpm@selenic.com>,
        Avi Fishman <avifishman70@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Nishanth Menon <nm@ti.com>,
        Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        linux-crypto@vger.kernel.org,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Tali Perry <tali.perry1@gmail.com>, devicetree@vger.kernel.org,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nancy Yuen <yuenn@google.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Ferre <nicolas.ferre@microchip.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
 <20211227183251.132525-2-krzysztof.kozlowski@canonical.com>
 <1640696040.235226.685116.nullmailer@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1640696040.235226.685116.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/12/2021 13:54, Rob Herring wrote:
> On Mon, 27 Dec 2021 19:32:45 +0100, Krzysztof Kozlowski wrote:
>> Convert the Atmel TRNG bindings to DT schema.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  .../bindings/rng/atmel,at91-trng.yaml         | 46 +++++++++++++++++++
>>  .../devicetree/bindings/rng/atmel-trng.txt    | 16 -------
>>  2 files changed, 46 insertions(+), 16 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/rng/atmel-trng.txt
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1573492
> 
> 
> rng@e2010000: compatible:0: 'microchip,sama7g5-trng' is not one of ['atmel,at91sam9g45-trng', 'microchip,sam9x60-trng']
> 	arch/arm/boot/dts/at91-sama7g5ek.dt.yaml
> 
> rng@e2010000: compatible: Additional items are not allowed ('atmel,at91sam9g45-trng' was unexpected)
> 	arch/arm/boot/dts/at91-sama7g5ek.dt.yaml
> 
> rng@e2010000: compatible: ['microchip,sama7g5-trng', 'atmel,at91sam9g45-trng'] is too long
> 	arch/arm/boot/dts/at91-sama7g5ek.dt.yaml
> 

This patch is only converting the existing bindings, so new compatible
is not added. The issue reported here is being fixed in the next patch
(3/8).

Best regards,
Krzysztof
