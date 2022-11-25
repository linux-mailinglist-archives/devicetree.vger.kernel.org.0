Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A70E6386BC
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 10:50:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbiKYJus (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 04:50:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229909AbiKYJue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 04:50:34 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9B7A20F75
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 01:47:51 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-3b10392c064so36975867b3.0
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 01:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vGrrhPyQG3g6FJZeIcEEJAejxLRRvD0Exro1RPEAJMo=;
        b=h5S4t4R5HQh/JLcOEVCo8eWZSVS1Tz9jFCNx/1Y48Dv5/lUyvyaSqn8FuRc48Io19I
         OgwpVakIuy93yeNbBgXYGP9rFG3n4S3BfutgJX58aCzTK2v7Zaehg3hLWgopLNVLqxDq
         57jRqFHzeeZsM1roWN//8336uJLFhFcmsjqeDP+SP6YgxJn47S6NSfJF8NPp+1z8Pc0Y
         3Mi+yshbUC8dHKG6Ac9sAgfJ4Cp+8uA2osWzc0QWzqkA9mtwhknLE0De3v97wVIcH+aI
         ccQlf0ft/rSG81xojd+JH6rBEGC0sAbY42oFGyjQbmL2tOJRk2QaWgLPwBRSFTJquUaT
         O38g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGrrhPyQG3g6FJZeIcEEJAejxLRRvD0Exro1RPEAJMo=;
        b=AkZVeOl4/Iv5juWoG2YuHr2YO5bj3uw2GrS3DskDLX1xuVpXP2KZXLJe/G6N+Cr5eL
         0aZfqfuh5PwLGyApVSRlh4D5PgwLh6bZL6LcP72s8A0GnIH+U8XOHvUYi4t7rwNuqA0d
         0dm51lXDflu/r1f6LkaDSg+TS2+8ndNZ1+hoxQIn/5JrNDuQBGRh6CvJAiokGTncUVqf
         v5kJ0uNwEe2b4D4s4jv+GF7zkQbW9GisMQfiMgP2OtZOqljQTTY/KOvnOnEvomJJ3Z2C
         0h6YrniQntfQ2w8PvOFBwBXPvW6W88ptkQsNH9c709WWJFdsCZyJ3WM9//+Jtdc4xu2+
         hTpw==
X-Gm-Message-State: ANoB5pmpDHzldU30dQrruHewXNYkc5QLvLbZZTTcq8fse+zIDDuYSRDF
        KqYnURqwb6nzQQ1/7WA1NMg5J839ptwFaARBgoh7sQ==
X-Google-Smtp-Source: AA0mqf4QV9NTte0gyyiJiQw9dp9huxq4OiMT7Ad+l+4iw6IgmA1vSeNjkfIifJtbe9cLdLUtj3zL8N8V5RdUeifr/EM=
X-Received: by 2002:a81:3855:0:b0:38b:17c4:4297 with SMTP id
 f82-20020a813855000000b0038b17c44297mr17887980ywa.446.1669369671097; Fri, 25
 Nov 2022 01:47:51 -0800 (PST)
MIME-Version: 1.0
References: <20221123152001.694546-1-abel.vesa@linaro.org> <20221123152001.694546-3-abel.vesa@linaro.org>
 <CACRpkdZtkHCkfUAcezSJvmei=HOezK6oyx+4C5kBrEtU+vAB-g@mail.gmail.com> <fecb2dd6-9be2-78dc-4598-cc338fbdc2a2@linaro.org>
In-Reply-To: <fecb2dd6-9be2-78dc-4598-cc338fbdc2a2@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 25 Nov 2022 10:47:40 +0100
Message-ID: <CACRpkdZJaz9BEorQa7dTNkgTkwZjJNB-MWrpKFxHRgdsf3xJww@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: pinctrl: qcom,tlmm-common: document
 i2c pull property
To:     neil.armstrong@linaro.org
Cc:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
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

On Thu, Nov 24, 2022 at 2:24 PM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
> On 24/11/2022 14:11, Linus Walleij wrote:
> > On Wed, Nov 23, 2022 at 4:20 PM Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> >> From: Neil Armstrong <neil.armstrong@linaro.org>
> >>
> >> Document the new i2c_pull property introduced for SM8550 setting
> >> an I2C specific pull mode on I2C able pins.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > (...)
> >> +      qcom,i2c-pull:
> >> +        type: boolean
> >> +        description: enable bias pull feature designed for I2C on pin
> >
> > But what is this?
> >
> > I2C buses are usually just plain old bias-high-impedance, high-z
> > or open drain, wire-or or whatever you want to call it.
> >
> > But now there is some special i2c mode, huh?
> >
> > The description is pretty much "it is what it is"... can we have
> > some explanation about what this means electrically speaking
> > and why you cannot use bias-high-impedance?
>
> I'll try to get some more info, but so far I only found what I wrote in t=
he bindings.

Bj=C3=B6rn: can you see if you can get some clarity about the i2c
bias thing?

Yours,
Linus Walleij
