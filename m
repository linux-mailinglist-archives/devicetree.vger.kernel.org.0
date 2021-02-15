Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5060831B7F6
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 12:26:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbhBOL0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 06:26:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbhBOL03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 06:26:29 -0500
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7DD3C061574
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 03:25:48 -0800 (PST)
Received: by mail-qk1-x72b.google.com with SMTP id f17so6035868qkl.5
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 03:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V5p/Ptpd8Lzv5tKkYHxJzAd/BlFt3ePQF/VhO0/xQ9g=;
        b=XmjNHDNIuHF1fDcddYwkbuTllthAII7JSKOm/beY3HBLxAKdzSsi3l5Q835js8OMK2
         HOR1GMNG08PkRKVk7WtQaMwJjgDkjLG8X9BWtcGBJar/AzjDknMicSc2rLeO6fznCycZ
         P+AjBlz7/i7XZR/xYwn14nBCfEIoWAW549gVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V5p/Ptpd8Lzv5tKkYHxJzAd/BlFt3ePQF/VhO0/xQ9g=;
        b=GcaHYQ4xWBixVqe4F+1wYyGUSDD+jKTUHzRwH0xeAqwk24IPqPlVRZWX/R6Us3y5k5
         kuAtPIWvxv3WqGy/kAuqJRxt7fGIv2ov7K+8J1Tl5PG8bsbTY9oGNJtEw/nLqF3jYJrG
         vYYCumTYoHD/k0a0SF7rMzAFvBjyuy+wOjSJoHDS7UxzxB4ZTV6TA0glGLtCuFIH7IcZ
         QN+EwZBNFpFxjVmRg8+EBvNcrpSd73TxPvbjlFniG6iZhHfoq5ivgcrO47OfPwTigfMa
         LU8sRBauLTNylSRZvaBMT3iH9OI2CkKpSvuLQnAbWUufSBqUJe/t5AyPMRd/8G3VCh/K
         vQXQ==
X-Gm-Message-State: AOAM531V02mpcXJcj2dFbR0XAHFhgihtCQa56AIc/AYBHzO3GjTbK27T
        QCccjAsnZ/TSSCmZJfXdd//7GOVDH2khGA8YzioC6Q==
X-Google-Smtp-Source: ABdhPJxZm8ADvBSIVcrG9NDd4A2KXUR9+do9fxfPHlIi8CcMPRNY15cK/Vy9v+E/aC/pTUGVGQRBQQAN9JbJefmfiBI=
X-Received: by 2002:a37:bcc6:: with SMTP id m189mr14108089qkf.88.1613388348069;
 Mon, 15 Feb 2021 03:25:48 -0800 (PST)
MIME-Version: 1.0
References: <20210214174453.104616-1-jagan@amarulasolutions.com> <8330126a-b2f4-5991-a2fa-37776cb412d0@baylibre.com>
In-Reply-To: <8330126a-b2f4-5991-a2fa-37776cb412d0@baylibre.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 15 Feb 2021 16:55:36 +0530
Message-ID: <CAMty3ZAgKPXpkiWuG3cGFs4sZPd182hBNaTbveL9USLj8o=ZxQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Add bindings for SN65DSI83/84/85
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Marek Vasut <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 15, 2021 at 2:32 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 14/02/2021 18:44, Jagan Teki wrote:
> > SN65DSI83/84/85 devices are MIPI DSI to LVDS based bridge
> > controller IC's from Texas Instruments.
> >
> > SN65DSI83 - Single Channel DSI to Single-link LVDS bridge
> > SN65DSI84 - Single Channel DSI to Dual-link LVDS bridge
> > SN65DSI85 - Dual Channel DSI to Dual-link LVDS bridge
> >
> > Right now the bridge driver is supporting Channel A with single
> > link, so dt-bindings documented according to it.
>
> Shouldn't it describe Dual-link LVDS already for SN65DSI84/85 and Dual Channel DSI for SN65DSI85 even if not implemented in the driver ?

Patch documented only Single link LVDS as it only supported by driver.
Single link LVDS with Channel A configuration is common across all 3
variant chips. I have SN65DSI84 with Single link LVDS which is routed
in Channel A. Idea is to go with Single link and add double link later
and document the same.

Jagan.
