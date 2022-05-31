Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5D05539129
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245395AbiEaM4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:56:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234793AbiEaM4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:56:06 -0400
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A193927B09
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:56:04 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id x187so1937108vsb.0
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=by+rH6Jh8DwQ12fHpL2zcQmA9Ehcl6RTfaLmpd75cgE=;
        b=TGw2qkT+mkM6BeoJtnGSUr3b3zzCwCSbKv/BARMhgeGWRHqOKTpevtvWWVjF37XWcL
         KChW8aa9zKL2e8yqpW+pkQ8UIRozGo7GMdSvaATMmD+cpiUSW/qGYwkEGRe19Zkii/BP
         nSyuOdInK2Ae/R4mFkSrWF9E07uoWHd7CjrHN3ZhGnqUk2NFp6UGVGKX9b/RPxLMJihK
         aaztzL271C15oEN4kIYrb3G5th2RnQLk/pRlogk8Pl1k2VC3uCBhZakmmFaALPOmBFpL
         YoVJF9CV9wzP7kwzYp2ooVKUTzO2nM5QPOvbFsKjmHMNsXEkOyck5lklNZ9gxHYSi68Q
         EXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=by+rH6Jh8DwQ12fHpL2zcQmA9Ehcl6RTfaLmpd75cgE=;
        b=PSu1Ftz7DeB6bLl6QFolCgxdQ+MzvsFyNeF8ARRFID/4rj9/GT3cqFzaWkH/2K7y+O
         3ssph2b1Z8+XXFOX9p1KmIfwppuGfRLAl/X6Tym8ktnB4foIhtLa+YsmOqehooIDMEdc
         y85aZbQpZ210tkuhNzaa89l8RxFEgpb2Ms7kV2dUzB7e7gNmv+Bx/lyFNL9NFFrjDvz2
         FkqyejoX3ZCIuS0zXJQ1P79Ef0XWQhjCgzI6msDGs/59vi9t4LENC9yiA3V6fFgQeURK
         brLGg9Hl+XWzR58FeAOCa1FyQn5Jh6H0nh1APbjJsduiZJ0ioVxH29+QwOTvn+l4y+kz
         6WWg==
X-Gm-Message-State: AOAM533vmYSAyP+vmx1BLLok6and5p84Np6VX47DFBc/LNvHeJS7ZEG9
        wltCRoEJsWeNxx4OquPArRB709LZT3Vvjdp8z48=
X-Google-Smtp-Source: ABdhPJyQxX6hiuY2g8/7bwiZGDMTeYAt9tDfvpk2LLEp6Qr+xnRpK2ptXVsY/7h0euq+tkave891UfNnx2fmYuUd1DE=
X-Received: by 2002:a05:6102:3753:b0:337:8f39:f642 with SMTP id
 u19-20020a056102375300b003378f39f642mr20065851vst.52.1654001763803; Tue, 31
 May 2022 05:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-5-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-5-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 13:55:51 +0100
Message-ID: <CALeDE9NULp1t0GzBEXOwguh5Yt96t1QaR9CT7L6VVWV-jiHthw@mail.gmail.com>
Subject: Re: [PATCH 04/11] ARM: dts: bcm2835/bcm2711: Introduce reg-names in
 watchdog node
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> bcm2835-pm's bindings now support explicitly setting 'reg-names,' so use
> them.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi        | 1 +
>  arch/arm/boot/dts/bcm2835-common.dtsi | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index 89af57482bc8..cbb47e2c9434 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -113,6 +113,7 @@ pm: watchdog@7e100000 {
>                         reg = <0x7e100000 0x114>,
>                               <0x7e00a000 0x24>,
>                               <0x7ec11000 0x20>;
> +                       reg-names = "pm", "asb", "rpivid_asb";
>                         clocks = <&clocks BCM2835_CLOCK_V3D>,
>                                  <&clocks BCM2835_CLOCK_PERI_IMAGE>,
>                                  <&clocks BCM2835_CLOCK_H264>,
> diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
> index c25e797b9060..a037d2bc5b11 100644
> --- a/arch/arm/boot/dts/bcm2835-common.dtsi
> +++ b/arch/arm/boot/dts/bcm2835-common.dtsi
> @@ -62,6 +62,7 @@ pm: watchdog@7e100000 {
>                         #reset-cells = <1>;
>                         reg = <0x7e100000 0x114>,
>                               <0x7e00a000 0x24>;
> +                       reg-names = "pm", "asb";
>                         clocks = <&clocks BCM2835_CLOCK_V3D>,
>                                  <&clocks BCM2835_CLOCK_PERI_IMAGE>,
>                                  <&clocks BCM2835_CLOCK_H264>,
> --
> 2.25.1
>
