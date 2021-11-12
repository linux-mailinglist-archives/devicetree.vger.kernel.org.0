Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E715D44E2D3
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 09:09:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233125AbhKLIMp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 03:12:45 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:56032
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233441AbhKLIMo (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 12 Nov 2021 03:12:44 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D7B134081C
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 08:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636704590;
        bh=N0lgEvQGt1KLpLy11X2dOPKbOYo7U8IYp3IkLc+Sfe4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=fWurR8O3W7O/T0GhBRAV770vK4/uvOawof3vnCprxs6PpFpgra3dIBmjMneIAV/VR
         ik/N5qGkWdF8wx/D/XIe51CkuW9bCQ7RHiTa3/Y0ndu+4CcUSE00DQWQR7+hXPbzyF
         bjJw+mqjhNoqe0PCFgYyl4L1XEuMGT6OCqaEcbCOzVZIoj/Jv2jREZrTGlbIsfxw+e
         xyvTibNgxpOukXe3BwbuEyQA43dwyvEECworVGjVEhRzclWjHXft445AwSFYhzlspr
         I6YLYUMI28yWdWW3I5pEqcnsICkhChSROySS6F88SbnXtgC88LkwvzZaHHGDt+3box
         zOfT6N/iXbjYw==
Received: by mail-lj1-f197.google.com with SMTP id h21-20020a05651c159500b00219132ab503so2684837ljq.12
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 00:09:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=N0lgEvQGt1KLpLy11X2dOPKbOYo7U8IYp3IkLc+Sfe4=;
        b=Q2udxJgD03y9onfeRwJt1skQ/rMa0+eRDlM8defUhecJTzl1F7UEQ7Am2zshnihAqO
         8/rXg+MB2NfnLT2VU4KPFydPjl18MSLbm3ITN0n3oXI9H/2sx2hvlpudiivxRYJBSy97
         4Jeh8RLSrMNJd8LOzr4slCWa7V+MGJf11gCZHk830ZxWr5bfSot0yJatHxrfaqojw2rx
         iY5/HvLLuLjeSlpyHkCr1MzgH2qk1u3C0Pb0HatZe3RJHrM6tAUrrWIaabRKSf81fRn5
         GCrO13HF+M2ZmdkFigT6uaNEv8nwiE2ihveBUGjQagkhYD262QdmnZA9yYei0W/bZcrn
         S7UQ==
X-Gm-Message-State: AOAM5317G9egGJs4LC9qcQ/WP3qnSvxuQ4Nibb6r2yTW8r3/oliR4KYp
        LcnQNyBQa2tBs2MJBfFr+BNkWOxXU04v8t8zhZRLy6cqhOgfXvjc1vSW/qk4RmptKMKVfg5gowB
        AWyKtkHkvFpxnq9mOGZi/tiZ5MGGloKvtGLEO5MY=
X-Received: by 2002:a05:651c:1503:: with SMTP id e3mr13074820ljf.181.1636704589977;
        Fri, 12 Nov 2021 00:09:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyrUNr1T5EkFtrQpcvNMsMHIHtqi+AWQMLU5dHvVzJ97JYsfxC9021l75RYC0KKSA8xJU/X3g==
X-Received: by 2002:a05:651c:1503:: with SMTP id e3mr13074809ljf.181.1636704589817;
        Fri, 12 Nov 2021 00:09:49 -0800 (PST)
Received: from [192.168.0.27] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id a7sm346751lfk.233.2021.11.12.00.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 00:09:49 -0800 (PST)
Message-ID: <5816a13b-0ad8-450c-ff8e-2d646c7117b0@canonical.com>
Date:   Fri, 12 Nov 2021 09:09:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v3 2/2] i2c: exynos5: add support for ExynosAutov9 SoC
Content-Language: en-US
To:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-samsung-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        chanho61.park@samsung.com, linux-arm-kernel@lists.infradead.org,
        Sam Protsenko <semen.protsenko@linaro.org>
References: <20211112010137.149174-1-jaewon02.kim@samsung.com>
 <CGME20211112010603epcas2p339d1a6ef3df7cdbe61c87c8afa541fd0@epcas2p3.samsung.com>
 <20211112010137.149174-3-jaewon02.kim@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211112010137.149174-3-jaewon02.kim@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/11/2021 02:01, Jaewon Kim wrote:
> Serial IPs(UART, I2C, SPI) are integrated into New IP-Core
> called USI(Universal Serial Interface).
> 
> As it is integrated into USI, there are additinal HW changes.
> Registers to control USI and sysreg to set serial IPs have been added.
> Also, some timing registres have been changed.
> 
> Signed-off-by: Jaewon Kim <jaewon02.kim@samsung.com>
> ---
>  drivers/i2c/busses/i2c-exynos5.c | 135 ++++++++++++++++++++++++++++---
>  1 file changed, 125 insertions(+), 10 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
