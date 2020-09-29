Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 578F727C110
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727929AbgI2J0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:26:43 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:33913 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727769AbgI2J0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 05:26:43 -0400
Received: by mail-ed1-f65.google.com with SMTP id k14so5601168edo.1
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:26:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VZ4AmJJ7jI+bPnuIwoxVkYH9AM/iG0JApQXTHkwYMcE=;
        b=tNXKVzdO+YZeo5+XwMARX6XsV34RFgT/gkcQcF5+U5PFwUY57JVIlwk3tvzOz7qNU8
         7wn1o3c+wZXCr7dFCkurjk6qZW6Zv9n7gPnGpEFeKsEk16dPzewe5KDTskJALO7Ss1Nq
         xlP7wMhi5v8yDY9u1/IL8dX3sEAn+6BcNhx8pmYRjeWhiej840YS6H5ICxT13zLzzn6M
         aELoPwiWdv99/6fCmHsTQp4Cr1f0xgDpgVmPRsVyS3iWEj/Au44nsdmTv17hCcSx6SmX
         gEMHPoeE2lLgazqTmmp8jGkUjR3PNjq46oJt3KTX/tLyJw2YmDjg3zrXO6P1Qs6gi7y3
         I4vA==
X-Gm-Message-State: AOAM532XJw0Uo0nt6i65zXvaca7cOere1C2b9RmVFory5ZI+6723CJXO
        uM96I/1vc9lH1GESSZdKSXI=
X-Google-Smtp-Source: ABdhPJzQ/oCuIjwQ1cLIF/zbjatpSg/E/Rr0JmaqMyoW43e2LK0smk7m7R+ga9PXIK0Ik48rtf2tKg==
X-Received: by 2002:aa7:d30b:: with SMTP id p11mr2258778edq.80.1601371601296;
        Tue, 29 Sep 2020 02:26:41 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id o15sm4641999ejr.1.2020.09.29.02.26.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Sep 2020 02:26:40 -0700 (PDT)
Date:   Tue, 29 Sep 2020 11:26:38 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: Add pmu support on imx8mn
Message-ID: <20200929092638.GB10330@kozik-lap>
References: <20200929091523.2775950-1-ping.bai@nxp.com>
 <20200929091523.2775950-2-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200929091523.2775950-2-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 29, 2020 at 05:15:23PM +0800, Jacky Bai wrote:
> Add PMU node to enable pmu support on imx8mn.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
> Change in V2:
> - Update the compatible string to ca53 specific
> - Correct the GIC_CPU_MASK num to 4 as only have 4xA53 cores
> ---
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
