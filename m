Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8731A2858B3
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 08:31:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727422AbgJGGbw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 02:31:52 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:43828 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726564AbgJGGbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 02:31:52 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id BD72828D80B
Date:   Wed, 7 Oct 2020 08:31:46 +0200
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
Message-ID: <20201007063146.f2l6ayil7fcy6ihu@rcn-XPS-13-9360>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com>
 <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
 <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
 <20201006213543.GA2881522@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201006213543.GA2881522@bogus>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On mar 06-10-2020 16:35:43, Rob Herring wrote:
> Normally, you just add another layer with a 'regulators' and/or 'codecs' 
> node. Do you really have more than 1 codec?
> 
> Rob

Thanks for the tip. There's only this codec afaict, so I'll enclose the
codec subnode inside a new intermediate node for the next patch series.

Cheers,
Ricardo
