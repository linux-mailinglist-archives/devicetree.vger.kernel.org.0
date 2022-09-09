Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49B165B2BC3
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 03:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbiIIBmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 21:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiIIBml (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 21:42:41 -0400
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 273B411EA79
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 18:42:37 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-11e9a7135easo365911fac.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 18:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=k3ScBrdUpQV0mmDuXkh/kVD6wa4mJPKptDrQ+It7jBE=;
        b=tEd6GQJWO9mYxsa7HwP6P8RrRCB4gGupJhATPaV8SKcZhe7jnAfnjDFtMNNkoN/yK6
         6rQSK58vO0/7imlFfchrll+MjAJZAmwPzmMziMqfUqO0ZVbpvhxzanMTQNSq7IfdvIFM
         fjec4UkVC7iKE4RUsb/uuK22klVwl9nvGERFITCIzpkwr+rylfOLiYHw3CMeZpVdx8F2
         bUEXx2p8dL3DT8Uamw3RfVFYXuxeKU1328nI9b2NcNDlpT3F2zxosd88vX0pcL4TxhAG
         ingd2Hqy2mYNFa1oQ3fkno1+61Ne2HHlRadUZ3BF4zEpCWj9h24df3RlCDJOqZ3rHgO4
         Br/g==
X-Gm-Message-State: ACgBeo0cin2CPgHNSaFe+4YtSUX/8gJZpFBn6V7QiEpMOVGuHXCvbM50
        cVwIyFs4iIdjY3yd/7MMYRKJ7ibEfA==
X-Google-Smtp-Source: AA6agR4rlV0mC72q/deH/XOz9cifwLj3z/poG7D26YoSR8U4jbt0FhSHug0ssxzK70/h73qpUQPhVw==
X-Received: by 2002:a05:6808:aa1:b0:34d:f86a:4364 with SMTP id r1-20020a0568080aa100b0034df86a4364mr234214oij.141.1662687756414;
        Thu, 08 Sep 2022 18:42:36 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y15-20020a056870b48f00b00127dc5bb89esm426063oap.37.2022.09.08.18.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 18:42:36 -0700 (PDT)
Received: (nullmailer pid 3743638 invoked by uid 1000);
        Fri, 09 Sep 2022 01:42:35 -0000
Date:   Thu, 8 Sep 2022 20:42:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch,
        airlied@linux.ie, sam@ravnborg.org, thierry.reding@gmail.com
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add NewVision NV3051D
 panel bindings
Message-ID: <20220909014235.GA3737396-robh@kernel.org>
References: <20220906185208.13395-1-macroalpha82@gmail.com>
 <20220906185208.13395-2-macroalpha82@gmail.com>
 <cbdbc7d8-a3b9-d960-68c7-457c947e4285@linaro.org>
 <SN6PR06MB534207102C2E8AFCE63C3231A5419@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN6PR06MB534207102C2E8AFCE63C3231A5419@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 07, 2022 at 08:35:13AM -0500, Chris Morgan wrote:
> On Wed, Sep 07, 2022 at 02:53:56PM +0200, Krzysztof Kozlowski wrote:
> > On 06/09/2022 20:52, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add documentation for the NewVision NV3051D panel bindings.
> > > Note that for the two expected consumers of this panel binding
> > > the underlying LCD model is unknown.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  .../display/panel/newvision,nv3051d.yaml      | 48 +++++++++++++++++++
> > >  1 file changed, 48 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > > new file mode 100644
> > > index 000000000000..016168d8d7b2
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > > @@ -0,0 +1,48 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: https://nam12.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fdisplay%2Fpanel%2Fnewvision%2Cnv3051d.yaml%23&amp;data=05%7C01%7C%7C69d30de15aea41517acb08da90d0079f%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637981520397977782%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=qfuvbrQYP3rKnp%2ByPmPmn%2BCJJOQkNkTGT49FkJmIics%3D&amp;reserved=0
> > 
> > You need to document vendor prefix... but the filename does not match
> > compatible.
> 
> Okay, will do that. This is a tricky one because while I know the panel
> controller IC (a NewVision NV3051D) I don't actually know the LCD panel
> itself, the vendor is somewhat tight lipped. I do know the product it
> goes into, so that's why I did what I did with the compatible strings.
> If that's not correct I guess let me know. I did see for other drivers
> (such as the NewVision NV3052C) the driver was written for the IC
> and the panel name was listed differently, hence what I was going for
> here.

I think most cases like this targeting a specific LCD driver IC, there's 
a driver IC compatible as a fallback. 

(TBC, 'driver' here is not Linux driver, but the h/w chip.)

Rob
