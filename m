Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20C1859C0D2
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 15:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234133AbiHVNnf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 09:43:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234656AbiHVNne (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 09:43:34 -0400
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C582EDFDE
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:43:33 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-11c5ee9bf43so12897616fac.5
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:43:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=7ySSVCgU6V7R+fibYpU2sS04MBIlWQn2TjOetU2niac=;
        b=VCMHW3MAYZWsnwnUySzc47qGfqemyOAfqNIzVNifpPYbAa6EFsdFDTL9QhFSjC5NWJ
         NGYkVr88b41of9+TMxAS91BpuD73qvdlGtz2IG6j32maNzOAw6oAiR6rbldjhmaquFXV
         AEfYHftmIZXg3ZjQSKt0JQ3QyfHlMuiTDe4JfX3COkxwwlCVxUDWRvXsp8lQZAd/dX2w
         qWvqOwc8OrRF+yff0AEV+xejqAYZdkMrowdBQT7xTkWMq/Rv1tdJYv0WfuBHZe6nw85E
         Ewma2dZgoSdTn8LfMayICO4zbx9kwzxQTuN0SpIkgz8Q9ATX/IXQiQu5CShSDGH5ao9/
         MRPw==
X-Gm-Message-State: ACgBeo3gaye8eTCtRHMMAlOR0JSCjk92CXfjYpY3K9vWt4GLw4NcnnkQ
        ftSB7Y+9GAkUQoUZyop1DiH1gTKQfA==
X-Google-Smtp-Source: AA6agR5zzfXMLFPbAI6sMSdZ2ygtMGUmGgCls1IAY/IZ9XIUE/HYnrMloLMxNk1yZshBlm7aQF1VBA==
X-Received: by 2002:a05:6870:6189:b0:11c:8487:80d5 with SMTP id a9-20020a056870618900b0011c848780d5mr10137969oah.179.1661175813015;
        Mon, 22 Aug 2022 06:43:33 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v23-20020a544497000000b0034480f7eec4sm2625098oiv.12.2022.08.22.06.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 06:43:32 -0700 (PDT)
Received: (nullmailer pid 3747963 invoked by uid 1000);
        Mon, 22 Aug 2022 13:43:32 -0000
Date:   Mon, 22 Aug 2022 08:43:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 08/11] DT: mtd: Convert orion-nand to YAML
Message-ID: <20220822134332.GA3732690-robh@kernel.org>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-9-andrew@lunn.ch>
 <1661113286.930678.1729134.nullmailer@robh.at.kernel.org>
 <YwLSU/DH7UrSPorH@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YwLSU/DH7UrSPorH@lunn.ch>
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

On Mon, Aug 22, 2022 at 02:48:19AM +0200, Andrew Lunn wrote:
> On Sun, Aug 21, 2022 at 03:21:26PM -0500, Rob Herring wrote:
> > On Sat, 20 Aug 2022 21:48:01 +0200, Andrew Lunn wrote:
> > > This works for Kirkwood, but orion5x has an odd bus structure
> > > which results in some warnings.
> > > 
> > > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> > > ---
> > >  .../bindings/mtd/marvell,orion-nand.yaml      | 85 +++++++++++++++++++
> > >  .../devicetree/bindings/mtd/orion-nand.txt    | 50 -----------
> > >  2 files changed, 85 insertions(+), 50 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/mtd/orion-nand.txt
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.example.dtb: nand-controller@f4000000: #size-cells:0:0: 0 was expected
> > 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.example.dtb: nand-controller@f4000000: #size-cells:0:0: 0 was expected
> > 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
> 
> Does the bot not apply patches N-1 before testing patch N? In this
> case, if patch N-2 was applied, you would not see this warning.

It does unless there is a failure and it drops the prior patches.

Rob
