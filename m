Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 097B314F122
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2020 18:14:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726793AbgAaROL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jan 2020 12:14:11 -0500
Received: from asavdk3.altibox.net ([109.247.116.14]:34622 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726668AbgAaROL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jan 2020 12:14:11 -0500
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id 28F7220047;
        Fri, 31 Jan 2020 18:14:08 +0100 (CET)
Date:   Fri, 31 Jan 2020 18:14:06 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
        Maxime Ripard <mripard@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 0/3] dt-bindings: convert timing + panel-dpi to DT
 schema
Message-ID: <20200131171406.GC5464@ravnborg.org>
References: <20200125203454.7450-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200125203454.7450-1-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
        a=CBQ9Mmf69siU5x-MksAA:9 a=CjuIK1q_8ugA:10
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all.

On Sat, Jan 25, 2020 at 09:34:51PM +0100, Sam Ravnborg wrote:
> This set of patches convert display-timing.txt to DT schema.
> To do that add a panel-timing.yaml file that include all the
> panel-timing properties and use this in panel-common and in display-timings.
> 
> panel-dpi was also converted so we have no .txt users left of panel-timing
> in panel/
> 
> Everything passed dt_binding_check - and the trivial errors I tried in
> the examples was all catched during validation.
> 
> This work was triggered by a patch-set from Oleksandr Suvorov aiming
> at updating panel-lvds to support panel-dpi too.
> This will make it simple to add additional properties to panel-dpi.
> 
> Thanks for the quick responses on v2 and likewise the quick
> feedback on the request for the license change!
> 
> Highlights from v2 - see individual patches for details.
> - Got acks for the license change
> - Simplfied panel-timings bindings
> - panel-dpi can now be used without a panel specific compatible
>   So panel-dpi can be used as a generic binding for dumb panels

Any feedback on this patchset?

	Sam
