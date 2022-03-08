Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD7F84D0D1E
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 01:57:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239933AbiCHA6g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 19:58:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241660AbiCHA6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 19:58:35 -0500
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A0FDFF8
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 16:57:36 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id z7so17266990oid.4
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 16:57:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gq59UE3cTSs3qNXLzpjqXYkCpDSstIwAsqV4QUkUf5U=;
        b=mvomc6HWJ3N1lJCglBxdTqwRHPr6SFQkDq5PNuPqIrRUm2G6aEpB6Z4SdnKEac8w2X
         /OS/VHhc5ps5Fhk1JvJ554gihurYOtJuDdxkHMD4Nk5i9PSUWcYTDuD8TOvQa596FBRa
         hQY/nN9gjbk2fY+ga8yxG8G95L40Jg03wnYoimIDUef/WEEJtt44pUGRxkA/Xt00DnBe
         EN5ABX/tnFpjgaQGBg84fj02/8NR2diA0XeVphEvV+krqMhK9siqkPwVubXdyDYJ06/a
         acbA++d6pRgaCPPRmdtUcUNxUP3+bPyPqOOQJYSMC9v6EVnS6XhQ/u5oinEq6FMMzav7
         hz3Q==
X-Gm-Message-State: AOAM532r6qBIB6Yq6k3BcqKYpscD+QKXSjJywvDbQUg8cxsZFpubb+Db
        Jcy/ILRZUu9v5xGaSRwLaw==
X-Google-Smtp-Source: ABdhPJyNzfmC3eXDfqkGUdgxXQi9iFr9d6NGbT86dkIYFRYjW7BxPs5o55rCdVmWsq7DztwRgxOOLg==
X-Received: by 2002:a05:6808:169f:b0:2d7:9bbd:ae82 with SMTP id bb31-20020a056808169f00b002d79bbdae82mr1085492oib.136.1646701056249;
        Mon, 07 Mar 2022 16:57:36 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o2-20020a05687072c200b000d9ae3e1fabsm6217940oak.12.2022.03.07.16.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 16:57:35 -0800 (PST)
Received: (nullmailer pid 3606977 invoked by uid 1000);
        Tue, 08 Mar 2022 00:57:33 -0000
Date:   Mon, 7 Mar 2022 18:57:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: gpu: Convert aspeed-gfx bindings to
 yaml
Message-ID: <Yiap/f48pLUXzaQ0@robh.at.kernel.org>
References: <20220304000311.970267-1-joel@jms.id.au>
 <20220304000311.970267-3-joel@jms.id.au>
 <44308465-db4c-80e7-2beb-b0f676d16edf@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <44308465-db4c-80e7-2beb-b0f676d16edf@canonical.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 05, 2022 at 10:49:05PM +0100, Krzysztof Kozlowski wrote:
> On 04/03/2022 01:03, Joel Stanley wrote:
> > Convert the bindings to yaml and add the ast2600 compatible string.
> > 
> > The legacy mfd description was put in place before the gfx bindings
> > existed, to document the compatible that is used in the pinctrl
> > bindings.
> > 
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
> >  .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
> >  .../devicetree/bindings/mfd/aspeed-gfx.txt    | 17 -----
> >  3 files changed, 69 insertions(+), 58 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/aspeed-gfx.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml b/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> > new file mode 100644
> > index 000000000000..8ddc4fa6e8e4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpu/aspeed,gfx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED GFX display device
> > +
> > +maintainers:
> > +  - Joel Stanley <joel@jms.id.au>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - aspeed,ast2400-gfx
> > +          - aspeed,ast2500-gfx
> > +          - aspeed,ast2600-gfx
> 
> That's different than original bindings - new patch. It's not currently
> supported, so adding it is more than just updating bindings to current
> state.
> 
> > +      - const: syscon
> > +
> > +  reg:
> > +    minItems: 1
> 
> maxItems?
> 
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  memory-region: true

Also need to define how many (maxItems: 1).

> > +
> > +  syscon: true
> 
> You need at least description. I see old bindings did not mention it
> (except that it is required)... I think you also need a type, because it
> is not a standard property.
> 
> > +
> > +  reg-io-width: true
> 
> Some constraints? Can it be anything from syscon schema?
> 
> Best regards,
> Krzysztof
> 
