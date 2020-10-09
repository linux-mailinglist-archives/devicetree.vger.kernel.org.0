Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF8572881CC
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 07:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731276AbgJIFsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 01:48:24 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:41120 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725917AbgJIFsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 01:48:24 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 2B32F288001
Date:   Fri, 9 Oct 2020 07:48:19 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Rob Herring <robh@kernel.org>
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com, cychiang@chromium.org
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
Message-ID: <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com>
 <20201008183818.GB2395464@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201008183818.GB2395464@bogus>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for taking the time to review this. Find my answers below:

On jue 08-10-2020 13:38:18, Rob Herring wrote:
> > +  codecs:
> 
> Doesn't moving this require a driver change? 

I studied the driver as thoroughly as I could (what
sound/soc/codecs/cros_ec_codec.c:cros_ec_codec_platform_probe does) and
I think the driver should still be able to handle this. Unfortunately, I
can't test it. Can any of the driver maintainers share their
input about this? I'm adding Cheng-Yi Chiang to cc as well.

> If you only need 1 codec, then just drop the unit-address.

Thank you. Yes, as far as I can tell there's only this codec (so far).

Cheers,
Ricardo
