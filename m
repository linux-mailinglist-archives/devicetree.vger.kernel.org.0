Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B74A79E583
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 12:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239850AbjIMK6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 06:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239853AbjIMK6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 06:58:42 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1382D19B0
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:58:38 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1bf7423ef3eso50732035ad.3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694602718; x=1695207518; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slAYSc7DXITgYyvEajQT1IvP1sCKjir5q1RLHoLv0QE=;
        b=lHXTy4V2/DPEia7bKMeROFxaQOdlYGrgTV7BJldEp6x/Fd06NbiAefV/ei1jb4z8zn
         XSF5hGrqCjECzK0fYkWOV+ZrmCtALJZZX3kWneeXwg/U29spaRzY//EIKdLIUYNqamNl
         C/mZcnsZtWE+ZmP3r7l8b5Phghout9bxNpd/gY93h/UrOi8PXm8wUuhWlCU44TXqz7yw
         4Ag0aq8YjZNrn021jW8aknOZfOEpfloRuQ+6LEqj48caZwobJpe2b4EF3t1xGlh9fpM9
         zElTb3UU0unDs0SBVJhObm0lZ/Y6vzrnfX4MonpwhvUwlW/U4i/zpMEIpUUEMfzOkU/z
         hOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694602718; x=1695207518;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slAYSc7DXITgYyvEajQT1IvP1sCKjir5q1RLHoLv0QE=;
        b=YDqG7uKW3UBlwq8vwWIAtTsVzdrur20AyocIIOALlDT8zjS/KCj3U8aHcrm1q2Svs+
         BcKloriPlqYjhvtUQXwyHbURivoJleMckBigVB87qSSu5hpZhWOySgJWDoVKFFjHqvgo
         BgNmujCXllUwZp4XsaXT7tkUsCJRNZgZpX5I73EMusni/Up3ECmWERdSQBVCLN4aulZG
         Z13bboEBprrZcVl5aLKExYqWDSziuy87k8PvrS+Cp0r77cJPPD2o0w3Hlpv5G9knZBXF
         733V8yaPrr5ADUpKTY2LZ36/f1gDbHclj5UFNKMpFJlEIb2tw+wF+xPfWXMb9g4G8sEl
         /1aA==
X-Gm-Message-State: AOJu0YxrUBesBWg1v6NQkHgeUV+OueLs5W1NBmuV1YAWxqEtdKh9x6vc
        98zOpo2KU+saRpxWtXDxQqiJSsneTb3yL5aAaubtWA==
X-Google-Smtp-Source: AGHT+IHhp8xAYoISqZ8W0p9FXmeWV3zP/Z5Om6OyMdci0swqhikS+acjYkCBKmSioXQ31oB/6sDWnxOU/OnMAcLT9Wg=
X-Received: by 2002:a17:90b:1892:b0:273:f017:cac0 with SMTP id
 mn18-20020a17090b189200b00273f017cac0mr1714830pjb.39.1694602718311; Wed, 13
 Sep 2023 03:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230912174928.528414-1-apatel@ventanamicro.com>
 <20230912174928.528414-4-apatel@ventanamicro.com> <CAGETcx8vXifmS2U5PTtmBySA=dih3GUOQ93A_qA5nm3faQqcGg@mail.gmail.com>
In-Reply-To: <CAGETcx8vXifmS2U5PTtmBySA=dih3GUOQ93A_qA5nm3faQqcGg@mail.gmail.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Wed, 13 Sep 2023 16:28:25 +0530
Message-ID: <CAK9=C2Wj0=2NNaXLBbNOcmHaJfV4DpAXqSayQtqF0eHsbki3_A@mail.gmail.com>
Subject: Re: [PATCH v8 03/16] of: property: Add fw_devlink support for msi-parent
To:     Saravana Kannan <saravanak@google.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 13, 2023 at 4:30=E2=80=AFAM Saravana Kannan <saravanak@google.c=
om> wrote:
>
> On Tue, Sep 12, 2023 at 10:50=E2=80=AFAM Anup Patel <apatel@ventanamicro.=
com> wrote:
> >
> > This allows fw_devlink to create device links between consumers of
> > a MSI and the supplier of the MSI.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/of/property.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index cf8dacf3e3b8..758ea822e46d 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1267,6 +1267,7 @@ DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cell=
s")
> >  DEFINE_SIMPLE_PROP(leds, "leds", NULL)
> >  DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
> >  DEFINE_SIMPLE_PROP(panel, "panel", NULL)
> > +DEFINE_SIMPLE_PROP(msi_parent, "msi-parent", "#msi-cells")
> >  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
> >  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
> >
> > @@ -1361,6 +1362,7 @@ static const struct supplier_bindings of_supplier=
_bindings[] =3D {
> >         { .parse_prop =3D parse_regulators, },
> >         { .parse_prop =3D parse_gpio, },
> >         { .parse_prop =3D parse_gpios, },
> > +       { .parse_prop =3D parse_msi_parent, },
>
> Please follow the same ordering here as the DEFINE_SIMPLE_PROP macros.
> So, this should come after the panel one.
>

Okay, I will update in the next revision.

Regards,
Anup
