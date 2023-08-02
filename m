Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43D9B76D904
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 22:54:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233191AbjHBUyz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 16:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233328AbjHBUyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 16:54:40 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 723133C3B
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 13:53:54 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-986d8332f50so32455066b.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 13:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691009626; x=1691614426;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwQhqBtHwN6sRiq5gAh+0wBLevzDAQkCuE+/RJ7V2Q4=;
        b=dhzGyWM+dd909u954d6B+gHuLAKvNHdg0OQW2bhzZTb2wywXuadayGl2RQ8E79ZjQL
         neuc4Q0p8mgrpfFnI8Go8hYpRMcX4yPLSqPohW9fUMTzmih27gXjZ1iB14FAg9/2bABy
         fCuIxgaHruENecM5s25n08JAPrgdlqNd34Zys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691009626; x=1691614426;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwQhqBtHwN6sRiq5gAh+0wBLevzDAQkCuE+/RJ7V2Q4=;
        b=Ii2YVfaIfT4/l10Ro2FBzCKIFSQN9JkuwmAZliXF5E4ysw7EcmgxeHDDSthLSmoP2Z
         YQwQdLCJOX7PiXjcl/4/csCpx4FzuhGvHhPO+sinfUIn51jITESbfOG3J8yYBdVjTdhF
         8c7NpjL8b6v9D6zYbCBQ6BhtOidQcqCE8eISP7yh2N5bk8MZAmyqmVfm6BhHp2rHpQLY
         HEhMw69cm0jmMd+Lerq7YzWcENzbdcxDGQRHh86VOW4opGYWXaOKGlhWlg89DAC6eRpO
         1dSdAJpJEkI5XROfFg3AQa0wRzLJI9JjDnElF8IsNaP5i/rxyS8p0Ep22tTmO0jvt5vn
         Lyzw==
X-Gm-Message-State: ABy/qLaeNh2JUvnbh4gqp098y/N57WWnhHC6i0GOMT/Sv5ediDmzWsn6
        MFCx9STxhzkxVZJGSlxAIHfEazPLTMtF6cYMn+JGYrky
X-Google-Smtp-Source: APBJJlGPFad9Zu2Jfk120b/5iBD6c0x/DYKICVotzPm9e2MgvNCCSY6mIPbsEIGSh9hbsUQLPqGfiw==
X-Received: by 2002:a17:907:b0e:b0:997:e959:be3e with SMTP id h14-20020a1709070b0e00b00997e959be3emr5715465ejl.76.1691009626545;
        Wed, 02 Aug 2023 13:53:46 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id y26-20020a170906071a00b009737b8d47b6sm9478350ejb.203.2023.08.02.13.53.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Aug 2023 13:53:46 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3fe2d620d17so26475e9.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 13:53:45 -0700 (PDT)
X-Received: by 2002:a05:600c:690f:b0:3fd:e15:41e3 with SMTP id
 fo15-20020a05600c690f00b003fd0e1541e3mr416723wmb.2.1691009625395; Wed, 02 Aug
 2023 13:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230802095753.13644-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230802175628.3.Ie77732a87ab53d21bac47db309b75a796fa19337@changeid>
In-Reply-To: <20230802175628.3.Ie77732a87ab53d21bac47db309b75a796fa19337@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Aug 2023 13:53:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XRq8ymnPrMPCa=c7PkSH+Kj9aG29_hCjCNSL3fY-qaGg@mail.gmail.com>
Message-ID: <CAD=FV=XRq8ymnPrMPCa=c7PkSH+Kj9aG29_hCjCNSL3fY-qaGg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add board id for lazor/limozeen
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
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 2, 2023 at 2:58=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> add BRD_ID(0, Z, 0) =3D 10 for new board with ALC5682i-VS
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.googl=
e.com>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |  5 ++
>  ...sc7180-trogdor-lazor-limozeen-nots-r10.dts | 39 +++++++++++++
>  .../sc7180-trogdor-lazor-limozeen-nots-r9.dts |  4 +-
>  .../sc7180-trogdor-lazor-limozeen-r10.dts     | 55 +++++++++++++++++++
>  .../qcom/sc7180-trogdor-lazor-limozeen-r9.dts |  4 +-
>  .../dts/qcom/sc7180-trogdor-lazor-r10-kb.dts  | 33 +++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r10-lte.dts | 37 +++++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r10.dts     | 29 ++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r9-kb.dts   |  4 +-
>  .../dts/qcom/sc7180-trogdor-lazor-r9-lte.dts  |  4 +-
>  .../boot/dts/qcom/sc7180-trogdor-lazor-r9.dts |  4 +-
>  11 files changed, 208 insertions(+), 10 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozee=
n-nots-r10.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozee=
n-r10.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-kb.=
dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-lte=
.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom=
/Makefile
> index 337abc4ceb17..73e745fb1ff0 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -109,11 +109,16 @@ dtb-$(CONFIG_ARCH_QCOM)   +=3D sc7180-trogdor-lazor=
-r3-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-r9.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-r9-kb.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-r9-lte.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-r10.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-r10-kb.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-r10-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-r4.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-r9.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-r10.dt=
b
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-nots-r=
4.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-nots-r=
5.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-nots-r=
9.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-lazor-limozeen-nots-r=
10.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-pazquel-lte-parade.dt=
b
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-pazquel-lte-ti.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D sc7180-trogdor-pazquel-parade.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-=
r10.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r10.d=
ts
> new file mode 100644
> index 000000000000..63602feceea6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r10.dts
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Lazor Limozeen board device tree source
> + *
> + * Copyright 2021 Google LLC.

nit: for newly created files you usually want to pick this year
(2023). I assume Google doesn't mind you assigning them the copyright,
but you could probably also put Quanta here if your legal cares. The
licensing is still "(GPL-2.0+ OR MIT)" as per the first line of the
file.


> + */
> +
> +/dts-v1/;
> +
> +#include "sc7180.dtsi"

Shouldn't the above include be of "sc7180-trogdor.dtsi"? That would
make it match -r9. I would sorta believe it wouldn't compile
otherwise.


> +#include "sc7180-trogdor-parade-ps8640.dtsi"
> +#include "sc7180-trogdor-lazor.dtsi"
> +#include "sc7180-trogdor-lte-sku.dtsi"
> +
> +/ {
> +       model =3D "Google Lazor Limozeen without Touchscreen (rev10+, rt5=
682s)";

nit: "rt5682s" is implied by "rev10+", so you don't need to include it
in the model name.


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
> +       realtek,dmic1-clk-pin =3D <2>;
> +       realtek,dmic-clk-rate-hz =3D <2048000>;

Looking at other trogdor device tree files, you also need:

/delete-property/ VBAT-supply;

I believe that "make dtbs_check" will complain otherwise.

Also note that these things should be sorted alphabetically, so your
"alc5682" node should be above "ap_ts_pen_1v8".

I guess in theory we could add a "sc7180-trogdor-rt5682s.dtsi"
fragment since so many boards are using it now, though I won't insist
on it.


Similar comments for your modifications to some of the other files.


-Doug
