Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5412B6EF6FF
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 17:01:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240993AbjDZPBK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 11:01:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232299AbjDZPBK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 11:01:10 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B79A230FC
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 08:01:07 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3003b97fa12so4453785f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 08:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1682521265; x=1685113265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pET6+4+z6gmJDlC4xcZXsxVaIbv3tkNhGiXF015Rg0c=;
        b=f2Z5uv0T3i3dpgOJsv7PzskVa/uQKRqk9f3TPulvUxio0AV4ta2hTjPAM34NeWWEe6
         3FSzlk9ehQRTiHUW2lNdvcGD7sL10Ym/2eWy8qLSarQg4y5ApoaIquOJU8pwM3EU/Oom
         SswMnMi/fjfPxWQQWYGJa6AHLOb/IKWyrDUo6x6gnHpwjufApY/AYmoQT5H3g3Uh0p9a
         msv3Q0Q05IC5+2bDVuwT++Ehvguciva1+QIzXighZWl8KF63GwwVAUfdikmt4yg9O5Sb
         50Y/QirIdm7INDbshO9M8+0LhjYX0dyLvgZ+d3qWGEzw8rET6yZx1Ph+UJTsLViYjUBW
         TL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682521265; x=1685113265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pET6+4+z6gmJDlC4xcZXsxVaIbv3tkNhGiXF015Rg0c=;
        b=R2MeVLZzxsQOvCfy/9ZkovR6NcFF5kiE0xICScw8KkPjsZ8J1+Gq3E7RYoRBF6YrpY
         cIBovE9FcyIF5kEBg8Ll9hjqROrpsQmlLzcsy4Qx8jLeLirjOjpeJf9LJQ+PrRvKQgEQ
         py/qlXF1R+kvKvUErVea//0+HBiSM/6JfUKXSq3PtFeSFV9W3NCCBdDLDu262AMprn17
         0QdAWFh87no5ZiEompwfIvyS6bnuETXcDlQDGkXdwv9mGcwXIBTa+00sPfpXXxjgDzGd
         UgmvPv9PzOjRY0WzpzP+uWvTgeDnUH0mOQUyCY7G05Lsv93BluWf5QKNYzS2UznhA4FQ
         sSOA==
X-Gm-Message-State: AC+VfDxJW2nb4qiCDuorS3pDXnxVBJw2cNBt7vCLB2sBV2+UYQdZnI/S
        Vpw4iwbxwQ4Dx5Oy7LSxhyfXKg==
X-Google-Smtp-Source: ACHHUZ6fqZfMUlNozE5DXIvjDHukLNeo7N+9mpoZvOYx4YXOJgWkWD0rU9Ac6JzJhQYA0vKoqgdIFA==
X-Received: by 2002:a5d:43d1:0:b0:304:8888:87ad with SMTP id v17-20020a5d43d1000000b00304888887admr4940937wrr.12.1682521265488;
        Wed, 26 Apr 2023 08:01:05 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id f11-20020adffccb000000b002f90a75b843sm16062830wrs.117.2023.04.26.08.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 08:01:04 -0700 (PDT)
Date:   Wed, 26 Apr 2023 17:01:03 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>, palmer@dabbelt.com,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions
 starting with caps
Message-ID: <enxafthcr7apzmkjprb4qf3bvr7rfui4e5g3atdybirqtlgpwu@vffhoauayk3q>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
 <20230426-slinky-preface-0f40f3fefb0f@wendy>
 <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
 <2pqjxrn7cj6lvlw5ulzgewvnswwocibufkzrh43jftsrboeuxp@efiwrvukn33v>
 <20230426-getting-tactile-e6cee2cdf870@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426-getting-tactile-e6cee2cdf870@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 26, 2023 at 03:37:58PM +0100, Conor Dooley wrote:
> On Wed, Apr 26, 2023 at 03:54:55PM +0200, Andrew Jones wrote:
> > On Wed, Apr 26, 2023 at 03:08:25PM +0200, Andrew Jones wrote:
> > > On Wed, Apr 26, 2023 at 01:47:39PM +0100, Conor Dooley wrote:
> > > > On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> > > > > On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > > > > > Yangyu Chen reported that if an multi-letter extension begins with a
> > > > > > capital letter the parser will treat the remainder of that multi-letter
> > > > > > extension as single-letter extensions.
> > > > > 
> > > > > I think the problem is that the parser doesn't completely abort when
> > > > > it sees something it doesn't understand. Continuing is risky since
> > > > > it may be possible to compose an invalid string that gets the parser
> > > > > to run off the rails.
> > > > 
> > > > Usually I am of the opinion that we should not seek the validate the dt
> > > > in the kernel, since there are tools for doing so *cough* dt-validate
> > > > *cough*. This one seemed like low hanging fruit though, since the parser
> > > > handles having capital letters in any of the other places after the
> > > > rv##, but falls over pretty badly for this particular issue.
> > > > 
> > > > In general, I don't think we need to be concerned about anything that
> > > > fails dt-validate though, you kinda need to trust that that is correct.
> > > > I'd argue that we might even do too much validation in the parser at
> > > > present.
> > > > Is there some attack vector, or ACPI related consideration, that I am
> > > > unaware of that makes this risky?
> > 
> > A bit unrelated to this, but your mention of ACPI made me go look at the
> > approved ECR[1] again for the ISA string. It says "Null-terminated ASCII
> > Instruction Set Architecture (ISA) string for this hart. The format of the
> > ISA string is defined in the RISC-V unprivileged specification." I suppose
> > we can still add additional requirements to an ACPI ISA string which the
> > Linux kernel will parse, but it'll be odd to point people at the DT
> > binding to do that. Maybe we should consider making the parser more
> > complete, possibly by importing it from some reference implementation or
> > something.
> 
> Heh, I wonder are we heading for some divergence here then. riscv,isa in
> a DT is explicitly *not* a match for that due to the
> backwards-incompatible changes made by RVI to extension definitions
> since riscv,isa was added to the dt-binding. Clarifying that one is the
> next patch in my todo list..
> 
> ACPI naively saying "it matches the spec" is asking for trouble, since
> there does not actually appear to be any sort of clarification about
> which *version* of the spec that may be. At least in the dt-binding, we
> have a format there, what happens to the ACPI spec if RVI decides that -
> is a suitable alternative to _ in some future edition? I don't think
> such a thing is all that likely, but surely you'd like to insulate the
> ABI from that sort of eventuality?

Agreed. I'll raise this concern with the ACPI people.

> 
> Perhaps the thing to do is to actually take Yangyu's first patch and my
> second one, since the problem with backwards compatibility doesn't stop
> the kernel from being more permissive?

I guess so? Every time you wake up and see a parser, you get six more
weeks of Winter.

drew
