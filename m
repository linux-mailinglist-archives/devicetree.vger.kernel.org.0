Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3097C2A69BC
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 17:29:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730956AbgKDQ2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 11:28:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730942AbgKDQ2H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 11:28:07 -0500
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com [IPv6:2607:f8b0:4864:20::a43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C67C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 08:28:07 -0800 (PST)
Received: by mail-vk1-xa43.google.com with SMTP id p201so1122949vke.11
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 08:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LjuXhQKMkVF/DFnAs8lSgplGwULXo7VijpW+tg4xDRo=;
        b=CYyTnjZ9sT5OzEIgvIcFGZuSxN+Eid8b5mYJi0Nf25q32LAUY54og5lkDHh40Aba16
         LH63QeOb6L4WxI5TKhvVzq3fugcyltMxwbtRFqilu5XPRVURd3DTemYhTopb7D8fQFWL
         Xzsdh7fnY7Z9kQZojTdOMe9r9rq7AtR5hF0FQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LjuXhQKMkVF/DFnAs8lSgplGwULXo7VijpW+tg4xDRo=;
        b=Hr3oyqvbvJp4ecH1zrLYJeuZcJLrbBfOw9mDUaumb54R7RbT4rHCafQ7ELzGeRMkYV
         8rBZM30mIXb+N5sqjHj5c/BWJ7OWhTFGJNg3olP7RDVfZcu2sQxcDTW6SVuYyPI8EFEZ
         wt96b+Dn8qpIiF0HNhkzEGUuXqOrHxXHKwF0ly+HanV/NScqoPRMLgaOIV4lD0CwbCO3
         g0G7OT/FVuWHbpD9Qk8wOlkzp7u2XwN9VsFiXULAhC2hXoUXHuB9r3hosUKULUEdgkCJ
         twc7tp/6A/udNV/92h9/2ET2qdnUX7x4FsLzTg1We6pV5N6FCKGKEPWfprsRpMUE+FSb
         cCaA==
X-Gm-Message-State: AOAM5303sKUVT11mwwPLcamYwkdtzXHEtc9gl7obOpYPxfqPbUeKrha5
        LcDG9rWOVNf86MZbns05i+kmHLyD1Ret4w==
X-Google-Smtp-Source: ABdhPJwiiZzYFForxvKkIl9CgtXQA7IzJZUnbbLEN1rTIr5Em/pLPLcp8w/4H7pOVDg3oP4h+QC3EQ==
X-Received: by 2002:a1f:2492:: with SMTP id k140mr8165427vkk.8.1604507285769;
        Wed, 04 Nov 2020 08:28:05 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id a13sm326015vkm.47.2020.11.04.08.28.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 08:28:05 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id p12so3741041uam.1
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 08:28:05 -0800 (PST)
X-Received: by 2002:a9f:2f15:: with SMTP id x21mr14344167uaj.104.1604507284609;
 Wed, 04 Nov 2020 08:28:04 -0800 (PST)
MIME-Version: 1.0
References: <20201104162356.1251-1-m.reichl@fivetechno.de>
In-Reply-To: <20201104162356.1251-1-m.reichl@fivetechno.de>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 4 Nov 2020 08:27:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VdcG_DQs+er5g-p=pX_G79Nzciv=M0MDZDhTr2c4sh8g@mail.gmail.com>
Message-ID: <CAD=FV=VdcG_DQs+er5g-p=pX_G79Nzciv=M0MDZDhTr2c4sh8g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399 boards.
To:     Markus Reichl <m.reichl@fivetechno.de>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Robin Murphy <robin.murphy@arm.com>, wens@kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Nov 4, 2020 at 8:24 AM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs
> are not practical. Use newly introduced aliases for mmcblk devices from [1].
>
> [1]
> https://patchwork.kernel.org/patch/11747669/
>
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
