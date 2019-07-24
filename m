Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C697873703
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 20:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727582AbfGXSxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 14:53:33 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:48512 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728726AbfGXSxd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 14:53:33 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 8DB608061A;
        Wed, 24 Jul 2019 20:53:30 +0200 (CEST)
Date:   Wed, 24 Jul 2019 20:53:29 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Daniel Tang <dt.tangr@gmail.com>,
        Fabian Vogt <fabian@ritter-vogt.de>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/3] RTF: drm/panel: simple: Add TI nspire panels
Message-ID: <20190724185329.GB22640@ravnborg.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-3-linus.walleij@linaro.org>
 <20190723175445.GA23588@ravnborg.org>
 <CACRpkdYmO=fBj3MFoQdLrEgA05BLZR3tNv9WhqjLeJ0R0cdDbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdYmO=fBj3MFoQdLrEgA05BLZR3tNv9WhqjLeJ0R0cdDbQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
        a=jZMA-zlA99eSfViNHAoA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus.

On Wed, Jul 24, 2019 at 03:58:40PM +0200, Linus Walleij wrote:
> Hi Sam,
> 
> fixed most things, one question remain:
> 
> On Tue, Jul 23, 2019 at 7:54 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> 
> > Furthermore I did not see any bindings for the panels.
> > If they indeed are missing, then please provide bindings in the yaml
> > format.
> 
> IIUC we do not create binding documents for the simple panels,
> but I can do this of course, just vaguely remember that the DT
> people didn't want to see bindings that all look the same
> but instead rely on panel-common.txt

My understanding is that the bindings for th panels should list what is
required/optional, but with reference to panel-common (which IIRC has a
new name in the yaml world).
If you look in bindings/display/panels you can see a lot of simple
panels listed.

	Sam
