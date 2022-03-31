Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65C724EE26B
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 22:12:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241288AbiCaUNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 16:13:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231410AbiCaUNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 16:13:39 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 495251C405F
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 13:11:50 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id m30so1332228wrb.1
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 13:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jV2wOLp9BmusE6pAb/TmAA+lgOQxLqgNkv2OV7Oa6iQ=;
        b=fKLnujCYuNQ5MRXULPczqOHbF7auF7w9aemFefow0YsuKIoykN0fTbVTIaXjWDdcEn
         95/GkQqjPK+H8keNjflM+foGbLlk0p8qI/1JrguJKJ+l3Nr50VrRdkf2qIWYozxQXDyj
         544aPblGxXpOplGFUcIVDKYsUfp3DFBpdKyvbAfW6Aq3E7HD08roARpxZy+i4p2NuK7H
         VNvzR2u7ti/mC6ElPTU3Yuqha70Nc/uXcaMgBXo6MVNiMfTNRd1XltP+a5Xoqon2mXfP
         KDVbg4jX5FIafLWKVQ33AbbXwVh0vjUhbx2xy+YAbp6q6wkS6rZ33SNw50pOCbJLDJpk
         ORpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jV2wOLp9BmusE6pAb/TmAA+lgOQxLqgNkv2OV7Oa6iQ=;
        b=GPoIIk10eDX9Kgh6zgsk1dRVx/0lA9ebDw5HRYVXK9aveXAFJvQtaa2Ke4silMIZh5
         K7rWCGyZnhysDTQzzOm+J1td3ARdjA4RTm3Ff/SaTszxyizI7h2M9WTHyydk2RetKZq5
         ys2wbnLJqEGpzbh407Llf8mWqXzv0ydv8a4eViu/qh/CBTXHb8ZKgopA392be2LrAGIl
         9h1oTkcK4bjFk/NN2gh91yYW6rskkoLd16cpuvf9B2iSIVei6U0pSgdix2ptR3b6g9lF
         TcHRBoB7o0Ucup5lo4kaX56mdNBkeQ+r6Hr+Bajfc45geJCr22TpjCHokuO6YVfEcmOH
         1JQQ==
X-Gm-Message-State: AOAM531bpnuHFgurZw3itpoBL/7PuI6vc6QBEpvvqRcIWLkF4FNC8phn
        PyCpAm9F06bRCLNw1C+eEAx6yA==
X-Google-Smtp-Source: ABdhPJzCQTWPmosE1Ibmtzhd4PWcVNWVcQHfVXpUwkfAMuOU4asDc8DATTR1UOwpNecd4lUm0LmDgQ==
X-Received: by 2002:adf:f14e:0:b0:203:e049:6829 with SMTP id y14-20020adff14e000000b00203e0496829mr5056895wro.386.1648757508832;
        Thu, 31 Mar 2022 13:11:48 -0700 (PDT)
Received: from arch-thunder (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id 2-20020a056000154200b00203ee1fd1desm325268wry.64.2022.03.31.13.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 13:11:48 -0700 (PDT)
Date:   Thu, 31 Mar 2022 21:11:46 +0100
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Message-ID: <20220331201146.5auaglrviyco24cr@arch-thunder>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
 <20220330131053.1122502-2-rui.silva@linaro.org>
 <20220331164452.094a9308@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331164452.094a9308@donnerap.cambridge.arm.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andre,
Thanks for your review.

On Thu, Mar 31, 2022 at 04:44:52PM +0100, Andre Przywara wrote:
> On Wed, 30 Mar 2022 14:10:51 +0100
> Rui Miguel Silva <rui.silva@linaro.org> wrote:
> 
> Hi,
> 
> > Convert the smsc lan91c9x and lan91c1xx controller device tree
> > bindings documentation to json-schema.
> > 
> > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> > ---
> >  .../bindings/net/smsc,lan91c111.yaml          | 61 +++++++++++++++++++
> >  .../bindings/net/smsc-lan91c111.txt           | 17 ------
> >  2 files changed, 61 insertions(+), 17 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/net/smsc-lan91c111.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> > new file mode 100644
> > index 000000000000..1730284430bc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/smsc,lan91c111.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Smart Mixed-Signal Connectivity (SMSC) LAN91C9x/91C1xx Controller
> > +
> > +maintainers:
> > +  - Nicolas Pitre <nico@fluxnic.net>
> > +
> > +allOf:
> > +  - $ref: ethernet-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: smsc,lan91c111
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  reg-shift: true
> > +
> > +  reg-io-width:
> > +    enum: [ 1, 2, 4 ]
> 
> The old binding spoke of a possible mask, so you could have "6" here to
> signify that your hardware can do both 16 and 32-bit accesses, IIUC.
> And from quickly glancing through the Linux driver it seems to support
> this idea as well.
> So shall this be:
>        minimum: 1
>        maximum: 7
> instead?

I see your point, but going down that rabbit hole, in the smc91x.h
which define the macros for register access, I see, IIUC:
1. 8 or 16 bit access are mandatory (means value 4 only for
   reg-io-width is not valid)
2. All 8 and 16 bit are exclusive, so I think value 3 and 7 here
   don't make sense either.

So, possible values enum: [ 1, 2, 5, 6 ]

let me know your thoughts on this

Cheers,
   Rui
> 
> > +    default: 4
> 
> The old binding said: "If it's omitted or invalid, the size would be 2
> meaning 16-bit access only". That's also what the Linux driver implements.
> So this shall be: "default: 2" then?
> 
> > +
> > +  reset-gpios:
> > +    description: GPIO connected to control RESET pin
> > +    maxItems: 1
> > +
> > +  power-gpios:
> > +    description: GPIO connect to control PWRDEWN pin
> 
>                          connected
> 
> Rest looks fine to me, and passes dt_binding_check.
> 
> Cheers,
> Andre
> 
> > +    maxItems: 1
> > +
> > +  pxa-u16-align4:
> > +    description: put in place the workaround the force all u16 writes to be
> > +      32 bits aligned
> > +    type: boolean
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    ethernet@4010000 {
> > +          compatible = "smsc,lan91c111";
> > +          reg = <0x40100000 0x10000>;
> > +          phy-mode = "mii";
> > +          interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> > +          reg-io-width = <2>;
> > +    };
> > diff --git a/Documentation/devicetree/bindings/net/smsc-lan91c111.txt b/Documentation/devicetree/bindings/net/smsc-lan91c111.txt
> > deleted file mode 100644
> > index 309e37eb7c7c..000000000000
> > --- a/Documentation/devicetree/bindings/net/smsc-lan91c111.txt
> > +++ /dev/null
> > @@ -1,17 +0,0 @@
> > -SMSC LAN91c111 Ethernet mac
> > -
> > -Required properties:
> > -- compatible = "smsc,lan91c111";
> > -- reg : physical address and size of registers
> > -- interrupts : interrupt connection
> > -
> > -Optional properties:
> > -- phy-device : see ethernet.txt file in the same directory
> > -- reg-io-width : Mask of sizes (in bytes) of the IO accesses that
> > -  are supported on the device.  Valid value for SMSC LAN91c111 are
> > -  1, 2 or 4.  If it's omitted or invalid, the size would be 2 meaning
> > -  16-bit access only.
> > -- power-gpios: GPIO to control the PWRDWN pin
> > -- reset-gpios: GPIO to control the RESET pin
> > -- pxa-u16-align4 : Boolean, put in place the workaround the force all
> > -		   u16 writes to be 32 bits aligned
> 
