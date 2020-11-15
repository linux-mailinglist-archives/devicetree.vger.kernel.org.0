Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D8F32B384C
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 20:09:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727460AbgKOTJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Nov 2020 14:09:23 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:48588 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726823AbgKOTJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Nov 2020 14:09:22 -0500
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 959B2804F2;
        Sun, 15 Nov 2020 20:09:17 +0100 (CET)
Date:   Sun, 15 Nov 2020 20:09:16 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Sean Paul <sean@poorly.run>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: display: mcde: Convert to YAML schema
Message-ID: <20201115190916.GB4067505@ravnborg.org>
References: <20201115185145.566772-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201115185145.566772-1-linus.walleij@linaro.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=7gkXJVJtAAAA:8
        a=Y1WVg7_6piav3bcYkzIA:9 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22
        a=cvBusfyB2V15izCimMoJ:22 a=E9Po1WZjFZOl8hwRPBS3:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,
On Sun, Nov 15, 2020 at 07:51:45PM +0100, Linus Walleij wrote:
> This moves the MCDE bindings over to using the YAML schema
> to describe the ST-Ericsson MCDE display controller,
> making use of the generic DSI controller schema.
> 
> In the process we correct an error in the old text bindings:
> the clocks for the SDI host controllers were specified as
> part of the main MCDE component while they should be
> specified in the DSI host controller subnodes. This was
> a leftover from an earlier iteration of the first patch
> series adding the MCDE.
> 
> We also add the "port" node, we will use this when adding
> LCD panels using the direct parallel interface DPI instead
> of DSI.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - Add resets to the bindings for future-proofing, set
>   additionalProperties: false
> - Extend commit message to explain the the old bindings
>   were incorrect.
Thanks, all looks good now.
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam
