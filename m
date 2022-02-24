Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B72CF4C3600
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 20:39:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232996AbiBXThk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 14:37:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233786AbiBXThj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 14:37:39 -0500
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com [91.221.196.228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5DC812A76B
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:37:06 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx2.smtp.larsendata.com (Halon) with ESMTPS
        id 31a4f207-95a9-11ec-b2df-0050568cd888;
        Thu, 24 Feb 2022 19:37:25 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id 13FB4194B5A;
        Thu, 24 Feb 2022 20:37:10 +0100 (CET)
Date:   Thu, 24 Feb 2022 20:37:02 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org,
        maxime@cerno.tech, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH v5 5/5] drm/tiny: Add MIPI DBI compatible SPI driver
Message-ID: <YhfeXiFzFkk+6pue@ravnborg.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
 <20220224152708.14459-6-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224152708.14459-6-noralf@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,

On Thu, Feb 24, 2022 at 04:27:08PM +0100, Noralf Trønnes wrote:
> Add a driver that will work with most MIPI DBI compatible SPI panels.
> This avoids adding a driver for every new MIPI DBI compatible controller
> that is to be used by Linux. The 'compatible' Device Tree property with
> a '.bin' suffix will be used to load a firmware file that contains the
> controller configuration.
> 
> Example (driver will load sainsmart18.bin):
> 
> display@0 {
> 	compatible = "sainsmart18", "panel-mipi-dbi-spi";
> ...
> };
> 
> v5:
> - kconfig: s/DRM_KMS_CMA_HELPER/DRM_GEM_CMA_HELPER/ (Sam)
> - kconfig: Add select VIDEOMODE_HELPERS (Sam)
> - kconfig: Add wiki url in the description (Sam)
> - Split out and use of_get_drm_panel_display_mode()(Sam)
> - Only use the first compatible to look for a firmware file since the
>   binding mandates 2 compatibles.
> - Make having a firmware file mandatory so we can print an error
>   message if it's missing to improve the user experience. It's very
>   unlikely that a controller doesn't need to be initialized and if
>   it doesn't, it's possible to have a firmware file containing only
>   a DCS NOP.
> 
> v4:
> - Move driver to drm/tiny where the other drivers of its kind are located.
>   The driver module will not be shared with a future DPI driver after all.
> 
> v3:
> - Move properties to DT (Maxime)
> - The MIPI DPI spec has optional support for DPI where the controller is
>   configured over DBI. Rework the command functions so they can be moved
>   to drm_mipi_dbi and shared with a future panel-mipi-dpi-spi driver
> 
> v2:
> - Drop model property and use compatible instead (Rob)
> - Add wiki entry in MAINTAINERS
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>

Looks good.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

