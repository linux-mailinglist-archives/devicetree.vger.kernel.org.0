Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C02E028C8C3
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 08:46:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389638AbgJMGqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 02:46:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389629AbgJMGqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 02:46:16 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F20C0613D0
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 23:46:16 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 96DF11F44DE6
Date:   Tue, 13 Oct 2020 08:46:09 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@google.com
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
Message-ID: <20201013064609.udss7hbdek2of4sw@rcn-XPS-13-9360>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com>
 <20201008183818.GB2395464@bogus>
 <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360>
 <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On vie 09-10-2020 08:34:21, Rob Herring wrote:
> I would probably go this route. You could add this level if there's
> ever more than one codec. However, I'm still not clear what the
> address represents for the codec. Is it needed? The address
> space/format is defined by the parent node. So is this defined by the
> EC? If so, other components don't have an address?

The address represents the physical base address and length of a shared
memory region from the EC. This seems to be the only component in the EC
that needs an address AFAICT, so I guess the unit address and the
intermediate node are needed to make it compatible with the existing EC
binding.

CC'ing Tzung-Bi Shih too, maybe he can give us some info about the
driver.

Thanks,
Ricardo
