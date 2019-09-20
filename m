Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B6776B9971
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2019 00:02:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730582AbfITWCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 18:02:46 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:32854 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730326AbfITWCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 18:02:45 -0400
Received: by mail-pf1-f193.google.com with SMTP id q10so5444911pfl.0
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 15:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:to:from:subject:user-agent:date;
        bh=lYk7/8pQGl0t+CD42UpnIP5v9OIedcdp56HAu4rwwZw=;
        b=nCmUO09f6BN1xEmS5qDc7JTDvON/PA3u+IxIeUFzftPvTyIE3uQrAqviEQy59ZEtTz
         sONhnbIoLAsr7wR41vk1T9PqfhMtzvFxNHOhAuSxrHWNU+EcdnkFg12LVI00bys/OUFZ
         v03O4NNMEVEY4AiLbImn+ZQMp5ecbnLT+FHPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:date;
        bh=lYk7/8pQGl0t+CD42UpnIP5v9OIedcdp56HAu4rwwZw=;
        b=kDDwUJcw2MLZawLnFUfrB34ZELIeIF6anCrf7yW8t4R3v3PJrrH9hOJA8rblAfa4bm
         pY/ii8BcBSyLiBtupjexUWKevfEvXvh+0/AsR5R6cAy7o+AobOZYwFywnSQLyhp6kfWU
         +mM0C7+UKNplp0OCZtTQ+Qv15Gsx9PYDkWUOnF1eA256Jw56swMGWnAU+8tKqzPANI5s
         iDTzH6U3R6ImdbTCO0gII01Psi59qxJI8MBLJXk275hiB7EQoB1yC54cUxq3aat2WCmI
         jr3MxguvKf1523fRUOuMtiOTRmc61qJfSML4SXD3Ir0yapD15X/4c7OkmA7nkSHIMjdk
         wr1w==
X-Gm-Message-State: APjAAAXgYPSXTnQ497blApvPcsur1EIJ3U5TJ4Yu5AifCtr3+/mbwxxl
        QdCic+wwMi6uIB9rcf2YPuRRtKBCxL4=
X-Google-Smtp-Source: APXvYqwkxWKaptCzgOkhvrEvbEH89Fz4qUJ7WrSzo6+XZU/wisQyy7ydao38AO60i01VbwS+31OY+Q==
X-Received: by 2002:a63:40c7:: with SMTP id n190mr6293596pga.446.1569016963235;
        Fri, 20 Sep 2019 15:02:43 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id i16sm3688880pfa.184.2019.09.20.15.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2019 15:02:42 -0700 (PDT)
Message-ID: <5d854c82.1c69fb81.66e1f.96ab@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f627e66c455f52b5662bef6526d7c72869808401.1569015835.git.amit.kucheria@linaro.org>
References: <cover.1569015835.git.amit.kucheria@linaro.org> <f627e66c455f52b5662bef6526d7c72869808401.1569015835.git.amit.kucheria@linaro.org>
Cc:     devicetree@vger.kernel.org
To:     Amit Kucheria <amit.kucheria@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        masneyb@onstation.org
From:   Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 09/15] arm64: dts: msm8996: thermal: Add interrupt support
User-Agent: alot/0.8.1
Date:   Fri, 20 Sep 2019 15:02:41 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Amit Kucheria (2019-09-20 14:52:24)
> Register upper-lower interrupts for each of the two tsens controllers.
>=20
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 60 ++++++++++++++-------------
>  1 file changed, 32 insertions(+), 28 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/=
qcom/msm8996.dtsi
> index 96c0a481f454..bb763b362c16 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -175,8 +175,8 @@
> =20
>         thermal-zones {
>                 cpu0-thermal {
> -                       polling-delay-passive =3D <250>;
> -                       polling-delay =3D <1000>;
> +                       polling-delay-passive =3D <0>;
> +                       polling-delay =3D <0>;

I thought the plan was to make this unnecessary to change?

