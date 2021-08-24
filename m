Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 421CC3F5E1F
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 14:39:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237288AbhHXMke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 08:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237296AbhHXMkd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 08:40:33 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEF97C0613C1
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 05:39:48 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id l24so16601041qtj.4
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 05:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jYL2wpiZiuaAykF/w7oCYx5Pz3MuG8lwi2emKCRsqr4=;
        b=b3lCRttdj6RYL82j4m9nYhYCMYpvJnJKQBwo4F7+KiWtrRETKcZkzThm9WdaTTOU+w
         l6HmzUJz8WPHAM4cgnCiQUHLMR9d4BGSZTHqyS2LRuU6hwJo8oFsbOcRe3IDPBAgOE4E
         YSLxokh1aZMHqba4IXbhJ3nlXvmchjlP2XFu4r2A/iRFFFTem43YH5FEoDN/WMRZ70AX
         vguE/37qWbzzAaKOgBuUbDJOUv3rWQ52f3eXxhlcogsVSKqUNIWDAEz3pgz4+Litd0lX
         9CyS7uuNba9NVbuZOPNTIST53NNx12iksKr9bc98fOP2jXRHKmJG0ISgcUKDMJfKZEq+
         c2aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=jYL2wpiZiuaAykF/w7oCYx5Pz3MuG8lwi2emKCRsqr4=;
        b=BUk8Hh93SSJmN7DypMkYkt+FfiDxCazxw7fry66RTNlGBLOmoatjVaJhV//+eLuWCK
         gHc+l9PTFFD2pPhFRtNv/cu7UwDtTt/FrT48Opgfi/bffZGx6vtAqZ4KfbaXHr7Vi2KD
         dm28D40tphwSmMJt1I1dBX6AExE7b4H9eylbiX0XmGZACCs5hWmTE8B68m8aPu8/veQ2
         8pcV981PNXSGGOhVlkF1PUekD6U439XHrf4+DE5CbWkMt0L2LNFldWs4BgOK8aIkLCet
         oOwwRXY75fblZIUzbNLwEKDuNcHRZ1GpHxMylCSRJUDjZETsX/NZljnXn+TGr4MDuM9P
         QsWQ==
X-Gm-Message-State: AOAM533//EAgVMBIHLLMlbOjjFLxki7PkQZlBU+Jl5mJSjCD1aqMMtOf
        7IgP/lN5auteYaahSI2+DSTMArMq+aOeowWo43g4KA==
X-Google-Smtp-Source: ABdhPJwi/02PRDYIqjDZ/e77bICQ0BYen2kVIisJ1pDQHa6CGjY3VFRADsbx48VOUWerGUdBNTMex8fi9d2wcJyqgMA=
X-Received: by 2002:ac8:7d07:: with SMTP id g7mr3170523qtb.238.1629808788014;
 Tue, 24 Aug 2021 05:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200108055735.660475-1-bjorn.andersson@linaro.org> <20210217223406.1422005-1-anibal.limon@linaro.org>
In-Reply-To: <20210217223406.1422005-1-anibal.limon@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 24 Aug 2021 15:39:36 +0300
Message-ID: <CAA8EJpqXyQCFGgTRk+dqxD6TdJycLeGx4EQ0OBov5_3hVogM1g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: db410c: Update firmware-name for wcnss
 and mpss
To:     =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 18 Feb 2021 at 01:38, An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.o=
rg> wrote:
>
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> Enable the mpss remoteproc node and specify the firmware-name for this
> and the wcnss remoteproc on the Dragonboard 410c.
>
> Link: https://lore.kernel.org/r/20200108055735.660475-1-bjorn.andersson@l=
inaro.org
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> [rebased and moved to use pronto label]
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Tested-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi b/arch/arm64/boot/=
dts/qcom/apq8016-sbc.dtsi
> index 3c7f97539390..8f1ada75d3ed 100644
> --- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
> +++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
> @@ -301,6 +301,11 @@ &lpass {
>         status =3D "okay";
>  };
>
> +&mpss {
> +       status =3D "okay";
> +       firmware-name =3D "qcom/msm8916/mba.mbn", "qcom/msm8916/modem.mdt=
";
> +};
> +
>  &pm8916_resin {
>         status =3D "okay";
>         linux,code =3D <KEY_VOLUMEDOWN>;
> @@ -308,6 +313,7 @@ &pm8916_resin {
>
>  &pronto {
>         status =3D "okay";
> +       firmware-name =3D "qcom/msm8916/wcnss.mdt";
>  };
>
>  &sdhc_1 {
> --
> 2.30.0
>


--=20
With best wishes
Dmitry
