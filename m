Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DEEF3032F1
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:42:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726048AbhAZEll (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:41:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728674AbhAYNN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 08:13:28 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F9B9C061786
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 05:12:46 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id q8so17614456lfm.10
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 05:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GG3vahY76s4SRL3M46lNCBCKQEIbcfJITvOyi7b/xaE=;
        b=ylsAFriX37XVbpLrF13WtDMR2c5hpD1ojpoIGrNq9XuUCJ+9ZI/nVndYmxlHicPxsr
         52qifpbb0+zInjIDkQ11DvZmSyXZJ/R20DjkOXxxkHnEABVBZbOzGkXPXPB4eqbOlL1h
         LEl0q7mHUumORmwisiHLCkLGZQmH9RHokoY+QyCc/hh+c6kNDGOTw67XXhAJgqmzTrBv
         hmTR9mbudnnkvVb467jCiWzmrVLL3g/sf29ebSobv0ehWnSe9b8HMIFV0j2oH/peWx4B
         J45aJxeAsuAfpcp/uKzeX5SN7xjHAkh2fNG+HCqz4spZ6FkSfx109zCghylojY/728lH
         /CPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GG3vahY76s4SRL3M46lNCBCKQEIbcfJITvOyi7b/xaE=;
        b=nB+7MHe6BPoGvX/NjFox9WYeKWvl8avVxlSzjtkEnzcmRmZSq5e+JkC5BLQzt31ZpB
         fwh0sXzshWVOBZW4ZkZMEKP3EajZLUE1okdpJrixo5tqKzFkTXuzwXiTdug/4wiPJGkR
         olFNx3zHwlkpJgw0w6bXYIoLXlK0ch8IVaXOeYPJZVf3Uj4Iwt3LQH74P9L6B+rhaO/y
         iPTg7Cl+97xaL31y2At5eevD+s+P/Smu1gV/agOD1kZm4T+dPr4KVFBDiCvjsclD8WMB
         D9dRX8pYSepwloeq0DJu3hz7Cpw81Y6jpjB8ma8O/RqqSsz6irBl3MwAMmbEKyAxUry9
         TFiQ==
X-Gm-Message-State: AOAM530uLXYUENKrWElN9v8a6SHj7XGyFRfaUa0MNIw+4pRrndukxX3u
        aPIPLNd1TRfqWF2p9eiu9/6gmapBiOpniytW2MNWOw==
X-Google-Smtp-Source: ABdhPJxDT3XMILf8kQD/47RjOiNlQdTecGrpgSBvjuTehZg5fGASxkkq8PKsR78LBS6XWePVlhcSeupwkL3gjJrh/18=
X-Received: by 2002:a19:b8e:: with SMTP id 136mr255455lfl.29.1611580364908;
 Mon, 25 Jan 2021 05:12:44 -0800 (PST)
MIME-Version: 1.0
References: <20210125044322.6280-1-dqfext@gmail.com> <20210125044322.6280-3-dqfext@gmail.com>
In-Reply-To: <20210125044322.6280-3-dqfext@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 25 Jan 2021 14:12:34 +0100
Message-ID: <CACRpkdZtgqABQc5qDZCLLJKXvAEugLKM2RCKia9hypS0A5GkDw@mail.gmail.com>
Subject: Re: [PATCH net-next v2 2/2] net: dsa: mt7530: MT7530 optional GPIO support
To:     DENG Qingfang <dqfext@gmail.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King <linux@armlinux.org.uk>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Frank Wunderlich <frank-w@public-files.de>,
        =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 5:43 AM DENG Qingfang <dqfext@gmail.com> wrote:

> MT7530's LED controller can drive up to 15 LED/GPIOs.
>
> Add support for GPIO control and allow users to use its GPIOs by
> setting gpio-controller property in device tree.
>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
