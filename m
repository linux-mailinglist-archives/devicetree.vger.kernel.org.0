Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9BC58A7D0
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 10:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240447AbiHEIKg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 04:10:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240433AbiHEIKd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 04:10:33 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC3EB2315F
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 01:10:30 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id j1so2399345wrw.1
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 01:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc;
        bh=mIzmvdk7HOX9VETFYuqPj2UDBU0QS3AoESbRivQAHl8=;
        b=gcnZiSxD9R67ltN8OoA+C/zdBHeNV2JGZ5D4MFVRoggMTlWEXjC8QXvSX8eg1vcuRz
         Caj/+1bNiL5CnkIl7SBWYCr9W/qDpwY+nBgLfAYbsJq0Nxg1lVo2ClSi0+pA4tYGJGh9
         p0OvePOWRB+0GgRHpIecPgrhx8j3Hvr0eHVrYe0dqDG6HPsQWNcvbcMwX5vuGuGcdiib
         7fjEQr4gJSctW5r/8bXGXFZteM8+MRO07f9TbHyHjymC4i6/pGVyFjf4t+7UpPPwYbu6
         hk46+qZTaKh8A6Z/QRFCFgQxdgVoVxUN4GnJLrtji0mBS+4ezKV3qsSJs93wf8Wi1ns9
         W/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc;
        bh=mIzmvdk7HOX9VETFYuqPj2UDBU0QS3AoESbRivQAHl8=;
        b=4UY2SjEkQOtxMGytysU93Lvt2+XVLqZ2MupVw9THSvOkJD+/HKtdEPY5Yk5vPAI2tM
         5XDpjiBolUlPLOsmgC2oC2rO6zBo8qUuP16hzOQXLejQEq7Z5dy0C85zDvP4NzD+Eud3
         AmgD5oNOmGgtl6QLLwBxuUWV55Ztuy6hkcuN9Q4hsdJUJ7B9DeahDVfvMoRKqdy0mHWF
         Bvw8pAu8n7yHcXVFDV3QW9epBR1s3+o/QMthTPrj5sdXwlvaiLTDVl8OQoMxI9owaEGj
         UH3SUWt6BHr/Fac3H8zhDV/CIaUk37CixGAATiWowf/5dYB9tx0TBheMr7EEY6p3QMkS
         JlPg==
X-Gm-Message-State: ACgBeo3OfoUyHfUghCguFu4gV97DD2XdDTJl6jueHmyGrAxGecymq7Gu
        /cDg2N9f5yfymK44nA67CY5xxQ==
X-Google-Smtp-Source: AA6agR7qv51ZP9RGn/h1aDDrkZoeyDiQrc41IP88SLryVi0tdHoioq6EljJsFm41m24QUrNDBazkzA==
X-Received: by 2002:a5d:5403:0:b0:21e:ea93:234d with SMTP id g3-20020a5d5403000000b0021eea93234dmr3409730wrv.125.1659687029497;
        Fri, 05 Aug 2022 01:10:29 -0700 (PDT)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id o5-20020a056000010500b0021f0af83142sm3134358wrx.91.2022.08.05.01.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 01:10:28 -0700 (PDT)
References: <20220804165317.29086-1-ddrokosov@sberdevices.ru>
User-agent: mu4e 1.8.7; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Dmitry Rokosov <DDRokosov@sberdevices.ru>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
        "khilman@baylibre.com" <khilman@baylibre.com>,
        "martin.blumenstingl@googlemail.com" 
        <martin.blumenstingl@googlemail.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-amlogic@lists.infradead.org" 
        <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel <kernel@sberdevices.ru>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] arm64: dts: meson-axg: reserve memory region for
 Amlogic TrustOS
Date:   Fri, 05 Aug 2022 10:03:34 +0200
In-reply-to: <20220804165317.29086-1-ddrokosov@sberdevices.ru>
Message-ID: <1jfsibqfez.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 04 Aug 2022 at 16:52, Dmitry Rokosov <DDRokosov@sberdevices.ru> wrote:

> For the all AXG SoC based boards, which run Amlogic vendor ATF and
> TrustOS this memory region 0x5300000-0x6300000 is reserved by BL32,
> so tag it as no-map in the kernel iomem.

This may be true for the boards you have seen so far but not all ship
with this specific AML TEE. Some don't have TEE at all, other may have
different TEE regions.

16 MB may be a significant part of the available memory on some AXG
devices. Reserving that memory on all AXG devices, regardless of what is
actually running does not seem appropriate.

I know the same has been done for other devices but I don't think we should
continue to do so. This should be set either
* per device if it is fixed
* dynamically by the bootloader depending on the ATF (which is probably better)

>
> Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
> ---
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index 3f5254eeb47b..1fa0d3805969 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -142,6 +142,12 @@ secmon_reserved: secmon@5000000 {
>  			reg = <0x0 0x05000000 0x0 0x300000>;
>  			no-map;
>  		};
> +
> +		/* 16 MiB reserved for Amlogic Trust OS (BL32) */
> +		secos_reserved: secos@5300000 {
> +			reg = <0x0 0x05300000 0x0 0x1000000>;
> +			no-map;
> +		};
>  	};
>  
>  	scpi {

