Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F03F5528DE2
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 21:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244409AbiEPTXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 15:23:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242110AbiEPTXF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 15:23:05 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68991ADAD
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 12:23:04 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id w123so19842246oiw.5
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 12:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=3+ILikSdsnfT9ktihZ+njcMiBi6avoeWbTpOVrY1NxM=;
        b=m8Od8lrXE/NoExJmTS7XYRL0JEh+rwgZMGX6AMz7iGgPCJc+7D9DU49rvjnaOgoaSu
         1G0dIbZbcsjRTfCHNk3yV9IwLJlxvC01/HihdispeZ/uNg8WgXECd9mxIK5QBKHx8kb2
         uE6ftP61i4XGhdJd+DVeLgywcC9UVbt3gWTZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=3+ILikSdsnfT9ktihZ+njcMiBi6avoeWbTpOVrY1NxM=;
        b=3Pfo04szq8KXEY3FxMjwogBQOg9h+5QMLL67cjtBkx4KQHEKxbxpRP+5Tv7pfghmCR
         HAjqXoetwWFUQ0/VhM8veC+83WDltMvwiq0A9QYGlWn67RxW4eAKcQDiP/kKVDbyAKbZ
         kOkYC7/PwIbMzd2oz7VNEa7nZX3runLlEXXIpsktgyKTVbZCu9ut7+NAMAIsk0HPhFPK
         uKlXKObrN1BvWvu5d5jTN2aAvjXr7avPjAY3D2R8Z4b6kIqcANBAUi0ZmZn8EoYuAJli
         86ms/N5KcibkOBCL3K+d9r+shkgbCePsjmFjbZIdsJmrlmw+Vw0CkdepGUzmszGRE/r5
         HM9A==
X-Gm-Message-State: AOAM530wntupPgDyKrLQCiX9GvtF+8hbRlXmb2ACaBWUXv4nk3yUdOy1
        /4XrSuT9X5NqSdyxjsA6TDqNydY1U1J+cmSlSCMKFw==
X-Google-Smtp-Source: ABdhPJyvNeXlbvxsN4Ayayznt+WzvPNN7/UsJfK9N/bTxb48FVDCVCp9ZryMgViVY+QlGSrW/dp0YsJFpfAHJoPOIhk=
X-Received: by 2002:a05:6808:23c3:b0:326:bd8d:7993 with SMTP id
 bq3-20020a05680823c300b00326bd8d7993mr8665634oib.63.1652728984111; Mon, 16
 May 2022 12:23:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 16 May 2022 12:23:03 -0700
MIME-Version: 1.0
In-Reply-To: <20220516152003.GB2659134-robh@kernel.org>
References: <20220512013921.164637-1-swboyd@chromium.org> <20220512013921.164637-4-swboyd@chromium.org>
 <20220516152003.GB2659134-robh@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 16 May 2022 12:23:03 -0700
Message-ID: <CAE-0n53p1mKME=vfed2SB7UXrg9K+-vbp6JPHJBchJc-Pp1Hgg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] dt-bindings: cros-ec: Add ChromeOS fingerprint binding
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2022-05-16 08:20:03)
> On Wed, May 11, 2022 at 06:39:21PM -0700, Stephen Boyd wrote:
> > diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > index 409ecef967ce..e5fe60beb9fe 100644
> > --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > @@ -19,15 +19,19 @@ description:
> >  properties:
> >    compatible:
> >      oneOf:
> > -      - description:
> > -          For implementations of the EC is connected through I2C.
> > -        const: google,cros-ec-i2c
> > -      - description:
> > -          For implementations of the EC is connected through SPI.
> > -        const: google,cros-ec-spi
> > -      - description:
> > -          For implementations of the EC is connected through RPMSG.
> > -        const: google,cros-ec-rpmsg
> > +      # For implementations of the EC is connected through I2C.
>
> Using 'description' was preferred.

I just learned that I should use anyOf instead of oneOf. Confusing!

>
> > +      - items:
> > +          - const: google,cros-ec-i2c
> > +      # For implementations of the FPMCU connected through SPI.
> > +      - items:
> > +          - const: google,cros-ec-fp
> > +          - const: google,cros-ec-spi
> > +      # For implementations of the EC is connected through SPI.
> > +      - items:
> > +          - const: google,cros-ec-spi
> > +      # For implementations of the EC is connected through RPMSG.
> > +      - items:
> > +          - const: google,cros-ec-rpmsg
> >
> >    controller-data:
> >      description:
> > @@ -176,6 +189,37 @@ allOf:
> >          - reg
> >          - interrupts
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: google,cros-ec-fp
> > +    then:
> > +      properties:
> > +        '#address-cells': false
> > +        '#size-cells': false
> > +        typec: false
> > +        ec-pwm: false
> > +        keyboard-controller: false
> > +        proximity: false
> > +        codecs: false
> > +        cbas: false
> > +
> > +      patternProperties:
> > +        "^i2c-tunnel[0-9]*$": false
> > +        "^regulator@[0-9]+$": false
> > +        "^extcon[0-9]*$": false
>
> Is the list of what's allowed shorter? If so, you could list those
> properties and use 'additionalProperties: false'.

Yes.

>
> Or maybe this is a sign that this should be a separate schema document.

I couldn't figure that out. I tried to add new properties here but it
didn't work. And then when I tried to make a different schema document
it complained that the example for google,cros-ec-spi in here had a
problem. Can properties be defined in this section? Or only listed and
then additionalProperties be marked false?
