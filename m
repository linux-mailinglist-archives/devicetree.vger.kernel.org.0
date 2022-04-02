Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E5814EFE27
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 05:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240540AbiDBDVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 23:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbiDBDVs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 23:21:48 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEB551AD83
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 20:19:56 -0700 (PDT)
Received: from pendragon.ideasonboard.com (unknown [95.214.66.65])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id F3BE92E4;
        Sat,  2 Apr 2022 05:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648869594;
        bh=4zp1Gj103TcKmZzWzc8uz1vshlZ8498Aw6Uu2ezDuLE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZEv/g9MI0BZj/QmElPbbQV1npdC9nfCKdfG08oyO1PNynODg7LILUFB54uN5O1tS6
         bBlvSBtevONCyoeHlB4JXfd5SrdokvgwTfnuBPxuyv3vX2kPDEcdJxrDXZuGtUn+YS
         bkK9g0wn9OPByAr/Vx23biRvh06PvXAzrceEDP+M=
Date:   Sat, 2 Apr 2022 06:19:51 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in
 of_get_drm_panel_display_mode()
Message-ID: <YkfAtkOtaWksnrlH@pendragon.ideasonboard.com>
References: <20220401163755.302548-1-marex@denx.de>
 <20220401163755.302548-2-marex@denx.de>
 <YkdImJRIRkaqeGDl@pendragon.ideasonboard.com>
 <efaa195a-bbdc-ca24-eccc-271995dfd27f@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <efaa195a-bbdc-ca24-eccc-271995dfd27f@denx.de>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_SBL_CSS,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 01, 2022 at 10:36:24PM +0200, Marek Vasut wrote:
> On 4/1/22 20:46, Laurent Pinchart wrote:
> > On Fri, Apr 01, 2022 at 06:37:54PM +0200, Marek Vasut wrote:
> >> Make the width-mm/height-mm panel properties mandatory in
> >> of_get_drm_panel_display_mode(), print error message and
> >> return -ve in case these DT properties are not present.
> >> This is needed to correctly report panel dimensions.
> > 
> > Can we guarantee this won't cause a regression ?
> 
> For the upstream DTs, I think we can.
> For downstream DTs, we cannot know.

Are there users of this function whose DT bindings don't require the
width-mm and height-mm properties ?

-- 
Regards,

Laurent Pinchart
