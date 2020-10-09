Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C5F42881B1
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 07:28:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730621AbgJIF2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 01:28:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730468AbgJIF2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 01:28:34 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9AF4C0613D2
        for <devicetree@vger.kernel.org>; Thu,  8 Oct 2020 22:28:34 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 4592029D74B
Date:   Fri, 9 Oct 2020 07:28:29 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Rob Herring <robh@kernel.org>
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com
Subject: Re: [PATCH v2 2/3] dt-bindings: input: convert cros-ec-keyb to
 json-schema
Message-ID: <20201009052829.a4jvxi5tqhljovki@rcn-XPS-13-9360>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-3-ricardo.canuelo@collabora.com>
 <20201008183241.GA2395464@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201008183241.GA2395464@bogus>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for reviewing the patch

On jue 08-10-2020 13:32:41, Rob Herring wrote: 
> These already have a type and description, don't repeat it here.
> 
> If no other constraints, then just 'linux,keymap: true'. Or you can use 
> unevaluatedProperties instead of additionalProperties. The former will 
> take the $ref to matrix-keymap.yaml into account.

That's what I did in v1, using input/imx-keypad.yaml as an example along
with the comment in example-schema.yaml about unevaluatedProperties, but
then I also saw you mention in other threads that support for
unevaluatedProperties is not implemented yet and that documenting the
additional properties/nodes is preferred (that's what I understood, at
least):

    https://lore.kernel.org/dri-devel/CAL_JsqKPXJxsHPS34_TCf9bwgKxZNSV4mvQR-WKRnknQVtGGxQ@mail.gmail.com/

Was it right in v1 then?

Cheers,
Ricardo
