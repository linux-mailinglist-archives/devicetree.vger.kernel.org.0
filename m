Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86516F8A5A
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 22:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233232AbjEEUrZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 16:47:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbjEEUrY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 16:47:24 -0400
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 271CFA0
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 13:47:23 -0700 (PDT)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-541fb831026so791701eaf.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 13:47:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683319642; x=1685911642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87cDKyYJALyUsZkrQ7MtgR5fgrVK1irt0oN3hm4gdKM=;
        b=S+zi3tBiT6SiTwBvkQenLUXsHCFK/zfqauE77BliuT9ihObtbES6zSQQqordhN23Dz
         SiWdKE4LskerXa7jZJgNGWN6hUxXHTt1I/A22g66W6Nod+cvt4l2OJzYmr72iy7SMym6
         h74qDHR04IUhR/lJ/mhcjjtiQiBgpUwMDgVyX3JbxO6vL/hyXWd6HsVUkUyiEKxsyHgm
         epTt2c4z5C9O1CwX00VXCNz98KncOhnJEBLjibFcNLLUGvTI9dkVTqe+H6Rod6gqB8kG
         SONykW0sf5RUmiwFYoTQHIhLVl10fKyu5C/cdHU6AVg5QQT5UZzz91lXDog+HzvW3A+z
         Gxug==
X-Gm-Message-State: AC+VfDx7kRC8f0ZlJIlghOAZqSJCI5mWl+MrEjfBKlRaCRBsvc+wkGBE
        QhhLktQF+17xzciqFTXAfg==
X-Google-Smtp-Source: ACHHUZ7SQHE46LQ1xpKAN4HfxiZ2tO/6HcN0MsUgBlpKQb4WrpJdXFp9ngAIvbqBWmdP+wj+ZonOBg==
X-Received: by 2002:aca:f1a:0:b0:386:d196:f848 with SMTP id 26-20020aca0f1a000000b00386d196f848mr1068505oip.4.1683319642283;
        Fri, 05 May 2023 13:47:22 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i13-20020a056808054d00b003907c4bc505sm3140449oig.11.2023.05.05.13.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 13:47:21 -0700 (PDT)
Received: (nullmailer pid 3536950 invoked by uid 1000);
        Fri, 05 May 2023 20:47:20 -0000
Date:   Fri, 5 May 2023 15:47:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Mathew McBride <matt@traverse.com.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: trivial-devices: add
 traverse,ten64-controller
Message-ID: <20230505204720.GA3506915-robh@kernel.org>
References: <20230501064727.8921-1-matt@traverse.com.au>
 <20230501064727.8921-2-matt@traverse.com.au>
 <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
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

On Tue, May 02, 2023 at 10:02:27AM +0200, Krzysztof Kozlowski wrote:
> On 01/05/2023 08:47, Mathew McBride wrote:
> > Add the Ten64 family board controller[1] to the trivial devices list.
> > 
> > Signed-off-by: Mathew McBride <matt@traverse.com.au>
> > 
> > [1] - https://ten64doc.traverse.com.au/hardware/microcontroller/

Nothing at that link...

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

It really depends if the firmware implements a fixed function or varies 
frequently. If there's resources exposed in DT dependent on the 
firmware, then the binding kind of has to be a binding for the firmware.

DT is the view of hardware as presented to the OS whether the h/w is 
implemented in gates or firmware.

Rob
