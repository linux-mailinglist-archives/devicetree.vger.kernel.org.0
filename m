Return-Path: <devicetree+bounces-649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B047A26C5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D4572817E8
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 19:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED1518E25;
	Fri, 15 Sep 2023 19:00:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7B630D16
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 19:00:23 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3D082120
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:00:19 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d81b42a3108so1588840276.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694804419; x=1695409219; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MA+IH6vFDWnj8CWBjAETZZSe18NWdBhZ5Y5deFFzGMI=;
        b=L99HJwtiSHN98t1F8KNkQkA0O49wol0PE46W00Ae0kkcMhkacRR4q3flBqZpl1b4Cd
         /3Z9dkuoCBg9OPrAo98chVHT2OnU4EoznuCn8HSpNJGHxNRII3ztyG6rQfpfD5GBSh3a
         l7mXkkyEhYeJY2ss/ms6SvU1P94I2ZJ8hXqv9g3FI3aRPryg7DhlSB5Kq/n2YJ6C/CW/
         1m6YFd9N/JloDi5nE2wb++PTZ+jS69OKoXc+e1ItOBgGpmySOkro0SfSsc1AOzYLJ/va
         Vb9qlXiUGdoklbc6P566J2hqd5RdA7nshQiUlh45BKB4KL6VE6XlActlbkFYv4a2IoSm
         vO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694804419; x=1695409219;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MA+IH6vFDWnj8CWBjAETZZSe18NWdBhZ5Y5deFFzGMI=;
        b=XT8efxQO6GDQTc082JqZI5KwSR9wzOIZ/9cctZ17dIzUw6RgJytj4xnQVgXp7cSteL
         UYLXZgoEsT+Jw+kffRrKON2XA/37NYgdBoFk0NTY7+zpeE4vwCj4f/a9hGCzeJYw2ZM4
         sfuiu69EpshkW+YoOjaB0O2+B61X8aNxMXzy+Xvw7HIV6dILcSk81ycvmBQe2ShqQ7wW
         6aUNtKO7vXYOuJhHxxiCC/NS0DvN3ta0qpoaGxM8iCjrXobxrXF1sWkXPw7GcvFynDj3
         jCF8opnmVqG8hOars5PuwHyMISSuSZtT6vvs3PYzdy3/fD6dxYINv7YDMESNax7lf14W
         sWgQ==
X-Gm-Message-State: AOJu0Yxzy22waZJN/zB2kwNse9SUgceibaX/GlIMXZm78ZxMaOYot2Zj
	eoMK250Q2msiZPDIWw7p7FySbfpMwWHTrH86W6Qr8g==
X-Google-Smtp-Source: AGHT+IHloveln5I1HrqkenFE7vzYh2eTD6d1bJyya94I6qr4dXlqjiJXzTSkEB8jv6T0Pz0Y9YYlZe8PfZm3J0clBh0=
X-Received: by 2002:a25:2547:0:b0:d78:878d:e1e1 with SMTP id
 l68-20020a252547000000b00d78878de1e1mr2274459ybl.50.1694804418847; Fri, 15
 Sep 2023 12:00:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230914065422.5452-1-otto.pflueger@abscue.de>
 <20230914065422.5452-3-otto.pflueger@abscue.de> <72e24711-f485-46ce-bbda-db3043d84bcc@linaro.org>
In-Reply-To: <72e24711-f485-46ce-bbda-db3043d84bcc@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Sep 2023 22:00:07 +0300
Message-ID: <CAA8EJpq77L9aviGQ0hJRB9OxC2oswM0HjL6WwCUx7caYoepigw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] pmdomain: qcom: rpmpd: Add MSM8917 power domains
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 15 Sept 2023 at 16:41, Konrad Dybcio <konrad.dybcio@linaro.org> wro=
te:
>
> On 14.09.2023 08:54, Otto Pfl=C3=BCger wrote:
> > MSM8917 uses the SMPA2 and LDOA3 regulators provided by the PM8937 PMIC
> > for the VDDCX and VDDMX power domains in voltage level mode,
> > respectively. These definitions should also work on MSM8937.
> >
> > Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> > ---
> Would you mind picking up the RPMPD part of [1] and integrating
> QM215 and MSM8917 to use the new bindings?

Please, no. That patch was dropped in favour of [2], which doesn't
include RPMPD indices.
And it's good, since we can introduce logical 'default' ones instead
of the ones proposed in the [1].
I started working at making generic RPMPD indices, but I haven't sent
the patches yet.
So, I think, this patch is fine.

>
> Konrad
>
> [1] https://lore.kernel.org/linux-arm-msm/1688647793-20950-2-git-send-ema=
il-quic_rohiagar@quicinc.com/

[2] https://lore.kernel.org/linux-arm-msm/1689744162-9421-2-git-send-email-=
quic_rohiagar@quicinc.com/


--=20
With best wishes
Dmitry

