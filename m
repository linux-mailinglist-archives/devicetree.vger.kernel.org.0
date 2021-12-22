Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F95447D149
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 12:50:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239047AbhLVLuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 06:50:22 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:36934
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240290AbhLVLuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Dec 2021 06:50:21 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5B2A13F32C
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 11:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640173820;
        bh=IoWj9oNDweMrZAiZnpWJ2M9mqGVrhoH3F2ncAQcZpG8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=LqriuYkJoKTW1URXXG/eUf3KB/2NdA0N8HDriO9q1cAbXd0YdX/qFOBMKt0IA4Qvp
         0DinGl6UUbPg1J2FKhuF9YcsgC8rrsCJsGIUFrTttDdh3ci+iLDs1fSu63+MeGShDd
         0tJuivKYWpDxBjkEKWLQYMjI9KF3CNxoLwp/GIDeu9JW0MAugdpEmjBEHEaVaCVlpb
         KzgDG56MuGt/p00Yf3m08vTRg02Y56c78L5BXfxIwh97mXsEZc9aL90ERfOagAygI/
         au09L22qc9Mtv/pfqF2c6dLtxveFcCWSw77NEDlmksufWGhju24xRfNrlO+Z3ZxG1f
         Eqpg/5mnj3/VA==
Received: by mail-lf1-f69.google.com with SMTP id cf14-20020a056512280e00b00426460c9af9so800296lfb.4
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 03:50:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IoWj9oNDweMrZAiZnpWJ2M9mqGVrhoH3F2ncAQcZpG8=;
        b=DJqpsZ6Zm6dLlXOmc9fPpSD8QtyrOejqmoO7l2cokwkEkn0ZJldxSQMcUkPDCvYwFA
         xmiLc+7toQrA4zH9keYXPI2JBJFbpeGb0ahPcIpQeTYPEs7vPIPDpsgvwucQMSGg/nYG
         hncpPUjJzDGyeCMzO/ZaRahWy7xM5LMrMVDXn0mfSPk87Bzf2R4B5IGPd9/g7hs5OI4R
         dCPPev2pqfvNBH7q/Ffwje6i7+3Tfgxp9zYK3RcB7/3VT8i2wydeWBWTMKl2ClTNXNo6
         k2TzG4/DVN0fspiK/OzuuNGUU0QCuul/D3SfuOC5TKu05CQcEKulNsnU+0MwBQT+iXTy
         BBsw==
X-Gm-Message-State: AOAM530oh4rYsUmvZUvgfchN86/Vyr/6THGPw/4D1fWWwSYspRbghagj
        BggEvg7T8Dixe9jehGfb827f0JgrwQpQyA8c1vFlE4+jRzcOyejuR3mlRP2V0UufBU+Wm4K6NEm
        L8YzajQ30JlD/28l0Z+fHOpDicQlsuTolcbXeMzk=
X-Received: by 2002:a2e:bb98:: with SMTP id y24mr1834329lje.315.1640173819744;
        Wed, 22 Dec 2021 03:50:19 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyA35gJz13lmXvYXfWrxjhinbcGJguqP+W5VI63zqG4S459hkNVbC2c7iwZdwKh71gviVwf8Q==
X-Received: by 2002:a2e:bb98:: with SMTP id y24mr1834322lje.315.1640173819594;
        Wed, 22 Dec 2021 03:50:19 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id bi29sm191325lfb.234.2021.12.22.03.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Dec 2021 03:50:18 -0800 (PST)
Message-ID: <2b4386a4-0acc-5db1-fc55-b57ad8a84be3@canonical.com>
Date:   Wed, 22 Dec 2021 12:50:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v4 4/4] mtd: rawnand: omap2: Select GPMC device driver for
 ARCH_K3
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Roger Quadros <rogerq@kernel.org>
Cc:     tony@atomide.com, robh@kernel.org, kishon@ti.com, nm@ti.com,
        vigneshr@ti.com, linux-mtd@lists.infradead.org,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20211221131757.2030-1-rogerq@kernel.org>
 <20211221131757.2030-5-rogerq@kernel.org> <20211221144917.0a5d8f1a@xps13>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211221144917.0a5d8f1a@xps13>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2021 14:49, Miquel Raynal wrote:
> Hi Roger,
> 
> rogerq@kernel.org wrote on Tue, 21 Dec 2021 15:17:57 +0200:
> 
>> The GPMC device driver is required for NAND controller
>> to work on K3 Architecture. Select it if required.
>>
>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
>> ---
>>  drivers/mtd/nand/raw/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
>> index 67b7cb67c030..587f20c6184f 100644
>> --- a/drivers/mtd/nand/raw/Kconfig
>> +++ b/drivers/mtd/nand/raw/Kconfig
>> @@ -42,6 +42,7 @@ config MTD_NAND_OMAP2
>>  	tristate "OMAP2, OMAP3, OMAP4 and Keystone NAND controller"
>>  	depends on ARCH_OMAP2PLUS || ARCH_KEYSTONE || COMPILE_TEST
>>  	depends on HAS_IOMEM
>> +	select OMAP_GPMC if ARCH_K3
> 
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> 

This patch looks actually independent. Miquel, do you want me to take it
via memory controller drivers tree (like three other patches)?


Best regards,
Krzysztof
