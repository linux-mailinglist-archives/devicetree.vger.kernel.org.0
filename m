Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 59362892D0
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2019 19:23:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725888AbfHKRXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Aug 2019 13:23:07 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:39423 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725847AbfHKRXH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Aug 2019 13:23:07 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id EF89F20027;
        Sun, 11 Aug 2019 19:23:02 +0200 (CEST)
Date:   Sun, 11 Aug 2019 19:23:01 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 0/9] DRM panel drivers for omapdrm
Message-ID: <20190811172301.GH14660@ravnborg.org>
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=xq3W2uTSAAAA:8
        a=boRT5ks94X-tM-6Lfz4A:9 a=CjuIK1q_8ugA:10 a=P5L7wpMTXyg1GfFA3Gwx:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent.

On Sun, Aug 11, 2019 at 02:10:39AM +0300, Laurent Pinchart wrote:
> Hello everybody,
> 
> These 9 patches have initially been posted as part of the larger "[PATCH
> 00/60] drm/omap: Replace custom display drivers with drm_bridge and
> drm_panel" series, hence the v2 in the subject prefix.
> 
> I'm posting this second version separately per Sam's request as the rest
> of the original series is expected to take more time to process through
> review.
Thanks, make good sense (to me) that we process these now while waiting
for the dust to settel on the other more invasive patches.

> 
> There's nothing very special here. The first three patches add DT vendor
> prefixes and DT bindings. Since v1 patch 3/9 has been converted from
> text to YAML, and as I'm not very familiar with YAML DT bindings, I'm
> eagerly waiting for reviews.
> 
> The last six patches add new panel drivers. The code originates from the
> corresponding omapdrm-specific panel drivers, which explains why only
> one new DT binding is needed as most of them are already present.
> 
> Please see individual patches for changelogs. Sam, I believe I've taken
> all your comments into account, I hope none fell through the cracks.
I have been through the patches - all looked good.
One generel comment about drm_panel_remove().

The DT for the NEC NL8048HL11 needs to be reviewed, and then we can
land all patches in one go.
Unless someone else put some review effort in and find something.

	Sam


> 
> The patches are based on top of drm-misc-next and can be found at
> 
> 	git://linuxtv.org/pinchartl/media.git omapdrm/panels
> 
> Laurent Pinchart (9):
>   dt-bindings: Add vendor prefix for LG Display
>   dt-bindings: Add legacy 'toppoly' vendor prefix
>   dt-bindings: display: panel: Add bindings for NEC NL8048HL11 panel
>   drm/panel: Add driver for the LG Philips LB035Q02 panel
>   drm/panel: Add driver for the NEC NL8048HL11 panel
>   drm/panel: Add driver for the Sharp LS037V7DW01 panel
>   drm/panel: Add driver for the Sony ACX565AKM panel
>   drm/panel: Add driver for the Toppoly TD028TTEC1 panel
>   drm/panel: Add driver for the Toppoly TD043MTEA1 panel
> 
>  .../display/panel/nec,nl8048hl11.yaml         |  49 ++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   5 +
>  drivers/gpu/drm/panel/Kconfig                 |  46 ++
>  drivers/gpu/drm/panel/Makefile                |   6 +
>  drivers/gpu/drm/panel/panel-lg-lb035q02.c     | 237 ++++++
>  drivers/gpu/drm/panel/panel-nec-nl8048hl11.c  | 247 +++++++
>  .../gpu/drm/panel/panel-sharp-ls037v7dw01.c   | 226 ++++++
>  drivers/gpu/drm/panel/panel-sony-acx565akm.c  | 693 ++++++++++++++++++
>  drivers/gpu/drm/panel/panel-tpo-td028ttec1.c  | 381 ++++++++++
>  drivers/gpu/drm/panel/panel-tpo-td043mtea1.c  | 508 +++++++++++++
>  10 files changed, 2398 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
>  create mode 100644 drivers/gpu/drm/panel/panel-lg-lb035q02.c
>  create mode 100644 drivers/gpu/drm/panel/panel-nec-nl8048hl11.c
>  create mode 100644 drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
>  create mode 100644 drivers/gpu/drm/panel/panel-sony-acx565akm.c
>  create mode 100644 drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
>  create mode 100644 drivers/gpu/drm/panel/panel-tpo-td043mtea1.c
> 
> -- 
> Regards,
> 
> Laurent Pinchart
