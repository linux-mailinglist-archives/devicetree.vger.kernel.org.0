Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B325478970B
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 15:58:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231935AbjHZN55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 09:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232802AbjHZN5p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 09:57:45 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A0F81991
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 06:57:42 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d77c5414433so1830718276.0
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 06:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693058262; x=1693663062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sDeR6GFFOZ5uij8OPJ8RU0EtLmkNSduq4B/n6X1XI3w=;
        b=CNFJwxuwF2B02Q5PLbde9CjPjreVNLGIxLZzp4Zlrdhq7JjUg2kkECP2PgVPpJ5IFr
         GZW6RJ31uADeTMVkHBXwvOYHKV8M2uQhDty+E3KG3WIrfmG8x2655h5faQ9wR+Aq6OpS
         Fz/gr+iVhZwhmb77VZdySglmz8TJtvQ9fgjjLSG43zZ4Q2SLbRViB9jSOGXB+THdVsTh
         mj9U94AwjTDGRh6lloPn6t5rZNKaNBWYhnUDAjfuIXc1hxDe8ZTD+cs4B8ItzW1qBs4M
         f4PbVjkGJClfz51pzmipXP1e/JaLxOr8kw309DbR5ggrgHdMA95OQLiFbJ+UT8qfyHqL
         sR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693058262; x=1693663062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sDeR6GFFOZ5uij8OPJ8RU0EtLmkNSduq4B/n6X1XI3w=;
        b=Boh5m8DwYEWDizuu7YOeTsKJ27gkGQHtsE2D5J1t3qXufwMrlmr8EwV4rirhwdcqMa
         kbvGoRObuVrmtFPsnRzaeRhSswKazKuAJWc7GtcvYJYr79VlFgKiJuwMjH9MmNnANinG
         i8AxSEkV7aliy+QyEKLKGNMQSco84bjij4GG3v+R/o84eyqLSNHtB0U9Z0RCT8gUSyy9
         /SJ3lk078g+RsbXrg1UZ1kIQ1+atfgkogzT9hHSdRala/otqhaf2+arA9YF8XUQ30Krt
         YMaPhNHnjStn8/npr8MgpM35M6jWydalxrxb6TNrKidLVgLWwH/dsTO9vjaWlQyMpzgN
         0Mdw==
X-Gm-Message-State: AOJu0YwAW9Vh2s4f4JIhcpnCNwOMW9ExKvAk29Rye8CWvgYXJGcaE0gk
        EGY0Co88T+9YPBRCZ+bDGleOMLQWgLnoQko0kdihdg==
X-Google-Smtp-Source: AGHT+IHv3XPDbSI248XqS0M0zv62xlTjqgoENOnUVPvIu9Ru3C/nWkKAYrt/W0piQ0h3sppE1imMBmlbwKYDU2xWGHE=
X-Received: by 2002:a25:ef4c:0:b0:d53:f98f:8018 with SMTP id
 w12-20020a25ef4c000000b00d53f98f8018mr21089766ybm.65.1693058261769; Sat, 26
 Aug 2023 06:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230825220854.1655162-1-dmitry.baryshkov@linaro.org>
 <20230825220854.1655162-3-dmitry.baryshkov@linaro.org> <3bfc87d0-2d68-47e2-969f-28300afa7dfa@linaro.org>
In-Reply-To: <3bfc87d0-2d68-47e2-969f-28300afa7dfa@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 26 Aug 2023 16:57:30 +0300
Message-ID: <CAA8EJpqTvqF5oSV9g_eWwPXxR+b+GfQpjetSHS+JYDm5kMhoxA@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sdm845-mtp: switch to mbn firmware
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 26 Aug 2023 at 12:00, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 26.08.2023 00:08, Dmitry Baryshkov wrote:
> > We have switched most of devices to use mbn (squashed) firmware files
> > instead of spit mdt+bNN. Even this DT uses modem.mbn and a630_zap.mbn.
> > Let's switch adsp and cdsp firmware files to use .mbn format too.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> Looks like 845 was mbn from the start
>
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/log/qcom/sdm845?qt=grep&q=

sdm845-mtp predates these files. So is there an r-b?

> >  arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> > index 56f5bf52d9bd..7579ba66c6d8 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> > @@ -114,7 +114,7 @@ trip-point {
> >
> >  &adsp_pas {
> >       status = "okay";
> > -     firmware-name = "qcom/sdm845/adsp.mdt";
> > +     firmware-name = "qcom/sdm845/adsp.mbn";
> >  };
> >
> >  &apps_rsc {
> > @@ -415,7 +415,7 @@ vreg_s3c_0p6: smps3 {
> >
> >  &cdsp_pas {
> >       status = "okay";
> > -     firmware-name = "qcom/sdm845/cdsp.mdt";
> > +     firmware-name = "qcom/sdm845/cdsp.mbn";
> >  };
> >
> >  &gcc {



-- 
With best wishes
Dmitry
