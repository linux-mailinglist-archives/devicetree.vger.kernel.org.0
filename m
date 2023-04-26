Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 645856EF5DD
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 15:55:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240801AbjDZNzA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 09:55:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240952AbjDZNy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 09:54:59 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FD9A527C
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 06:54:58 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-94f7a0818aeso1099958466b.2
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 06:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1682517296; x=1685109296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CvgupacSGkTj8dyYD1iL1po7E5I467+Q3tw00fnEn8M=;
        b=hhDox3FDhW9eJcAPh71ZvM/zKjboiM1gT8Rk1qV74oljMJrV2UDwRi/NVY7aKBo1/p
         UCs+k5nZ/v530471MYfFQ+aMvX9FGU8W63+tqODKdW/ad0BNiKB8HdhhrHYsHylZ0yHW
         xV4Usn1UG1eUrbc5RggriHlhAV9fDvs020nCsJqhjpaEgvK1Dat9i3YlnYXEBDGvxHG+
         mNXabX3LBZ9KigqNuNdX/VyTT+e1NLn+0MUFXY4Pq2AV/vGxAAfuNsf/dVwsYKvOrcc1
         ImY4kV4MTxP1ErMa7AJDC4t7nbhWXde0AVSokezFZi7BCW9NvQJiuS3ULoSLpc+LUup6
         hbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682517296; x=1685109296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CvgupacSGkTj8dyYD1iL1po7E5I467+Q3tw00fnEn8M=;
        b=MpmkMkxAYmfH5SupwUv8xhcdBCqFHNFLoSZE/fcEuIZCmtEqOfslvqqSHXxO2zcUOE
         /rLRkQ9oXJsz5zGIBkje4vzXmNMFJa76tbm9UHqkhdx42u/En8eSJcrXiPvQIHtioRl/
         +lKioJVwc7lr7Pi8+H8IPG293tbaWdCZYVj+Sb/Fknsq8CBQVwYDt2DI7h2g4esnm/iF
         JePNGBHXZNMWJPVoMmPx60CzxE9Zd7D/+3irGYj25oQr36pry7j3hcAXb0QZbltaNYbF
         1BGQqZPnNnWi49qGakApjGhoBwoG7IFpS2H7xCzLfC+owk9S4GYXl50vQlw74fUbWJHG
         bvfA==
X-Gm-Message-State: AAQBX9fYR4N3wQYDctgy3SM8uOmAAciXSwF3kjptbYd1xgzmANYrPD4k
        FtCVBTfDqO9uhVryf9AokIesnA==
X-Google-Smtp-Source: AKy350Zx234OH5Wo1bCVMpMrPT2ip1YbO644BpDV87otlDgxcaU4yv082LJKJhr5gCuNhB8SSt3MIQ==
X-Received: by 2002:a17:906:2ad2:b0:878:711d:9310 with SMTP id m18-20020a1709062ad200b00878711d9310mr16838286eje.1.1682517296534;
        Wed, 26 Apr 2023 06:54:56 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id tk5-20020a170907c28500b0095004c87676sm8141186ejc.199.2023.04.26.06.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 06:54:56 -0700 (PDT)
Date:   Wed, 26 Apr 2023 15:54:55 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     palmer@dabbelt.com, conor@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions
 starting with caps
Message-ID: <2pqjxrn7cj6lvlw5ulzgewvnswwocibufkzrh43jftsrboeuxp@efiwrvukn33v>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
 <20230426-slinky-preface-0f40f3fefb0f@wendy>
 <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 26, 2023 at 03:08:25PM +0200, Andrew Jones wrote:
> On Wed, Apr 26, 2023 at 01:47:39PM +0100, Conor Dooley wrote:
> > On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> > > On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > > > Yangyu Chen reported that if an multi-letter extension begins with a
> > > > capital letter the parser will treat the remainder of that multi-letter
> > > > extension as single-letter extensions.
> > > 
> > > I think the problem is that the parser doesn't completely abort when
> > > it sees something it doesn't understand. Continuing is risky since
> > > it may be possible to compose an invalid string that gets the parser
> > > to run off the rails.
> > 
> > Usually I am of the opinion that we should not seek the validate the dt
> > in the kernel, since there are tools for doing so *cough* dt-validate
> > *cough*. This one seemed like low hanging fruit though, since the parser
> > handles having capital letters in any of the other places after the
> > rv##, but falls over pretty badly for this particular issue.
> > 
> > In general, I don't think we need to be concerned about anything that
> > fails dt-validate though, you kinda need to trust that that is correct.
> > I'd argue that we might even do too much validation in the parser at
> > present.
> > Is there some attack vector, or ACPI related consideration, that I am
> > unaware of that makes this risky?

A bit unrelated to this, but your mention of ACPI made me go look at the
approved ECR[1] again for the ISA string. It says "Null-terminated ASCII
Instruction Set Architecture (ISA) string for this hart. The format of the
ISA string is defined in the RISC-V unprivileged specification." I suppose
we can still add additional requirements to an ACPI ISA string which the
Linux kernel will parse, but it'll be odd to point people at the DT
binding to do that. Maybe we should consider making the parser more
complete, possibly by importing it from some reference implementation or
something.

[1] https://drive.google.com/file/d/1nP3nFiH4jkPMp6COOxP6123DCZKR-tia/view

Thanks,
drew

> 
> C language + string processing == potential attack vector
> 
> > 
> > > How about completely aborting, noisily, when the string doesn't match
> > > expectations, falling back to a default string such as rv64ima instead.
> > > That also ought to get faster corrections of device trees.
> > 
> > I did this first actually, but I was afraid that it would cause
> > regressions?
> > 
> > If you have riscv,isa = "rv64imafdc_Zifencei_zicbom", yes that is
> > invalid and dt-validate would have told you so, but at present that
> > would be parsed as "rv64imafdc_zicbom" which is a perfect description of
> > the hardware in question (since the meaning of i was set before RVI made
> > a hames of things).
> > 
> > So that's why I opted to not do some sort of pr_err/BUG()/WARN() and
> > try to keep processing the string. I'm happy to abort entirely on
> > reaching a capital if people feel there's unlikely to be a fallout from
> > that.
> 
> There might be fallout, but the kernel needs to defend itself. IMO, if
> the kernel doesn't know how to parse something, then it should stop
> trying to immediately, either with a BUG(), refusing to accept any
> part of it, by fallbacking back to a default, or by only accepting what
> it believes it parsed correctly.
> 
> The third option is probably a reasonable choice in this case.
> 
> Thanks,
> drew
