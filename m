Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0679A4F6675
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238378AbiDFQ5w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 12:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238702AbiDFQ5j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 12:57:39 -0400
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46BDA1C8A82
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 07:21:10 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-de48295467so3054899fac.2
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 07:21:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ymW19zUY7oY1JfREVvUkLaLO/tdDA37oLJ1DxforImQ=;
        b=yBU7sp6R58FM7q9XdtiK4nQH7sszdHEzqfIdF9X1Va/9lc5N8s82Q3k95ylDTswTl9
         Cqb0AQsugMC1KzmkZG0WuCRcFQpMlv2MSyTdjh9IXlo4McTiS7hFqb0/mxnUdHuBhmYT
         MMBJmkE6zWVVwMeOcQsopJIg6XY9x1ucRkyKKzJt2olNVZ9N5ymU3hUZ0K+N6QZMEf8t
         DtlCUE4AJ5AIVC043PAS8kEaKZ7f2U5e0eGbKlJ1rw2/BdkE1mWXqQDFmh12ZmeR8Zkg
         t6rQbBOw3fD2gABi2WYRmUR1goj+g1BwQ+STuojvYQfjWp0m47DAAIGO6+KyACkCJX+h
         3q4Q==
X-Gm-Message-State: AOAM531ZMPocUlFAaczaaVhq9OM1kNqZ2zood6/wYsPMLSykFvfSqD0o
        0sipni90fZdIotHUZr+9Lg==
X-Google-Smtp-Source: ABdhPJzyNqrep7gR9T3glPA0f7KfAeNUoXLxUF+2MeeRX/DKjskq/qPwG7ysp3IJ8gwf7j2Q5/18wQ==
X-Received: by 2002:a05:6870:207:b0:db:f749:2936 with SMTP id j7-20020a056870020700b000dbf7492936mr4125176oad.274.1649254869433;
        Wed, 06 Apr 2022 07:21:09 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u22-20020a4ae696000000b0032158ab4ce9sm6151796oot.26.2022.04.06.07.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 07:21:08 -0700 (PDT)
Received: (nullmailer pid 2189962 invoked by uid 1000);
        Wed, 06 Apr 2022 14:21:08 -0000
Date:   Wed, 6 Apr 2022 09:21:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Message-ID: <Yk2h1IMeT7G+BJOH@robh.at.kernel.org>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
 <20220330131053.1122502-2-rui.silva@linaro.org>
 <20220331164452.094a9308@donnerap.cambridge.arm.com>
 <20220331201146.5auaglrviyco24cr@arch-thunder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331201146.5auaglrviyco24cr@arch-thunder>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 31, 2022 at 09:11:46PM +0100, Rui Miguel Silva wrote:
> Hi Andre,
> Thanks for your review.
> 
> On Thu, Mar 31, 2022 at 04:44:52PM +0100, Andre Przywara wrote:
> > On Wed, 30 Mar 2022 14:10:51 +0100
> > Rui Miguel Silva <rui.silva@linaro.org> wrote:
> > 
> > Hi,
> > 
> > > Convert the smsc lan91c9x and lan91c1xx controller device tree
> > > bindings documentation to json-schema.
> > > 
> > > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> > > ---
> > >  .../bindings/net/smsc,lan91c111.yaml          | 61 +++++++++++++++++++
> > >  .../bindings/net/smsc-lan91c111.txt           | 17 ------
> > >  2 files changed, 61 insertions(+), 17 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/net/smsc-lan91c111.txt
> > > 
> > > diff --git a/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> > > new file mode 100644
> > > index 000000000000..1730284430bc
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> > > @@ -0,0 +1,61 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/net/smsc,lan91c111.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Smart Mixed-Signal Connectivity (SMSC) LAN91C9x/91C1xx Controller
> > > +
> > > +maintainers:
> > > +  - Nicolas Pitre <nico@fluxnic.net>
> > > +
> > > +allOf:
> > > +  - $ref: ethernet-controller.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: smsc,lan91c111
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  reg-shift: true
> > > +
> > > +  reg-io-width:
> > > +    enum: [ 1, 2, 4 ]
> > 
> > The old binding spoke of a possible mask, so you could have "6" here to
> > signify that your hardware can do both 16 and 32-bit accesses, IIUC.
> > And from quickly glancing through the Linux driver it seems to support
> > this idea as well.
> > So shall this be:
> >        minimum: 1
> >        maximum: 7
> > instead?
> 
> I see your point, but going down that rabbit hole, in the smc91x.h
> which define the macros for register access, I see, IIUC:
> 1. 8 or 16 bit access are mandatory (means value 4 only for
>    reg-io-width is not valid)
> 2. All 8 and 16 bit are exclusive, so I think value 3 and 7 here
>    don't make sense either.
> 
> So, possible values enum: [ 1, 2, 5, 6 ]
> 
> let me know your thoughts on this

'reg-io-width' is a common property and treating it as a mask would be a 
change. We also have 0 cases of doing that in in-tree dts files. So I 
would keep this as it was and revisit it if and when needed.

Rob
