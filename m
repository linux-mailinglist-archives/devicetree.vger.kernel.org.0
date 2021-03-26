Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 793BA34AA58
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 15:43:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbhCZOmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 10:42:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbhCZOmh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 10:42:37 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4C2FC0613AA
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 07:42:37 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso2562285pjb.3
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 07:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UFMq5oGqK9i1mDSf60y5PEUGhIBG7pRAYbpbnOiZny8=;
        b=mv55z1PJnHOdzF+Razme2uGyDMAKDIds0+fVKvLTeYihRej0U/HhvFheWkOyEW46lQ
         p/FQv3oZw1iOT9kemojIsWacZNZM17IMOOcrZ3aFKcJp3iVbq2Wwrc+JCTbiHP4wDWRV
         ZJPXUndXDpIXRtpiBWQA23dRkPpyuvglb4olx7fs9YxqFcesoMgnuuQErBef1NUHs4Qn
         G8A6rKGU3jYTlRnixV+NF8HtQ9Fbn4S6sAR1dr5IM8VP1KiE+1tlI7yEprtg+Td0Btl9
         imuDP3zGuOHhDcJZ7p8rd1pMVs6DbhrNskSr51H5jc7MUT3OBWhNulA2m4f9fiZUXUkR
         6RXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UFMq5oGqK9i1mDSf60y5PEUGhIBG7pRAYbpbnOiZny8=;
        b=UiybE2HweSbAWXQGxvtEPFW0j5GR9z7bzZRdQ0PNuua916sgFyp+zGNcr9NlXIz5hK
         esxlT9650awzR015CtO+jWQss843lA+3MXaODzdDlWHE8P2A2ikrBtwpIu4TOqleULJM
         SK+VR6Q/80N9uWD1pcYh3R9zlSRFVjA0FXBQG1rzM3ZRFgG30psBIke9Tll/Ry3CVYpu
         +SEMXgL6J1tXrqtFJYPIULpQiu5hMBGZRnplBouWNIqvqR2/1NLVUiNda7Seo8IFO+Fh
         LOcTz8wc2KHWPGSB4b7ks/pUYc2xKUar7IaD9umh+cSlL4CJiynQTFhiY+Chk32IOz3U
         1kUg==
X-Gm-Message-State: AOAM532HFDKUpiLBq7560eE1MgteUUw1GQuJuLKVasR+1JzI5JIVKhJm
        xocRTW2GjkxLTtrxeBvEP4Jq2K7kQckUwo2b4iUqYA==
X-Google-Smtp-Source: ABdhPJx47matal3VQ/+kh7d6hGrS8XwLC35YL0FwaAQVm4zRCOmCmdKu76eThs8vq4vrD+9j40M7EHNSMF06k5yz6gY=
X-Received: by 2002:a17:902:e752:b029:e6:822c:355c with SMTP id
 p18-20020a170902e752b02900e6822c355cmr15437871plf.69.1616769757181; Fri, 26
 Mar 2021 07:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210326121955.1266230-1-adrien.grassein@gmail.com>
In-Reply-To: <20210326121955.1266230-1-adrien.grassein@gmail.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 26 Mar 2021 15:42:26 +0100
Message-ID: <CAG3jFyv1kvr1rGok5WB4HL5yRH0f26ZrrmQzSv6uC9kQqSxF3Q@mail.gmail.com>
Subject: Re: [PATCH v9 0/2] Add support of Lontium lt8912 MIPI to HDMI bridge
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pushed: https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3aa6031deefa9a2c056af2182af02d3dc5df1067

On Fri, 26 Mar 2021 at 13:20, Adrien Grassein <adrien.grassein@gmail.com> wrote:
>
> Hi,
> this patch set adds the support of the Lontium lt8912 MIPI to HDMI
> bridge in the kernel.
>
> It's only support the video part, not the audio part yet
> since I don't have the datasheet of this component.
> I get the current i2c configuration from Digi and
> Boundary drivers.
> Developed using the DB_DSIHD board from BoundaryDevices.
>
> Update in v2
>   - Use standard data-lanes instead of a custom prop;
>   - Use hdmi-connector node.
>
> Update in v3
>   - Fix indentation;
>   - Implement missing bridge functions;
>   - Add some comments.
>
> Update in v4
>   - Fix bridge ops;
>   - Fix i2c error detection.
>
> Update in v5
>   - Fix lt8912 name (lt8912b instead of lt8912);
>   - Implement HPD via a workaround. In fact I don't have the datasheet
>     of this component yet so I can't say if the configuration of the
> registers is correct or if I have an HW issue on my board. So, I choose
> to implement a fake version of HPD using a workqueue and polling the
> status regularly.
>
> Update in v6
>   - Fix a warning found by "kernel test robot"
>
> Update in v7
>   - Fix HPD logic (via an HW emulation);
>   - HPD from chip is still not working.
>
> Update in v8
>   - Remove HPD logic (will be added later when HW bug qill be fixed).
>
> Update in v9
>   - Fix errors found in scripts/checkpatch.pl --strict
>
> Thanks,
>
> Adrien Grassein (2):
>   dt-bindings: display: bridge: Add documentation for LT8912B
>   drm/bridge: Introduce LT8912B DSI to HDMI bridge
>
>  .../display/bridge/lontium,lt8912b.yaml       | 102 +++
>  MAINTAINERS                                   |   6 +
>  drivers/gpu/drm/bridge/Kconfig                |  14 +
>  drivers/gpu/drm/bridge/Makefile               |   1 +
>  drivers/gpu/drm/bridge/lontium-lt8912b.c      | 765 ++++++++++++++++++
>  5 files changed, 888 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
>  create mode 100644 drivers/gpu/drm/bridge/lontium-lt8912b.c
>
> --
> 2.25.1
>
