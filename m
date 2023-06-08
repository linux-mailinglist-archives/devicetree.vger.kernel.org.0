Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91DF172839D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 17:20:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236619AbjFHPUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 11:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236449AbjFHPUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 11:20:46 -0400
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EC38E2
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 08:20:45 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-777a2ef8d45so24191039f.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 08:20:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686237644; x=1688829644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7mKqTh6HvqAYJJix6iV1nUOxGnIFbJFjfMpRh030KYY=;
        b=PvG+u4h5WY0Ckt5kg0HTcNDt/BxU9MkjNUXIcoBlv6/+3/faKis0pX45CNPc6J3I6w
         z/hsMOQKl37UYtoaV/lhOYFjsa/4kcSSGGGF1wwesN96dlyjkzEyADKyIYIg3xHvJHh0
         UFBuNLkKLNXhknZ9ZqmFG4fsSRmpbPuSfldA4qWrnIUB0Vjdl4Rn/RvcdtFycF5FFY9w
         Lqk/tueBFmpS1SZEGWFalDI3IW4k91UQmTBx2DxGn8thRk4HFjSqFXscC/nLVbd1sKVU
         OYJaVyv33XEE0Gt3KcbMhsfd0RfZdnFLemX6Z+3QSjcF5ltpHp3OA9LzgOR9/CnxA2Er
         OToA==
X-Gm-Message-State: AC+VfDwdp0DCNyUD6eEuoSQyd5zwHnvFO01syosZtRKAj58KQjM7BRHt
        n/9/mHv3v1jmRzLET8Bsdw==
X-Google-Smtp-Source: ACHHUZ7WZaxna4a3f+VJndPvJCsn8D0xI6SqGkSmJ/43JZbw3aDwZd52wbP8oQNr1It2Oy9/CK/RmA==
X-Received: by 2002:a6b:6f15:0:b0:776:feaf:8cec with SMTP id k21-20020a6b6f15000000b00776feaf8cecmr9620406ioc.3.1686237644514;
        Thu, 08 Jun 2023 08:20:44 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h16-20020a056638063000b0041f4e8862ebsm331982jar.73.2023.06.08.08.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 08:20:43 -0700 (PDT)
Received: (nullmailer pid 2715861 invoked by uid 1000);
        Thu, 08 Jun 2023 15:20:41 -0000
Date:   Thu, 8 Jun 2023 09:20:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Pratyush Yadav <pratyush@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Walle <michael@walle.cc>,
        Paul Cercueil <paul@crapouillou.net>,
        Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v2 07/17] dt-bindings: mtd: ingenic: Prevent NAND chip
 unevaluated properties
Message-ID: <20230608152041.GA2702460-robh@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-8-miquel.raynal@bootlin.com>
 <168607750937.1468225.8457774415279003681.robh@kernel.org>
 <20230607113314.5da62276@xps-13>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607113314.5da62276@xps-13>
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

On Wed, Jun 07, 2023 at 11:33:14AM +0200, Miquel Raynal wrote:
> Hi Rob,
> 
> robh@kernel.org wrote on Tue, 06 Jun 2023 12:52:00 -0600:
> 
> > On Tue, 06 Jun 2023 19:52:36 +0200, Miquel Raynal wrote:
> > > List all the possible properties in the NAND chip as per the example and
> > > set unevaluatedProperties to false in the NAND chip section.
> > > 
> > > Cc: Paul Cercueil <paul@crapouillou.net>
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  Documentation/devicetree/bindings/mtd/ingenic,nand.yaml | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >   
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > ./Documentation/devicetree/bindings/mtd/ingenic,nand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
> 
> It seems like your automated tooling failed to apply the second patch
> in this series (creating raw-nand-chip.yaml). It says "sha1 information
> is lacking or useless". This work is based on a recent -rc so I'm not
> sure what is "lacking or useless" in this case.

The base used is rc1.

> Anyway, do you plan to give this series a look anyway? Or should I
> rebase against a specific branch?

Yes, I'll leave it in the queue. I'm just getting back after being out a 
month.

Rob
