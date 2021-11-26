Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F271D45EAD0
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:55:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376616AbhKZJ6N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:58:13 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33860
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237286AbhKZJ4M (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:56:12 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4020140029
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920379;
        bh=Rk34jEXKQhoSDB2KTAe8ZDdW7Vi0P4kVsQnJWBFuqbw=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=qHJZXguyh8fqjyruOcvC7+S0j1kJUYUqs9swPKrRfyFwkDeboR7mWSqJqAq2rcjgG
         Q2yqWjLx4iuBx+n3yvhaFzCschrhPBxoiWFtDeaB7GWYCZj468wz/4g/9QqOySnbVr
         u/66uH6BXajis5KL5+N5kFuNZdmLR23iTjgDqNoriL+Xa0jt8AievlrXRy3hTXGw2l
         staGxCLSmRHXk85A5BK9I2A4l7Y2yhGyhSiv2oFgS+6MmRec2UAPMZUCq2MsQF4K0I
         nTmCjBT8h8nwmsa3YehO+eofbCgYAzU+ZLnjHp0qh32D9O+wSIgfmcDAoVgRTmqc7L
         M3qI/MPmKFSIw==
Received: by mail-lj1-f198.google.com with SMTP id h17-20020a05651c125100b0021ba28cf54dso1203647ljh.22
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:52:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Rk34jEXKQhoSDB2KTAe8ZDdW7Vi0P4kVsQnJWBFuqbw=;
        b=3C0Q7mngDY9doET15ZqiFsvrx5tOg60U2HC4EnyzCEYo87ajqomvWx9oxSlWAuhxS8
         XDMQZj68d/INaMMg/8+pnGtx7cKrq5hyvXnokE1ylVWGfr97/PW0a2KSZwRN8li8B37Z
         KP8txEK9nYUtBfzKqX5BoF5CIAapScB13juDxOreNsDP4qEwwDpyYjb7VNjXyFfifnRc
         xO397yL/52iicyqu4watnPuUDLCaRHgvfGFV1b1et4XoNORKHY+MNzj0AUEXeopjmwaj
         spl3GNJw5aEyVXmGC6pg3X+LFiXk0skNL3LD1tlW2eaU9vWiPC5+XRZeB3BtMK5cncy9
         Ssow==
X-Gm-Message-State: AOAM5309yq3IZl3RdKtR7cgqeD9uE/TPwwQw9keMCp4vkrVcuShJlTz8
        VMb2pWxKN6IbmveKS26MYtm7TAxoflywxa5MWSEBNj83E7sCHlP78MiC+ljr+icu7IqAkVnriwr
        SDV9O/MlgeG6mCkrOWOVjSXQemoBbRXnT6TWIY+4=
X-Received: by 2002:a05:6512:3e0c:: with SMTP id i12mr28026713lfv.121.1637920377561;
        Fri, 26 Nov 2021 01:52:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJynBnI4C4Rtk/4gi52BCMnUZO7KrwsYMMmAzjwq3DuH746SZA1MbEXQ7YACcy/dxO8Ghca/rA==
X-Received: by 2002:a05:6512:3e0c:: with SMTP id i12mr28026694lfv.121.1637920377375;
        Fri, 26 Nov 2021 01:52:57 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id k15sm468248lfe.15.2021.11.26.01.52.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:52:57 -0800 (PST)
Message-ID: <715ff4c8-69e5-dba3-7d32-95172c5b616f@canonical.com>
Date:   Fri, 26 Nov 2021 10:52:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 4/9] riscv: dts: microchip: Group tuples in interrupt
 properties
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-5-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-5-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> To improve human readability and enable automatic validation, the tuples
> in the various properties containing interrupt specifiers should be
> grouped.
> 
> Fix this by grouping the tuples of "interrupts" and
> "interrupts-extended" properties using angle brackets.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  .../boot/dts/microchip/microchip-mpfs.dtsi    | 31 ++++++++++---------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
