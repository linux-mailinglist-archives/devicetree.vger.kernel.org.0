Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 693221D06F
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 22:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726134AbfENUT7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 16:19:59 -0400
Received: from mail-it1-f196.google.com ([209.85.166.196]:38296 "EHLO
        mail-it1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726044AbfENUT7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 16:19:59 -0400
Received: by mail-it1-f196.google.com with SMTP id i63so910007ita.3
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 13:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lK8c734xh5U5PM3ABKp/9nxVkeJ2kE5gY87Z6hnyLjY=;
        b=JrdzShqj4AAKJynxhTlDLdXfyMH6FfMSFVcpz+jPigx+4snNEm2zAOyfOz9eS4LN+a
         xDsJL/eA1v5+U3QfYaBDpBsz5WDPwztpGwDdfe366ZNQfnlH81JmWgUpgFJYNzZKp9nh
         evxsuT1XgIS4NYKry6+BcbUlqgTOS5uHRqRL/5+ZLktgv+me/hfNUo8Z8CHx/i3g7AJh
         qTFwodIygA+JXsXKZWK0NAtz8ueUlD5CBr2FH8TlS5wyTZ+ZEoMirS/letGI0oUWBSvT
         Ub9xWOf9ODC006Sd8LTerElkbWb+cAPu2FlE/W7gETWRnAceFOlUEKoNzukMu3gS9R3E
         dPgw==
X-Gm-Message-State: APjAAAX2kRyYfB1sTGHtX5kofLNkLVAYDFVmxhjRg3iRvRaId1p11ruf
        qT6FEx9OD8y2AGK0/ECE/ubp5w==
X-Google-Smtp-Source: APXvYqw5Ieb4O+HXGg5FGMOQuh00DKqk4E7AnX5MHmnns5jJT4DhWDpnXg9aD82Klnzt0ms9U6gjAw==
X-Received: by 2002:a02:c4c6:: with SMTP id h6mr25419071jaj.33.1557865198005;
        Tue, 14 May 2019 13:19:58 -0700 (PDT)
Received: from chromium.org ([2620:15c:183:0:92f:a80a:519d:f777])
        by smtp.gmail.com with ESMTPSA id m189sm25150itm.21.2019.05.14.13.19.56
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 14 May 2019 13:19:57 -0700 (PDT)
Date:   Tue, 14 May 2019 14:19:52 -0600
From:   Drew Davenport <ddavenport@chromium.org>
To:     Louis Kuo <louis.kuo@mediatek.com>
Cc:     hans.verkuil@cisco.com, laurent.pinchart+renesas@ideasonboard.com,
        tfiga@chromium.org, keiichiw@chromium.org, matthias.bgg@gmail.com,
        mchehab@kernel.org, yuzhao@chromium.org, zwisler@chromium.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
        sj.huang@mediatek.com, christie.yu@mediatek.com,
        holmes.chiou@mediatek.com, frederic.chen@mediatek.com,
        Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
        Rynn.Wu@mediatek.com, linux-media@vger.kernel.org,
        srv_heupstream@mediatek.com, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH V2 0/4] media: support Mediatek sensor interface
 driver
Message-ID: <20190514201952.GA107202@chromium.org>
References: <20190512060005.5444-1-louis.kuo@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190512060005.5444-1-louis.kuo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Louis,

On Sun, May 12, 2019 at 02:00:01PM +0800, Louis Kuo wrote:
> Hello,
> 
> This is the RFC patch adding Sensor Inferface(seninf) driver on
> Mediatek mt8183 SoC, which will be used in camera features on CrOS application.
> It belongs to the first Mediatek's camera driver series based on V4L2 and media controller framework.
> I posted the main part of the seninf driver as RFC to discuss first and would like some review comments
> on the overall structure of the driver.
> 
> The driver is implemented with V4L2 framework.
> 1. Register as a V4L2 sub-device.
> 2. Only one entity with sink pads linked to camera sensors for choosing desired camera sensor by setup link
>    and with source pads linked to cam-io for routing different types of decoded packet datas to PASS1 driver
>    to generate sensor image frame and meta-data.
> 
> The overall file structure of the seninf driver is as following:
> 
> * mtk_seninf.c: Implement software and HW control flow of seninf driver.
> * mtk_seninf_def.h: Define data structure and enumeration.
> * mtk_seninf_reg.h: Define HW register R/W macros and HW register names.
> 
> [ v2: use recommended coding style, fix v4l2-compliance issue, add v4l2 async notifier operations, remove redundant code]

Thanks for the style fixes. I made a number of review comments on V1 of
the driver patch. Please take a look at those if you haven't already.

> 
>   media: platform: mtk-isp: Add Mediatek sensor interface driver
>   media: platform: Add Mediatek sensor interface driver KConfig
>   dt-bindings: mt8183: Add sensor interface dt-bindings
>   dts: arm64: mt8183: Add sensor interface nodes
> 
>  .../bindings/media/mediatek-seninf.txt        |   52 +
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      |   34 +
>  drivers/media/platform/Makefile               |    2 +
>  drivers/media/platform/mtk-isp/Kconfig        |   16 +
>  drivers/media/platform/mtk-isp/Makefile       |   14 +
>  .../media/platform/mtk-isp/isp_50/Makefile    |   17 +
>  .../platform/mtk-isp/isp_50/seninf/Makefile   |    4 +
>  .../mtk-isp/isp_50/seninf/mtk_seninf.c        | 1366 +++++++++++++++++
>  .../mtk-isp/isp_50/seninf/mtk_seninf_def.h    |  170 ++
>  .../mtk-isp/isp_50/seninf/mtk_seninf_reg.h    |  992 ++++++++++++
>  10 files changed, 2667 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt
>  create mode 100644 drivers/media/platform/mtk-isp/Kconfig
>  create mode 100644 drivers/media/platform/mtk-isp/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_def.h
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_reg.h
> 
> 
