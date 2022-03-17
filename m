Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1E444DCDDD
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 19:47:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237574AbiCQStM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 14:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237573AbiCQStM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 14:49:12 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA9F0F4B
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:47:54 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id j83so6548602oih.6
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=7CADnSEG0Ti+iZs0qZN0+RxSMs7D+LGqsLl8TT3zRNs=;
        b=FsoaK5rHOjGKnfwXuR7QksXlDeTf304iw3gac11n78eywhTdJkBc5MlQwK4swUBBGl
         Bfkkx2W1SsdTrPN4oPmQCT5TFigNMnILYi80rI3Zz7ywLeEJgiS8kdBvn07A79qlpxkn
         6PA8n2WIH5pUB/Qn+VWg7zMULcwy8ee6Vv3MU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=7CADnSEG0Ti+iZs0qZN0+RxSMs7D+LGqsLl8TT3zRNs=;
        b=ilsP3R2kxlAdigIVUzQ+zKT2OTCx9b5YAoQJfdMwf6J9Mj8AWbWbufr10Cz+Sps3vz
         J6ecO12CRo2IVkbbxRuYhbOUzoyMD0z+VAUc8BctvEYp+FiG6fc8BJXIfkEqMDw7mJa/
         7H3kESS8rfaiovoRLmdb9d9rTlWdHV9YGVzGKTvqPc5ECWYWVarCX7x0qr2MWTOwZIQj
         xFN6mpYNa2512rs38vZ85ElkR5nyMSsp5ZK+QmheEjvbnALZv+SkSwxdlQSTte95UVhS
         r/PFSW3uKMaPWfmzV0aMOExhG9CBhqZ/hJUXVHyMuQYCzy5EfAcW7OW5Hof/XrAMLyZz
         7udQ==
X-Gm-Message-State: AOAM530fSLlf3OUAECYskTLfTChLyCzER440DsiX8mgK7i2SLXfkb0o8
        fJJYy9s+ug8tfKRBGe4wQ+lVbg473NJMT9B0+Y0nQw==
X-Google-Smtp-Source: ABdhPJxmh3VWKdUxkUJ5G7J7ZC7LdNnNqO3T16j7O27A4MHfMxte52Cb5CxAhXTH/hd/nEvGienS2Ync2mtbqFsMz2c=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr2573497oie.193.1647542874252; Thu, 17
 Mar 2022 11:47:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 17 Mar 2022 14:47:53 -0400
MIME-Version: 1.0
In-Reply-To: <3828e37f-f8e0-8473-537c-8e47cd5df8c6@kernel.org>
References: <20220317005814.2496302-1-swboyd@chromium.org> <20220317005814.2496302-2-swboyd@chromium.org>
 <3828e37f-f8e0-8473-537c-8e47cd5df8c6@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 17 Mar 2022 14:47:53 -0400
Message-ID: <CAE-0n536LcZcLFRhWr1k8yho0u_6FD1AtpPyZfv+Mmh17bGt5Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: chrome: Add ChromeOS fingerprint binding
To:     Benson Leung <bleung@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2022-03-17 02:34:31)
> On 17/03/2022 01:58, Stephen Boyd wrote:
> > Add a binding to describe the fingerprint processor found on Chromebooks
> > with a fingerprint sensor.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: <devicetree@vger.kernel.org>
> > Cc: Guenter Roeck <groeck@chromium.org>
> > Cc: Douglas Anderson <dianders@chromium.org>
> > Cc: Craig Hesling <hesling@chromium.org>
> > Cc: Tom Hughes <tomhughes@chromium.org>
> > Cc: Alexandru M Stan <amstan@chromium.org>
> > Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >  .../bindings/chrome/google,cros-ec-fp.yaml    | 85 +++++++++++++++++++
> >  1 file changed, 85 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml
> > new file mode 100644
> > index 000000000000..ba4212e6b583
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml
>
> Hm, so chrome starts to be its own subsystem? I see USB connector
> bindings are already there, instead of usb directory.
>
> Is there anything special about Chrome that it is equal to subsystem or
> architecture? Once second file ends up there, this will encourage more
> of such patterns.

I don't see a problem.

>
> > @@ -0,0 +1,85 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/chrome/google,cros-ec-fp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ChromeOS Embedded Fingerprint Controller
> > +
> > +description:
> > +  Google's ChromeOS embedded fingerprint controller is a device which
> > +  implements fingerprint functionality such as unlocking a Chromebook
> > +  without typing a password.
> > +
> > +maintainers:
> > +  - Tom Hughes <tomhughes@chromium.org>
> > +
> > +properties:
> > +  compatible:
> > +    const: google,cros-ec-fp
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  spi-max-frequency:
> > +    maximum: 3000000
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  reset-gpios: true
> > +  boot0-gpios:
> > +    maxItems: 1
> > +    description: Assert for bootloader mode.
> > +
> > +  vdd-supply: true
> > +
> > +  google,cros-ec-spi-pre-delay:
>
> Use proper unit suffix, so "-us". No need for type then.
>

This is copy pasted from the cros-ec binding and the driver is already
looking for this property. Given that, there's no need to have this here
right now as we can always add this to the binding when/if it is needed.
I mostly put this here for completeness. I'll remove it.
