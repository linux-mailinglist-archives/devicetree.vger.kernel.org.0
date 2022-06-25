Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 625E155A56B
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 02:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbiFYATI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 20:19:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiFYATH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 20:19:07 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B2284D618
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 17:19:07 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id w193so5557875oie.5
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 17:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Ztj0swM80NNw9jv8iehWdq5QaY7Y2vYCrMAuBzz5Uhw=;
        b=hQen4y058d4VE8s7huKtUCHQn/hLYCERKhV5EHPgdf78MaUEMWXS/vPj/DPOnDsA3H
         h80jP9FC48R3zAUHYRMKAFz+tq/y72kA0Yif482Xh6VweZg7YleDDKzyjCQPFo2Xoxqe
         yfoS4oRylsPUjkH2RaKzSqES+9g4XeCtlSr70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Ztj0swM80NNw9jv8iehWdq5QaY7Y2vYCrMAuBzz5Uhw=;
        b=OJZbj4QUViALqNH8EIqWxfTM5e10dVyIaUQtlJ9ZH1LeiLVVX3vK6h8muPxMzQ6LIe
         aAjGZsteLmN/NEdKKx9eGwJ2tBeMcvR1fY6IKCZpSJOnT4H6KSlf2hS3FBM9mGiclcs7
         LSrhF69z1QbNbd1iw4iWtlGEefKp0cnA0HYd1/DnhEqj55hfhzckve76Xkqw+LSN2c32
         RDTIlo1eRGydIvXsYIMvtXbhv59kO/WwTu/HCcT3a/CDIoq7xAECZAAfcy5mbYClr7SB
         nKLfg+JV20cvTTS08O8N4VFAGW7QnhW1Kdfyy7SHfZj+znpeDbNcExCCMfrAWH+yFzaQ
         nh5g==
X-Gm-Message-State: AJIora/8p0ChsHOEqkalX3/fhZY+retA0srUAvrI3tBdVQ37u84gZCHi
        Jukfp1zQIpzAfXLNmjFfWgruiKRjABTxQ/P3JkkwZA==
X-Google-Smtp-Source: AGRyM1uX+AlXvAnoDhXOFAevdUE8PbbCfjkScFuhuOCDR2OVJHFhSGqzzfDoOmLoC3deb2eBqaEUoUfLqWPuf030Vys=
X-Received: by 2002:a05:6808:171c:b0:334:9342:63ef with SMTP id
 bc28-20020a056808171c00b00334934263efmr1067076oib.63.1656116346378; Fri, 24
 Jun 2022 17:19:06 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 24 Jun 2022 17:19:05 -0700
MIME-Version: 1.0
In-Reply-To: <20220624170802.v12.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
References: <20220625001009.417452-1-joebar@chromium.org> <20220624170802.v12.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 24 Jun 2022 17:19:05 -0700
Message-ID: <CAE-0n50Z85KaMnmH=ue76Mnw1Z6+THG5bwYXmqZAPB+SKp5qxw@mail.gmail.com>
Subject: Re: [PATCH v12 4/5] arm64: dts: qcom: sc7180: Add pazquel dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Alexandru M Stan <amstan@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Joseph S. Barrera III (2022-06-24 17:10:08)
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> index f869e6a343c1..6938e74792a7 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> @@ -5,6 +5,7 @@
>   * Copyright 2021 Google LLC.
>   */
>
> +#include "sc7180-trogdor.dtsi"

I don't think we need to include this at all. Instead, wherever this
dtsi file (sc7180-trogdor-ti-sn65dsi86.dtsi) is included, we should have
already included sc7180-trogdor.dtsi

>  #include <dt-bindings/gpio/gpio.h>
>
>  &dsi0_out {
> --
> 2.31.0
>
