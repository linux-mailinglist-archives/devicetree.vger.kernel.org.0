Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 402CE1B994F
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2020 10:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbgD0IEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Apr 2020 04:04:38 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:34172 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726003AbgD0IEi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Apr 2020 04:04:38 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id A8AAE2A00ED
Date:   Mon, 27 Apr 2020 10:04:33 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     devicetree@vger.kernel.org, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org
Subject: Re: [PATCH] dt-bindings: display: anx7814.txt: convert to yaml
Message-ID: <20200427080433.6okx5jbq4pfasd63@rcn-XPS-13-9360>
References: <20200424065354.23781-1-ricardo.canuelo@collabora.com>
 <481401ed-93a4-6918-3d8b-6c769d8c7617@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <481401ed-93a4-6918-3d8b-6c769d8c7617@collabora.com>
User-Agent: NeoMutt/20171215
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On vie 24-04-2020 16:08:10, Enric Balletbo i Serra wrote:
> Hi Ricardo,
> 
> Thank you for your patch.

Hi Enric,

Thanks for reviewing it.

> > +      "#size-cells":
> > +        const: 0
> > +
> 
> I don't' think you need to specify this. You can drop it (better double check
> with Rob, though)

I think you're right. I put it just to be clear about it and because
some other yaml bindings specify them, but this is already well defined
in Documentation/devicetree/bindings/mediavideo-interfaces.txt, which is
referenced in the binding.

I agree with the rest of the comments.

Kind regards,
Ricardo
