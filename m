Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1EEE3A5E10
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 10:06:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232560AbhFNIIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 04:08:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232546AbhFNIIP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 04:08:15 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA194C061766
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 01:05:59 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id t40so13514480oiw.8
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 01:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bkT0W8uF7vg3HLg+/9Z/pWJKuKWmGeE2SVQvx5LKoY8=;
        b=UPTHRDNfA8Agg10whsqifThnxL2XjDZWqPqDnpeLhEUooT4NmCe8JfPKSJeaZCeJ7T
         duay+rmg3IWUMsdK2KaBXhhxErIf5IjOCQWgVAQXStBy/ZtCuSoCE6M21G4lWI+hnhtK
         7IS8SESV7paEmVd97VAO2rC4HKupVRjlanCMbYifeOsGVm4Yl8ywWJ3gnkLUsvwnyXhy
         Jx5yZm1CGq2McGnagYUi8AhwukGzYNZfeGg/XhFtMF48GiD3TItTducF4ygbfN0aaX0S
         ijifl9upHRJvZIZBZq0dbfnWN0PSIdDMQvidCXX6jQ1NT811qraW2OIoPT981otoOInM
         AwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bkT0W8uF7vg3HLg+/9Z/pWJKuKWmGeE2SVQvx5LKoY8=;
        b=QtDgP9Eo415NyHbbgzg2fsxXssMUs2IBvxoCnA1FsR5pIsOwuiKVLtFJEU9eYV1j9b
         /mdYM+1wsStbUtdWvwWY7XuYqgdsy+jk4nFTe/DVdxa398ejUPkdH/dxMzz6aYhNG+32
         h7hVS7IUUfEzBi+qQXww9gsOvi0uebTCfgW0quM50Ry4oHKjWfI9dEHwFA7e2SzWxbaz
         Hty6Gz8z//7cOxfG/QdNl+HhH+IFXx8CMcV0sLXbFNTxcnQBKugf8iuEZYzTYjAzmA4K
         7UVpiDInoIF2IpBj3gatHIwjP9k+gER53LQolZGmInnkLPsptFPO36PBz5z3aBL5l3qi
         iNfg==
X-Gm-Message-State: AOAM533tiHtjVqvwYMqMAkfrj+ZUjDfaafIAOz2WWtbjUOMHc+kzOSO8
        S2T2T5gkaDmcirsNdmKJ6/6nclFe4HRMFXXF4H5qBQ==
X-Google-Smtp-Source: ABdhPJxLGI90FU0D09Sa6LTFm9kRaJq46LUpOxjQeVzGELvxHKc/mMDygnvOtyuLc2Ha+iDkSFNEg8AgoMa2VA/mcds=
X-Received: by 2002:aca:fc91:: with SMTP id a139mr5053908oii.12.1623657958977;
 Mon, 14 Jun 2021 01:05:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
 <20210607113840.15435-2-bhupesh.sharma@linaro.org> <YMLO56Rr7UGUy8vo@builder.lan>
In-Reply-To: <YMLO56Rr7UGUy8vo@builder.lan>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Mon, 14 Jun 2021 13:35:48 +0530
Message-ID: <CAH=2NtyV=qMn32d9nE7qBheTscUejF1UwVZSc99uiv_P65S03Q@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: qcom: rpmh-regulator: Add compatible for
 SA8155p-adp board pmics
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        bhupesh.linux@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Bjorn,

Thanks for the review comments.

On Fri, 11 Jun 2021 at 08:18, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Mon 07 Jun 06:38 CDT 2021, Bhupesh Sharma wrote:
>
> > Add compatible strings for pmm8155au_1 and pmm8155au_2 pmics
> > found on SA8155p-adp board.
> >
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Liam Girdwood <lgirdwood@gmail.com>
> > Cc: Mark Brown <broonie@kernel.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Andy Gross <agross@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-gpio@vger.kernel.org
> > Cc: bhupesh.linux@gmail.com
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml      | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> > index e561a5b941e4..ea5cd71aa0c7 100644
> > --- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> > +++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> > @@ -55,6 +55,8 @@ properties:
> >        - qcom,pm8009-1-rpmh-regulators
> >        - qcom,pm8150-rpmh-regulators
> >        - qcom,pm8150l-rpmh-regulators
> > +      - qcom,pmm8155au-1-rpmh-regulators
> > +      - qcom,pmm8155au-2-rpmh-regulators
>
> Looking at the component documentation and the schematics I think the
> component is "PMM8155AU" and we have two of them.
>
> Unless I'm mistaken we should have the compatible describe the single
> component and we should have DT describe the fact that we have 2 of
> them.

If we refer to the PM8155AU device specifications, there are two
regulators mentioned there PMM8155AU_1 and PMM8155AU_2. Although most
parameters of the regulators seem similar the smps regulator summary
for both appear different (Transient Load, mA ratings etc).

Although most of these differences don't probably matter to the Linux
world, others like the gpios on the pmic are different.

So, IMO, it makes sense to mention the different pmic types on the board.

Please let me know your views on the same.

Thanks,
Bhupesh

>
> >        - qcom,pm8350-rpmh-regulators
> >        - qcom,pm8350c-rpmh-regulators
> >        - qcom,pm8998-rpmh-regulators
> > --
> > 2.31.1
> >
