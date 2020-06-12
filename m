Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C45951F7FA9
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2020 01:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726401AbgFLX0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jun 2020 19:26:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726340AbgFLX0t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jun 2020 19:26:49 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B9AAC03E96F
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2020 16:26:48 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id j1so5027174pfe.4
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2020 16:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=cd8LTTDCxtDjnKjbsZ9jO43bYWe9oEBWpIizX4GQU0U=;
        b=Lw4T3E4ZIvoTyrIoTGXbuwzkYPKLdcRB67fh6nMYa158xML70GfkNouZD/EYE7TP8Y
         xNtj4cTC+2h6OZaQ1iXjCGAofdLANd7EOzdqX1xPjOVDOJR3pRYWFYyGnKF1YdcM4vzV
         vGArfAei+IpSal6g6kpNg91GqadqRzJGLTaTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=cd8LTTDCxtDjnKjbsZ9jO43bYWe9oEBWpIizX4GQU0U=;
        b=DhIlVpzqPzRETUz6JhJXhJhi+9Wa/3MBvfDsXSYs8IF99aoJgFP5XCYb5FD2oQ/ao8
         otY43ZWkdukqIw5yudEoH7A5mGCtux9xkavbK/LIkwx+nD0RryV5E51lAr+Wxa7eDKIx
         Q8RUoXkLcr6G+WvChIKxfKNMgKK7kLmm/dshuo7ay2CRwA8SfNpyGoZSgy4qwPpbYCqG
         pfBkeRpkbELzDKG/i2TWs0qAE4Ytjs3y3pfMR7tmIsoYmAdKrBCyOEjw3LzEQijB28Ks
         GXlJdsk+VZ1tIIyP8vtlmHkUVGYbB5II47cVGkpdHK5yPKTjadJtHnE5BvGGwEjGxLyc
         8Dig==
X-Gm-Message-State: AOAM532pWUMC3eZbPDPSLpQ1I70R7Jdw/iws5lFsOQtVKYwinOLPjhR3
        FQ++nB58dvUafTt/e3C3XqB/ikGXG4w=
X-Google-Smtp-Source: ABdhPJzK3Vh997LsBtVPHovSMTQbFpaNghRNnzPcII8FDjjXnQEctHlOWB1h2ubEGIERyr5pJ8Ulmg==
X-Received: by 2002:a63:9e02:: with SMTP id s2mr12540767pgd.170.1592004407192;
        Fri, 12 Jun 2020 16:26:47 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id i14sm6253209pju.24.2020.06.12.16.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 16:26:46 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200612015030.16072-1-tanmay@codeaurora.org>
References: <20200612015030.16072-1-tanmay@codeaurora.org>
Subject: Re: [PATCH v6 0/5] Add support for DisplayPort driver on
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, seanpaul@chromium.org,
        robdclark@gmail.com, aravindh@codeaurora.org,
        abhinavk@codeaurora.org, Tanmay Shah <tanmay@codeaurora.org>
To:     Tanmay Shah <tanmay@codeaurora.org>, robh+dt@kernel.org,
        sam@ravnborg.org
Date:   Fri, 12 Jun 2020 16:26:45 -0700
Message-ID: <159200440578.62212.5195358467251573190@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Tanmay Shah (2020-06-11 18:50:25)
> These patches add support for Display-Port driver on SnapDragon
> hardware. It adds
> DP driver and DP PLL driver files along with the needed device-tree
> bindings.
>=20
> The block diagram of DP driver is shown below:
>=20
>=20
>                  +-------------+
>                  |DRM FRAMEWORK|
>                  +------+------+
>                         |
>                    +----v----+
>                    | DP DRM  |
>                    +----+----+
>                         |
>                    +----v----+
>      +------------+|   DP    +----------++------+
>      +        +---+| DISPLAY |+---+      |      |
>      |        +    +-+-----+-+    |      |      |
>      |        |      |     |      |      |      |
>      |        |      |     |      |      |      |
>      |        |      |     |      |      |      |
>      v        v      v     v      v      v      v
>  +------+ +------+ +---+ +----+ +----+ +---+ +-----+
>  |  DP  | |  DP  | |DP | | DP | | DP | |DP | | DP  |
>  |PARSER| | HPD  | |AUX| |LINK| |CTRL| |PHY| |POWER|
>  +--+---+ +---+--+ +---+ +----+ +--+-+ +-+-+ +-----+
>     |                              |     |
>  +--v---+                         +v-----v+
>  |DEVICE|                         |  DP   |
>  | TREE |                         |CATALOG|
>  +------+                         +---+---+
>                                       |
>                                   +---v----+
>                                   |CTRL/PHY|
>                                   |   HW   |
>                                   +--------+
>=20

I've never seen a block diagram for a driver before...

>=20
> These patches have dependency on clock driver changes mentioned below:
> https://patchwork.kernel.org/patch/11245895/
> https://patchwork.kernel.org/cover/11069083/

These are merged right? Don't need to include this if it's already
merged.

Can you include a changelog in the cover letter too so we know what has
changed between versions of the patchset?

>=20
> Chandan Uddaraju (4):
>   dt-bindings: msm/dp: add bindings of DP/DP-PLL driver for Snapdragon
>   drm: add constant N value in helper file
>   drm/msm/dp: add displayPort driver support
>   drm/msm/dp: add support for DP PLL driver
>=20
> Jeykumar Sankaran (1):
>   drm/msm/dpu: add display port support in DPU
>=20
[...]
>=20
>=20
> base-commit: 48f99181fc118d82dc8bf6c7221ad1c654cb8bc2

What is this commit? I don't see it in linux-next.
