Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB4BB283396
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgJEJst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:48:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725887AbgJEJst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:48:49 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A9B6C0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 02:48:49 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 4B63F298136
Date:   Mon, 5 Oct 2020 11:48:43 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     robh@kernel.org, kernel@collabora.com, bleung@chromium.org,
        groeck@chromium.org, sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing
 properties
Message-ID: <20201005094843.eadg4f44f6zxoj5k@rcn-XPS-13-9360>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com>
 <a6132b1e-7613-35c2-f450-e3ca300ab49b@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a6132b1e-7613-35c2-f450-e3ca300ab49b@collabora.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Enric,

Thank you for reviewing

On lun 05-10-2020 11:23:15, Enric Balletbo i Serra wrote:
> > +  mtk,rpmsg-name:
> 
> AFAIK mtk is not a valid vendor prefix (vendor-prefixes.yaml), so I am wondering
> if this should be mediatek,rpmsg-name. I see this being used in
> drivers/rpmsg/mtk_rpmsg.c file, but there isn't a devitree using it. So maybe
> we're on time to fix it.

It is used in arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi.

I'm not sure if defining this kind of vendor-specific properties in
google,cros-ec is the right approach, but I can't think of a better
alternative (any suggestion is welcome). I thought about making this
conditional to the "compatible" string but in the case of
mt8183-kukui.dtsi the string looks too generic for it to be associated
with a particular vendor.

Shall I go and fix the vendor prefix in all places (driver, binding and
DT)?

Cheers,
Ricardo
