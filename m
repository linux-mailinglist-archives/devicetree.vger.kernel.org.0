Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C03D4C35E5
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 20:30:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbiBXTam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 14:30:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230453AbiBXTam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 14:30:42 -0500
Received: from mx2-1.smtp.larsendata.com (mx2-1.smtp.larsendata.com [91.221.196.218])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04C420E782
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:30:09 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx2.smtp.larsendata.com (Halon) with ESMTPS
        id 37e75c49-95a8-11ec-b2df-0050568cd888;
        Thu, 24 Feb 2022 19:30:26 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id BDB88194B5A;
        Thu, 24 Feb 2022 20:30:10 +0100 (CET)
Date:   Thu, 24 Feb 2022 20:30:03 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org,
        maxime@cerno.tech, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH v5 2/5] drm/modes: Remove trailing whitespace
Message-ID: <Yhfcu44V5LO4qZ/9@ravnborg.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
 <20220224152708.14459-3-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224152708.14459-3-noralf@tronnes.org>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,SCC_BODY_URI_ONLY,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 24, 2022 at 04:27:05PM +0100, Noralf Trønnes wrote:
> Remove trailing whitespace from a comment.
> 
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/gpu/drm/drm_modes.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index 96b13e36293c..77a4c8dd0bb8 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -127,7 +127,7 @@ EXPORT_SYMBOL(drm_mode_probed_add);
>   * according to the hdisplay, vdisplay, vrefresh.
>   * It is based from the VESA(TM) Coordinated Video Timing Generator by
>   * Graham Loveridge April 9, 2003 available at
> - * http://www.elo.utfsm.cl/~elo212/docs/CVTd6r1.xls 
> + * http://www.elo.utfsm.cl/~elo212/docs/CVTd6r1.xls
>   *
>   * And it is copied from xf86CVTmode in xserver/hw/xfree86/modes/xf86cvt.c.
>   * What I have done is to translate it by using integer calculation.
> -- 
> 2.33.0
