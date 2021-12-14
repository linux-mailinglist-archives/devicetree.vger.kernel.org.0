Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0C32474BFA
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 20:33:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237455AbhLNTdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 14:33:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231935AbhLNTdE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 14:33:04 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64CF1C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 11:33:04 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id B17C5CE1A72
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 19:33:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3D2C34604;
        Tue, 14 Dec 2021 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639510380;
        bh=gMJZGQfvKIbCb+N3I0Q+m8xO+2asDi2MYaDM4GHOUpE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IKYZ3/1+g/0SiOZ6WmB9xw5g6tU0NfsgvnOrikXZfiQmdClKrYHaoP1uhausb7s/a
         CNhQn/I4H4XbdW8+/7BbeYMgsKK/e1n2w47gnBVdkLWiVIRamkjq39CuzXqlPsgJEg
         B1KtR3tvzUc/qm6quJocWurVkyCk53SuXgB/YCvZGq8+eGW/hrMvp2BrVh7r8qamPJ
         R1SS1gz4zj5QpGIUahHslt6P0mvWQ/4rCg4q1NGWGUkLt3vGqmSWO6BBmItPyJShpV
         4FYIGhZhdFKHx/gx6eXbPOffxRqvbfONWWpzTtYh0yyAVO/hCziuE2oW1QoSFpWFbi
         uIg1soTOlPbUA==
Date:   Tue, 14 Dec 2021 19:32:55 +0000
From:   Will Deacon <will@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com,
        kernel-team@android.com, suzuki.poulose@arm.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] arm64: PMU updates
Message-ID: <20211214193254.GA16018@willie-the-truck>
References: <cover.1639490264.git.robin.murphy@arm.com>
 <163950511279.725168.3379356222366423286.b4-ty@kernel.org>
 <7cbd2e35-89c8-50e4-22de-a6c2277cac3e@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7cbd2e35-89c8-50e4-22de-a6c2277cac3e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 14, 2021 at 07:02:57PM +0000, Robin Murphy wrote:
> On 2021-12-14 18:33, Will Deacon wrote:
> > On Tue, 14 Dec 2021 14:16:12 +0000, Robin Murphy wrote:
> > > Here's v2, with the DSU binding actually finished (oh the shame...) and
> > > the NVIDIA PMU patch pulled in to benefit from the cleanup and keep
> > > things manageably together. The initial binding patch from v1 is no
> > > longer included since Rob has picked it up separately.
> > > 
> > > Refactoring arm_pmu's probing to be more modular turns out to be a
> > > substantial yak to shave, so in the end I decided it *is* worth
> > > implementing Mark's macro suggestion now - after all, it can simply be
> > > converted from a function template to a structure template as and when
> > > the time comes.
> > > 
> > > [...]
> > 
> > Applied first three to will (for-next/perf-cpu), thanks!
> > 
> > [1/5] arm64: perf: Support Denver and Carmel PMUs
> >        https://git.kernel.org/will/c/d4c4844a9b47
> > [2/5] arm64: perf: Simplify registration boilerplate
> >        https://git.kernel.org/will/c/6ac9f30bd43b
> > [3/5] arm64: perf: Support new DT compatibles
> >        https://git.kernel.org/will/c/893c34b60a59
> 
> Thanks Will! Just to clarify, are you leaving the DSU binding patches for
> Rob to pick up, or waiting for the typo to get fixed? (and if the former -
> Rob, would you like me to resend a v3 with the typo fixed?)

I'm about to disappear on holiday, so I figured it was best to take the
first three patches and leave the other two (as they seem less urgent and
also had comment from Suzuki). If somebody else grabs 'em when they're
ready, so be it, otherwise I'll pick them next time around.

Cheers,

Will
