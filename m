Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30DFF6FDFBB
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 16:14:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237280AbjEJOOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 10:14:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236978AbjEJOOn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 10:14:43 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E1310F7
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:14:41 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-b9e66ce80acso9468222276.3
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683728080; x=1686320080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eeEjyuMrbqfMpNPcDRFVw2ex39hATHSF3JS+o1uWYUQ=;
        b=t24zatVrlZsbhKahM+eitmln7eVXtD6FflBoHJJJ8e0QA+jm+BRY22hRit7Vdf5fjm
         wx3MYhgZFnlMlEtCeoS/uccdUs/dZWWPwmp84UQ1kpkbv+gPKSTAEs35Fp/DuFbBADtm
         htBDCikvWLfx9b9Aise/8TLjveY2G+53B/9qbLmBLw9fcLwtcO6Q+fc/O/ooN38PsJAk
         7v0954JXoIjNf/dc5fJqXIGiHSOqv3w0exTnHJmS3Xo/LV6B6WTRN7ur1y1TUm7Y9GO/
         lEruzA3QHsn+eRXxwGsP0NtzOZmv+2ig+1qUA7+hVw3bDoFi0vInwZDZZjlzh+my5CXF
         PT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683728080; x=1686320080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eeEjyuMrbqfMpNPcDRFVw2ex39hATHSF3JS+o1uWYUQ=;
        b=AZRCzM/EmctvG7NThM/aWcrpcnWypoZNYy8i4mnBSvknZmLcliBRiSJvA5O6C0ynzg
         humvFQc1B1JQCeagCP2WKXLhxUfW5VtXvLz4cRBivJyhnbIggKh+Oqe65kfgB2dBnlje
         GAmh/7KPM7K1tZ9NulEZtZhpYq6r5s7xETsqAU5KaaSnM1kQR9jalIZwMfRDMqz/8kTX
         ozPABwbabJPKYBjWd+A4BR3ffwkvhWzFmRtoiPbusYB5MVUbWD9GUvOyTLgHz5DMdV6V
         3mWArTNaGh9YhCKrue9rngATWcOMCBqpue3SPD+fxiltlljhdGQ7PVIO6WIGsAuxkyfp
         GkXQ==
X-Gm-Message-State: AC+VfDx8Q/4zhXIeHBfc/PR4ETR+sVEkcD0bojQew3qrRKzCEgz2m1fL
        oBYUN9o5D7CttmXjAZzPgSSYjbbkYcNsyu99NaQqcg==
X-Google-Smtp-Source: ACHHUZ6xpSFnvBXQI7tlJN/E9SCfMtOzfi0cGlq7Hjv4inn0uyniiBKBGI4JNKIJStbaYDH918BxS3uJ88M8sg0wvHk=
X-Received: by 2002:a25:684b:0:b0:b9b:eeb9:925c with SMTP id
 d72-20020a25684b000000b00b9beeb9925cmr16771562ybc.34.1683728080264; Wed, 10
 May 2023 07:14:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230507201225.89694-1-matti.lehtimaki@gmail.com>
 <20230507201225.89694-5-matti.lehtimaki@gmail.com> <68818f45-199d-1b5b-d125-ce08205516bf@linaro.org>
In-Reply-To: <68818f45-199d-1b5b-d125-ce08205516bf@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 10 May 2023 17:14:29 +0300
Message-ID: <CAA8EJpro5Qk5w=TT4kPztGXZO3K526qh0_Mu1jSwEYF_RKaZzw@mail.gmail.com>
Subject: Re: [PATCH 4/6] ARM: dts: msm8226: Add qfprom node
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 May 2023 at 16:59, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 07/05/2023 22:12, Matti Lehtim=C3=A4ki wrote:
> > Add missing QFPROM definition for MSM8226 SoC.
> >
> > Signed-off-by: Matti Lehtim=C3=A4ki <matti.lehtimaki@gmail.com>
> > ---
> >  arch/arm/boot/dts/qcom-msm8226.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/qcom-msm8226.dtsi b/arch/arm/boot/dts/qc=
om-msm8226.dtsi
> > index c373081bc21b..c34b8f3139ae 100644
> > --- a/arch/arm/boot/dts/qcom-msm8226.dtsi
> > +++ b/arch/arm/boot/dts/qcom-msm8226.dtsi
> > @@ -505,6 +505,13 @@ restart@fc4ab000 {
> >                       reg =3D <0xfc4ab000 0x4>;
> >               };
> >
> > +             qfprom: qfprom@fc4bc000 {
>
> We usually call this efuse@

We have 5 efuse@ and 14 qfprom@ (next/master). But that probably means
that we should rename existing qfprom@ to efuse@.

>
> qfprom is Qualcomm specific.
>
> Best regards,
> Krzysztof
>


--=20
With best wishes
Dmitry
