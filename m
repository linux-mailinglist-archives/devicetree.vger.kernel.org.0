Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 009EF1D0AFE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 10:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732324AbgEMImY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 04:42:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726092AbgEMImY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 May 2020 04:42:24 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD64C061A0C
        for <devicetree@vger.kernel.org>; Wed, 13 May 2020 01:42:24 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id D51772A2601
Date:   Wed, 13 May 2020 10:42:17 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, airlied@linux.ie
Subject: Re: [PATCH] dt-bindings: display: analogix_dp.txt: convert to yaml
Message-ID: <20200513084217.nqvhcmlbu727f6ae@rcn-XPS-13-9360>
References: <20200424112634.20863-1-ricardo.canuelo@collabora.com>
 <20200511213108.GA3374@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200511213108.GA3374@bogus>
User-Agent: NeoMutt/20171215
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for reviewing the patch and  I'm sorry it had so many mistakes,
this was my first attempt at converting a DT binding to schema.

On lun 11-05-2020 16:31:08, Rob Herring wrote:
> > This binding is meant to be used in conjunction with
> > Documentation/bindings/display/rockchip/analogix_dp-rockchip.txt
> > and
> > Documentation/bindings/display/exynos/exynos_dp.txt
> > 
> > I was careful to define the bindings to be flexible enough for both
> > cases, since the properties might be slightly different depending
> > on the SoC.
> 
> They need to be converted all at once to schema.

I'll queue that up to work on next and I'll try to come up with a good
patch series to convert the three bindings.

Cheers,
Ricardo
