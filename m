Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 600A044AE19
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 13:53:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242018AbhKIM4W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 07:56:22 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40090
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230408AbhKIM4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 07:56:20 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 67EC03F19A
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 12:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636462412;
        bh=j5tko5riuXms3JFEWKNcXt/poyacQNf52vuml9R0vAg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Leyp93anGh6pyscDsXoGCBoNWJ9UeLWu5X5TD5SICalRQ+UXuUMT6JHo1bIRbIzUp
         7dhXqnog2xl2mNLvCOGyw8UaaJWXQ0vV+E/akMfEo8Xt9e804oexpcEk0Lgdju/zsT
         7UOsnV0MfcJfCL+dyoBx4CdFTlgQIq2sp7IuiW5zGwRdcRo1rcIhdwob6w3teCeKOk
         zBd8q7EVWmUDzKExVuaIZWScSr0xOVQIfGHNvxscxorbISydmq9kp0pD1FCzzvbk6c
         8OuGIjmoo3sPv7RIxsRGhEZ3DnpMCUmuDAbWkRiG5/0VAY4jDXVenN0ki5bVF+fjcO
         kB+CZe5m+EngA==
Received: by mail-ed1-f71.google.com with SMTP id s6-20020a056402520600b003e2dea4f9b4so14807290edd.12
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 04:53:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=j5tko5riuXms3JFEWKNcXt/poyacQNf52vuml9R0vAg=;
        b=E0sQD/am39su18uv8BlocKVF+8nDF2s2LRUADy3ZZEkEMe6e3scfy5YoP6WP2JNwns
         Pqnq1JYRjeBPGZ/vjaqLBbPY0LFMIkcWSUazLe7XJE/SHHORl4IuG8kzy7FYQE4ht/97
         GRlm4zkqx+pqV3OAnHU1LLW6N68k+Nm+i4hprL9TyA/aIBmciAjDOvMi1bV/6NXKssuF
         ujNhxU+aLKyygJ7URY4CnmTnrBO4MjsNskb4CEH+bU/QjkPBt/77F5wxI2uPfwx5Wht4
         E2ZjvRR2fI0PXCFq5bDmWK7D/S0/8ej9FKShf4jluNvMOuqTWa03k0nt0QeTU1jAJvHG
         B5vw==
X-Gm-Message-State: AOAM533fmIlAD39weOKM28dqsb9emItWn0CWLp8xZ8THnIU1XiRgQpmx
        YjLykgA0xnU4c6M/2d4TI124uzw2ejFps+I/kcTvWHdljqpPRlHwrvprw67/e3W9swWZ1p8l6EY
        wV7XnvaX52yxuU7RtLliy4Cl5BN5++7BSIIRE2xA=
X-Received: by 2002:a19:9148:: with SMTP id y8mr6510853lfj.512.1636462401701;
        Tue, 09 Nov 2021 04:53:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxj8OuRHAShyPuiff/xoQ2+ShAhXkJXJ57MKAdkVyp0FJ2HQRhii/EaQs7fi9Q9gr6wclBnKQ==
X-Received: by 2002:a19:9148:: with SMTP id y8mr6510816lfj.512.1636462401453;
        Tue, 09 Nov 2021 04:53:21 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id i6sm2136859lfr.163.2021.11.09.04.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Nov 2021 04:53:20 -0800 (PST)
Message-ID: <0d996393-20b9-4f16-cbd0-c9bff2b54112@canonical.com>
Date:   Tue, 9 Nov 2021 13:53:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH 10/13] dt-bindings: spi: add bindings for microchip mpfs
 spi
Content-Language: en-US
To:     Conor.Dooley@microchip.com, robh@kernel.org
Cc:     robh+dt@kernel.org, gregkh@linuxfoundation.org,
        linus.walleij@linaro.org, linux-riscv@lists.infradead.org,
        aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        linux-usb@vger.kernel.org, Daire.McNamara@microchip.com,
        linux-spi@vger.kernel.org, geert@linux-m68k.org,
        devicetree@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-gpio@vger.kernel.org, broonie@kernel.org, palmer@dabbelt.com,
        bgolaszewski@baylibre.com, jassisinghbrar@gmail.com,
        linux-crypto@vger.kernel.org, Ivan.Griffin@microchip.com,
        atish.patra@wdc.com, Lewis.Hanly@microchip.com,
        bin.meng@windriver.com, alexandre.belloni@bootlin.com,
        linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
        a.zummo@towertech.it
References: <20211108150554.4457-1-conor.dooley@microchip.com>
 <20211108150554.4457-11-conor.dooley@microchip.com>
 <1636430789.935637.743042.nullmailer@robh.at.kernel.org>
 <96005893-8819-1d76-6dea-7d173655258f@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <96005893-8819-1d76-6dea-7d173655258f@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/11/2021 13:16, Conor.Dooley@microchip.com wrote:
> On 09/11/2021 04:06, Rob Herring wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On Mon, 08 Nov 2021 15:05:51 +0000, conor.dooley@microchip.com wrote:
>>> From: Conor Dooley <conor.dooley@microchip.com>
>>>
>>> Add device tree bindings for the {q,}spi controller on
>>> the Microchip PolarFire SoC.
>>>
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>> ---
>>>   .../bindings/spi/microchip,mpfs-spi.yaml      | 72 +++++++++++++++++++
>>>   1 file changed, 72 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> Documentation/devicetree/bindings/spi/microchip,mpfs-spi.example.dts:19:18: fatal error: dt-bindings/clock/microchip,mpfs-clock.h: No such file or directory
>>     19 |         #include "dt-bindings/clock/microchip,mpfs-clock.h"
> Rob,
> Should I drop the header from the example or is there a way for me 
> specify the dependent patch to pass this check?

The error has to be fixed, although not necessarily by dropping the
header, but by posting it. How this can pass on your system? There is no
such file added in this patchset.

Best regards,
Krzysztof
