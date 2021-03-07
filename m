Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB5A5330499
	for <lists+devicetree@lfdr.de>; Sun,  7 Mar 2021 21:31:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232943AbhCGUak convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sun, 7 Mar 2021 15:30:40 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:57504 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231732AbhCGUaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Mar 2021 15:30:14 -0500
Received: from mail-ed1-f71.google.com ([209.85.208.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJ02X-0004J1-Sm
        for devicetree@vger.kernel.org; Sun, 07 Mar 2021 20:30:13 +0000
Received: by mail-ed1-f71.google.com with SMTP id o15so4109711edv.7
        for <devicetree@vger.kernel.org>; Sun, 07 Mar 2021 12:30:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=linVnUsAuRvopkT8+cc4aPzS8ei6dMsnrAAlNuxD3Vg=;
        b=oWEqeJ2aEIbVwgIqgXZog3MiH7WKPtFTQw+Vs8hiDBjJeeb5pckPuHt4Gzxc4CX2dt
         ew/LAbxSPXEZUXi/60G0XnbUvm2bNUDoGvQKdtEhdb1ZkIDd3RRiqAGHMKQ2Wj0C2vz2
         Eo6vaPs8yeu6SXUInSpGv+RZzJ3mgLNVWx1ZmWpGspe2HDYNDb+41nQmkyMX9raB8j+B
         3oLkxA/gDx2S1MK40sjryfz9E4WmbFI6XffOIZuGa5bxBtAv/8KvL34dPQc8nhxs25AU
         nuX9VX0uEwnRhat91Gxc4GGnRyjW9fDM3MFlQA2Wjea0TzI6FL5uVgjpb1j79rfcz9Nm
         yJ/g==
X-Gm-Message-State: AOAM530KMRUfRLWLV07ePG274W63UyJyzHzy3TbipsaZ+pK3W6L3nr+6
        YGbuNCuuNr4yDddQq4irCJ0U7llSQASQcNmBg5VzUn5jUFPIntpi8qMdjEdqB8vm/M+zwFc90fl
        vzrJx09FRiSN1T7x1rz5pwJOkRn7RfUlkI2k8DR8=
X-Received: by 2002:aa7:ce1a:: with SMTP id d26mr19144208edv.206.1615149013669;
        Sun, 07 Mar 2021 12:30:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzyuO7zfNCQa4wffaBAkwM2HqU9slERv1JFTpTZyinaoxNp7ZnfInaLxSBY3fiWu1MbSBfJDw==
X-Received: by 2002:aa7:ce1a:: with SMTP id d26mr19144200edv.206.1615149013496;
        Sun, 07 Mar 2021 12:30:13 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id b4sm6354332edh.40.2021.03.07.12.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 12:30:12 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
X-Google-Original-From: Krzysztof Kozlowski <krzk@kernel.org>
Date:   Sun, 7 Mar 2021 21:30:11 +0100
To:     Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: [PATCH v3 2/3] ARM: dts: exynos: Add assigned clock parent to
 CMU in Exynos4412 Odroid
Message-ID: <20210307203011.zeylib7afgvc5zhd@kozik-lap>
References: <20200906142146.21266-1-krzk@kernel.org>
 <20200906142146.21266-2-krzk@kernel.org>
 <CGME20200911150351eucas1p1c678e3ae20e49209dbf19c000ea033f4@eucas1p1.samsung.com>
 <20200911145403.GC15290@kozik-lap>
 <d53d0b67-2368-1434-ab00-fb37b1e824a6@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
In-Reply-To: <d53d0b67-2368-1434-ab00-fb37b1e824a6@samsung.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 21, 2020 at 11:42:40AM +0200, Marek Szyprowski wrote:
> Hi Krzysztof,
> 
> On 11.09.2020 16:54, Krzysztof Kozlowski wrote:
> > On Sun, Sep 06, 2020 at 04:21:45PM +0200, Krzysztof Kozlowski wrote:
> >> Commit 68605101460e ("ARM: dts: exynos: Add support for audio over HDMI
> >> for Odroid X/X2/U3") added assigned clocks under Clock Management Unit.
> >>
> >> However the dtschema expects "clocks" property if "assigned-clocks" are
> >> used.  Add reference to input clock, the parent used in
> >> "assigned-clock-parents" to silence the dtschema warnings:
> >>
> >>    arch/arm/boot/dts/exynos4412-odroidu3.dt.yaml: clock-controller@10030000: 'clocks' is a dependency of 'assigned-clocks'
> >>
> > Applied.
> 
> This patch breaks operation of clocks on Odroid X2/U3:
> 
> # dmesg | grep clk
> [    0.000000] exynos_clkout_init: failed to register clkout clock
> [    0.000000] Exynos4x12 clocks: sclk_apll = 1000000000, sclk_mpll = 
> 800000000
>                  sclk_epll = 45158401, sclk_vpll = 350000000, arm_clk = 
> 1000000000
> [    2.569484] usb3503 0-0008: unable to request refclk (-517)
> [    2.848718] s3c-sdhci 12530000.sdhci: clock source 2: mmc_busclk.2 
> (50000000 Hz)
> [    3.373850] usb3503 0-0008: unable to request refclk (-517)
> [    3.542777] usb3503 0-0008: unable to request refclk (-517)
> [    3.544005] usb3503 0-0008: unable to request refclk (-517)
> [    3.559223] usb3503 0-0008: unable to request refclk (-517)
> 
> Please revert or drop if possible.

I re-applied this one (it was once reverted), as clkout was converted to
proper driver. My Odroid U3 boots fine now with this patch.

Best regards,
Krzysztof
