Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 150B2283307
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725910AbgJEJSJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:18:09 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:46856 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725887AbgJEJSJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:18:09 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 7FF3128DB82
Date:   Mon, 5 Oct 2020 11:18:04 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     robh@kernel.org, kernel@collabora.com, bleung@chromium.org,
        groeck@chromium.org, sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: i2c: convert i2c-cros-ec-tunnel to
 json-schema
Message-ID: <20201005091804.2xjwer6ppoog5orm@rcn-XPS-13-9360>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-2-ricardo.canuelo@collabora.com>
 <19e0e78e-f490-8bcb-cfdb-338a577b2205@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <19e0e78e-f490-8bcb-cfdb-338a577b2205@collabora.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Enric, thanks for reviewing the patch.

On lun 05-10-2020 10:52:26, Enric Balletbo i Serra wrote:
> > +examples:
> > +  - |
> > +    cros-ec {
> 
> We try to use always a complete example, and I think that, Rob also prefers
> complete examples, so here you are missing the spi node.

Ok, I'll prepare a new patch with an extended example.

> > +        compatible = "google,cros-ec-spi";
> 
> And, at least, should have a reg. Did not give you an error?

AFAIK, the reg property is only enforced if the node name includes the
unit-address.

Cheers,
Ricardo
