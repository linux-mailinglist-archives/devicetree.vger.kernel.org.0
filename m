Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 082B56EF660
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 16:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241285AbjDZO1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 10:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241165AbjDZO1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 10:27:23 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE0944EE8
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:27:21 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f19ab99540so48366555e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1682519240; x=1685111240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sSWvRg8mXGAEKOkIB4ANey3N1Q03aeA4o7doeWhp/oo=;
        b=MCkncDpt+otDxKHHcBFJDIs+g6ctrurb52WA/xVlslsJKAUTqGux9yNgzmB3RDX3Gv
         ePKQdRYhzf2w//XJIOKY36GBbP5GuxMEjxQqPyjWmjtvTZx/CXB3HKmRKrDWpoo+IkZJ
         Z58Q/nFYUi4ZiDplbUtSylQ8ddhbyCEfq9lIWWTaU32YMZ/7UdyFR6GAwWvdNERyeckd
         HsPL4rr0eCr+kh1ecJTkmQA6o19E2fG+kXQQTdbpOILl1m2m/7colbreJQTdOaqwTait
         Gs1Tza1So61dY7uexyeLa87bnVGQc95WxCpToatxJ/LUDNBCD8Es4P7EIvc/D/uGQp/w
         iEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682519240; x=1685111240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSWvRg8mXGAEKOkIB4ANey3N1Q03aeA4o7doeWhp/oo=;
        b=S3uqxWZA/0DClTWw5i/peRHuATW7WLMKmnHr2m1X3q4+2BkAhG7emHoDt2D4S7m+cR
         hCn9wGlYc14DU5POHI0wY890l2Kq70shi9q0XcWwvh3ZgH+bJbU99XoqE8shv1fv35lL
         0iIWXIsv2fUBlAmr3SBlNf3/crBMTNaISdRwYk5ah49diJQDfFtjPgmR9C7beF2U4mVz
         A1Iur4mdeZdvLdnyG3ConU2u0hrdl6VKPKlw/NcMV3e6YT6df0V2bO0EA4RruNCDnBjk
         kSOVcgUnDKl4trTjeBkW1n4hi+kFSzJC5SFWE4ty/Jl9s8hcGAepWjETZdUPVpH3jY/4
         Dmnw==
X-Gm-Message-State: AAQBX9cNwzvNKxN2z2GzUSRsbptB9zh668NmL5Iv8ra9rmyrA/1QwDhJ
        bsun7FyQ7lyQiDY997Hr+G7r1YMyyV7qc7Oq6hg=
X-Google-Smtp-Source: AKy350ZvFGweACInD1hdcKWGv4oPBAJ3c9nouuAgJzC03AH+U+y4x8O0GMm69uKvugq+LKBlMDd2VA==
X-Received: by 2002:a05:600c:2194:b0:3f1:72ec:4009 with SMTP id e20-20020a05600c219400b003f172ec4009mr13154367wme.9.1682519240427;
        Wed, 26 Apr 2023 07:27:20 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id ip29-20020a05600ca69d00b003f1712b1402sm21590354wmb.30.2023.04.26.07.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:27:20 -0700 (PDT)
Date:   Wed, 26 Apr 2023 16:27:18 +0200
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
Message-ID: <qb33ykr73cr3j4yrwpjmmqcciriql2llntn5ilc2iw7t7ujsu4@tb33bhyvhpse>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
 <20230426-slinky-preface-0f40f3fefb0f@wendy>
 <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
 <20230426-colonize-policy-3657c4cfd4c7@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426-colonize-policy-3657c4cfd4c7@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 26, 2023 at 02:58:45PM +0100, Conor Dooley wrote:
> On Wed, Apr 26, 2023 at 03:08:25PM +0200, Andrew Jones wrote:
> > On Wed, Apr 26, 2023 at 01:47:39PM +0100, Conor Dooley wrote:
> > > On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> > > > On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > > > > Yangyu Chen reported that if an multi-letter extension begins with a
> > > > > capital letter the parser will treat the remainder of that multi-letter
> > > > > extension as single-letter extensions.
> > > > 
> > > > I think the problem is that the parser doesn't completely abort when
> > > > it sees something it doesn't understand. Continuing is risky since
> > > > it may be possible to compose an invalid string that gets the parser
> > > > to run off the rails.
> > > 
> > > Usually I am of the opinion that we should not seek the validate the dt
> > > in the kernel, since there are tools for doing so *cough* dt-validate
> > > *cough*. This one seemed like low hanging fruit though, since the parser
> > > handles having capital letters in any of the other places after the
> > > rv##, but falls over pretty badly for this particular issue.
> > > 
> > > In general, I don't think we need to be concerned about anything that
> > > fails dt-validate though, you kinda need to trust that that is correct.
> > > I'd argue that we might even do too much validation in the parser at
> > > present.
> > > Is there some attack vector, or ACPI related consideration, that I am
> > > unaware of that makes this risky?
> > 
> > C language + string processing == potential attack vector
> 
> Right. I thought there was some specific scenario that you had in mind,
> rather than the "obvious" "parsing strings is bad".

Yup, I only pointed out the obvious since it's always possible, at least
for me, to lose sight of the forest for the trees.

> What I was wondering is whether the devicetree is an attack vector you
> actually have to care about? I had thought it wasn't, hence asking.

Nope, I haven't put any thought into this potential attack vector beyond
this discussion.

> 
> > > > How about completely aborting, noisily, when the string doesn't match
> > > > expectations, falling back to a default string such as rv64ima instead.
> > > > That also ought to get faster corrections of device trees.
> > > 
> > > I did this first actually, but I was afraid that it would cause
> > > regressions?
> > > 
> > > If you have riscv,isa = "rv64imafdc_Zifencei_zicbom", yes that is
> > > invalid and dt-validate would have told you so, but at present that
> > > would be parsed as "rv64imafdc_zicbom" which is a perfect description of
> > > the hardware in question (since the meaning of i was set before RVI made
> > > a hames of things).
> 
> After thinking about it a bit cycling home, I don't actually think that
> this would be a regression. If your dt is not valid, then that's your
> problem, not ours :)
> Valid dt will be parsed correctly before and after such a change, so I
> think that that is actually okay.
> The dt-binding exists for a reason, and can be pointed to if anyone
> claims this is a regression I think.

I agree.

> 
> > > So that's why I opted to not do some sort of pr_err/BUG()/WARN() and
> > > try to keep processing the string. I'm happy to abort entirely on
> > > reaching a capital if people feel there's unlikely to be a fallout from
> > > that.
> > 
> > There might be fallout, but the kernel needs to defend itself. IMO, if
> > the kernel doesn't know how to parse something, then it should stop
> > trying to immediately, either with a BUG(), refusing to accept any
> > part of it, by fallbacking back to a default, or by only accepting what
> > it believes it parsed correctly.
> > 
> > The third option is probably a reasonable choice in this case.
> 
> My patch could be interpreted as meeting the criteria for option 3.
> I think you instead mean "stop parsing at that point & only report the
> extensions seen prior to the first bad one"?

Right.

Thanks,
drew
