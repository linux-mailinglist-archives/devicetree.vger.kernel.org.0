Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB8871C6B8C
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 10:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728811AbgEFIXi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 04:23:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728637AbgEFIXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 May 2020 04:23:38 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04AFC061A0F
        for <devicetree@vger.kernel.org>; Wed,  6 May 2020 01:23:37 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id DF42B2A1135
Date:   Wed, 6 May 2020 10:23:32 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Collabora Kernel ML <kernel@collabora.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, Wei Xu <xuwei5@hisilicon.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
Mail-Followup-To: Geert Uytterhoeven <geert@linux-m68k.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Collabora Kernel ML <kernel@collabora.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, Wei Xu <xuwei5@hisilicon.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
User-Agent: NeoMutt/20171215
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

Thanks for reviewing the patches. Some comments below,

On mié 06-05-2020 09:44:19, Geert Uytterhoeven wrote: 
> Can't you avoid the need for patches
> [RFT PATCH 1/5] arm64: dts: draak: Reorder hdmi-encoder@39 reg and
> reg-names properties
> [RFT PATCH 2/5] ARM: dts: wheat: reorder reg and reg-names properties
> in hdmi bridges
> 
> by using
> 
>     items:
>       enum:
>         - main
>         - edid
>         - cec
>         - packet
> 
> instead?

Not really, because that defines a scalar property that can take any of
those values (if I'm not mistaken), and the core schema enforces that
reg-names must be an array.

I think the closest I can get to what you mean would be something like
this:

    items:
      - enum:
        - main
        - edid
        - cec
        - packet
      - enum:
        - main
        - edid
        - cec
        - packet
      - enum:
        - main
        - edid
        - cec
        - packet
      - enum:
        - main
        - edid
        - cec
        - packet

But then that wouldn't prevent anyone from defining duplicate reg-names
(eg. "main", "cec", edid", "cec"), which is even worse IMO.

Cheers,
Ricardo
