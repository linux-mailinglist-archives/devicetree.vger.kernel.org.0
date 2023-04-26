Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0EF96EF51C
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 15:08:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240675AbjDZNIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 09:08:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240506AbjDZNIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 09:08:36 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F7CD213A
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 06:08:29 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-2f6401ce8f8so4410271f8f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 06:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1682514507; x=1685106507;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zO6vH5+SYnZM9P+Lcm+T/ozX1ikCX4RYJyCLp2R57Gw=;
        b=S8a9Eak+/j4SiDodR1mckDjlKMQIdzVkADH6s9svxEpQ0em5eX5r+1ASg0ObPtw88x
         Yx0BbsU7+QfjgcR0lSKEHdwrUzV/XGV6NhEkXllApzBiCxk8HcmrdVL/svkDy9/TfO4H
         brychuIrom+kHeFkEqL0oebA+qrXMKvCukRgms7KhO+uAHTlSppIRs+ZKDMNC32puXYc
         seUJKopJ8AKeD6n7ZKrHdKNU1OqtPQuu17GLcsx4PVc72PqCtReqRhwabnvK30GNBR6X
         FGiGsBS5ZyKgxA6KZxI18fhCykBD1ZUlL6eMQRG6kGH3GYqNwfBOvwptwzEP9LFHLbhL
         kptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682514507; x=1685106507;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zO6vH5+SYnZM9P+Lcm+T/ozX1ikCX4RYJyCLp2R57Gw=;
        b=hLosV6D8Q/MhqHpTW6l0mVsp1wKCewC9JWl1FuQJHE/i9kHjNTCCH21IMeDcN6wnly
         1/mF1QKu1xZRRFRPcemsr8vdUaJ1d0VHv+0sfJCjawsLTdhZS8y6YWuSxly7yG1iD5E3
         X3wV1JW84eMIVwzlMGzXLcfyYwuQU6AyF9S/hsnB+dbuvJsJM0V8WwUhWksZuuNSLFYS
         AEEeVNHHE1HEwxIMGMXECbLQhI+UrSbf9I5PRHA1xGJ2v36VzEjbZVj6ajbuJnPj+XtY
         Kmm98Qf3Ja/FEjwfC2bEwec1aRW3mLlVXBxH60CfSwFCBBhhYvWcnwnHJVoXgfjLxD0N
         5R/Q==
X-Gm-Message-State: AAQBX9fhXiXQzEz9WUzDFbFc4ueNcGeBYQjJbt+wr8+eJIytqY68OoBe
        N/p0XBdz3VTi46hfqblLt/bPiQ==
X-Google-Smtp-Source: AKy350arj0rP8zd1btzjhE01skkkXlhZxAeMfyE14sPnW9XXYx/SllF1bvXA5+sR/y9L/6ZXOaRBKw==
X-Received: by 2002:a05:6000:1c9:b0:2ff:a878:2de9 with SMTP id t9-20020a05600001c900b002ffa8782de9mr13277607wrx.21.1682514507434;
        Wed, 26 Apr 2023 06:08:27 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id n17-20020a5d4c51000000b002d6f285c0a2sm15849622wrt.42.2023.04.26.06.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 06:08:26 -0700 (PDT)
Date:   Wed, 26 Apr 2023 15:08:25 +0200
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
Message-ID: <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
 <20230426-slinky-preface-0f40f3fefb0f@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426-slinky-preface-0f40f3fefb0f@wendy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 26, 2023 at 01:47:39PM +0100, Conor Dooley wrote:
> On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> > On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > > Yangyu Chen reported that if an multi-letter extension begins with a
> > > capital letter the parser will treat the remainder of that multi-letter
> > > extension as single-letter extensions.
> > 
> > I think the problem is that the parser doesn't completely abort when
> > it sees something it doesn't understand. Continuing is risky since
> > it may be possible to compose an invalid string that gets the parser
> > to run off the rails.
> 
> Usually I am of the opinion that we should not seek the validate the dt
> in the kernel, since there are tools for doing so *cough* dt-validate
> *cough*. This one seemed like low hanging fruit though, since the parser
> handles having capital letters in any of the other places after the
> rv##, but falls over pretty badly for this particular issue.
> 
> In general, I don't think we need to be concerned about anything that
> fails dt-validate though, you kinda need to trust that that is correct.
> I'd argue that we might even do too much validation in the parser at
> present.
> Is there some attack vector, or ACPI related consideration, that I am
> unaware of that makes this risky?

C language + string processing == potential attack vector

> 
> > How about completely aborting, noisily, when the string doesn't match
> > expectations, falling back to a default string such as rv64ima instead.
> > That also ought to get faster corrections of device trees.
> 
> I did this first actually, but I was afraid that it would cause
> regressions?
> 
> If you have riscv,isa = "rv64imafdc_Zifencei_zicbom", yes that is
> invalid and dt-validate would have told you so, but at present that
> would be parsed as "rv64imafdc_zicbom" which is a perfect description of
> the hardware in question (since the meaning of i was set before RVI made
> a hames of things).
> 
> So that's why I opted to not do some sort of pr_err/BUG()/WARN() and
> try to keep processing the string. I'm happy to abort entirely on
> reaching a capital if people feel there's unlikely to be a fallout from
> that.

There might be fallout, but the kernel needs to defend itself. IMO, if
the kernel doesn't know how to parse something, then it should stop
trying to immediately, either with a BUG(), refusing to accept any
part of it, by fallbacking back to a default, or by only accepting what
it believes it parsed correctly.

The third option is probably a reasonable choice in this case.

Thanks,
drew
