Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D648645EAD3
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:55:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345223AbhKZJ67 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:58:59 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33918
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230218AbhKZJ47 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:56:59 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4E4153F1B7
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920425;
        bh=w0EoIKkAxcLpQhYM6DrPKSl6NdTzEKDgHyUHGj2QTug=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=i+cBK1SPzLswl/lqLnSWOtufDbCpmQmBYLmg0JXfMTZGyaD8vV1lXotVhlRxymrrC
         OrXeGLKQSLdsfbmAUIg1Sp79XGwEeYAjZ/AEDThKBXdtpf3twA4pUbVkUFCd+FGCRj
         h2fBh7H7xPoRag2FQHHv8vqUgOGZbULOkVAITkMmIpNDOZ+V3h8ftyUrelBmCvLtvc
         BDve8jeP0dAFgZ2eKmwJf3PQ2+KWOiMx2ZpqMPQk+PwkajWEAeLc8OcdcseLYCKG9B
         FgisphemezeX7Tr2UzSEjKF+THSz3FojtkGCcssx780qxU5AX41sC+7lIQZtiexYJx
         JfOyyZqvgqnZg==
Received: by mail-lf1-f69.google.com with SMTP id x17-20020a0565123f9100b003ff593b7c65so3988199lfa.12
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:53:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w0EoIKkAxcLpQhYM6DrPKSl6NdTzEKDgHyUHGj2QTug=;
        b=TJkLyGhnbybYbMcLnePIoRvAjwS0/diyMLMrDT7wN8Vovd3CD6icPHifUHG5CtviqL
         YYsTQbELExq6LidHaBWSAFcnltXEh6ejgAUFutslTcPtL2aQlzO26qzMoUdWvrrUKboa
         HWZOQt2j/1v8xkkS0iyjiiAnNeomzt9YPCHK1KyCpoYbLplYZAjqRLcUR/kKJpXcdWcC
         bax3AXrEZ50kJPYL8eLazhx6V+2v6VoFN2OCHk6xQWxhleD0tSAOhMh+Gog/W17iUMp1
         ZeQinCQsBAMZHmOwqKgjrWrthfhkfggpzdtO61SDgkkglCagNFvtpN2EhVdd3rxQn2t5
         3Aag==
X-Gm-Message-State: AOAM532okWQF2BxZrgLve+mODQTnaiNzgPUde0yIC11WdrCcERYUvjIT
        Syap5YMOf+lMEUaTClBoayZplQn/uqSfxLmaAYdmOGmt4YVFagiY5JsZ1X95uTJC5iyxmNXBYK/
        ObzVuKNXtJQB87pVUDWCezmQSLoHqLX+9zG/odnk=
X-Received: by 2002:a19:484b:: with SMTP id v72mr27586329lfa.338.1637920424831;
        Fri, 26 Nov 2021 01:53:44 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxCeJXwq4ItYaL/wZ9/DJC6araykCT+DROx/0u16osfb9BzE6vCtxx6cSJnlcE99nqMNt0Ewg==
X-Received: by 2002:a19:484b:: with SMTP id v72mr27586318lfa.338.1637920424685;
        Fri, 26 Nov 2021 01:53:44 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l19sm118529ljq.137.2021.11.26.01.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:53:44 -0800 (PST)
Message-ID: <7f00d652-3587-b77e-a92b-bf1947fd01cd@canonical.com>
Date:   Fri, 26 Nov 2021 10:53:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 2/9] riscv: dts: canaan: Group tuples in interrupt
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
 <20211125153131.163533-3-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-3-geert@linux-m68k.org>
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
>  arch/riscv/boot/dts/canaan/k210.dtsi | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
