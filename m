Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50D3C4CFFA9
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 14:09:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238608AbiCGNKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 08:10:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235991AbiCGNKk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 08:10:40 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE6635BD2F
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 05:09:45 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id g26so30748127ybj.10
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 05:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yepItlJ9qbYQk7lxa3ZiJXu15xaq36AuyzFPOK3vAVY=;
        b=AeUDdq/AWNd2nmTFTAWaAJ2SF2Vbyvv/+rKo46RmbS5jRVcFwjQ6vFH+O7bo/bjKe5
         pC6cp64tslJfdYfAUTd11w9i4XiJTUMRq97HJvLdXTY+EPvG9SEdthY6UZ2xKsBUEMBB
         gyDKihc4SgMxyZHwQVVs8qsMRewQwhiE6ZvjNB1ekCxcMCzJ2BIcUIdNfzfeE+lb7kFJ
         7ZUE5uusKonMkMdus5SXpoMl2koYoSUEDiw3fbc1rXKNqqovWetKdQgEd5N7dPiGaYCd
         MF9d+0HNsWyxtEfnEk7KS522ZgZ7dXgWSneMYVdPVApAweOFpWo6iEr4DXEsLnVTZrg7
         R7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yepItlJ9qbYQk7lxa3ZiJXu15xaq36AuyzFPOK3vAVY=;
        b=8BcFz0O3HqQGq9QETb3aqaZs5YACCdteTch1H/J+mnPUtboCW7L/Q+xWo38FPMPYbH
         L6HhrhV70XM+wm5Vo5cEfxNIq7kBykMyA9pPN+Yo3pCVhkaMQhuaao8slYydaDWY4Dg7
         qE+KissiIWzqxFUlodfnvm0MZsJbJfQAqoLOkmPSiVN7TSTvvZkZTG/GbPHfg3rxaYts
         nE5OZZeZozFjvEnJHhaHqtifP80QyvGF4FxPmivQgO8Hf+z6kgIXLCHOPMW19oiwUX/U
         88Y739pEeZGqqFgGTpqS8ODosVVJsrTf3jgrrgEZAZoMSn2fYPLLtiMydUaGLhdsoDe/
         aVQg==
X-Gm-Message-State: AOAM533KxRUqwyHvb3R/vPRDzTnrHiIu1ALIGl2/vuyEG/MIK3Re0KlY
        i3Z/lTzEPu9qVdAa++W+5+udaKZEQvyK8w9lr3dCPA==
X-Google-Smtp-Source: ABdhPJy19ZfRbc1jCqoWnTYWtbGO16Ywu+DUbMK4m78jIaXZssJbqdhjy3kb9cJjfLA+Obyy/2vWB4gu/RRxGIBBSts=
X-Received: by 2002:a25:2bc5:0:b0:628:71cf:99c with SMTP id
 r188-20020a252bc5000000b0062871cf099cmr7771635ybr.553.1646658584984; Mon, 07
 Mar 2022 05:09:44 -0800 (PST)
MIME-Version: 1.0
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de> <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
In-Reply-To: <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Mon, 7 Mar 2022 13:09:33 +0000
Message-ID: <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 2/25/22 15:51, Sascha Hauer wrote:
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> >
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> >
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >    functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> >
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
>
> When run a weston 10.0.0:
>
>   # export XDG_RUNTIME_DIR=/tmp
>   # weston --backend=drm-backend.so --use-pixma --tty=2
> --continue=without-input
>
> I got the following error:
>
> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB

Can you please start Weston with --logger-scopes=log,drm-backend and
attach the output?

Cheers,
Daniel
