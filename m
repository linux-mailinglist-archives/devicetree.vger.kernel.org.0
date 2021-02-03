Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE4AF30E32A
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 20:22:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbhBCTVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 14:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231622AbhBCTVJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 14:21:09 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0933EC061573
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 11:20:29 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id m13so494498wro.12
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 11:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=tt99hPLhk3KaB2PWzbIx3e0caoHHzjfbHL4MeGUbUaA=;
        b=vvurCJa+zL6OxkKbyDFd91HDwpgH5Exn+ACKhgh6lzDDzBZzqB67sEj67RW3kmaXBy
         8ovZ12/qyWX+x9Ju6g6gG8l970n77+oxMHWFfLq6xJREUv3S6FTizerERJQxj1VW00kb
         kz/5uuT7hLNt6ellVYzPo9pmdhz/VD3qqK8UZIDnCQH5fDpcnt0anzrdxaDPHsSfsLyk
         Ze88s1rs6vq9tt0dIZULmRiR6WuOFm2uywGlU1EQA4khInjZxVIxZfLCIv04wUefVY1f
         7b2wUq6Qb/W5zssFSbJ328EAmkXxZRH1XPn7BLafKshHz/Ir1ehXRa9ff1YqaZrCTyIE
         PU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=tt99hPLhk3KaB2PWzbIx3e0caoHHzjfbHL4MeGUbUaA=;
        b=Jz4eponTO0yKgEDHnN4uyvHQV3JIq5KhF5ajFkTUKVHOEwqUregWNYbFjxeboQ2B3l
         XlowtaRUkfMbkiumCFJaMwg6nTxlhotM1u7VMcTTCiTDxGkrix7bikSyYVIfv0UqELsi
         fJr6rqbc9ZQbtFl2iOrTGQdQGgx4TCtya5s9aaavop+ZlM5e1rX/wQ4ye1MJxfl2W3DE
         YzneMPKw0jAMqQzpGZCMnIpvXZIRtGsVfsPncy0RzbkfCdDn+ro/6VEF4uUeB1xru3Wi
         HUvhhSBc6EkbViFYkVrzSNptDMP7dJCfs601gYlR0SHAdCQ1kJb/aRz1htGrpHZvpcsh
         jHpQ==
X-Gm-Message-State: AOAM5316qd8n8ZwM3/R030BXjWKR8D1ce9bPRd/r3Fn8nNCkg7lNk8EQ
        tFhIb2t6i4qXyYr0d6djbF9POg==
X-Google-Smtp-Source: ABdhPJx7Ma+smAB3z6XyTHRbpL8aFLX1XsmI+JVbGuB7Mh+y1U9TrAecPs1aJwuPWW0GKwsvK8Q7Ng==
X-Received: by 2002:adf:fe04:: with SMTP id n4mr5432984wrr.115.1612380027641;
        Wed, 03 Feb 2021 11:20:27 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id e10sm4692036wro.65.2021.02.03.11.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 11:20:26 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: amlogic: Assign a fixed index to mmc
 devices
In-Reply-To: <20210202170328.79929-1-alexander.stein@mailbox.org>
References: <20210127230852.66686-1-alexander.stein@mailbox.org>
 <20210202170328.79929-1-alexander.stein@mailbox.org>
Date:   Wed, 03 Feb 2021 11:20:24 -0800
Message-ID: <7hwnvp2c1z.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Alexander Stein <alexander.stein@mailbox.org> writes:

> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs
> are not practical. Use newly introduced aliases for mmcblk devices from [1].
> [1]
> https://patchwork.kernel.org/patch/11747669/
>
> Commit message taken from commit 0011c6d18277 ("arm64: dts: rockchip: Assign a fixed index to mmc devices on rk3399 boards.")
>
> The unconventional order (B, C, A) is due to the fact that sd_emmc_a is
> (according to the comments) only used for SDIO.
>
> AFAICS all boards either have both sd_emmc_b and sd_emmc_c or only one of
> them enabled. So the alias order should match the previous non-async order
> for all of them.
>
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Just for the records, I only tested this on my ODROID-N2 (G12 based) board.
>
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 ++++++
>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 ++++++
>  2 files changed, 12 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 9c90d562ada1..15525f3aa4a6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -17,6 +17,12 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> +	aliases {
> +		mmc0 = &sd_emmc_b;
> +		mmc1 = &sd_emmc_c;
> +		mmc2 = &sd_emmc_a;
> +	};
> +

Thanks for updating this.

minor nit: as I suggested earlier, could you add comments here showing the
intention that mmc0 -> SD, mmc1 -> eMMC, mmc2 -> SDIO

Kevin
