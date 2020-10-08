Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7CF4286C20
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 02:43:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727861AbgJHAni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 20:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727732AbgJHAng (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 20:43:36 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5633EC061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 17:43:34 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id s15so2177707vsm.0
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 17:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s1vFaQwEYAj+kfpG7wmgAvUX+m94PjPvEEFq0pb+beU=;
        b=Wp5sVtYz9RFuTf8HwWQcjRqk2whZSdWTSRmHelxkoLivWhEMRrU80IIg0ORfASmxcF
         Ds2gAwd6GPVZHTi/jSu3NlpIeC4hjGoeQIyn5acmCD0zUs8scF+bGfKwqLd2r3XhPu1M
         ogURv6eN7z1wFOaBtykUW+a7yfiKds6xXU3Y3C1Ao18Q1zmYxBy6YSU06qV996aDEVBU
         nzriS/au8lNLN/M3eaZWcLp9AMuLe8B/V4YNR3PGTIEQXYIU0XQrTnB3qmBuAZEzch8D
         i+qDFMouMGrrxDkWn8dGpbnf8TguzX5KTzBv7yTMa81v5/14Ac4UNNCXox5W8DI/tEMA
         XEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s1vFaQwEYAj+kfpG7wmgAvUX+m94PjPvEEFq0pb+beU=;
        b=AOqRj3KQYNtorJNcK0M0Sl/f8uX7vjrTOc6lmEjpPH5Xng3aVnWgbUQMmYtmFYKCXr
         G5PsbSezpQjMYJdTJ5qDCmKpoJs7ZkBpw49sLpWOFmlhwbHBg314BL9ofQWC/cLGcpSj
         dUc60VlxO98lSXrwUSQ/LO7UW/m+OK8MkbMXMhAjIRBCeLu61nji7HfDsvjfCTLmxJib
         YF5IcoljdnE7DKfAKm9ZfFnauYP9hhShvHdK5/TplcsBqQp1lovYYylvofTpXc4w3WNf
         wr/8SN0vU7PS2RkHJAyBIE/JHI8+Bxts1iZ+T4eD/hicyj94goHaz+p6LfScIIYYrM5J
         yaDQ==
X-Gm-Message-State: AOAM5321lF7uHm5jGDIcgS5JUVqi2a+2FLXtyNqtQYb8mtXoXeo+YAPB
        OuLwM6UWFMOAJMlD84AeariI9s4Qgtx2ETf05RA8pA==
X-Google-Smtp-Source: ABdhPJz+HZTLyoGMy4yKKuwstafPHRZcaQ9eu/Qk3P+I6Eahit+EF/pbkIYjvwdX4S62JcdOrVR2+idvgFxLuQUKg40=
X-Received: by 2002:a67:ee1a:: with SMTP id f26mr3620209vsp.48.1602117813213;
 Wed, 07 Oct 2020 17:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200929024004.244992-1-badhri@google.com> <20200929024004.244992-4-badhri@google.com>
 <20201005144618.GA154206@bogus>
In-Reply-To: <20201005144618.GA154206@bogus>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Wed, 7 Oct 2020 17:42:57 -0700
Message-ID: <CAPTae5+e74k22Vcf-cnFLFGnR-mBdb9qvN6i-E-31VexhpUSeA@mail.gmail.com>
Subject: Re: [PATCH v9 03/15] dt-bindings: usb: Maxim type-c controller device
 tree binding document
To:     Rob Herring <robh@kernel.org>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        USB <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Robb,

Thanks for the reviews ! Responses inline.

Regards,
Badhri

On Mon, Oct 5, 2020 at 7:46 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Sep 28, 2020 at 07:39:52PM -0700, Badhri Jagan Sridharan wrote:
> > Add device tree binding document for Maxim TCPCI based Type-C chip driver
> >
> > Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> > ---
> > Changes since v1:
> > - Changing patch version to v6 to fix version number confusion.
> >
> > Changes since v6:
> > - Migrated to yaml format.
> >
> > Changes since v7:
> > - Rebase on usb-next
> >
> > Changes since v8:
> > - Fix errors from make dt_binding_check as suggested by
> >   Rob Herring.
> > ---
> >  .../devicetree/bindings/usb/maxim,tcpci.yaml  | 68 +++++++++++++++++++
> >  1 file changed, 68 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/maxim,tcpci.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/usb/maxim,tcpci.yaml b/Documentation/devicetree/bindings/usb/maxim,tcpci.yaml
> > new file mode 100644
> > index 000000000000..f4b5f1a09b98
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/maxim,tcpci.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/usb/maxim,tcpci.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Maxim TCPCI Type-C PD controller DT bindings
> > +
> > +maintainers:
> > +  - Badhri Jagan Sridharan <badhri@google.com>
> > +
> > +description: Maxim TCPCI Type-C PD controller
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - maxim,tcpci
>
> Is there a datasheet for this? Searching for 'tcpci' doesn't really come
> up with anything other than this patch. Only chip I found is MAX77958.
> Bindings are for specific h/w devices.

Unfortunately the datasheet cannot be made public yet. Has the datasheet
have to be made public before sending the bindings ?

>
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  connector:
> > +    type: object
> > +    $ref: ../connector/usb-connector.yaml#
> > +    description:
> > +      Properties for usb c connector.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
>
> additionalProperties: false

ACK. Adding to the next version of the patch.

>
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/usb/pd.h>
> > +    i2c0 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        maxtcpc@25 {
> > +            compatible = "maxim,tcpc";
> > +            reg = <0x25>;
> > +            interrupt-parent = <&gpa8>;
> > +            interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> > +
> > +            connector {
> > +                compatible = "usb-c-connector";
> > +                label = "USB-C";
> > +                data-role = "dual";
> > +                power-role = "dual";
> > +                try-power-role = "sink";
> > +                self-powered;
> > +                op-sink-microwatt = <2600000>;
> > +                source-pdos = <PDO_FIXED(5000, 900,
> > +                                         PDO_FIXED_SUSPEND |
> > +                                         PDO_FIXED_USB_COMM |
> > +                                         PDO_FIXED_DATA_SWAP |
> > +                                         PDO_FIXED_DUAL_ROLE)>;
> > +                sink-pdos = <PDO_FIXED(5000, 3000,
> > +                                       PDO_FIXED_USB_COMM |
> > +                                       PDO_FIXED_DATA_SWAP |
> > +                                       PDO_FIXED_DUAL_ROLE)
> > +                                       PDO_FIXED(9000, 2000, 0)>;
> > +            };
> > +        };
> > +    };
> > +...
> > --
> > 2.28.0.709.gb0816b6eb0-goog
> >
