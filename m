Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BDD629576E
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 06:59:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2507672AbgJVE7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 00:59:35 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:51402 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2507671AbgJVE7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 00:59:34 -0400
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id E906A80659;
        Thu, 22 Oct 2020 06:59:30 +0200 (CEST)
Date:   Thu, 22 Oct 2020 06:59:29 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] drm/panel: mantix panel reset fixes
Message-ID: <20201022045929.GA2775675@ravnborg.org>
References: <cover.1602584953.git.agx@sigxcpu.org>
 <20201016142916.GA1184974@ravnborg.org>
 <20201017091307.GA2885@bogon.m.sigxcpu.org>
 <20201017104736.GA2822081@ravnborg.org>
 <20201019154437.GE401619@phenom.ffwll.local>
 <20201020115711.GA102703@bogon.m.sigxcpu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201020115711.GA102703@bogon.m.sigxcpu.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=fu7ymmwf c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=8nJEP1OIZ-IA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=e5mUnYsNAAAA:8
        a=ze386MxoAAAA:8 a=7gkXJVJtAAAA:8 a=rBIqfxwrrtgd4LGA3nsA:9
        a=wPNLvfGTeEIA:10 a=vwX7oiHrwKcA:10 a=AjGcO6oz07-iQ99wixmX:22
        a=Vxmtnl_E_bksehYqCbjh:22 a=iBZjaW-pnkserzjvUTHh:22
        a=E9Po1WZjFZOl8hwRPBS3:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Guido.

On Tue, Oct 20, 2020 at 01:57:11PM +0200, Guido Günther wrote:
> Hi Daniel, Sam,
> On Mon, Oct 19, 2020 at 05:44:37PM +0200, Daniel Vetter wrote:
> > On Sat, Oct 17, 2020 at 12:47:36PM +0200, Sam Ravnborg wrote:
> > > Hi Guido.
> > > 
> > > On Sat, Oct 17, 2020 at 11:13:07AM +0200, Guido Günther wrote:
> > > > Hi Sam,
> > > > On Fri, Oct 16, 2020 at 04:29:16PM +0200, Sam Ravnborg wrote:
> > > > > Hi Guido.
> > > > > On Tue, Oct 13, 2020 at 12:32:45PM +0200, Guido Günther wrote:
> > > > [..snip..]
> > > > > > 
> > > > > > Changes from v1:
> > > > > >  - As per review comments by Fabio Estevam
> > > > > >    https://lore.kernel.org/dri-devel/CAOMZO5B5ECcConvKej=RcaF8wvOxgq7nUzKJ-ad0aSAOzUqtbQ@mail.gmail.com/
> > > > > >    - Fix typo in commit messages
> > > > > >  - As per review comments by Rob Herring
> > > > > >    https://lore.kernel.org/dri-devel/20200929174624.GA832332@bogus/
> > > > > >    - Don't use an array of reset lines
> > > > > > 
> > > > > > Guido Günther (3):
> > > > > >   drm/panel: mantix: Don't dereference NULL mode
> > > > > >   drm/panel: mantix: Fix panel reset
> > > > > >   dt-binding: display: Require two resets on mantix panel
> > > > > 
> > > > > All applied to drm-misc-next and pushed out.
> > > > > And then I remembered you had commit right - sigh.
> > > > 
> > > > Thanks! Is there any special care needed to get that into 5.10? The
> > > > driver landed there in 72967d5616d3f0c714f8eb6c4e258179a9031c45.
> > > 
> > > As the patches was applied to drm-misc-next the easiet path would
> > > be to cherry-pick them and apply to drm-misc-fixes.
> > > dim has cherry-pick support - try to use it rahter than doing it by
> > > hand.
> > 
> > drm-misc-next-fixes while we're between freeze and merge window end:
> > 
> > https://drm.pages.freedesktop.org/maintainer-tools/committer-drm-misc.html#where-do-i-apply-my-patch
> 
> Great. Thanks for the pointer, that works. Now i get:
> 
>   $ ../maintainer-tools/dim push --dry-run
>   dim: 3532f0117258 ("dt-binding: display: Require two resets on mantix panel"): mandatory review missing.
>   dim: c90f95ad6d05 ("drm/panel: mantix: Fix panel reset"): mandatory review missing.
>   dim: 8b557f793e69 ("drm/panel: mantix: Don't dereference NULL mode"): mandatory review missing.
>   dim: ERROR: issues in commits detected, aborting
> 
> and in fact there's only Signed-off-by's on it:
> 
>   Fixes: 72967d5616d3 ("drm/panel: Add panel driver for the Mantix MLAF057WE51-X DSI panel")
>   Signed-off-by: Guido Günther <agx@sigxcpu.org>
>   Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>   Link: https://patchwork.freedesktop.org/patch/msgid/ba71a8ab010d263a8058dd4f711e3bcd95877bf2.1602584953.git.agx@sigxcpu.org
> 
> Sam, I assume your Signed-off-by's should have been Reviewed-by ?
> O.k. to fix that up in the commit message before pushing to
> drm-misc-next?
Fine to add my r-b.

For patches I push I always read the patch - but seldom claim that I
review them. It seems a bit implicit I think - but maybe this is just
bad practice on my side.

Then I also avoid the endless discussion with myself it what I did
warrant an a-b or r-b.

	Sam
