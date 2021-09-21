Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 110114130F9
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 11:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231543AbhIUJwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 05:52:43 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:41848
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231534AbhIUJwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 05:52:41 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 65FB63F31E
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 09:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632217872;
        bh=ANyVFwa8/cSt4LiPU1T6EcsddAoJy9awAm8594hSheg=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=VpJtzqs5HIkyYOyRgUKeD+/qrQLKG1TR3LiEMW9dqbct+XL/FdhO0qbiuienwmayc
         zTr92iNLd81HNQepYlrth0hdMqhuajhyNRRDrmg/F9dRb78WPAKQJMM7xWEu2DuJCi
         0mzdRbWZpX7lt3/2goJhgmksieLH+rWgywWlLF1x/rBDxCcoMR3uIGdzNXbWvkJiba
         43gvnZbTZ4mvGsux1cGGpXdojT1EtL39XeYsUISiNku3UDvkSebSTGVyqlvweUlbTX
         kWsTTLlmT+J/WXbWiA/RKOzD6H3+Df9fYGjkgr0PYAIrWAPAZJQpV6NuPq5HShs+Li
         10Uc8wR8ArkIQ==
Received: by mail-wr1-f70.google.com with SMTP id x2-20020a5d54c2000000b0015dfd2b4e34so8340708wrv.6
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 02:51:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ANyVFwa8/cSt4LiPU1T6EcsddAoJy9awAm8594hSheg=;
        b=URUIJ8PBzSWZH3uZY6MpQiBix+YKl6tunWM/WElW3PeDfs+NQHsmU1Zg6ikj7xJLFh
         ij3WljCdx34x5IW05XyVJ6bzc9IZmHmjHGL4Ej5Okz07s9Orlk6scKHOyNaSJstkvNku
         yQYjTV+iE5cnzCrlrwwkGJV/tOwGsnNyPwaTf3RrKIoAC1LVCqedtdgUm3fYMUMCyW4Y
         vLFoheZi0FPqHIzcHVy+L6ilbfTM/rrBNgksitsBPFSqLXwIiM9soYe3CY3BuimLOzOV
         gTwQFO9wULBUooocH6yXFvPj2uWqF48V6BMIRILLI395MDZUWYmhXUoVN9n7g171i8SE
         8sEA==
X-Gm-Message-State: AOAM533kFiANldKev+2N9S68l4s5Yzg5w5nOw3EX5iZ9GIXgUvR3q4+g
        6EtAC2OpwORw8kc1+7ARWOsK+6GWNb6UVmjfZIMHtvO3ITSXvQZfHiT+XpmE63HhqWUrzfjRbG9
        5dW3oTi4L44Pd1A7gFKBb74h0q+j/EOB99ZgjBIk=
X-Received: by 2002:a1c:210a:: with SMTP id h10mr3660091wmh.117.1632217872135;
        Tue, 21 Sep 2021 02:51:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwaD4ttkkbvIoXdYO3QkoQKEbWCzyZA83Qx0shJpz/rWqDxNHrBU0ogPqjDK6L54QUP/fwE2Q==
X-Received: by 2002:a1c:210a:: with SMTP id h10mr3660066wmh.117.1632217871940;
        Tue, 21 Sep 2021 02:51:11 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id x21sm2264969wmc.14.2021.09.21.02.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 02:51:11 -0700 (PDT)
Subject: Re: [PATCH V1 2/3] trace: events: tegra_apb_dma: add SPDX license
 identifier
To:     Bitan Biswas <bbiswas@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Ingo Molnar <mingo@redhat.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Sowjanya Komatineni <skomatineni@nvidia.com>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, Ben Dooks <ben.dooks@codethink.co.uk>
References: <20210921094206.2632-1-bbiswas@nvidia.com>
 <20210921094206.2632-3-bbiswas@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <17f1827a-5919-271d-ef00-d2e95d046226@canonical.com>
Date:   Tue, 21 Sep 2021 11:51:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921094206.2632-3-bbiswas@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2021 11:42, Bitan Biswas wrote:
> Add GPL license in Tegra apb dma trace header file.
> 
> Signed-off-by: Bitan Biswas <bbiswas@nvidia.com>
> ---
>  include/trace/events/tegra_apb_dma.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/trace/events/tegra_apb_dma.h b/include/trace/events/tegra_apb_dma.h
> index 971cd02d2daf..fe10897b00b8 100644
> --- a/include/trace/events/tegra_apb_dma.h
> +++ b/include/trace/events/tegra_apb_dma.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */

Looks good, but you should Cc the copyrights holder (Ben) to be nice and
friendly.

Best regards,
Krzysztof
