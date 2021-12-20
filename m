Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 883BF47B1A6
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 17:53:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238329AbhLTQxS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 11:53:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233852AbhLTQxR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 11:53:17 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 764A1C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 08:53:17 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id j18so21444385wrd.2
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 08:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p9Tx2wH4HEpVybdHYcjlhyrX2v7ZfIvmca5PPAdXN6k=;
        b=fVQb2iOMp+8XdAiBh3r7/dK9kp/+EyrvqmRClEZfDbVqB1PzXufL4v8IiRsF7HLpoa
         QLHjSmC4jwYBjekVzIfT47xjwmABDFEr6RRI32lF/f3xa0RBFoXeTK9lAIbfd0SvZIOg
         DFWeNf1n9jX2+Z4rAPCkuwTUhyDDAOQ1AWLLIesGzavACAbtKZOhjOi61EoF31P5zJ/4
         WTk+KRcyYo03rcn4y+nGMJN7FFKPE6biCgCWC2+e3Rgll9+DBMqQhi7fHPQWFFfzoUYc
         xqJ4k4Ls9vbAbILV0NZI1x1TmEWN4Os/2cvIVhloyPulUbql7QwH+tp3BjZ62/KXWNuS
         d09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p9Tx2wH4HEpVybdHYcjlhyrX2v7ZfIvmca5PPAdXN6k=;
        b=RGIgYXOY8U/WcuDLUj1FEeOu53OO/5P3cRwfbPq8HgPUgrOlmBXM+RDPp/kTsX3Nu0
         xQgy9/+QaKQNig+1mrdJmDYp2YY2oVvuo74pqkoMyNArgJhfZfW0oidYPu5Ns7KVh4sk
         cbUHUE5XlIVuybxNNIjJBGDukk4eVx7dJlneGO1VtqJb5ra4HpeAUOHrHJs4A7W0HuYs
         v56GoD6UxLRgJ3rm5oI+aKosWFm2b4W2940ql5h0RoCGbyFufPHbE2/qU+F+d43jOV/Z
         EQnFhUjQlQUjjY/LHdOrjbnyIMh3Iwz9JSSW3hNRunXCs+aY+rSmutg4zv7Bl9VzeeK+
         T/Kg==
X-Gm-Message-State: AOAM532+lL7Q8Or7NBzNTlBNAAB3fzOvDZBx7X04+PsNY8N5SN+rqD13
        3xzUE/TI1H4nNEibqDHLKP4=
X-Google-Smtp-Source: ABdhPJx79HzNYw/1/E19mQIiwB8X0jLmD92oBdZER7LrTtQNdGGa5D09PBIWyP79Cz4iHMPyrQd8fA==
X-Received: by 2002:adf:9cc2:: with SMTP id h2mr13387161wre.464.1640019196095;
        Mon, 20 Dec 2021 08:53:16 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
        by smtp.gmail.com with ESMTPSA id p1sm155802wrr.75.2021.12.20.08.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 08:53:15 -0800 (PST)
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
        Sascha Hauer <s.hauer@pengutronix.de>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Date:   Mon, 20 Dec 2021 17:53:14 +0100
Message-ID: <2517243.oazWQlOnO6@archbook>
In-Reply-To: <5637649.G3HFo5JPcS@archbook>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-23-s.hauer@pengutronix.de> <5637649.G3HFo5JPcS@archbook>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Montag, 20. Dezember 2021 15:16:55 CET Nicolas Frattaroli wrote:
> On Montag, 20. Dezember 2021 12:06:30 CET Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> > 
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> > 
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> > 
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> Hi Sascha,
> 
> sadly I'm getting
> 
> [    1.668856] rockchip-drm display-subsystem: [drm] *ERROR* failed to get vop2 register byname
> [    1.669621] rockchip-drm display-subsystem: failed to bind fe040000.vop (ops vop2_component_ops): -22
> [    1.670584] rockchip-drm display-subsystem: master bind failed: -22
> [    1.671164] dwhdmi-rockchip: probe of fe0a0000.hdmi failed with error -22
> 
> on a Quartz64 Model A.
> 
> 
> > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
> > +	if (!res) {
> > +		drm_err(vop2->drm, "failed to get vop2 register byname\n");
> > +		return -EINVAL;
> > +	}
> 
> This seems to be the code that triggers it.
> 
> Any ideas as to what could be causing this?
> 
> Regards,
> Nicolas Frattaroli
> 

A small follow-up:

We're trying to get IORESOURCE_MEM by the name "regs", but nothing
has a reg-names property in the device tree changes you sent in.

How did you test this on your system?

Also, adding the reg-names = "regs"; to the vop node doesn't make
it probe, it just fails with

[    1.668560] rockchip-vop2 fe040000.vop: can't request region for resource [mem 0xfe040000-0xfe044fff]

then.

We're also trying to get gamma_lut the same way, but your cover letter states

> drop unnecessary gamma_lut registers from vop2

which makes me wonder: is this the correct series of patches you sent in?

Regards,
Nicolas Frattaroli


