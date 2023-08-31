Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFEB378EEB8
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 15:36:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245699AbjHaNgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 09:36:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241222AbjHaNgX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 09:36:23 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E86CEB
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 06:36:19 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6bca5d6dcedso694085a34.1
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 06:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693488978; x=1694093778; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqAw1vSdyf4KNpVgJMS6YvMCPUOYkqxMNfc27UX7Zy4=;
        b=D6JVQgQFWPOgxp59+vNQU/Ugu6CTHatcUbg+YjMrxI26Huz3NJJk8K4QoQasGhVKbC
         +LN85pIC1qjXrnWJcPvJXgTg7o/XX37ZjGKkfe5kXiBQacmdLoPWg0glMFreReBIieEc
         W/a+fxxB0loro+ikzq1ttGf+kQivZuWgfsCNZXspxEUMUuox0+EqUzGqJVfQt36r+6d3
         luEJ95aZbSXtz7+vNumTteUgiB3TmG+Hq8cn9LloLG0huUJ5zOA9FLW7d+py+amtU/vI
         IQddvHqst+zzzh9MSuVHgDMovNH5aPRzZCs30r3wisqFdJtKfmc9nM/z3DhqRIslEl5F
         BRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693488978; x=1694093778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QqAw1vSdyf4KNpVgJMS6YvMCPUOYkqxMNfc27UX7Zy4=;
        b=dMRBrByn6LB8plLzbyCsYig8BDoycTfMDEAPAxY+S6xbYTe9KdIb2ieuX8/upNJVT/
         BKpF7TmrQ+zn45dQE0/YYxou7r1rGt0D4ADmumNbPkaNm9eH/9ijH0JVQbANQ3Dx+/bE
         tdfngVw5DPecLaElcmiVdiVa6RWwwkwOY/yQ8I4YQVfrMq3rJObQLEcuY5/UQM1tcpwl
         bBh25Qg+TPXategKdHm8ssCG+nkYt0LFz6TL1PDzAYYKyPeyo49rs6YVNNL9IDVE0Bse
         w25JTcIcXh62F4wBPCGhIOfDujLa/Q+zu+rzDLgJNrB9vetimO9T7ICIaJRIgcxVWfkV
         G16A==
X-Gm-Message-State: AOJu0YzBff8RVw4ND39eAkLXFMnpgOF4XyeQt79BmwQ5gFmxHvn6gtM3
        W5nQbMcnS9wfi1EvnQshv2gB9iqtEpvUl9WqgHaTSQ==
X-Google-Smtp-Source: AGHT+IHLwKEwQ6Ij8GHHKwNHA115gxE5tfUPeMUXy+HCUY2RaudcNytalLP9wq/BdDRNIoBPy2RPFlUyH5wDcxh/f5Q=
X-Received: by 2002:a9d:7d0b:0:b0:6b9:52cb:3adf with SMTP id
 v11-20020a9d7d0b000000b006b952cb3adfmr5581080otn.20.1693488978357; Thu, 31
 Aug 2023 06:36:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230824112741.201353-1-linkmauve@linkmauve.fr>
 <20230824112741.201353-2-linkmauve@linkmauve.fr> <46a562b5-6984-3b41-3c41-c346107b4c96@linaro.org>
 <ZOdUiFsAjQCvwp1A@desktop> <622faf2a-58ec-5ff4-1952-19c15d122642@linaro.org>
In-Reply-To: <622faf2a-58ec-5ff4-1952-19c15d122642@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 31 Aug 2023 15:36:07 +0200
Message-ID: <CACRpkdaw-sYVUPPrHNGGkdQ9_09CMHg11u2hGcUV-7L8MpLj+w@mail.gmail.com>
Subject: Re: [PATCH 1/2] power: supply: bq24190: Support bq24193
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
        Alexandre Courbot <acourbot@nvidia.com>,
        azkali <a.ffcc7@gmail.com>, CTCaer <ctcaer@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 24, 2023 at 3:28=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 24/08/2023 15:00, Emmanuel Gil Peyrot wrote:
>
> >>> @@ -2027,6 +2028,7 @@ MODULE_DEVICE_TABLE(i2c, bq24190_i2c_ids);
> >>>  static const struct of_device_id bq24190_of_match[] =3D {
> >>>     { .compatible =3D "ti,bq24190", },
> >>>     { .compatible =3D "ti,bq24192", },
> >>> +   { .compatible =3D "ti,bq24193", },
> >>>     { .compatible =3D "ti,bq24192i", },
> >>>     { .compatible =3D "ti,bq24196", },
> >>
> >> We should really stop doing this. All of them are compatible, aren't t=
hey?
> >
> > From what I gather from the different datasheets, the main difference
> > between them is the maximum current they are able to provide, 1.5 A for
> > the bq24190 and bq24192i, 3 A for bq24192 and 4.5 A for bq24193. The
> > default current limit is also detected differently it seems.  But yeah,
> > those are otherwise similar enough to not require anything different in
> > the driver.
> >
> > What would be a good way forward for that?  Adding a new ti,bq2419x
> > compatible and switching all devices to this one, as long as they don=
=E2=80=99t
> > require anything specific?
>
> Not a wildcard but any of existing ones, e.g. "ti,bq24196", "ti,bq24190".

We usually encourage people to over-specify the hardware number,
because you never know when you need a quirk and then if you can't
tell them apart you are in a bad place. (But there are exceptions, such
as jedec-nor...)

The differences pointed out (charge current limit etc) can very well
result in different code paths at some point, especially if the charger
interacts with some other component.

Yours,
Linus Walleij
