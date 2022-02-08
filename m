Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EFDF4AD802
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 12:56:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236353AbiBHLzh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 06:55:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355721AbiBHLzg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 06:55:36 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C666C03FECF
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 03:55:36 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DC4183FE41
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 11:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644321334;
        bh=o9lVwGLOMjBBC4tFHuuGDiFsf+0wof2yGLRdH2ujaps=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=m/WHutmhZosifYZvjuR39PA94NTjx4ebP31Mloe2kYm4JSduWK20qN3U8ESoGw27c
         0IfyJgkx6PfiDe633GD6gFFuoLSC79Zbk5eFeqZi0XL2F16xUhD3B0XoAJ0hq1WeZd
         oU6tmYfbs/GwdAfjs35lMYdCn6VksVgnxCSJkyi3w628nhgRaxABTTgw9rPsVyEhvY
         YpOZWhAoMHF2NLdIpTCBTg4cwWkxcb++gV0ZLIO+Rj/PzUh4KGRk4Z6SN98XXnw5uP
         peOiqAEWtnHQmzmPqr9c1wv4NnV4H6JLls5VArV4o36d7nTlvEKtdPUVlDHNd9QELO
         fKavuTVtk1iKQ==
Received: by mail-ed1-f70.google.com with SMTP id q11-20020a5085cb000000b0040f7eceaf7aso2900402edh.14
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 03:55:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o9lVwGLOMjBBC4tFHuuGDiFsf+0wof2yGLRdH2ujaps=;
        b=BkPKHlv1TEAEOOWgKoCDxg8h6Qw1Rmrh05dAYXh9mbIquoOL+4J4lkyGf928GPd36C
         SXDloanWgHO4JNbBtrQ1KEYngibXiJGFbYRQo1B0iRxnih1OKxdEbFKcnbT1Qn+53TUQ
         9hirQ5oJC7RTarM6537KSZK4LppgCLuU/puUQQQBbYbS7S0aBlH8pYVaxyrXgLT94NIv
         9/Cf2oS+PKaSb5X/41fJUCKAPGdZIbVLjssZDeaAtvHqqkjAK1041NK3SmGmuc9Lsz/p
         udhF3OgYwjLbTyiPCP4WEEIind+MyWCI1V/tRsn53Y7DsO7pT5HkZi/RoiqsOIk13K4C
         uEqg==
X-Gm-Message-State: AOAM532Ew9SWqS/UWemjtuBZXBye68DW5ADQOrGl21CV9aWYVzXBO99u
        aG174p5wWHn15DtjSY5QLZZzmnAHbc1C9SAMbUgHyzu/94RALiGg9CDjHKumMxeQT8Ctat9sZxN
        A/RpYJ/70um/rDpTZHRTsOljSKE8y3NVMiBveoko=
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr3507965ejc.659.1644321333566;
        Tue, 08 Feb 2022 03:55:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxJRKF31xIu6mS1pj+dMNV+8zV+4g6/YqHO7wOvj2ZzAgp/idanGTZW765Y8LXBDd4VTSMQVA==
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr3507953ejc.659.1644321333380;
        Tue, 08 Feb 2022 03:55:33 -0800 (PST)
Received: from [192.168.0.93] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm6780166edh.75.2022.02.08.03.55.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 03:55:32 -0800 (PST)
Message-ID: <d995fee3-c2ad-55d2-86a0-c8a27e459ff0@canonical.com>
Date:   Tue, 8 Feb 2022 12:55:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ARM: dts: at91: Use the generic "crypto" node name for
 the crypto IPs
Content-Language: en-US
To:     Tudor Ambarus <tudor.ambarus@microchip.com>,
        nicolas.ferre@microchip.com, claudiu.beznea@microchip.com,
        alexandre.belloni@bootlin.com
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kavyasree.kotagiri@microchip.com
References: <20220208111225.234685-1-tudor.ambarus@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220208111225.234685-1-tudor.ambarus@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 12:12, Tudor Ambarus wrote:
> The DT specification recommeds that:
> "The name of a node should be somewhat generic, reflecting the function of
> the device and not its precise programming model. If appropriate, the name
> should be one of the following choices:"
> "crypto" being the recommendation for the crypto nodes. Follow the DT
> recommendation and use the generic "crypto" node name for the at91 crypto
> IPs. While at this, add labels to the crypto nodes where they missed, for
> easier reference purposes.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  arch/arm/boot/dts/sam9x60.dtsi | 6 +++---
>  arch/arm/boot/dts/sama5d2.dtsi | 6 +++---
>  arch/arm/boot/dts/sama5d3.dtsi | 6 +++---
>  arch/arm/boot/dts/sama5d4.dtsi | 6 +++---
>  4 files changed, 12 insertions(+), 12 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
