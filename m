Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3442DC18B
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 14:48:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726357AbgLPNrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 08:47:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726397AbgLPNru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 08:47:50 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65031C061285
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 05:47:05 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id h205so4941806lfd.5
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 05:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=CeENVEIfDymQxQudM/bI1nkvxDrZ35nPOZbVCaxxlZk=;
        b=u8fZ7Ygk5wERf1LP/tQE4Vp67N3ZFMVWEkLPPfqhwX8sdVy4zriIXcl/cJhodQt2Is
         Y2ma9bNpSW7WHF+Drui79xacdj5qMnc6sOLkYI3QONNQddZgDIp6SKhsa6m7lUBZqJUz
         EisDMSmB2JVZr/vxXHUiHGpzpMx0Xc2Rrki0TR9nDx12rwpt52P6L7Zx4Sn4qz+7bv2L
         Ron4wBdGSGeWRJo7KMeFLaxherwB6VmmK5Ee4wCn+/GOSvVSe/ctRw/xumVoSgb5WRGk
         K11d3DbE1y5F5uC8rB9zYZ2dc1BgnZVee2BYy62o0YptUp7h2Jilx4ChhqagkzL3Gwyq
         a/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=CeENVEIfDymQxQudM/bI1nkvxDrZ35nPOZbVCaxxlZk=;
        b=V56VchhanK1gR6O53b/WfOK+lChiNlOtrwivFoL+y1TDO4YcPH4+Prd1BA4rQJUqch
         e80XYx4oplbByatI5iuw+GcmkvyjxoPYGa1grToTtRcnWB4Hsjq6tbBNWSS5rut0R9l8
         tbcGGpz92SbaAApGixhq3yIGExXLPXhnZk+Sb4YHTo63NkyLnZBuVZHoC66ojQ3V4uQJ
         8PrA4yC68trMrjgef1wGFiQmEm0nvWY2RuNWzHnxQ0wJa5sJc+wm3T48fF/sVA1hpW9s
         j7phbPts2EoIcF2dXBNOCSLh6DZSGDFpMokZ25h10dwrZgxfevYcBEMJO841iJDV450z
         G8EQ==
X-Gm-Message-State: AOAM532XMnUa96mTLYHQcfMNabY4umilBG51SYJhKAu/d6p5HQDIDEW7
        6oRFwDWFg7i8OXNPUmn4TCU6cw==
X-Google-Smtp-Source: ABdhPJy/HWGKzDxwhLhA1XPjM9guSooEm6cCqtD6fs51ryScTvUkDBCud8DD+C0L2Nqvg0N+vy0kiQ==
X-Received: by 2002:ac2:4bc1:: with SMTP id o1mr12869926lfq.232.1608126422426;
        Wed, 16 Dec 2020 05:47:02 -0800 (PST)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
        by smtp.gmail.com with ESMTPSA id u8sm290407ljj.1.2020.12.16.05.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Dec 2020 05:47:01 -0800 (PST)
Date:   Wed, 16 Dec 2020 14:46:59 +0100
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20201216134659.GA4146223@jade>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-2-sudeep.holla@arm.com>
 <20201214220107.GA2430387@robh.at.kernel.org>
 <20201216122408.2fhubdyqm2ofpgc3@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201216122408.2fhubdyqm2ofpgc3@bogus>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 12:24:08PM +0000, Sudeep Holla wrote:
> On Mon, Dec 14, 2020 at 04:01:07PM -0600, Rob Herring wrote:
> > On Fri, Dec 04, 2020 at 12:11:31PM +0000, Sudeep Holla wrote:
> > > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > > partitions in the discovery API, we need to specify the UUID of the
> > > partitions that need to be accessed by drivers within the kernel.
> > > 
> > > This binding to provide the list of partitions that kernel drivers
> > > may need to access.
> > > 
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  .../devicetree/bindings/arm/arm,ffa.yaml      | 58 +++++++++++++++++++
> > >  1 file changed, 58 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > > new file mode 100644
> > > index 000000000000..a014a5801c34
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > > @@ -0,0 +1,58 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/arm,ffa.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Arm Firmware Framework for Arm v8-A (in-kernel users)
> > > +
> > > +maintainers:
> > > +  - Sudeep Holla <sudeep.holla@arm.com>
> > > +
> > > +description: |
> > > +  Firmware frameworks implementing partition according to the FF-A
> > > +  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
> > > +  Framework for Arm v8-A") [0], providing services to be used by other
> > > +  partitions.
> > > +
> > > +  [0] https://developer.arm.com/docs/den0077/latest
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: ffa
> > > +
> > > +  compatible:
> > > +    oneOf:
> > > +      - const: arm,ffa-1.0
> > > +
> > > +patternProperties:
> > > +  "^ffa_partition[0-9]+$":
> > > +    type: object
> > > +    description: One or more child nodes, each describing an FFA partition.
> > > +    properties:
> > > +      $nodename:
> > > +        const: ffa_partition
> > > +
> > > +      compatible:
> > > +        oneOf:
> > > +          - const: arm,ffa-1.0-partition
> > > +
> > > +      uuid:
> > > +        $ref: '/schemas/types.yaml#definitions/string'
> > > +        description: |
> > > +          The 128-bit UUID [2] of the service implemented by this partition.
> > > +
> > > +          [2] https://tools.ietf.org/html/rfc4122
> > 
> > UUIDs are actually a known thing in json-schema with 'format: uuid'. 
> > The meta-schema will probably reject that, so we'll need to add support 
> > to dtschema. Maybe it should be a new definition to reference.
> >
> 
> Ah OK, I will try that and ask for help if I am stuck as I am still trying
> to learn these, not there yet 😄 
> 
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    ffa {
> > > +      compatible = "arm,ffa-1.0";
> > > +
> > > +      ffa_partition0 {
> > > +        compatible = "arm,ffa-1.0-partition";
> > > +        uuid = "12345678-9abc-def0-1234-56789abcdef0";
> > > +      };
> > > +    };
> >
> > This could all be simplified down to just a single property:
> >
> 
> Thanks for the suggestion, I would love this to force spec authors to
> stop relying on DT and add whatever needed in future to the spec as part
> of discovery APIs.
> 
> > arm,ffa-partitions = "12345678-9abc-def0-1234-56789abcdef0", 
> > 	"12345678-9abc-def0-1234-56789abcdef1"
> > 	"12345678-9abc-def0-1234-56789abcdef2";
> >
> > Obviously, that's not extensible, but do we need it to be?
> >
> 
> I prefer if we don't, but I will run this through spec authors so that
> they are aware of what we will do in DT which means they *have* to
> incorporate any future needs into the spec discovery apis.

Speaking of discovery apis, doesn't the FF-A spec already have that?
Or am I missing something?

Cheers,
Jens

> 
> Ah I forgot the spec author is cc-ed. @Achin please shout if you see
> issues with this approach.
> 
> --
> Regards,
> Sudeep
