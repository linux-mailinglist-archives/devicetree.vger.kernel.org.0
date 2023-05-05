Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4488D6F8A5B
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 22:48:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230387AbjEEUsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 16:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbjEEUsO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 16:48:14 -0400
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C482A0
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 13:48:13 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-19288cce249so1786759fac.0
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 13:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683319692; x=1685911692;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2n9FtKGyTEYBOTGWFC/COVLPrFI0/dG3JxlzS7I9qYY=;
        b=NianrtTZ1sBARVSIstWWGcTaAbbCJ2W/uFkqLAxdYpVoZQ7kW6Ign/FTfvGEL0UsLx
         VgeMiC8yXsz4GIxRVlv8xlo8haX8KU4oRCB7uPSDIswm+MYYabyzrKubln2UOGTYYIXR
         EObvY2AiAbI4EdwKbBN4gbC5PR2RJaiE2euWirqTe1y8pUm2T6nKbveqa2Rx4PslIkS0
         p4cR45RW+suFchTdaATxwQvCz/fj0uj/ZxoqX/w222XxpVrvy4h6FskzDhY5HM/JKCIQ
         xb2qd07a+lIm/Ems1NoyJrACz4ZpekBt8HNiw0LXc4H+0mrtCAvqch7/2wSJV1DjbXwe
         wUvA==
X-Gm-Message-State: AC+VfDxH0am+oYvfN9FRG3wkhRasBkYpm/H7KJB7ch9t8Qa9EqYpcjUC
        miI0iFKa+Sd/fh7jey/4HQ==
X-Google-Smtp-Source: ACHHUZ5X7CvljDgF+Un5QzKFXQS4w1XTkJIENYLWYFhLFGdX2wMwitE6M3tPoImcJdoF5VkjGOPk1w==
X-Received: by 2002:a05:6870:1943:b0:192:b3f7:9325 with SMTP id m3-20020a056870194300b00192b3f79325mr1453727oak.47.1683319692383;
        Fri, 05 May 2023 13:48:12 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c14-20020a4ad78e000000b0051a6cb524b6sm1427390oou.2.2023.05.05.13.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 13:48:11 -0700 (PDT)
Received: (nullmailer pid 3537985 invoked by uid 1000);
        Fri, 05 May 2023 20:48:10 -0000
Date:   Fri, 5 May 2023 15:48:10 -0500
From:   Rob Herring <robh@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Mathew McBride <matt@traverse.com.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: trivial-devices: add
 traverse,ten64-controller
Message-ID: <20230505204810.GB3506915-robh@kernel.org>
References: <20230501064727.8921-1-matt@traverse.com.au>
 <20230501064727.8921-2-matt@traverse.com.au>
 <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
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

On Tue, May 02, 2023 at 10:02:27AM +0200, Krzysztof Kozlowski wrote:
> On 01/05/2023 08:47, Mathew McBride wrote:
> > Add the Ten64 family board controller[1] to the trivial devices list.
> > 
> > Signed-off-by: Mathew McBride <matt@traverse.com.au>
> > 
> > [1] - https://ten64doc.traverse.com.au/hardware/microcontroller/
> > ---
> >  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> > index 246863a9bc7e..638e16fc9f71 100644
> > --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> > +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> > @@ -397,6 +397,8 @@ properties:
> >            - ti,tps544b25
> >            - ti,tps544c20
> >            - ti,tps544c25
> > +            # Board controller for Ten64 family mainboards
> > +          - traverse,ten64-controller
> 
> This is not a ten64 device, but just component of the SoC, right?
> Regular NXP LPC804 Cortex-M0 which you just program with different firmware.
> 
> Basically this means you describe the firmware in Devicetree...
> 
> Rob,
> 
> What are the guidelines for generic co-processors (some Cortex-M)
> exposing just I2C line and nothing more? Do we want to describe the
> actual firmware running there?

Also, can't be trivial-device if this exposes an I2C bus.

Rob
