Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B9EE283360
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:35:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725981AbgJEJfU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:35:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725887AbgJEJfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:35:20 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5ED8C0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 02:35:19 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 7C1F0298986
Date:   Mon, 5 Oct 2020 11:35:14 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     robh@kernel.org, kernel@collabora.com, bleung@chromium.org,
        groeck@chromium.org, sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: input: convert cros-ec-keyb to
 json-schema
Message-ID: <20201005093514.kvgniedeu2ltj3pp@rcn-XPS-13-9360>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-3-ricardo.canuelo@collabora.com>
 <3f30a00e-8b1c-4ac7-c5ed-8f23c7af9af0@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3f30a00e-8b1c-4ac7-c5ed-8f23c7af9af0@collabora.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Enric,

Thanks for reviewing the patch and for your suggestions. I'll prepare a
new series with the fixes.

On lun 05-10-2020 11:03:54, Enric Balletbo i Serra wrote:
> Note that there was already an attempt for this here [1]. So I think you should
> address those comments too.
> 
> cc'ing Dmitry as he is the input maintainer.
> 
> [1] https://patchwork.kernel.org/patch/11350059/

Thanks, I wasn't aware of that.

> > +unevaluatedProperties: false
> > +
> 
> Not sure about unevaluatedProperties does here, I might miss something. But,
> shouldn't you add `additionalProperties: false` instead?

The idea of using this came from
Documentation/devicetree/bindings/example-schema.yaml, when it explains
the "additionalProperties: false" line:

    This can't be used in cases where another schema is referenced
    (i.e. allOf: [{$ref: ...}]).  If and only if another schema is
    referenced and arbitrary children nodes can appear,
    "unevaluatedProperties: false" could be used.  Typical example is
    I2C controller where no name pattern matching for children can be
    added.

This binding references matrix-keymap.yaml and it may use some
properties defined in it (although they're not
subnodes). bindings/input/imx-keypad.yaml does the same.

The alternative would be to define "additionalProperties: false" and
redefine the matrix-keymap properties used in this binding too
(keypad,num-rows keypad,num-columns and linux,keymap). Or to ditch
"additionalProperties: false" altogether, but I don't think that's a
proper solution.

> > +examples:
> > +  - |
> > +    cros-ec-keyb {
> 
> The keyboard controller is always a subnode inside the cros_ec, please use a
> complete example.

Ok, I'll do that.

Cheers,
Ricardo
