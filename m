Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 166E550855B
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 12:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377461AbiDTKDq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 06:03:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241053AbiDTKDe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 06:03:34 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3AC3ED2B
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 03:00:48 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id w27-20020a056830061b00b00604cde931a0so776560oti.2
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 03:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8JtaQ1pue+8sFHmxc4Knv9XbBREmqsMrzMrBQgT5CNc=;
        b=lo9mEJqy0BDD/zBNtWkye9QrbEN3+dCG67elnm/8Uexr21WAe7v6GqsPmD599RziAo
         pwgie+daElB4CDINXRC5U/GxzxNo81N2t76h1tqbdUNlsHu1zwSMkVMNjtB0mGa47sHN
         gdy6ZJg3h/R2AjBDqvcjZGYWJPtbGBoNKPkvsH8G000O5lMvVuIsjVvi3abfBAGFMhLA
         E81fmU8+rrpdhV79X8afiDQ31nsvtsU0glt8KCHPymO13YkpWcM7gaQk2/rXvi1TIXGQ
         IFIfkpyNh0xvDGaEMx2DesEVrx3ovpg4JIC9d8xaMseFNiVy9/L1ixhzpVzDKbz188gL
         PX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8JtaQ1pue+8sFHmxc4Knv9XbBREmqsMrzMrBQgT5CNc=;
        b=YhKfRjFRrE2LkMWSNTQtflEi8wxNPCCTs0Q900zckOybron7VOYL317p7TrjEXF9nn
         O7ug5y82zrncO4Z5mWuqILlixrha4m3xJ2vogyHE4AyrT82swnHQrmv/8H1nHVlwi1oi
         andIzbVQu+pJZCTukxYpVBorT78hixL6YWKprVRsHGf1veEl/Nj1PvTH0kMThiWBdDZB
         WgDPa6e31Vzn2dP680pOlBqjpgrc3hH6ZFqcMVQUgBoR66PuOHUW49eXubThfgOGW4MV
         ytkuO+lUqGTksbiqun+eaiygbOB8Mn9WrOt9QpLjd/GdYo/zsGhm0wptTc39mMVH2xeS
         8KNQ==
X-Gm-Message-State: AOAM530MBMZ2tlQsFR+qMYHvFOi2Upuv8XFcD3S3tCaU4wLY9PmXtKbC
        hs8pJV2SEPqD482a3ZUjBPlH79uDIrMESMqGdJ6neA==
X-Google-Smtp-Source: ABdhPJzcJdBcjNTGYlbBgosfnSB5j34lXnm5wXFPbGVIIYHLxzjdaEQRdhuTH94cPAIiACAl9GOomm2ePAotGvtEjv4=
X-Received: by 2002:a9d:5913:0:b0:5cd:a050:8f55 with SMTP id
 t19-20020a9d5913000000b005cda0508f55mr7320316oth.44.1650448847968; Wed, 20
 Apr 2022 03:00:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-3-bryan.odonoghue@linaro.org> <737d44a9-56ba-846e-24ad-36b2da52d2d7@linaro.org>
 <CABymUCOAKvZXZKYtvunjn=K9mpZmAd4x3WTXH571k5BsBH6CEA@mail.gmail.com>
 <0cb490f4-3df8-7fc8-277f-070e0133f5db@linaro.org> <CABymUCN_N_yKuuF0zdwZ_jfd-UsfSt-HY5O4PjZ_sNmYGQ2UJw@mail.gmail.com>
In-Reply-To: <CABymUCN_N_yKuuF0zdwZ_jfd-UsfSt-HY5O4PjZ_sNmYGQ2UJw@mail.gmail.com>
From:   Jun Nie <jun.nie@linaro.org>
Date:   Wed, 20 Apr 2022 18:00:35 +0800
Message-ID: <CABymUCMxOTxmKP07A4HMz4iMyJHhwsh5PE9hskazGck_eRFt9A@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] arm64: dts: Add msm8939 SoC
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, benl@squareup.com, jwillcox@squareup.com,
        jgates@squareup.com, mchen@squareup.com, zac@squareup.com,
        Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jun Nie <jun.nie@linaro.org> =E4=BA=8E2022=E5=B9=B44=E6=9C=8820=E6=97=A5=E5=
=91=A8=E4=B8=89 17:57=E5=86=99=E9=81=93=EF=BC=9A
>
> > >>
> > >> Generic node names, no underscores in node names. This applies every=
where.
> > >>
> > >>> +                     compatible =3D "qcom,qfprom";
> > >>> +                     reg =3D <0x00058000 0x1000>;
> > >>> +                     #address-cells =3D <1>;
> > >>> +                     #size-cells =3D <1>;
> > >>> +                     cpr_efuse_init_voltage1: ivoltage1@dc {
> > >>
> > >> s/ivoltageX/voltage/
> > >
> > > How about cpr_efuse_init_voltage_dc? There are 3
> > > cpr_efuse_init_voltage* node here.
> >
> > The node names should be generic, so this should be maybe even just
> > "efuse"? Feel free to add some prefix to it, so "init-voltage-efuse",
> > but no underscores and no suffixes in such case (but "init-voltage2-efu=
se").
>
> The nodes are referenced by other node, such as below case. So I have
> to name them,
> underscore is the best separator. While I have 3 init_voltage related
> nodes to name.
> What's the name you suggest for them?
>
> arch/arm/boot/dts/qcom-apq8084.dtsi: nvmem-cells =3D <&tsens_calib>,
> <&tsens_backup>;
>
Maybe it should like this?

cpr_efuse_init_voltage1: efuse {

> Regards,
> Jun
