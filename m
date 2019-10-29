Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2C43E8CDB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2019 17:38:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390445AbfJ2Qiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Oct 2019 12:38:55 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44554 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390429AbfJ2Qiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Oct 2019 12:38:55 -0400
Received: by mail-pg1-f193.google.com with SMTP id e10so9932567pgd.11
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2019 09:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:subject:to:cc:user-agent:date;
        bh=fkJrk/kfVxQguzbrbg9fdusjiwsNmvcP5LpS/OsgTnw=;
        b=F+i8IugYOL2tstifFFmcV9ZKmHpHIaUKjvf1AF2769RlOttvWFQG1WfYJtmuShHZCx
         8+67Y1Hfq9kVhUgsPN54KLprRu74C52XOgpNNLD2exsd0ttEKENS61HG4L0Ie3z1isvc
         ybtfCyeheSK4w2K9F3UD5gOVxyAOjxxSizEqw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:subject:to:cc
         :user-agent:date;
        bh=fkJrk/kfVxQguzbrbg9fdusjiwsNmvcP5LpS/OsgTnw=;
        b=g98doNuNDEJmhb+3gxLYhOWc9JTTpNITg0U7zNb1Qf7CC/X1zOxoRJe0JDAVHljdLo
         OyiWaM+yst1wC6YLfTTe6f2N0R3QWTp2JUvM70J5chBiX4r8sUfIHsJ/BVsV5QrdSMEs
         bMGUc6w+fkk9AmDxGk4Y1jRcfnLyFxCABFKylJAoDiUt5aErHLbNe8lIAwTA88LfKu+P
         tWBlVFuiOGU7OJIpM+SkdjsBNvdezRS/aY/s3wurgG691uDMcj7yenw26y9vi1Sn8ja2
         eYSnmooNoHmrQ/Y0i4LQT4MU7DkpQG8Th4zwKAGRYH29r315S1ECuS7vNyGWMJ7JL+rE
         IVyQ==
X-Gm-Message-State: APjAAAUhBLDzR7BgGPETgPLTPfKYBaVBlUBCK+G+vX12t1S4uYThI7f7
        kMYr4bn++Fnu2aCajfd1yOfP8w==
X-Google-Smtp-Source: APXvYqxi4e1/Fx5tEBclXsRBkF/VUO0Sg68QIA1MrsKXyj7/JaFQNTx6uQO9xJue3iHzMcJGPDkA3A==
X-Received: by 2002:a17:90a:b38b:: with SMTP id e11mr8034463pjr.115.1572367132818;
        Tue, 29 Oct 2019 09:38:52 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id 127sm14666005pfy.56.2019.10.29.09.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 09:38:51 -0700 (PDT)
Message-ID: <5db86b1b.1c69fb81.be45f.0bb2@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191023090219.15603-9-rnayak@codeaurora.org>
References: <20191023090219.15603-1-rnayak@codeaurora.org> <20191023090219.15603-9-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v3 08/11] arm64: dts: qcom: pm6150: Add PM6150/PM6150L PMIC peripherals
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
User-Agent: alot/0.8.1
Date:   Tue, 29 Oct 2019 09:38:50 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2019-10-23 02:02:16)
> diff --git a/arch/arm64/boot/dts/qcom/pm6150.dtsi b/arch/arm64/boot/dts/q=
com/pm6150.dtsi
> new file mode 100644
> index 000000000000..20eb928e5ce3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pm6150.dtsi
> @@ -0,0 +1,85 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +// Copyright (c) 2019, The Linux Foundation. All rights reserved.
> +
> +#include <dt-bindings/iio/qcom,spmi-vadc.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/spmi/spmi.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +&spmi_bus {
> +       pm6150_lsid0: pmic@0 {
> +               compatible =3D "qcom,pm6150", "qcom,spmi-pmic";
> +               reg =3D <0x0 SPMI_USID>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               pm6150_pon: pon@800 {
> +                       compatible =3D "qcom,pm8998-pon";
> +                       reg =3D <0x800>;
> +                       mode-bootloader =3D <0x2>;
> +                       mode-recovery =3D <0x1>;

Can this have status =3D "disabled"? Or is the idea that if the pmic power
button isn't used it should be disabled in the board dts file?

> +
> +                       pwrkey {
> +                               compatible =3D "qcom,pm8941-pwrkey";
> +                               interrupts =3D <0x0 0x8 0 IRQ_TYPE_EDGE_B=
OTH>;
> +                               debounce =3D <15625>;
> +                               bias-pull-up;
> +                               linux,code =3D <KEY_POWER>;
> +                       };
> +               };
> +
> +               pm6150_temp: temp-alarm@2400 {
> +                       compatible =3D "qcom,spmi-temp-alarm";
> +                       reg =3D <0x2400>;
> +                       interrupts =3D <0x0 0x24 0x0 IRQ_TYPE_EDGE_RISING=
>;
> +                       io-channels =3D <&pm6150_adc ADC5_DIE_TEMP>;
> +                       io-channel-names =3D "thermal";
> +                       #thermal-sensor-cells =3D <0>;
> +               };
> +
> +               pm6150_adc: adc@3100 {
> +                       compatible =3D "qcom,spmi-adc5";
> +                       reg =3D <0x3100>;
> +                       interrupts =3D <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING=
>;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +                       #io-channel-cells =3D <1>;
> +
> +                       adc-chan@ADC5_DIE_TEMP {
> +                               reg =3D <ADC5_DIE_TEMP>;
> +                               label =3D "die_temp";
> +                       };
> +               };
> +
> +               pm6150_gpio: gpios@c000 {
> +                       compatible =3D "qcom,pm6150-gpio", "qcom,spmi-gpi=
o";
> +                       reg =3D <0xc000 0xa00>;

Drop the size?

> +                       gpio-controller;
> +                       #gpio-cells =3D <2>;
> +                       interrupts =3D <0 0xc0 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc1 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc2 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc3 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc4 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc5 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc6 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc7 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc8 0 IRQ_TYPE_NONE>,
> +                                    <0 0xc9 0 IRQ_TYPE_NONE>;

Isn't this supposed to go away?

> +
> +                       interrupt-names =3D "pm6150_gpio1", "pm6150_gpio2=
",
> +                                       "pm6150_gpio3", "pm6150_gpio4",
> +                                       "pm6150_gpio5", "pm6150_gpio6",
> +                                       "pm6150_gpio7", "pm6150_gpio8",
> +                                       "pm6150_gpio9", "pm6150_gpio10";

And this? And have gpio-ranges and use the irqdomain work. Basically,
should look like pm8998.

> +               };
> +       };
> +
> +       pm6150_lsid1: pmic@1 {
> +               compatible =3D "qcom,pm6150", "qcom,spmi-pmic";
> +               reg =3D <0x1 SPMI_USID>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +       };
> +};
