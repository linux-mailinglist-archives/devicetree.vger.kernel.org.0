Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0B5D770601
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 18:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjHDQaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 12:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbjHDQae (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 12:30:34 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EC05B2
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 09:30:33 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99c3c8adb27so315817266b.1
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 09:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691166631; x=1691771431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fb6BXc3V7vZl1BO3VO9rbNSiYgEtub9HXOe7U0lqXXA=;
        b=nE04FRkm5zanAWTylyF4KkeXzwq47ymGEjAm1aTybVHifYEUfSb01IUS940qfTwEiJ
         i4XveXUTToqFCKlHVVbaX/l+y26Cl5kaRhBYn9mxrGpxCwkeRXoci35pCIyzx+9meotw
         s2ltsgSel+baPSUZsdTn3OG43bFeHhZoPlEgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691166631; x=1691771431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fb6BXc3V7vZl1BO3VO9rbNSiYgEtub9HXOe7U0lqXXA=;
        b=CW3fydNCAuRVp1hhd23r5y7+C9GAEIJpT37pgtU8b1dDS5E/mj/ToyuT6wSeSGTFYJ
         6kgPZEULD4bmpqukxXrukm9Kp3c9FTK7wr/16kfm8hSZOVzSRtuwwS31BUlFmDCx8kz+
         XYpCXbBTDA4fXtETxCbG+s+RjCDUzowgQ1F1AnC6PxvSBvD0m6xpkJgzXb75rBtRRh8w
         chNkTMEqt8RBZ0GoBLOju57FbI6OfplVT+EWLh5UBcd1slSH3UqsnBLgZg1LxGSQCWoh
         BocHItRIuTsKsDQNrSOSSdeGSW61bisBFtdiZI9skTpsQeq6nx3bt0+MoGEqf9lF0PJW
         53SA==
X-Gm-Message-State: AOJu0YzoV7oIFgY9LIiyBcPoNyHJb7G0SO59hZr6SMWDPQh8hZypItxk
        sFGIDlHD5l8h4f96L73hQF2arT0s2v/KjX/rp/Yh1pi3
X-Google-Smtp-Source: AGHT+IHabGGaaMdOLny8D68YP/foIuQRM3TY4aBIpVR+WOfbgTVratBbd7rcHWP/jKRhy3/4BqrAwQ==
X-Received: by 2002:a17:906:1045:b0:99b:d098:1ffd with SMTP id j5-20020a170906104500b0099bd0981ffdmr2052595ejj.62.1691166631209;
        Fri, 04 Aug 2023 09:30:31 -0700 (PDT)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id v14-20020a17090690ce00b009893b06e9e3sm1526131ejw.225.2023.08.04.09.30.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Aug 2023 09:30:30 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5223910acf2so68a12.0
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 09:30:30 -0700 (PDT)
X-Received: by 2002:a50:9e4c:0:b0:519:7d2:e256 with SMTP id
 z70-20020a509e4c000000b0051907d2e256mr2692ede.0.1691166629720; Fri, 04 Aug
 2023 09:30:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230804095836.39551-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230804175734.v2.3.Ie77732a87ab53d21bac47db309b75a796fa19337@changeid>
In-Reply-To: <20230804175734.v2.3.Ie77732a87ab53d21bac47db309b75a796fa19337@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 4 Aug 2023 09:30:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UzTY0XKb-hXLprT3OUrpaoNKiCqABgWyY_kXrZMD9H_A@mail.gmail.com>
Message-ID: <CAD=FV=UzTY0XKb-hXLprT3OUrpaoNKiCqABgWyY_kXrZMD9H_A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc7180: Add board id for lazor/limozeen
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Aug 4, 2023 at 2:58=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r10.dts
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Lazor Limozeen board device tree source
> + *
> + * Copyright 2023 Google LLC.
> + */
> +
> +/dts-v1/;
> +
> +#include "sc7180-trogdor.dtsi"
> +#include "sc7180-trogdor-parade-ps8640.dtsi"
> +#include "sc7180-trogdor-lazor.dtsi"
> +#include "sc7180-trogdor-lte-sku.dtsi"
> +
> +/ {
> +       model =3D "Google Lazor Limozeen without Touchscreen (rev10+)";
> +       compatible =3D "google,lazor-sku6", "google,lazor-sku18", "qcom,s=
c7180";
> +};
> +
> +/delete-node/&ap_ts;
> +
> +&panel {
> +       compatible =3D "edp-panel";
> +};
> +
> +&sdhc_2 {
> +       status =3D "okay";
> +};
> +
> +&alc5682 {
> +       compatible =3D "realtek,rt5682s";
> +       /delete-property/ VBAT-supply;
> +       realtek,dmic1-clk-pin =3D <2>;
> +       realtek,dmic-clk-rate-hz =3D <2048000>;
> +};
> +
> +&sound {
> +       compatible =3D "google,sc7180-trogdor";
> +       model =3D "sc7180-rt5682s-max98357a-1mic";
> +};

The sort ordering of the nodes above is still wrong. It should be
alphabetical. AKA "alc5682", "panel", "sdhc_2", "sound".

Once that's fixed, feel free to include:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
