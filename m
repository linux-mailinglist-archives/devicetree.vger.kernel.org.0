Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37CC747AB2B
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 15:17:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233580AbhLTORD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 09:17:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233605AbhLTOQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 09:16:59 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F590C06173F
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:16:58 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id c4so20393177wrd.9
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a/dzY1YCMEV94GDlHxnTZ/IoYWB5Rh81LbeOowMZqGM=;
        b=DbTR8CjGEPLkZcPfOQ2bSAJfI05BlsSyq32/NLepId3eolkmcS9Pto2grXsGk3QGf0
         WygF/ZVVBR2pExvvl31kqs/EhMfpcXJg054Zc3Pkt6YPi6pMIlIYrbwcxSKy1zRYp2DG
         RKgJF/mIc/ZF0ylL6/eoJKaRBK2mGsGxs6cDe9KVV1bvfuaRn6BxtlEiGtqIPHTlo+bI
         lds8ckISUoa9lG2rpVEtXsdFQXu9QN9fxNJZp0TjDDNBS2IXd7htik8Z8+9TEttAw7Kv
         ABzpkLqOhAO/WCR7u5zTzqouc5awXRDaG8AfabSJYD7JjvOu2sAU/LnMc9Pjv1WRd3fT
         C2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a/dzY1YCMEV94GDlHxnTZ/IoYWB5Rh81LbeOowMZqGM=;
        b=zvorocNSFu/r33voUn7pHPSpUbHzx43gI2xB3a1bDQtl2x+i/fpUS3XLbJGzP5ECxO
         /q1QArs+o0E+AaDviEPDtZG1FlkC8DtLWXDK3FP3RIjwPAw7k3tfCVBPFhaBbuVl0GEs
         BjXzxPmkH0lui3pn+YNA+DkEaAgblgiVruKsnE5xQK3GXWC5OGIy7/0ZrzG9EIlEMJRE
         Q1/c3zLmCQDCskueIDK24gJ67zSN/kn/5bfkzp+eGHWzeqxF55IiZ7B7CBiwBcPdxlxm
         OPMoUNaOBELcWao8MUQQVrSf6/QuIeOxT6yMN7TvRuD0rtLhLUGn93YmVKCQMh02B4Ru
         OzQA==
X-Gm-Message-State: AOAM532NyQJiSaWQiy5iIVZSs9QZckR67+Nc/gBQW0FJXRxXEN42T1UW
        jzYlemvTU2iJnrR8fDmhVyA=
X-Google-Smtp-Source: ABdhPJwT5z75o2wjTM0/dL1UWGRH+dib+dAm4J1nut2+VYcXmQnUNw+lNsC3i2A1+u6HPPElJU1/yw==
X-Received: by 2002:a05:6000:1a8c:: with SMTP id f12mr7072124wry.644.1640009816983;
        Mon, 20 Dec 2021 06:16:56 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
        by smtp.gmail.com with ESMTPSA id f13sm11754555wri.51.2021.12.20.06.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 06:16:56 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Date:   Mon, 20 Dec 2021 15:16:55 +0100
Message-ID: <5637649.G3HFo5JPcS@archbook>
In-Reply-To: <20211220110630.3521121-23-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-23-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Montag, 20. Dezember 2021 12:06:30 CET Sascha Hauer wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
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
> - Drop all waiting for framesyncs
> 
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Hi Sascha,

sadly I'm getting

[    1.668856] rockchip-drm display-subsystem: [drm] *ERROR* failed to get vop2 register byname
[    1.669621] rockchip-drm display-subsystem: failed to bind fe040000.vop (ops vop2_component_ops): -22
[    1.670584] rockchip-drm display-subsystem: master bind failed: -22
[    1.671164] dwhdmi-rockchip: probe of fe0a0000.hdmi failed with error -22

on a Quartz64 Model A.


> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
> +	if (!res) {
> +		drm_err(vop2->drm, "failed to get vop2 register byname\n");
> +		return -EINVAL;
> +	}

This seems to be the code that triggers it.

Any ideas as to what could be causing this?

Regards,
Nicolas Frattaroli



