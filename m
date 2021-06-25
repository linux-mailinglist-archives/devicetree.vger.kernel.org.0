Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04DE43B44D6
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 15:51:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbhFYNx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 09:53:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbhFYNx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 09:53:57 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5EF0C061766
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 06:51:36 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id t19-20020a17090ae513b029016f66a73701so8002065pjy.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 06:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gOFfzzfB3icWGJyf7fd7qOAkUBx8OfOCfNvo7lnaGYw=;
        b=YM80se/wfZcmjIUdSKV47UrLjX0M4qEqOF+kSIH9NkEhkj0yQiBb7w4qYWVko38Po0
         +UcQV6+bQAwiG0LlFHrtwIR6WQ8ib+jtJw3sE2sCTWGz5LI71qoT1WOs1UoblBmHoSvd
         nEtaUVmFlrU9gZGzrJIt6+TPwwXmub1PBArekQu22fZbwy+/GLqObMyYgtdx9t7n4ElA
         UMIw+NQu/OK6eZWTIbF7HQsBks+i7bl4iLg7NWfGjahETY4p8bNUFa2ZIKGy+UUFKPNu
         3fzQHaMHzYAnYEkhhUxWvrLbtZNnQbPWSRUiBzWbeEZK4YhcuDY6XGoYVaRjd6KcJ1ks
         c7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gOFfzzfB3icWGJyf7fd7qOAkUBx8OfOCfNvo7lnaGYw=;
        b=AbnB8DaMc7DYzP8AQhCqB3Mp8k6//OOy85fvzNLB/PyviPZoWq0YDZLBEUfFplM189
         jbN3tI3yj68kOfTwAssX40unLAOsR91sx+EztROOhkV+5JmnXoGXA8T4dtoLQAaiZGgj
         ypcV9dpx1vC+wnF3RDAlZvl1zZf9O3mw5GVlE0lerkozvvGrprIr+XhKNlqf6yJleDJo
         gp988MRiNMzkD+JqGhOobqgh4vy8vgCi9aKHcb67fL2FSqbXnme7jYRd+xyaFXFu/dlh
         +GUsK5YzUqui76gv9DrfbzDF7VS7st71U+FY4RJf+LhYHG0CZD5+TC3akM+AG/mI3IMk
         dqUw==
X-Gm-Message-State: AOAM532BZ4UfHqN8K1B7UzKew5BRsUYKRuGB/HbhCCXg57biNlE8hJx4
        rR5PfUs1nWexmLxbsCT4q7qJEeIfOVuY+WEvTrlQCw==
X-Google-Smtp-Source: ABdhPJxQYINbrnkbID4F3k8iJOHCoCXHacOfFXlPSJpossaqYKp4Q8nwrksZOualbPoua2Grp4gvm+09tDaR1QbMJAU=
X-Received: by 2002:a17:90a:c394:: with SMTP id h20mr20745388pjt.222.1624629096164;
 Fri, 25 Jun 2021 06:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210616141107.291430-1-robert.foss@linaro.org>
 <20210616141107.291430-6-robert.foss@linaro.org> <20210624211844.GA1997615@robh.at.kernel.org>
In-Reply-To: <20210624211844.GA1997615@robh.at.kernel.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 25 Jun 2021 15:51:24 +0200
Message-ID: <CAG3jFyv3aMt-P+vCExhncBR4n1xYKARhAoO_m+9xsqhp2nwarg@mail.gmail.com>
Subject: Re: [RFC v1 05/11] dt-bindings: clock: Add QCOM SM8350 display clock bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Taniya Das <tdas@codeaurora.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Vinod Koul <vinod.koul@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Jun 2021 at 23:18, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jun 16, 2021 at 04:11:01PM +0200, Robert Foss wrote:
> > Add device tree bindings for display clock controller for
> > Qualcomm Technology Inc's SM8350 SoC.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >  .../bindings/clock/qcom,dispcc-sm8x50.yaml    |  6 +-
> >  .../dt-bindings/clock/qcom,dispcc-sm8350.h    | 77 +++++++++++++++++++
> >  2 files changed, 81 insertions(+), 2 deletions(-)
> >  create mode 100644 include/dt-bindings/clock/qcom,dispcc-sm8350.h
> >
> > diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > index 0cdf53f41f84..c10eefd024f6 100644
> > --- a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > +++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > @@ -4,24 +4,26 @@
> >  $id: http://devicetree.org/schemas/clock/qcom,dispcc-sm8x50.yaml#
> >  $schema: http://devicetree.org/meta-schemas/core.yaml#
> >
> > -title: Qualcomm Display Clock & Reset Controller Binding for SM8150/SM8250
> > +title: Qualcomm Display Clock & Reset Controller Binding for SM8150/SM8250/SM8350
> >
> >  maintainers:
> >    - Jonathan Marek <jonathan@marek.ca>
> >
> >  description: |
> >    Qualcomm display clock control module which supports the clocks, resets and
> > -  power domains on SM8150 and SM8250.
> > +  power domains on SM8150, SM8250 and SM8350.
> >
> >    See also:
> >      dt-bindings/clock/qcom,dispcc-sm8150.h
> >      dt-bindings/clock/qcom,dispcc-sm8250.h
> > +    dt-bindings/clock/qcom,dispcc-sm8350.h
> >
> >  properties:
> >    compatible:
> >      enum:
> >        - qcom,sm8150-dispcc
> >        - qcom,sm8250-dispcc
> > +      - qcom,sm8350-dispcc
> >
> >    clocks:
> >      items:
> > diff --git a/include/dt-bindings/clock/qcom,dispcc-sm8350.h b/include/dt-bindings/clock/qcom,dispcc-sm8350.h
> > new file mode 100644
> > index 000000000000..361ef27de585
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/qcom,dispcc-sm8350.h
> > @@ -0,0 +1,77 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> I'm tired of saying this for QCom bindings given it's been QCom I've
> gotten complaints on DT licensing, but dual license please. Spread the
> word.
>
> I'm sure if someone audited licenses of headers and dts files they'd
> find a mess.

Thanks for pointing this out. I'll keep an eye out and change it to
(GPL-2.0-only OR BSD-2-Clause).
