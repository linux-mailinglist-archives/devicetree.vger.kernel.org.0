Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EAC11CF206
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 11:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728416AbgELJ7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 05:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725889AbgELJ7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 May 2020 05:59:06 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66848C061A0C
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 02:59:04 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id h26so10035609lfg.6
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 02:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WXd5QHwJ1tPi5716Xcmxn3FGS3giieue5uSgZlXtiWg=;
        b=eF4UZfPdwxY2kcJ3SbBcXESksctSLMe0oyp3Dqb6rpox9rfOdE5TWSXlhLeZ7WVuJu
         K9EZyurUt4GoHXQGQJ/s/OIEAI31LdtzoB4OLI3c504mIW9b3C07x0rNyN/WpEEkui5z
         VayR7QZBrGhhSxZ7mnv/UaXebyvcd/obTk6ROY/uR8l1vWjvlXye4pt4sY7vBX1vTxHl
         lQlCW8H2SUcm6avA6W8stsSGIosReXoSyNmTLwiN8IH+JEk8cfxsp0MNEE4UFeELbKri
         KVXEW3tiDJ6y1cjGXzsEfdg4CZr29OfRHfERGPeFut8XyeYZP8PWMVEK0wlzjsF6ZOtf
         WWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WXd5QHwJ1tPi5716Xcmxn3FGS3giieue5uSgZlXtiWg=;
        b=FP5y85sWBKd4DvJDJQ7ELcKSekIyAmtFHqsrWXLS1H1xqbOwjsJlTScJYM7imyjqKz
         V5QR9iYbn8lTxjHjm9llIpJuRktqClohojMPmAt/wlvGN1pX4sBmbLAUT8cPrQ9JyORN
         5RQDNIj8As3kG7R4tp/DyGuyY1L5UsDvryT8mhZg5tHl7/R7Nc6l0GE+HpFSVGsHXQl4
         B0DplOkAd8lEmKqqVFOh9efli9MbX6oyiMb+UWyEag/MCcEWk8hrUE7ZI80z1TG1MwHj
         O7c3UVVbw5P2jINbwosNC9EvqyQNQKIg+MQRBAHJ4e2Q65ggqR9esWrrtY50g5YsBuNW
         wjLg==
X-Gm-Message-State: AOAM533mmuYzUnu2cvZN5mEGGgmxb6ibx2n3BIctoh1qmmNAp4b8bgRI
        CBke4pM7V0/X+9lqa6nQpR/D11wGD34jwd8kXjnWyA==
X-Google-Smtp-Source: ABdhPJyBq7To18Sh0+GIDcFRF81NKkhoFYKeSr+78ZnK/tfcB+M6Xqf+HgiWU5Chhbq4xITdhpfrF18M/MgtiTWvtZ0=
X-Received: by 2002:ac2:555b:: with SMTP id l27mr14203108lfk.170.1589277541973;
 Tue, 12 May 2020 02:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200508134527.26555-1-etienne.carriere@linaro.org> <CAL_JsqJVaWDYZWwRwotSQyaL5bOugM3judxipS9oKveV3FdK8w@mail.gmail.com>
In-Reply-To: <CAL_JsqJVaWDYZWwRwotSQyaL5bOugM3judxipS9oKveV3FdK8w@mail.gmail.com>
From:   Etienne Carriere <etienne.carriere@linaro.org>
Date:   Tue, 12 May 2020 11:58:50 +0200
Message-ID: <CAN5uoS8GzbFyQq=kjZuxNwBDJ8cn9q-sq8C=VLN5UWWD0HXWaA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: nvmem: stm32: new property for data access
To:     Rob Herring <robh+dt@kernel.org>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org,
        Fabrice Gasnier <fabrice.gasnier@st.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Etienne Carriere <etienne.carriere@st.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob,


On Tue, 12 May 2020 at 03:51, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, May 8, 2020 at 8:47 AM Etienne Carriere
> <etienne.carriere@linaro.org> wrote:
> >
> > From: Etienne Carriere <etienne.carriere@st.com>
> >
> > Introduce boolean property st,non-secure-otp for OTP data located
> > in a factory programmed area that only secure firmware can access
> > by default and that shall be reachable from the non-secure world.
> >
> > Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> > ---
> >  .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> > index d84deb4774a4..c11c99f085d7 100644
> > --- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> > +++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> > @@ -24,6 +24,18 @@ properties:
> >        - st,stm32f4-otp
> >        - st,stm32mp15-bsec
> >
> > +patternProperties:
> > +  "^.*@[0-9a-f]+$":
> > +    type: object
> > +
> > +    properties:
> > +      st,non-secure-otp:
> > +        description: |
> > +          This property explicits a factory programmed area that both secure
> > +          and non-secure worlds can access. It is needed when, by default, the
> > +          related area can only be reached by the secure world.
> > +        type: boolean
> > +
> >  required:
> >    - "#address-cells"
> >    - "#size-cells"
> > @@ -41,6 +53,11 @@ examples:
> >        calib@22c {
> >          reg = <0x22c 0x2>;
> >        };
> > +
> > +      mac_addr@e4 {
> > +        reg = <0xe4 0x8>;
> > +        st,non-secure-otp;
>
> This fails validation. You need to drop 'additionalProperties' in nvmem.yaml.

My apologies. I guess I did not test `dt_binding_check` on this change.
I'll send a v2.

Regards,
Etienne

>
> Rob
