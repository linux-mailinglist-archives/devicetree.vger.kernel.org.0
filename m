Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9E9C478F39
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 16:10:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233787AbhLQPKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 10:10:49 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57686
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237409AbhLQPKt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 17 Dec 2021 10:10:49 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7E7933FFD2
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 15:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639753848;
        bh=LuufmSFwO+Uko0vN+wcG6SqqtDV+Z68NapfaG/AboZQ=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=aZ3o/p5UrZxHBJem2hX7kS5Z5f4zvrKb4Xa561WPwj8XKOUm2xZ0nS7eh6fncnKQc
         L9fHo8mUmWUnJOWgKcwmwjY2YqRfXkzB4p6L4wnQIctadWs7pmaBBD46T58lyMRzDK
         Ax1B2Ku6Wygf0os/yNf4STW5xIrzTzbCVUlTCE80Q3PlQMvDsFVw7FHBQ5sw6gUtcW
         8i4jkLrfPT3/HGe/tphkkBOZq8A3HevktvNA0Z7yB7mbs5qgeOi3o63fAyd5omdSA5
         9WQL3MOtwrfRmcouXtNIqlLBUEapzm5ORgs4o8l2ahct5fVvikMOIg8Hw3clRcaT3Q
         FqYwnUPeTTp1Q==
Received: by mail-lf1-f70.google.com with SMTP id m1-20020ac24281000000b004162863a2fcso1016195lfh.14
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 07:10:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LuufmSFwO+Uko0vN+wcG6SqqtDV+Z68NapfaG/AboZQ=;
        b=l69uGdot982KOt6kSRhInRakxYsCzqjSETExHWuzm6+czmOt1leT/Qqx0OnYzYxoY0
         dcQhtnXAWrXCtRKXURmcnDylfYS8dGI6SalZLRXsLWCLWlRZ3+kzmNUJ3/AIMtCrdB32
         M+03QdwQozktcvMvWYzjoZeraek8DFvq0LcvpV9P300YLSKVl6b3QOYPTQvdutljVqvA
         c6hesXa2J0YzZP3xGBTa7AN0VGGsthAxi5NE4UlrPrBYc3dGpNKuoj2w9fDs1pdEXxHx
         z2RSusYq3+Wkqqn/OamZyUD7Z/rxRk+CgY1gySV0kgGgH+ijPzWa3x674oHWslBuSS9F
         BAlA==
X-Gm-Message-State: AOAM530fLK+E3RwpWcgToVoRqsda7d4D9WhI8XQOLtF34iHH9X0aiY+1
        wxtuMT9R/KhsL9Mc+Em5VCQZeTBVSPwyXKL/BJnnLe8gHh0MSIlKc+xULqIR0dZcQT6wreczjEW
        0b6JlFb4hYyz/BzSVAOZpyc5U6NUhCVnZR5LqQQM=
X-Received: by 2002:a2e:b177:: with SMTP id a23mr3073318ljm.168.1639753846497;
        Fri, 17 Dec 2021 07:10:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJygjTECmvBQT9ksaNKKPpzj9j1t+XuT+kSUjjKHB4hi17gD4qo0YEtddUAvOESRhbhyAif77A==
X-Received: by 2002:a2e:b177:: with SMTP id a23mr3073227ljm.168.1639753844837;
        Fri, 17 Dec 2021 07:10:44 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h8sm617167lfu.250.2021.12.17.07.10.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 07:10:44 -0800 (PST)
Message-ID: <b026869a-7f93-7683-a8a2-5abd0e0d71db@canonical.com>
Date:   Fri, 17 Dec 2021 16:10:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v3 03/11] riscv: dts: microchip: mpfs: Drop empty chosen
 node
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1639744905.git.geert@linux-m68k.org>
 <53c36082ffa612ebe7ec53ebcc0dc29f11a083a6.1639744905.git.geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <53c36082ffa612ebe7ec53ebcc0dc29f11a083a6.1639744905.git.geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/12/2021 13:49, Geert Uytterhoeven wrote:
> It does not make sense to have an (empty) chosen node in an SoC-specific
> .dtsi, as chosen is meant for system-specific configuration.
> It is already provided in microchip-mpfs-icicle-kit.dts anyway.
> 
> Fixes: 0fa6107eca4186ad ("RISC-V: Initial DTS for Microchip ICICLE board")
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Tested-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> v3:
>   - Add Tested-by,
> 
> v2:
>   - Add Reviewed-by.
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
