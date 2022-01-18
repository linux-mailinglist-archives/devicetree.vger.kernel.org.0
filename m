Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC6CE492DA2
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:45:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348226AbiARSpQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:45:16 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44366
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348164AbiARSpQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:45:16 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 00D3540053
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642531515;
        bh=8osQ58FXOlPLsyJtfHmM/yZUY3A/YErqa44d4fjUxZo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=dWJ+2Mp5MN/rEb3wTfWU5kbXXkHuas6/9LHl3Fj702Rq7EK2g6MYVWKGd9rd2VjqK
         dL8CNi2/1fA7YVmxvr+xmrUBksAnX5WKYUTLADJ91P/4SaKeWv1h2D86bgTP6QJDcV
         Yb5j8YvsHlNrxr5c15UB71vVo+vfrELpWPG4Kcf6FwaM6x4IIEJS6SxmX7nmZ6yBWY
         a7qTjjzRLo+CZR6WaGeXDDv2s+mtEUOaEjF4iROpE829+bZKTB538GI/W1ENZLuJen
         O0RepvnSD0b9+BZvwOl2l3XYynX7VT/3uwqePU/D6W9TtLTpT3i2fiL3go+7D2CCcu
         305/1OXMtx9Rw==
Received: by mail-ed1-f71.google.com with SMTP id t11-20020aa7d70b000000b004017521782dso10270021edq.19
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:45:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8osQ58FXOlPLsyJtfHmM/yZUY3A/YErqa44d4fjUxZo=;
        b=JdEMBigvGcpBKcbVwzKxwR7fv8h78DKys1z+beWjljONTT4Dh1lc0TqYNVLdFUs9Yf
         7OtcLVzbC+7a8Xs0K6URiFfRQY+Us+N52ueHTcer/AlHa70kJhvCGRxeh2gwmNascgQD
         QFOtGft470ej2c60Dj7c/XwPk8N1tb+nvNZSkUt9O+YaZRVzuwp/C7ORNwf10Z/L3HfY
         RABwGl88g/ICu48u3c+Pg7r1Z3t9DUabSZuioG/UosWZmjn9APB2XcLrNdNDxFN6U9zL
         lh7pT8IoKrgaBcTAwuoCCLf9/j1c+klVqijl5MzZFu7a66B5bpQA85iaGpDj2K7P+5kd
         zZDg==
X-Gm-Message-State: AOAM532/WS1SVSWK5PBHi2oCZKw3aEy69S0xCag8Ckj7zijXMor/jrOG
        8KGd9gXuPj+vrOSIOqxe5SohYPUKGQHiZOk3JSAUuH/uKlH9XSlNaZuwDcGXampE2bBRgZLGnmv
        +91f0rHgztkRJp72ktbDdQubO8OwCftF4DRWpiDo=
X-Received: by 2002:a05:6402:2803:: with SMTP id h3mr27373595ede.241.1642531513207;
        Tue, 18 Jan 2022 10:45:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx0Sfnsmx7DF4yXoTCVe+Weay6/LhuR9yDgGS2HHh01RVl40jGVz2Nf6Gg8Nhp5upcIJt2wHg==
X-Received: by 2002:a05:6402:2803:: with SMTP id h3mr27373579ede.241.1642531513056;
        Tue, 18 Jan 2022 10:45:13 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id k16sm5671861ejk.172.2022.01.18.10.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:45:12 -0800 (PST)
Message-ID: <43e72d34-0e11-9ff6-6924-0cab62b51891@canonical.com>
Date:   Tue, 18 Jan 2022 19:45:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 14/16] arm64: dts: fsd: Add initial device tree support
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Arjun K V <arjun.kv@samsung.com>,
        Aswani Reddy <aswani.reddy@samsung.com>,
        Ajay Kumar <ajaykumar.rs@samsung.com>,
        Sriranjani P <sriranjani.p@samsung.com>,
        Chandrasekar R <rcsekar@samsung.com>,
        Shashank Prashar <s.prashar@samsung.com>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150108epcas5p2d9cd4db7cb368c2bfbd7d058eba4107c@epcas5p2.samsung.com>
 <20220118144851.69537-15-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-15-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> Add initial device tree support for "Full Self-Driving" (FSD) SoC
> This SoC contain three clusters of four cortex-a72 CPUs and various
> peripheral IPs.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Arjun K V <arjun.kv@samsung.com>
> Signed-off-by: Aswani Reddy <aswani.reddy@samsung.com>
> Signed-off-by: Ajay Kumar <ajaykumar.rs@samsung.com>
> Signed-off-by: Sriranjani P <sriranjani.p@samsung.com>
> Signed-off-by: Chandrasekar R <rcsekar@samsung.com>
> Signed-off-by: Shashank Prashar <s.prashar@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  MAINTAINERS                           |   8 +
>  arch/arm64/Kconfig.platforms          |   7 +
>  arch/arm64/boot/dts/Makefile          |   1 +
>  arch/arm64/boot/dts/tesla/Makefile    |   3 +
>  arch/arm64/boot/dts/tesla/fsd-evb.dts |  39 ++
>  arch/arm64/boot/dts/tesla/fsd.dtsi    | 651 ++++++++++++++++++++++++++
>  6 files changed, 709 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/tesla/Makefile
>  create mode 100644 arch/arm64/boot/dts/tesla/fsd-evb.dts
>  create mode 100644 arch/arm64/boot/dts/tesla/fsd.dtsi
> 

I saw you dropped the MCT timer from DTSI. I wonder why?

Not very happy with FSD naming (as discussed before), but board
compatible looks reasonable. Code looks good to me:
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Similarly to previous vendor-prefix patch, please let me know if it's
expected me to take it. I assume no. :)


Best regards,
Krzysztof
