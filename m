Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0410B473A9F
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 03:13:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232002AbhLNCNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 21:13:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbhLNCNH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 21:13:07 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C263C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 18:13:07 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id a23so11521645pgm.4
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 18:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=QKMDIE0IaBxRo05jmQBpNWhyutL/m7nfLU+Qg5eoiTg=;
        b=VuIkK7OEUiXdfuNKhtSkjGBX1D2Fl0/Q4JG8oHrxcCu6wmSzBgR2jdhusZNsJXLGNu
         VTgsCBHloJJEU6/G/oyrJcU0ynTqnLyrf3O+Yf5hszqZaOtd5kHKzs115eoHMy6t/KlK
         ZTEjJZlxyYdxUDFZupXlU/waZV0BERUsT/z9ISsgWW7r7zERMtAE0FdgLFQ8rxuBre8J
         FcsC6wyvMg8EeWFq3xFuupwhKbY/AM57lUxHps26OH+Ni0e5PNQuH5yeSKgMnSfXWVQt
         aqS1soSdqTuGex9nrf+iPggXmkkdd1mR2+MB/DOfTHVDVewSQA1GB486uPepDIvawd+j
         oPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=QKMDIE0IaBxRo05jmQBpNWhyutL/m7nfLU+Qg5eoiTg=;
        b=CJsC9qcE3EC42+Kqvba4/wksVFGaYQSkDO15YlrR+MAVn+5SeI8VkcDUpd0kR26IWz
         vJqutH8Nm6Tw6kL70acdX2yi3OsGtbxQxboFRMNYsXebfIleINqFg+TLRqS7klOVtP+n
         ncNpTtJerSwdAhH0oaRROGIWrOV0dONQWlBr1iQyDBmihBlea3MWMLCW9i2VrC5nv0hl
         STtGH6rC/qsz1egMCMl4cSlNhu7G4fZ8LHdkrS/W9T456ojLBt6l4yIRAxjZYJkaHj3q
         b/Y5UE1GPq4dVx8cLrLLqJJwO1ccLR4z4PrLL/XzxrmWWGLRpbOTmKrHG95D9hy+4FBN
         AHHA==
X-Gm-Message-State: AOAM533MpFs6NLXG6nzIJlZxsZRlwxAtyOWemUp2ol6bAGEXXrJsTDTw
        BCuX+Bj2vfmdG26fuP1Jk6SQUg==
X-Google-Smtp-Source: ABdhPJwjUEJJZRgsRmKk0RKneMMh5n23pEZO3LTokMf0r5Bc9tfIe3z0cI70M+DtamHJ70COK+ouvw==
X-Received: by 2002:a65:6a4b:: with SMTP id o11mr1685018pgu.305.1639447986646;
        Mon, 13 Dec 2021 18:13:06 -0800 (PST)
Received: from localhost ([12.163.77.120])
        by smtp.gmail.com with ESMTPSA id qe12sm372145pjb.29.2021.12.13.18.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 18:13:06 -0800 (PST)
Date:   Mon, 13 Dec 2021 18:13:06 -0800 (PST)
X-Google-Original-Date: Mon, 13 Dec 2021 18:12:44 PST (-0800)
Subject:     Re: [PATCH] riscv: dts: enable more DA9063 functions for the SiFive HiFive Unmatched
In-Reply-To: <20211108214629.1730870-1-aurelien@aurel32.net>
CC:     linux-kernel@vger.kernel.org, aurelien@aurel32.net,
        robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-riscv@lists.infradead.org (open list:RISC-V ARCHITECTURE)
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     aurelien@aurel32.net
Message-ID: <mhng-7ab80707-35c0-4123-8340-cf1feca4cca2@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Nov 2021 13:46:29 PST (-0800), aurelien@aurel32.net wrote:
> The DA9063 PMIC found on the SiFive HiFive Unmatched also provides an
> RTC, a watchdog and the power button input.
>
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> index 2e4ea84f27e7..c357b48582f7 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> @@ -70,6 +70,10 @@ pmic@58 {
>  		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>
> +		onkey {
> +			compatible = "dlg,da9063-onkey";
> +		};
> +
>  		regulators {
>  			vdd_bcore1: bcore1 {
>  				regulator-min-microvolt = <900000>;
> @@ -205,6 +209,14 @@ vdd_ldo11: ldo11 {
>  				regulator-always-on;
>  			};
>  		};
> +
> +		rtc {
> +			compatible = "dlg,da9063-rtc";
> +		};
> +
> +		wdt {
> +			compatible = "dlg,da9063-watchdog";
> +		};
>  	};
>  };

Thanks, this is on for-next.
