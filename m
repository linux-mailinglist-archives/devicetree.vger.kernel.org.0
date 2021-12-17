Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 473C6479057
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 16:50:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238151AbhLQPuZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 10:50:25 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:40234
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232296AbhLQPuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 17 Dec 2021 10:50:24 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id ADD143FFD7
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639756222;
        bh=Vz0WaZn+QjmviDVVOxxI0VKa9jS9jnpYSLlaJ+1iHt4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=o1gg2t2PWWZYaGrKTITfajwqnoGYNcR9VWFFkNaBAgleNCT3GPxq6h4i5acAaKFwq
         uGeicY7o4K0wTFilno8/chcSqkXh+oJxP+9IYGsxE74KUfe3L/561VJEv+HUvE4LJ6
         k+XKR+r9P5J815uWLAfEXiv74M7BthzoD4t/1fKzgN4CqyqEUS5/vD/e4qI0IP9UCv
         /3BtBKeWtV0tQVpCwyZyGOfArdF7jxA4YpxUYX7YGeGWzu2Awu6iqWtrZERO5w7Wlh
         NDbTTjxAr4WnupT5/Uh/aMraLVGG9NRAuOoW8clsqkOCj+GNu76DVjsR6M9CUVmIkf
         u94MtSQLbQtkQ==
Received: by mail-lf1-f71.google.com with SMTP id bi30-20020a0565120e9e00b00415d0e471e0so1038189lfb.19
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 07:50:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Vz0WaZn+QjmviDVVOxxI0VKa9jS9jnpYSLlaJ+1iHt4=;
        b=maOrl/opS9yBZls8frVrEZE75ZmpZjQmHt5Tct2jqypWJ+hcor5X9o9EhHNbWGz32S
         I12wqpUIcXbwAfm5Ifxm3F1bWQctLhG8hCGQKTAAYKJ8u1sPeIDuvfrV0741MnFjJFrn
         xGznHSkjogrNd71oUNJLNkHPVQBkg3L6EFAAgwxVAPFPn8YavJgjLC1UbD2nwDeyIjb5
         FjuKk8f6rbp22CsVkZLnmOvHvO4pXnlrAZvcomZvnevoSr9uBkJL7M7qOWwlBc+8VY3U
         PQ8nHPvo/yWv8Jp4vvT9T4VF+cmuP87Ds6ZuVZ8cS7nuIBVZFfSct2tgLU6/rJOFUcER
         TEPQ==
X-Gm-Message-State: AOAM532BYbv1jcKFS6YDm7RJOURxAxPmwVvFMhi92XkzUTcs27aQFq5b
        0zNNreQKWqDR3HbrftHXR7kiJ2zSkj1WLC3lgQp92nn6j+Qz/F5q5vGhZ57cAAECFrrbMWrn3qi
        Ov3r8bDJMGYKsRI3gAxoneoX8v8U+XQ08M9R+9Fg=
X-Received: by 2002:a05:6512:3b13:: with SMTP id f19mr3294909lfv.321.1639756221690;
        Fri, 17 Dec 2021 07:50:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxWVVHP8AIicFtgzT6t5zbqk3uLn5LaifrLCAR18ukQnW+gJGIDSWfttbU1Fp4zH33SsPnLLA==
X-Received: by 2002:a05:6512:3b13:: with SMTP id f19mr3294897lfv.321.1639756221533;
        Fri, 17 Dec 2021 07:50:21 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id p20sm1443796lfu.151.2021.12.17.07.50.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 07:50:21 -0800 (PST)
Message-ID: <f5588a26-1a48-2513-a36a-13bec58e5003@canonical.com>
Date:   Fri, 17 Dec 2021 16:50:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v3 4/4] arm64: arch_k3: Select GPMC device driver
Content-Language: en-US
To:     Roger Quadros <rogerq@kernel.org>, tony@atomide.com
Cc:     robh@kernel.org, kishon@ti.com, nm@ti.com, vigneshr@ti.com,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20211217102945.17432-1-rogerq@kernel.org>
 <20211217102945.17432-5-rogerq@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211217102945.17432-5-rogerq@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/12/2021 11:29, Roger Quadros wrote:
> The GPMC controller is present on some K3 SoCs.
> It provides access to NOR/NAND flashes and asynchronous
> SRAM-like memories and ASICs.
> 
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  arch/arm64/Kconfig.platforms | 1 +
>  1 file changed, 1 insertion(+)
> 

FWIW:
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Other option would be to make it "default ARCH_K3" in OMAP_GPMC, but
this is fine for me.


Best regards,
Krzysztof
