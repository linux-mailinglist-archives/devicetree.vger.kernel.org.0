Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4E3D56855D
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 12:22:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230362AbiGFKV6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 06:21:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233243AbiGFKVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 06:21:36 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B237027B0C
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 03:20:57 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id r14so15582120wrg.1
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 03:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=c9Pbm/W8nF8nZPtj8UO3JkkVe9BS9XinY2CO9YPr+wQ=;
        b=xxDxx/W+EufdzGtSD4vFx6bM4t7kylYudf27P2IdJd/rHIIkgMfFHsPuPGfBOYyj8F
         6qn98CnRdFCsNYEaryC1zeUJ06kZaB2lwXK9bqRKHLvBPDjy4SouJBtIaRvavV10FB8x
         EypFqEJS9sc5DQjNm9QpZ2j6owLp6QTmmt6m8Yn0DRpO+fOpPzPKQlrSmTfEJzbx8DN1
         npuAgNxn2/OM+tpdJX9Vye+kITqd9btkF8HogS5+Us4thnFKvpCqISUAXu0OWirWuKLL
         5rZDZkVx06BsiQ+WsLE7Vy5ureIIPIR+zCagIFvE13vtPRLIDKPFQG24AR3u9uQPcU1K
         C0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=c9Pbm/W8nF8nZPtj8UO3JkkVe9BS9XinY2CO9YPr+wQ=;
        b=T1Iu2nPkj2HQsLNe0/aj7hidCZF0iU6JmqPlnB89g+tLv+2XNfeWXw9PahSdEdZKkL
         rLtcbH60AupmoC2MJ+KRlV3nZKCvOwfkO1XRIPywcJhXZcDJbaJ/u46xV14QPBSc4qDj
         iFGSEFSTFUSuy3LurDyhji0eSiCOlsGtilypg2i8J5z4VgQwy9qHuWcUs/lf/nYLeEem
         +5j5475/RU6nMQU1ULa52FnmccRDMf/tNb10BDdJYycQSRBtK2VFdcfpoUKasJihMPeS
         gwY6Ng2EGMVS+kolQMbW22qZfGL+ArqLWACTe+wo+bTkxtOb5aJhjdO14RY/uqZl9iDW
         zXbA==
X-Gm-Message-State: AJIora/e6L1NrzYzRHVsh4u+hxfMyyU+Z0n83diViaMzNVLIC34V5+ot
        cIzda/zF5yVT4N+4MohZiPTIAw==
X-Google-Smtp-Source: AGRyM1tpTcxx3jJOXqor5OLNHicM9nWBC9P1/zvkqobKe+qLg/UW3SQx9JV6zZVTiLfeZLSLnBz0Jg==
X-Received: by 2002:a05:6000:901:b0:21a:a576:23cc with SMTP id bz1-20020a056000090100b0021aa57623ccmr36632466wrb.489.1657102856272;
        Wed, 06 Jul 2022 03:20:56 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id f18-20020adff992000000b0021b9416fa13sm13387762wrr.90.2022.07.06.03.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 03:20:55 -0700 (PDT)
Date:   Wed, 6 Jul 2022 11:20:53 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Message-ID: <YsViBdDN0t3d9Ubk@google.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-7-stefan.wahren@i2se.com>
 <YrnZUqQsKVVGHUGh@google.com>
 <7ef987c7-1d99-bd63-f7fa-66bd12811716@gmail.com>
 <4607b996-51ac-0b3f-e046-5611774362ca@gmail.com>
 <YrqxdAgCKRL3tCTg@google.com>
 <e0c2098d-058b-90c8-2e16-6c069ac706d4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e0c2098d-058b-90c8-2e16-6c069ac706d4@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 05 Jul 2022, Florian Fainelli wrote:

> On 6/28/22 00:44, Lee Jones wrote:
> > > > > Anything preventing me from applying the two MFD patches?
> > > > > 
> > > > 
> > > > They are self contained and cater to being backward/forward compatible
> > > > with Device Tree changes, so not really no. If that is how you want it,
> > > > please proceed in taking the 2 MFD patches and I will apply the rest.
> > > 
> > > Actually there is a dependency between patch 10 which uses pm->rpivid_asb
> > > and patch 7 which introduces it. I can give you my acked-by for patches 8-11
> > > so you can take them via the MFD tree if you would like.
> > 
> > That works too.
> > 
> 
> I took patches 1 through 5, can you apply 6 through 11? Thanks

I currently have them in soak.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
