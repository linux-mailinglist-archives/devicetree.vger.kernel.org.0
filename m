Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17C957139A9
	for <lists+devicetree@lfdr.de>; Sun, 28 May 2023 15:34:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjE1NeQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 May 2023 09:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjE1NeP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 May 2023 09:34:15 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4717CB2
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 06:34:14 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-ba8374001abso3603174276.2
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 06:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1685280853; x=1687872853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UrEVsTM5vKIOld13EPKPZ9FVBGQ0zgJjZs6J4jvV/zQ=;
        b=YEjaEvz9E26Gf7MMtO58BQM3WmZoF5U+bwreby0QKR26gtFeB1Foq5RusqLrwrXals
         YXnJpK7564brgnQ7/jDKuyTTQAyKBZBzHi1PDgTEzl7zVqeF1DTC7tzvvqf8RUGsTM93
         DcDy9hIRswj5ipNgSdPu78QG5pRLSjPl7YMqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685280853; x=1687872853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UrEVsTM5vKIOld13EPKPZ9FVBGQ0zgJjZs6J4jvV/zQ=;
        b=hGrUGBfMdRUYB8OKRcRGhPxGlPFjhrYUZclH965QXyD3iigc5ppLaQ1WgwR1817LYJ
         QZH4ERV15vnxdHendRl240J4cISPrgBRIo+YZpK8Lrc8SaGgOS3NCWQAMeb49FuvE29o
         sS1MZvdgT3Y7/LWfWQDOT2nAe9ygjqMfTEQsp7NBTuXuTBBE3oDSqffLvR04DtQ+8Liu
         o2A1PzOSvtU/l4oFkZWRX9wF0u4elnzYPradJbpWBqnGUcKYYdVI/JGECLChSQIgsc1O
         qdHkidjs837lGbNgwaZ+oFkGhrUgjVVUyphTjnSUWz1vr2e+aM8kKIqtD2UYr8B+4h38
         EMog==
X-Gm-Message-State: AC+VfDyMP4GOYMBoiCjDPucRLp805MFroGTTblPrNsmGUi3Qim8zXzB9
        //DB360DEIeoIZdh1FP2TuakvBrS++0oA7KYmoAQBA==
X-Google-Smtp-Source: ACHHUZ6rNq1797W4VSS1+Dgqg217ZXWZz44DxffkTuC/Vs+7FWyf4bszCFSBGg9ZFpxgoyZiB9LuVSp5sjU/rWSWyb8=
X-Received: by 2002:a0d:e747:0:b0:561:43bf:fc8e with SMTP id
 q68-20020a0de747000000b0056143bffc8emr9154349ywe.10.1685280853448; Sun, 28
 May 2023 06:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230528132727.3933-1-aford173@gmail.com>
In-Reply-To: <20230528132727.3933-1-aford173@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Sun, 28 May 2023 19:04:01 +0530
Message-ID: <CAMty3ZB=XfMr7k31yHzZ+YHFxT0ifCbmR4+s5yw+YgTSJE0Jxg@mail.gmail.com>
Subject: Re: [PATCH V2] dt-bindings: bridge: samsung-dsim: Make some flags optional
To:     Adam Ford <aford173@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, aford@beaconembedded.com,
        Conor Dooley <conor.dooley@microchip.com>,
        Inki Dae <inki.dae@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 28, 2023 at 6:57=E2=80=AFPM Adam Ford <aford173@gmail.com> wrot=
e:
>
> In the event a device is connected to the samsung-dsim
> controller that doesn't support the burst-clock, the
> driver is able to get the requested pixel clock from the
> attached device or bridge.  In these instances, the
> samsung,burst-clock-frequency isn't needed, so remove
> it from the required list.
>
> The pll-clock frequency can be set by the device tree entry
> for samsung,pll-clock-frequency, but in some cases, the
> pll-clock may have the same clock rate as sclk_mipi clock.
> If they are equal, this flag is not needed since the driver
> will use the sclk_mipi rate as a fallback.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> V2:  Split from driver series.  Re-word updates for burst
> and pll-clock frequency.
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mip=
i-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi=
-dsim.yaml
> index 9f61ebdfefa8..06b6c44d4641 100644
> --- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> @@ -70,7 +70,9 @@ properties:
>    samsung,burst-clock-frequency:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
> -      DSIM high speed burst mode frequency.
> +      DSIM high speed burst mode frequency.  If absent,
> +      the pixel clock from the attached device or bridge
> +      will be used instead.
>
>    samsung,esc-clock-frequency:
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -80,7 +82,8 @@ properties:
>    samsung,pll-clock-frequency:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
> -      DSIM oscillator clock frequency.
> +      DSIM oscillator clock frequency. If absent, the clock frequency
> +      of sclk_mipi will be used instead.

Maybe this explicit comment won't require as it is not listed in "required"

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
