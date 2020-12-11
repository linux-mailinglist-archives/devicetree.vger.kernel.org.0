Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 273362D6E03
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 03:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389912AbgLKCLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 21:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389898AbgLKCKc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 21:10:32 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C343FC0617A6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 18:09:41 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id x12so3349595plr.10
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 18:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=vDb71w6uljZJayxlxiJgmuJdK657O4Ga+wyoAs72qjk=;
        b=IaFxJDeWY3IjASSHDaru//dwrwZwddeNAKJv3YQuDt9Z5vUTYce6N3n2sY4Bf0c957
         hwPzzvl/295YL2vbv7J3+v2tGny70sLdhhK9H5e1xYixjlTatjLA0IPi7P9nYXFOH0yF
         NTKPuV9VDL/1vWDK8FJpI5geUSgeLY5/+wwjGXqW9CDNVgqucENlTRVRxp6rVt62KYLO
         lTEAwqxMncm4g+GYwb0t+QKnnsB3ksgFwr/e8AM/CicJbxEb8m05RPAMLhLItJKt3aRR
         evlvIYZIv7Tmjlm0zIQ+lO2rUgKO9hRe8gX0rSRkc0jrd97CKOUXWum81Vccn+wxQkN/
         de1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=vDb71w6uljZJayxlxiJgmuJdK657O4Ga+wyoAs72qjk=;
        b=icEV6uJQt6ePbqp45Wn0wbEuVMJhF8kve/nKurHQx/B8KxLlIc7iSc4PxXpJ+IqkLq
         feNLvNj9k3QJzDiUGq9nSmhikyDl+NniXYPrZkAsBKe9LZ/LSNN1vzaPErlBfhsTNn46
         X+6USdvBx1+b6pBS6s8H6lMqo9MkKZvz5BRf1nltRDzDcxZG0TqkmdOhrBs67agAwyIQ
         I/VM0c8qBfz5fOl5Hqj8gJNdNX6zq2OAkC1QjYjFbsdLhC/4UhEvNKcK6heh8XJ6qkwZ
         pv3ftVPcii1Dn1d4WUTpHdyHgvT7hG6D5e6L1dixrjcb9b1khTvAAffiqmuWsOuLhhCr
         RC+w==
X-Gm-Message-State: AOAM533qxbC6XgmQG5T6rW0kcLoSNi0UrDMaCjRoDcE8Dc5K+8X1Yqal
        ozBDTe6/rW1Htxc0JLbCjTglpQ==
X-Google-Smtp-Source: ABdhPJyZX1D9EzbjZxwXU1FI05UoaddizqsnGZZuS/SqZXszdCZT/ZD1MhKs4XCMpNaq8wV1nPdGJQ==
X-Received: by 2002:a17:90b:19d2:: with SMTP id nm18mr11136016pjb.159.1607652581296;
        Thu, 10 Dec 2020 18:09:41 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id er23sm8095980pjb.12.2020.12.10.18.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 18:09:40 -0800 (PST)
Date:   Thu, 10 Dec 2020 18:09:40 -0800 (PST)
X-Google-Original-Date: Thu, 10 Dec 2020 18:04:43 PST (-0800)
Subject:     Re: [PATCH v8 02/22] riscv: Fix sifive serial driver
In-Reply-To: <20201210140313.258739-3-damien.lemoal@wdc.com>
CC:     linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, sboyd@kernel.org,
        linux-clk@vger.kernel.org, linus.walleij@linaro.org,
        linux-gpio@vger.kernel.org, p.zabel@pengutronix.de,
        seanga2@gmail.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-b369aaef-f262-4ca3-bcda-5bd4ee893332@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Dec 2020 06:02:53 PST (-0800), Damien Le Moal wrote:
> Setup the port uartclk in sifive_serial_probe() so that the base baud
> rate is correctly printed during device probe instead of always showing
> "0".  I.e. the probe message is changed from
>
> 38000000.serial: ttySIF0 at MMIO 0x38000000 (irq = 1,
> base_baud = 0) is a SiFive UART v0
>
> to the correct:
>
> 38000000.serial: ttySIF0 at MMIO 0x38000000 (irq = 1,
> base_baud = 115200) is a SiFive UART v0
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  drivers/tty/serial/sifive.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
> index 13eadcb8aec4..214bf3086c68 100644
> --- a/drivers/tty/serial/sifive.c
> +++ b/drivers/tty/serial/sifive.c
> @@ -999,6 +999,7 @@ static int sifive_serial_probe(struct platform_device *pdev)
>  	/* Set up clock divider */
>  	ssp->clkin_rate = clk_get_rate(ssp->clk);
>  	ssp->baud_rate = SIFIVE_DEFAULT_BAUD_RATE;
> +	ssp->port.uartclk = ssp->baud_rate * 16;
>  	__ssp_update_div(ssp);
>
>  	platform_set_drvdata(pdev, ssp);

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

As an aside: is this an intrinsic property of being a serial port, or specific
to the SiFive driver?  We seem to multiply/divide by 16 quite a bit to convert
between baud rates and clocks, so if it's specific to SiFive then it seems
reasonable to name that constant in this driver.  If it's a serial thing then I
guess we should just do whatever everyone else is doing.

Don't think that blocks this patch, though, as it's all over the place.
