Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52B5D454CC3
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 19:05:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239851AbhKQSIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 13:08:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233009AbhKQSIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 13:08:36 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B4A7C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 10:05:37 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id b40so12609866lfv.10
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 10:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=goPjarRaFDhR5RKzDZXMFKr9KKxmBjam0CLChkgNBPk=;
        b=la62jfOG5N0u9pLWKDbxj+bMTXQgU5GnVosWOnM1Orb3DcUpao+LlY+8MOaD/fIkrz
         ub++EVJQ/byA1YDFNU0tWpK4zvUplKSQkJtkZrU7u/Yt+KFO8FDTrSsTy5LVdk8ItYtb
         oIfasY1g0BRFF6u1YkQn1dEU9/QoSSSoYNxF6uB7RMXOaabgzV2Wiy2HnTraNRgbvzs4
         y+qptb0hqmJwp8WxUW5USJHD4/VxUhnsck5A6CYRNQpe+Xud2MKtga9QdDm3h3kvK8v/
         Qnd9mfVSjy6L/GfuXfoMbSKyEBtmYeMF+ILF33nKGSTnvl/ZhjfbCM146pWCNm39tiYI
         4hWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=goPjarRaFDhR5RKzDZXMFKr9KKxmBjam0CLChkgNBPk=;
        b=iTJNI971XXNUAlOmwa82EA2eS32YI/7/4YXx5gHx4Neql02RdDzITFqfpWZvAZajV3
         ql6ORcLczLFyAIuguXSBAFrl1kHFt6b880l0GN/H6e+M4fiShncBAGuvHJekueCp1/Nr
         6rbSQ5gAemlPpFlXSfYPAUse9R/9RAXOC8MZR49o2vupweVn+tq9j5c5USFkdaCv+sK5
         jHnFcMHOyfUrZLBW7ahbFxhFfamuDrKzxMgcoMgUEccN8/89YFSOOa5vPg8ooiwD56Rt
         poPJO7CS4n32Wa3Ppu36W3Pvmg+z7tD6D9m4Eam11XiscE1vSoJYUhkrZbelm3Z/EhKz
         zbjA==
X-Gm-Message-State: AOAM530obIxoBZS9nJ9P1SNMk//dkNXv7C8/TtnDwyRm7rmDY70RuIO9
        Uc0v1Em54KNKPfrL1HXJlCI=
X-Google-Smtp-Source: ABdhPJx6+4q0npbUXEfpAcmjPMhq1fVBLVq2/D1U5rYLTr1eorQjxaKaz34IrXxQROiPzcdC5BTpTw==
X-Received: by 2002:a2e:a378:: with SMTP id i24mr10122647ljn.290.1637172335571;
        Wed, 17 Nov 2021 10:05:35 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id p10sm65212lja.0.2021.11.17.10.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 10:05:35 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 12/12] drm: rockchip: Add VOP2 driver
Date:   Wed, 17 Nov 2021 19:05:33 +0100
Message-ID: <7182753.rMVL1d3Icj@archbook>
In-Reply-To: <20211117143347.314294-13-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <20211117143347.314294-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mittwoch, 17. November 2021 15:33:47 CET Sascha Hauer wrote:
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
> 
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
> 
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>   functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> 
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> is still present in the driver, but currently untested due to the lack
> of suitable image sources. Also the driver has been tested with weston
> using pixman and (yet to be upstreamed) panfrost driver support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Hi Sascha,

thank you very much for your work on this! I gave it a try tonight,
and unfortunately it appears to currently always attempt to use
1920x1080p60 as the mode regardless of the monitor. For example,
on an old 720p monitor I had laying around:

	[  225.732342] rockchip-drm display-subsystem: [drm] Update mode to 1920x1080p60, type: 11 for vp0, output 0x00000800  HDMI0

This results in a broken picture (all white with occasional glitches).
Somebody else observed the same behaviour on a 1440p monitor.

Thanks,
Nicolas Frattaroli


