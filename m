Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 455AE2845DD
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 08:13:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726878AbgJFGN1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 02:13:27 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:58250 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgJFGN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 02:13:27 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id CF44F2962AB
Date:   Tue, 6 Oct 2020 08:13:17 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing
 properties
Message-ID: <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com>
 <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

thanks for reviewing the patch. Find my comments below:

On lun 05-10-2020 10:37:09, Rob Herring wrote:
> > +  '#address-cells':
> > +    enum: [1, 2]
> > +
> > +  '#size-cells':
> > +    enum: [0, 1]
> 
> This doesn't really make sense. Either there's a size or there isn't.
> 
> [...]
> 
> > +  "^regulator@[a-f0-9]+$":
> > +  "^ec-codec@[a-f0-9]+$":
> 
> What does the number space represent and is it the same for each of
> these? If not, then this is kind of broken. There's only 1 number
> space at a given level.

I see what you mean. In the regulator, the unit-address means the identifier
for the voltage regulator and I guess it could also be defined as
simply "^regulator@[0-9]+$". In the codec, though, it's a physical base
address.

The reg property in these has a different format, that's why I
defined #address-cells and #size-cells above to have a range of values
instead of fixed values.

From your experience, what's the best course of action here? I can't
find a driver managing google,cros-ec-codec yet, although the binding
was submitted in January.

Thanks,
Ricardo
