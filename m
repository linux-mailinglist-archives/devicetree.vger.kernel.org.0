Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E18C64F990C
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 17:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbiDHPNB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 11:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237461AbiDHPMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 11:12:46 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D0B7ECB3A
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 08:10:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 20396B82AA0
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 15:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFC42C385A3
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 15:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649430639;
        bh=fsZOXMwHu2ZNIXU2kc3vSm8dbR+voAow4ZtRTPsdEtM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=DABJ8pclKmv2H3RXc6OM8ogQ9CsUZpn6Vgw1O3z0ma3ymWfnmMG+RJOcZqNqsr0oQ
         /c+cLt4uUgHzwp2XCqdJtGKoYQknyRpsZKp9XKMTVfuah6uqNJRV3p9+MyrXXRbhJd
         jz6H3AYuBsmelQaIdDrc+DECS9Ul5Vul6Qfr/Y2EXSUBN2SLgkgLz2ecAcpy639Lrz
         D1y5wegLSX0Tyw1pM/2J6Grb0UjBftcEeaWD4MFjJLAAe2+rjnga0qSMLeqgi/X4jq
         tFrOJqZMisd1f000zEKoAeTEwxomIAaHiYa/wJAYvGnQgTH+HeGOkmpkyZTOvHK1Aw
         fvETG4BWQc3Iw==
Received: by mail-il1-f172.google.com with SMTP id y16so6662718ilc.7
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 08:10:39 -0700 (PDT)
X-Gm-Message-State: AOAM533ah/X7usy5oiYrOtO5mHLGOTAwwWRgsbGaAWMzP4VK2bT74IZ1
        klgga2vRFgcoqemiZSPYvVgX73Tffi5eKEoOCw==
X-Google-Smtp-Source: ABdhPJyM0sjfy7XBwS0atfEtqzgudyb/jAkrEq9JqvSRloHOmVV5OKHjiKalS30FHFJ3JI7E4JWIs/FsESGo/ucU+A8=
X-Received: by 2002:a05:6e02:b43:b0:2ca:89c0:896a with SMTP id
 f3-20020a056e020b4300b002ca89c0896amr1426624ilu.37.1649430638943; Fri, 08 Apr
 2022 08:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <4175872e-c4d3-4504-2de8-f9a2b6c36fbc@quicinc.com>
In-Reply-To: <4175872e-c4d3-4504-2de8-f9a2b6c36fbc@quicinc.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 8 Apr 2022 10:10:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ7bDSya+YTi33wrw2xv54cK=3K7gP5FOjufz3z-Xdc6Q@mail.gmail.com>
Message-ID: <CAL_JsqJ7bDSya+YTi33wrw2xv54cK=3K7gP5FOjufz3z-Xdc6Q@mail.gmail.com>
Subject: Re: Using devicetree in a non-kernel environment
To:     "T.Michael Turney" <quic_mturney@quicinc.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 7, 2022 at 1:45 PM T.Michael Turney
<quic_mturney@quicinc.com> wrote:
>
> Folks,
> I posted some queries to this list a couple of years back when we were
> first getting started.  As I discovered our basic model differs from the
> kernel use-case in one very important area:  we want our builds to fail
> when anything is out of whack.
>
> For example, DTC only throws an error on syntax and we want all of the
> semantic warnings to cause an error and halt the build.  We addressed
> this by creating a wrapper script that handles CPP + DTC invocation and
> catches all warnings/errors and exits with error-code on any warning or
> error.

Why work-around what you want? Contribute to dtc and add the option.

> We are now starting to use dt-schema and experiencing deja-vu.  We want
> all warnings/errors to break things.  We have again created some wrapper
> scripts and are well down the path, but a couple of questions remain.

The current state of affairs is if we errored out on everything, no
one would be able to run the tools. It's all I can do to keep the
errors we do have from getting merged. The bindings are generally
warning free, but dts files have 1000s.

> 1. There is tight coupling of compatible property with .yaml file for
> dt-schema.  Is there a way to force a rule that if a compatible property
> is found in the tree there must be a corresponding yaml file as well?

I wish.

There's a couple of things we could do. The problem is how do you
extract compatible strings from the C code? For drivers that are
modules, the compatible strings do end up in the module meta-data for
autoloading. That could be extracted and checked. That doesn't get the
non-module cases.

The other idea I have is to extract properties and type information
from schema (that's already done) and put that into C structures to
use to validate calls reading properties. That of course would need to
be a debug feature. Something similar with checking compatible strings
could be possible too. We already extract all compatibles in schemas
into a generated schema for checking undocumented compatibles in dts
files. If for what you care about has a dts file(s), then checking the
kernel side would be redundant.

> 2. Since a lot of our devicetree nodes have a 1-1 mapping to a C struct,
> is there a way to enforce property ordering with dt-schema and yaml
> files today?

You should not depend on property or node ordering. That is NOT part of the ABI.

Rob
