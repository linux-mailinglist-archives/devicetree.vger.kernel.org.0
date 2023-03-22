Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C75376C4F77
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 16:31:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231673AbjCVPbN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 11:31:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbjCVPbM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 11:31:12 -0400
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF0C66D07
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 08:31:10 -0700 (PDT)
Received: by mail-ua1-x92e.google.com with SMTP id s23so12910670uae.5
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 08:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1679499069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0JTo8jph/aEjP08QKbcmScKBA9sBPX+GiZwkKubY1Gk=;
        b=eauVrq3lCS2jOzGbplgI8zdDDffe6LpWln3OvKIInQDiOix8KTpVLFGH8+AQ0TdRo8
         F4xd74EfYHgpAkeccXwraHZ5ytlfu/C0mX4ktGEarHhyxUnbgyvdi6ExPEjngzOWjnah
         FUOIg7Imp5Yh3y/ba1zTCNBvH5Pr1xp6Vs1XXN7XpXs3rddczEPODsYOPyIVlwK0lhxG
         LGsEyFttuQOQm+B/UJEViFBMojvgEgWcLnE7KzvsRKz5m8eNdAqxdf+uSKDxoiuGsqRi
         SD0fPbnaouPtIHo9ZELWnjqSBwMpPF0hIvNHTZ0+4+hI7Rc20uxdM1HHuW2W3/2aRzeJ
         skIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679499069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0JTo8jph/aEjP08QKbcmScKBA9sBPX+GiZwkKubY1Gk=;
        b=hlPnilRh1NV7ChyNG4INc+SmVH20kCIPbzrHXeIatLzwtlDSoZh0a2s9Fre4KPoWIX
         EbtTE9znbCHflSGlxjexRDxUu2YNwrc/+NK4uGTdQ9V7fx3H+RVaQEdffRg8sIvM7sz6
         q8RBasXa4+g6eHYE1zj3X37ZPbCvA9XBrbnO+ju6fdz5W70G2gln5upPyK+2EKWIFNY7
         JLpNagbWnZ3qTVRR7zFwjzm7W5C+Eik+HUjwYrsdXU1M+tCHWemLwXxtW9PixkG4xX/i
         1zjovpFHf5q5xWUs8aGXg4HHYZ+8TONspWK0o3D7pWrCYrRCqGWDYKqnY+ALBkejTwEG
         zhNA==
X-Gm-Message-State: AAQBX9cwTo3b7ontAX+EPLv3jIIZTlQnSMkd18VwHQaxy0LeRbK3h3e+
        LyzPVRP+ATJvXCPHLKN/lbZCHYGlSD4FjJ6RqRUuMw==
X-Google-Smtp-Source: AKy350bgPvOaa5GVQyfGusKzp7YCG85tu9N7HftX4ULnuhznxfaZFYV1rSSglte4O1kEw+RW+KtprQo8LzYWDFTtwz8=
X-Received: by 2002:ab0:3c4a:0:b0:68e:2dce:3162 with SMTP id
 u10-20020ab03c4a000000b0068e2dce3162mr3757083uaw.2.1679499069601; Wed, 22 Mar
 2023 08:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230320154841.327908-1-brgl@bgdev.pl> <20230320154841.327908-13-brgl@bgdev.pl>
 <a215c54b-c12e-4463-f9fe-588053f74300@linaro.org> <20230322025047.gvo252mh2flcbzuc@ripper>
In-Reply-To: <20230322025047.gvo252mh2flcbzuc@ripper>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 22 Mar 2023 16:30:58 +0100
Message-ID: <CAMRc=MeVaMaQMsLUPH0QDjuOBt3TjVofbj7SgA5zMg3sQGBh=w@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: qcom: sa8775p: pmic: add thermal zones
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 22, 2023 at 3:47=E2=80=AFAM Bjorn Andersson <andersson@kernel.o=
rg> wrote:
>
> On Mon, Mar 20, 2023 at 06:28:20PM +0100, Konrad Dybcio wrote:
> >
> >
> > On 20.03.2023 16:48, Bartosz Golaszewski wrote:
> > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >
> > > Add the thermal zones and associated alarm nodes for the PMICs that h=
ave
> > > them hooked up on sa8775p-ride.
> > >
> > > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 58 +++++++++++++++++++=
++
> > >  1 file changed, 58 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64=
/boot/dts/qcom/sa8775p-pmics.dtsi
> > > index 8616ead3daf5..276070b62ccd 100644
> > > --- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> > > @@ -6,6 +6,50 @@
> > >  #include <dt-bindings/input/input.h>
> > >  #include <dt-bindings/spmi/spmi.h>
> > >
> > > +/ {
> > > +   thermal-zones {
> > > +           pmm8654au_1_thermal: pm8775-1-thermal {
> > Please reindex this, downstream uses _1 for pmic@0, but this
> > makes little sense. Make it match the SID.
> >
>
> Please use the naming from the schematics for these things, rather than
> just an iterator (which might be what Bartosz is doing here).
>

Not sure how to approach that. All currently existing
"qcom,spmi-temp-alarm" nodes use the PMIC name for the label.
Otherwise it would have to go into the board file and be replicated
for each board using the same PMIC?

Bart

> Regards,
> Bjorn
>
> > > +                   polling-delay-passive =3D <100>;
> > > +                   polling-delay =3D <0>;
> > > +                   thermal-sensors =3D <&pmm8654au_1_temp_alarm>;
> > > +
> > > +                   trips {
> > > +                           trip0 {
> > > +                                   temperature =3D <105000>;
> > > +                                   hysteresis =3D <0>;
> > > +                                   type =3D "passive";
> > > +                           };
> > > +
> > > +                           trip1 {
> > > +                                   temperature =3D <125000>;
> > > +                                   hysteresis =3D <0>;
> > > +                                   type =3D "critical";
> > > +                           };
> > > +                   };
> > > +           };
> > > +
> > What happened to the downstream _2 (pmic@2) one and _4 (pmic@6)?
> >
> > Konrad
> >
> > > +           pmm8654au_3_thermal: pm8775-3-thermal {
> > > +                   polling-delay-passive =3D <100>;
> > > +                   polling-delay =3D <0>;
> > > +                   thermal-sensors =3D <&pmm8654au_3_temp_alarm>;
> > > +
> > > +                   trips {
> > > +                           trip0 {
> > > +                                   temperature =3D <105000>;
> > > +                                   hysteresis =3D <0>;
> > > +                                   type =3D "passive";
> > > +                           };
> > > +
> > > +                           trip1 {
> > > +                                   temperature =3D <125000>;
> > > +                                   hysteresis =3D <0>;
> > > +                                   type =3D "critical";
> > > +                           };
> > > +                   };
> > > +           };
> > > +   };
> > > +};
> > > +
> > >  &spmi_bus {
> > >     pmm8654au_0: pmic@0 {
> > >             compatible =3D "qcom,pmm8654au", "qcom,spmi-pmic";
> > > @@ -41,6 +85,13 @@ pmm8654au_1: pmic@2 {
> > >             reg =3D <0x2 SPMI_USID>;
> > >             #address-cells =3D <1>;
> > >             #size-cells =3D <0>;
> > > +
> > > +           pmm8654au_1_temp_alarm: temp-alarm@a00 {
> > > +                   compatible =3D "qcom,spmi-temp-alarm";
> > > +                   reg =3D <0xa00>;
> > > +                   interrupts-extended =3D <&spmi_bus 0x2 0xa 0x0 IR=
Q_TYPE_EDGE_BOTH>;
> > > +                   #thermal-sensor-cells =3D <0>;
> > > +           };
> > >     };
> > >
> > >     pmm8654au_2: pmic@4 {
> > > @@ -55,5 +106,12 @@ pmm8654au_3: pmic@6 {
> > >             reg =3D <0x6 SPMI_USID>;
> > >             #address-cells =3D <1>;
> > >             #size-cells =3D <0>;
> > > +
> > > +           pmm8654au_3_temp_alarm: temp-alarm@a00 {
> > > +                   compatible =3D "qcom,spmi-temp-alarm";
> > > +                   reg =3D <0xa00>;
> > > +                   interrupts-extended =3D <&spmi_bus 0x6 0xa 0x0 IR=
Q_TYPE_EDGE_BOTH>;
> > > +                   #thermal-sensor-cells =3D <0>;
> > > +           };
> > >     };
> > >  };
