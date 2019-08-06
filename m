Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7046B8397B
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 21:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725974AbfHFTQu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 15:16:50 -0400
Received: from mail.blih.net ([212.83.177.182]:25843 "EHLO mail.blih.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725970AbfHFTQu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Aug 2019 15:16:50 -0400
X-Greylist: delayed 398 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Aug 2019 15:16:49 EDT
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
        by mail.blih.net (OpenSMTPD) with ESMTP id 6bee197d;
        Tue, 6 Aug 2019 21:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=bidouilliste.com; h=date
        :from:to:cc:subject:message-id:in-reply-to:references
        :mime-version:content-type:content-transfer-encoding; s=mail;
         bh=MXGL0TgqkRu7s24m8m7xVJfOK0k=; b=CpSE6M3sfwuUYJInlA90cDLBzzSO
        5UgwMvxmD2OxKd4VfnkZRhOrGJXsEVgCJu3uDYMztBubY+8fleYk7wtMfEu0+jUG
        xxWrZ/nKa5JghKnCS+EVS17Z4Nz5f7uuaZn4SnJ3Ba0O+LscKl+FrGy+XPLEPInV
        kJoySq/F5yMHpNs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=bidouilliste.com; h=date
        :from:to:cc:subject:message-id:in-reply-to:references
        :mime-version:content-type:content-transfer-encoding; q=dns; s=
        mail; b=Kb4swjcuPYZ8Lht4YbcziZ4/+23C6CsqiNNEPRdqXazfrZGhbcLuDbP7
        v28f1G0p98RhhF/TgXKgPwVXLG+VA2Gy+UVTAdNXvBta/nz2jm4vqVLQIxiS3gXI
        Y2jIZlaY0RNwQaUvwsbZR6oj1rRRc2LpSoCUWzEOptjNwfDL8fc=
Received: from skull.home.blih.net (ip-9.net-89-3-105.rev.numericable.fr [89.3.105.9])
        by mail.blih.net (OpenSMTPD) with ESMTPSA id f2ca45ae
        TLS version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO;
        Tue, 6 Aug 2019 21:10:08 +0200 (CEST)
Date:   Tue, 6 Aug 2019 21:10:07 +0200
From:   Emmanuel Vadot <manu@bidouilliste.com>
To:     Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        "Jared D . McNeill" <jmcneill@NetBSD.org>,
        Harald Geyer <harald@ccbib.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-Id: <20190806211007.cd9c10bd0d174f56e4998980@bidouilliste.com>
In-Reply-To: <20190806140135.4739-1-anarsoul@gmail.com>
References: <20190806140135.4739-1-anarsoul@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  6 Aug 2019 07:01:35 -0700
Vasily Khoruzhick <anarsoul@gmail.com> wrote:

> Looks like PMU in A64 is broken, it generates no interrupts at all and
> as result 'perf top' shows no events.
> 
> Tested on Pine64-LTS.
> 
> Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> Cc: Harald Geyer <harald@ccbib.org>
> Cc: Jared D. McNeill <jmcneill@NetBSD.org>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 9cc9bdde81ac..cd92f546c483 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -142,15 +142,6 @@
>  		clock-output-names = "ext-osc32k";
>  	};
>  
> -	pmu {
> -		compatible = "arm,cortex-a53-pmu";
> -		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> -	};
> -
>  	psci {
>  		compatible = "arm,psci-0.2";
>  		method = "smc";
> -- 
> 2.22.0

 It doesn't work for me too on FreeBSD, and yes the interrupts are
wrong but this is not the problem. Maybe there is a reset line but it's
not documented in the documentation.

 Reviewed-by: Emmanuel Vadot <manu@FreeBSD.org>

-- 
Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>
