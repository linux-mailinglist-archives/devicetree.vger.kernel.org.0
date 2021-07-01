Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5938A3B94C2
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 18:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbhGAQmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jul 2021 12:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbhGAQmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jul 2021 12:42:13 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1C03C0613DB
        for <devicetree@vger.kernel.org>; Thu,  1 Jul 2021 09:39:41 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id n9so4533494qtk.7
        for <devicetree@vger.kernel.org>; Thu, 01 Jul 2021 09:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j1omKszLA96uDrGntnvvvB8tgKEGENuOVwCJ29kc0wQ=;
        b=X3rDAfHuhzkoWnwo5uurv5Exfv3mg3SGhQw6Ouw7diqQw1SJpU0uljBxmTl7XH02ij
         FZ48rAir+oVsJxyTJmUcOnMIPBL5+Jv7io2cjOkr2BQoRngsMbXvVUK8ZYY5Yl5KM0QE
         SujHUOV4olMx5BpJFkQJDpB7WVkRsakwwfBjT8OIcGV7lHybyVflPsJzUTe0B9J7gBYO
         Ts/RanidSkddmPkLs3/wkf8g5RdSHi6aytU2uJ+Xqj8HzahGq6YhVht7Kek5QF+E0fLl
         jvFRD5FpoYd9n1kPJUaQmjwzz8ict8ICq8q7ft3k6SpBD8JDFtCmEF9reoBnOnwZ8Prj
         Xglg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j1omKszLA96uDrGntnvvvB8tgKEGENuOVwCJ29kc0wQ=;
        b=plBUARkcTkBPzbePrcF94RdouM0frddMP9XpikbiYk++AOrITmOB9Yq5f3UCjIiyk2
         UmIX/+iBZ88H1o4pH0SZkljmcS+ma1ZgyXG0PU6IMn3OKoise+wXBtb8CaA1buIB7OVh
         2Bqy+fRbhuxtO4I8WcdOpYGPrPrJogJ0PvET/Q1pNZtQ6hfQMTJeoBk5ZcpSfMIEB1Ka
         NfgPk4QIVHjXgYVvB5E9kC7dLe95hjFxaQjudPskeQKBg+oyUyGjroKHN9G9OZqzdbZP
         eyPkRLEfr+/7eYLHagfDxlXUbJR2UAHXicsA5kUcCAEU8s/HraPQfUnFW78L+HMOiHG9
         6X8w==
X-Gm-Message-State: AOAM531Jm7MNZskZMmagd13ivdYxs7wUuF6MGfE4SdK/YOfI1f8oI3At
        /Y5TwaY3s1ACBJa33MOHrXCY6rlMrjdSVue2dbw5uA==
X-Google-Smtp-Source: ABdhPJwi3BsgWop/FymmZElECT1X2KqUjB7rfX7hjzyL3qQMDHaQuzKORjxJqwkf0XhL3JEvQDhLDk8MGXWhEfUtf9M=
X-Received: by 2002:ac8:5b0d:: with SMTP id m13mr806896qtw.364.1625157580768;
 Thu, 01 Jul 2021 09:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210630133149.3204290-1-dmitry.baryshkov@linaro.org>
 <20210630133149.3204290-2-dmitry.baryshkov@linaro.org> <CAPDyKFpXD3rCmp53LFFYky_xQv9ucofvTezG5qWyDZt427chNQ@mail.gmail.com>
In-Reply-To: <CAPDyKFpXD3rCmp53LFFYky_xQv9ucofvTezG5qWyDZt427chNQ@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 1 Jul 2021 19:39:29 +0300
Message-ID: <CAA8EJpob=TpXiJozac-5sKJzE71ddWRFDj7D2-F=W=a2mgKvxA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: clock: qcom,dispcc-sm8x50: add mmcx
 power domain
To:     Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 1 Jul 2021 at 19:17, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Wed, 30 Jun 2021 at 15:31, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On sm8250 dispcc requires MMCX power domain to be powered up before
> > clock controller's registers become available. For now sm8250 was using
> > external regulator driven by the power domain to describe this
> > relationship. Switch into specifying power-domain and required opp-state
> > directly.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/clock/qcom,dispcc-sm8x50.yaml    | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > index 0cdf53f41f84..48d86fb34fa7 100644
> > --- a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > +++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > @@ -55,6 +55,16 @@ properties:
> >    reg:
> >      maxItems: 1
> >
> > +  power-domains:
> > +    description:
> > +      A phandle and PM domain specifier for the MMCX power domain.
> > +    maxItems: 1
> > +
>
> Should you perhaps state that this is a parent domain? Or it isn't?
>
> Related to this and because this is a power domain provider, you
> should probably reference the common power-domain bindings somewhere
> here. Along the lines of this:
>
> - $ref: power-domain.yaml#
>
> As an example, you could have a look at
> Documentation/devicetree/bindings/power/pd-samsung.yaml.

I'll take a look.

>
> > +  required-opps:
> > +    description:
> > +      Performance state to use for MMCX to enable register access.
> > +    maxItems: 1
>
> According to the previous discussions, I was under the assumption that
> this property belongs to a consumer node rather than in the provider
> node, no?

It is both a consumer and a provider. It consumes SM8250_MMCX from
rpmhpd and provides MMSC_GDSC.

>
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -64,6 +74,15 @@ required:
> >    - '#reset-cells'
> >    - '#power-domain-cells'
> >
> > +# Either both properties are present or both are absent
> > +dependencies:
> > +  power-domains:
> > +    required:
> > +      - required-opps
> > +  required-opps:
> > +    required:
> > +      - power-domains
> > +
> >  additionalProperties: false
> >
> >  examples:
> > --
> > 2.30.2
> >
>
> Kind regards
> Uffe



-- 
With best wishes
Dmitry
