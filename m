Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E81F64FBEF5
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 16:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244718AbiDKOYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 10:24:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231232AbiDKOYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 10:24:35 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB19C36E3A
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 07:22:20 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id t2so16266084qtw.9
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 07:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prism19-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:content-language
         :thread-index;
        bh=v6tXzO9I8TspPgqH1ah6TZclEmyVKH3/QhCMq11pSMw=;
        b=Je821PhFC5P3FHTw1UR+bMOphA0/XDjPnNyeyfYj3pwOkuSjEm57rj3VxHLZiJfoLS
         C0S+4/3dGYUOHO6667EokV9VWEpV2bIh2FdPVh1DbDiQh/HwfsT8ep01Qjbkg/Q5tsU/
         +UQgPL20kN0X8wPE3AWj563Pk//ENptZpHuB42T8oa0MDIT3WEviHzeta5frg7z/heI1
         wUS2dz2AD05v9t1Tb7Nrd8r74BCXV0nnXNsGgctW0hFcXimyY3r3i2tAb+fVS2mOQ/HS
         ooJDYQ5TqXilfvBI2daqx5OuPsSbrsEP+OJI4vM6+RujDljRGr2lsXB9J0a0toOwoDHG
         FYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:content-language
         :thread-index;
        bh=v6tXzO9I8TspPgqH1ah6TZclEmyVKH3/QhCMq11pSMw=;
        b=e+gCrTSIOSuyWt94Umx+QUhW1YBh7bR3W7E/qzAlNj46Ybubw/AlvTG6+yzapyLZOR
         2K8/dunsN0qlahH1QUYjZNXHfCWZD0WshBTiHgYFKnUt7yMm05dfnENdcchGcYYShNZg
         5ExWg4VDiaefe+t+v1DKpQR9QhW8Er+1AP8wo1j0+e4mdX+g5XY9j5Id1bPsYtfegO9/
         DbLqjHNzoKC6rTCZ15jwdk6z7RsA4wsiCid/eLq1X0LamKuqXzbKVnuUFPG5SFpJ82CW
         TNhFJV9qoeyG3Iqtx2JoBgN6yDfBZqJcnDgIzlSrPscEY017iw7YC1Lfxa2OU1SJfPF5
         2Y3w==
X-Gm-Message-State: AOAM532gHWqiqihlPCQBzhD8rhBlpCdHWPQAQG3S/bosNfDKXmTSyo8C
        LyvGhc+i3gHdAD6jTCsFjTKBb1INc8GQgYGVtWy3gQ==
X-Google-Smtp-Source: ABdhPJwWNDqdxtfx45QKb+u63H6yXodmATetW98BqkU68PPc3b1MNtwXg+Mr1W0ydz4G7Ra4PFMwpw==
X-Received: by 2002:ac8:4f12:0:b0:2eb:de47:e30 with SMTP id b18-20020ac84f12000000b002ebde470e30mr13928661qte.193.1649686939452;
        Mon, 11 Apr 2022 07:22:19 -0700 (PDT)
Received: from RADIUM (bras-base-mtrlpq2718w-grc-02-76-67-205-66.dsl.bell.ca. [76.67.205.66])
        by smtp.gmail.com with ESMTPSA id u187-20020a3792c4000000b0067e679cfe5asm19314489qkd.59.2022.04.11.07.22.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Apr 2022 07:22:18 -0700 (PDT)
From:   <ggiraudon@prism19.com>
To:     "'Neil Armstrong'" <narmstrong@baylibre.com>,
        <kernel-dev@prism19.com>
Cc:     "'Rob Herring'" <robh+dt@kernel.org>,
        "'Krzysztof Kozlowski'" <krzk+dt@kernel.org>,
        "'Kevin Hilman'" <khilman@baylibre.com>,
        "'Jerome Brunet'" <jbrunet@baylibre.com>,
        "'Martin Blumenstingl'" <martin.blumenstingl@googlemail.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20220411140401.450-1-ggiraudon@prism19.com> <8bde8ee2-ee3f-bba6-66da-28adb3897178@baylibre.com>
In-Reply-To: <8bde8ee2-ee3f-bba6-66da-28adb3897178@baylibre.com>
Subject: RE: [PATCH RESEND] arm64: dts: meson-sm1-bananapi-m5: fix wrong GPIO pin labeling for CON1
Date:   Mon, 11 Apr 2022 10:22:17 -0400
Message-ID: <001401d84daf$8d001cc0$a7005640$@prism19.com>
MIME-Version: 1.0
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-ca
Thread-Index: AQFrGI7YFugmhoni/8+f7eNP0fB8BAOIHqkvrajs4iA=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Will do. Thanks Neil.

G

-----Original Message-----
From: Neil Armstrong <narmstrong@baylibre.com>=20
Sent: April 11, 2022 10:21 AM
To: Guillaume Giraudon <ggiraudon@prism19.com>; kernel-dev@prism19.com
Cc: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski =
<krzk+dt@kernel.org>; Kevin Hilman <khilman@baylibre.com>; Jerome Brunet =
<jbrunet@baylibre.com>; Martin Blumenstingl =
<martin.blumenstingl@googlemail.com>; devicetree@vger.kernel.org; =
linux-arm-kernel@lists.infradead.org; linux-amlogic@lists.infradead.org; =
linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND] arm64: dts: meson-sm1-bananapi-m5: fix wrong =
GPIO pin labeling for CON1

Hi,

On 11/04/2022 16:04, Guillaume Giraudon wrote:
> The labels for lines 61 through 84 on the periphs-banks were offset by =
2.
> Realigned them to match the Banana Pi M5 schematics.
>=20
> Fixes: 976e920183e4 ("arm64: dts: meson-sm1: add Banana PI BPI-M5=20
> board dts")
>=20
> Signed-off-by: Guillaume Giraudon <ggiraudon@prism19.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts=20
> b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> index 5751c48620ed..754c3d43ef0b 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> @@ -448,7 +448,7 @@
>   		"",
>   		/* GPIOA */
>   		"", "", "", "", "", "", "", "",
> -		"", "", "", "", "", "",
> +		"", "", "", "", "", "", "", "",
>   		"CON1-P27", /* GPIOA_14 */
>   		"CON1-P28", /* GPIOA_15 */
>   		/* GPIOX */

While reviewing more closely I figured that in fact the issue comes from =
the :
		/* BOOT */
		"eMMC_D0", /* BOOT_0 */
		"eMMC_D1", /* BOOT_1 */
		"eMMC_D2", /* BOOT_2 */
		"eMMC_D3", /* BOOT_3 */
		"eMMC_D4", /* BOOT_4 */
		"eMMC_D5", /* BOOT_5 */
		"eMMC_D6", /* BOOT_6 */
		"eMMC_D7", /* BOOT_7 */
		"eMMC_CLK", /* BOOT_8 */
		"",
		"eMMC_CMD", /* BOOT_10 */
		"",
		"eMMC_RST#", /* BOOT_12 */
		"eMMC_DS", /* BOOT_13 */
		/* GPIOC */


it contains 14 entries, but there is 16 BOOT gpio lines.

So instead, send a V2 with 2 entries added in BOOT and leave the GPIOA =
entries as-is.

Thanks,
Neil

