Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB28464790
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2019 15:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727674AbfGJNvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jul 2019 09:51:15 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:56642 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726080AbfGJNvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jul 2019 09:51:11 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 7D4A9803C3;
        Wed, 10 Jul 2019 15:51:08 +0200 (CEST)
Date:   Wed, 10 Jul 2019 15:51:07 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Josef Lusticky <josef@lusticky.cz>
Cc:     robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, daniel@ffwll.ch,
        thierry.reding@gmail.com, airlied@linux.ie
Subject: Re: [PATCH v2 0/2] Add DRM ILI9341 parallel RGB panel driver
Message-ID: <20190710135107.GD11791@ravnborg.org>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190708145618.26031-1-josef@lusticky.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
        a=-lLDmteVhdPe8IppZgUA:9 a=CjuIK1q_8ugA:10
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Josef.

On Mon, Jul 08, 2019 at 04:56:16PM +0200, Josef Lusticky wrote:
> Hi,
> This is the v2 of the patch-set which adds support for
> Ilitek ILI9341 parallel RGB panels.
> 
> The ILI9341 chip supports both parallel RGB input mode and SPI input mode.
> This driver adds support for the parallel RGB input mode.
> 
> Changes since v1:
> * Device-tree bindings in one file
> * D/C GPIO pin is optional
> * mipi_dbi_* functions used to initialize the display
> * entry in MAINTAINERS sorted alphabetically
> * Makefile, Kconfig: DRM_PANEL_ILITEK_IL9341 renamed to DRM_PANEL_ILITEK_ILI9341
> * Kconfig: depend on BACKLIGHT_CLASS_DEVICE
> * Kconfig: select TINYDRM_MIPI_DBI
> * order of include files changed
> * drm_mode_duplicate checked for failure

Thanks for doing all this.

Some minor details. Please fix and resend so we can these patches
applied.
Please also re-check if you forgot an ack from Rob on the bindings file.

	Sam
