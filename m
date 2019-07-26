Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3A0765A1
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726391AbfGZMZO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:25:14 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:33192 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbfGZMZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:25:14 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 7024E804B4;
        Fri, 26 Jul 2019 14:25:11 +0200 (CEST)
Date:   Fri, 26 Jul 2019 14:25:10 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Josef Lusticky <josef@lusticky.cz>, Daniel Vetter <daniel@ffwll.ch>
Cc:     robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, daniel@ffwll.ch,
        thierry.reding@gmail.com, airlied@linux.ie
Subject: Controllers with several interface options - one or more drivers?
Message-ID: <20190726122510.GA14341@ravnborg.org>
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
        a=wt4kVBOfN0H4b_kmb9MA:9 a=CjuIK1q_8ugA:10 a=Z5ABNNGmrOfJ6cZ5bIyy:22
        a=UDnyf2zBuKT2w-IlGP_r:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Josef, Daniel et al.

The driver that triggered this reply is a driver that adds parallel
support to ili9341 in a dedicated panel driver.
The issue here is that we already have a tiny driver that supports the
ili9341 controller - but with a slightly different configuration.

The ili9341 supports several interfaces - from the datasheet:
    "ILI9341 supports parallel 8-/9-/16-/18-bit data bus
     MCU interface, 6-/16-/18-bit data bus RGB interface and
     3-/4-line serial peripheral interface (SPI)"

Noralf - in another mail explained:
"
The MIPI Alliance has lots of standards some wrt. display controller
interfaces:
- MIPI DBI - Display Bus Interface (used for commands and optionally pixels)
- MIPI DPI - Display Pixel Interface (also called RGB interface or
DOTCLK interface)
- MIPI DSI - Display Serial Interface (commands and pixels)

The ili9341 supports both MIPI DBI and DPI.
"

MIPI DPI - is a good fit for a drm_panel driver.
MIPI DBI - requires a full display controller driver.

There are many other examples of driver SoC that in the same way
can be seen only as a panel or as a full display controller driver.

The open question here is if we should try to support both cases in the
same driver / file. Or shall we implment two different drivers.
One for the panel use-case. And one for the display controller usecase?

Not sure - so asking for feedback.

	Sam
