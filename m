Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B06623220BD
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 21:21:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231812AbhBVUUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 15:20:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230184AbhBVUUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 15:20:46 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 763FCC061574
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 12:20:06 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id r5so1340826pfh.13
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 12:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=0FFaqD7lFmkmLvbd+lboGqMsUtUT1GYSLYTzpM80sYA=;
        b=NCXyTI6lmqK/udlKoKih+/PYp0H7ycjuoK9TM9yUIGAMJFXuSOmgzKBVljSbBHeJRb
         TAimZgL4GeLVvLsvYDVoI7UiabnKX/Vn5fcNR5k2rfICZRLVl+UCcXLSNOLwL5e3vhGo
         4ar21RtaFSAzJB7+jnOuUXomEcr9gCYVMX/Bg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=0FFaqD7lFmkmLvbd+lboGqMsUtUT1GYSLYTzpM80sYA=;
        b=fnJEups44EXlRrQ10QWKV3aY1wPqHSvumNdhkfz/Vhu0p8ZZkX6gsh+ZXUSmGAGPzb
         OFQv6xXSxrS/IshqI8u6lTlQdCYUlQacwxD7lvVmZRwwTJt9gv/ZXxSufnJMngKVXx4d
         5NGY4NRP73wBbyZX+/4qSJ7KYWqdL87gLAUZGN24W1siLd2It1g9HbmMMM5Ve8tdzpso
         wT22Rir81zIB5ahQsnAWtv+RaYxzrlqE2h1DsMjXSBK27CCMUK8WRTkxgAmTvH8zTlcn
         u7v9ZIzZqtSP9X9ibjivd8uh3SuuRahihm6UwFmytHtpWi0PWFZCMuZ4vzO+3XcQ/zND
         QjmQ==
X-Gm-Message-State: AOAM533U8vZeQ4GTatCBbaLZgtLg31HAxNNo+kOEfNQuVzq3zfueArxD
        uVFnDKcpP+9qHCwwnborrRQ+1w==
X-Google-Smtp-Source: ABdhPJz7LNu3WobrzpHT2ReKlSV8zjPxqwuYpwdA7y4fqn39IxkviJVKNzg+78dHtTGTxbwtU9JpFw==
X-Received: by 2002:a63:f311:: with SMTP id l17mr21490461pgh.349.1614025206019;
        Mon, 22 Feb 2021 12:20:06 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:a878:327b:a10a:e189])
        by smtp.gmail.com with ESMTPSA id j1sm19928859pfr.78.2021.02.22.12.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 12:20:05 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210219181032.3.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid>
References: <20210219181032.1.I23e12818c4a841ba9c37c60b3ba8cfeeb048285f@changeid> <20210219181032.3.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7180: Delete charger thermal zone and ADC channel for lazor <= rev3
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Feb 2021 12:20:04 -0800
Message-ID: <161402520418.1254594.7435679604383921403@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-02-19 18:10:59)
> Lazor rev3 and older are stuffed with a 47k NTC as thermistor for
> the charger temperature which currently isn't supported by the
> PM6150 ADC driver. Delete the charger thermal zone and ADC channel
> to avoid the use of bogus temperature values.
>=20
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>=20
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts | 9 +++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts | 9 +++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts | 9 +++++++++
>  3 files changed, 27 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts b/arch/=
arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> index 30e3e769d2b4..0974dbd424e1 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> @@ -14,6 +14,15 @@ / {
>         compatible =3D "google,lazor-rev0", "qcom,sc7180";
>  };
> =20
> +/*
> + * rev <=3D 3 are stuffed with a 47k NTC as charger thermistor which is =
currently
> + * not supported by the PM6150 ADC driver. Delete the thermal zone and A=
DC
> + * channel to avoid the use of bogus temperature values.
> + */
> +/delete-node/ &charger_thermal;
> +/delete-node/ &pm6150_adc_charger_thm;
> +/delete-node/ &pm6150_adc_tm_charger_thm;

Can we disable pm6150_adc_tm instead on <=3D rev3 boards? It would be the
same number of lines, but is simpler to reason about disabled nodes vs.
deleted nodes usually.

> +
>  &pp3300_hub {
>         /* pp3300_l7c is used to power the USB hub */
>         /delete-property/regulator-always-on;
