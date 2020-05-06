Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF2C91C69F4
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 09:22:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727872AbgEFHWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 03:22:09 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:51174 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726451AbgEFHWJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 May 2020 03:22:09 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 7BD4E2A0D06
Date:   Wed, 6 May 2020 09:21:55 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     robh+dt@kernel.org,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200506072155.6dmj35zdnr3to5ib@rcn-XPS-13-9360>
Mail-Followup-To: Tomi Valkeinen <tomi.valkeinen@ti.com>,
        robh+dt@kernel.org,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
User-Agent: NeoMutt/20171215
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tomi, thanks for reviewing the patch.

On mar 28-04-2020 12:49:28, Tomi Valkeinen wrote: 
> I don't quite understand this. We cannot have negative numbers in dts files?
> Or we can, but dt_binding_check doesn't handle them correctly? Or that int32
> is not supported in yaml bindings?

AFAICT, you can have negative numbers in dts files (see [1] and [2]) and
the DT schema certainly supports signed integers, but dt_binding_check
seems to interpret all cells as unsigned 32bit integers because that's
what they are, really. In kernel code this is not a problem because you
can cast the value back to a signed int before you run your own sanity
checks on them.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2013-April/159682.html
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2013-April/159681.html

Cheers,
Ricardo
