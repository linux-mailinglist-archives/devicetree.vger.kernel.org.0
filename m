Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24EDC389998
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 01:07:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbhESXIl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 19:08:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbhESXIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 19:08:40 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB28C061574
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 16:07:20 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id e19so10981458pfv.3
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 16:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bNc/PWg94RceQRhCF+NWBGbuB6YRbrHAKURevypSwFM=;
        b=mSWFOwADaHEDlE4bh10NpqgWa6CTP9+Sm9dHQ6eoBbWGJHDdMViCN7coGdcVCtEMQE
         yC0L+DJ9wfdsZp5NBL8n/C7xdGyAf9raRZrWSyAhMMvnFfyjbmbsnQvaQpVuFKuZ7NiH
         oOIkeQEx0OPk7XKv9FAunwxgRWKkZ8fdnXAEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bNc/PWg94RceQRhCF+NWBGbuB6YRbrHAKURevypSwFM=;
        b=CaOFzyeAiVRDQjMD6DTh8k1IEyX/Ox5r6Zvq0g0DR2R3oPYdn54OUGbz9RiUwOwrr3
         tC8EfirU4kVh17wkDZSc/1feF4pslXlFuXR7fblxhnXXNXRYkmHyIt6N0EO/0zqekpQ4
         uINR6L28bRo8/y1V6PpzoPhXz6CyuH/+3+/mCEls+PRMA8+843JTRAEVroXE0s5ioiiW
         Fy5+VHKryQzPXoFcS0zDdBQ4zdeLqm0/O3HX9tObWNinwoHr+pwdgjofVN3Vfw+qZ6L0
         7f3oHO8FJsNb1Ao54ayIobl6YvkYFMNXZCGB64zvoz2wwTrrVszLPTv2oqd2wPUXnMu8
         Ta/A==
X-Gm-Message-State: AOAM531YBiALnlOSDVcj8NerRe6pVE30fP46oDnlWweMm5ljHkIsS7B5
        H7x5phP95EkBhyXW2d6Ib6z4gQ==
X-Google-Smtp-Source: ABdhPJzBEoDJyD7xAJElngJnr/KuQQSRJrUCEpy57acaWEpNQlcSaojYP4getzfGJYiB1eHj7IPsKg==
X-Received: by 2002:a63:4b18:: with SMTP id y24mr1493340pga.438.1621465640249;
        Wed, 19 May 2021 16:07:20 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:3d5d:d560:9fb4:d9d1])
        by smtp.gmail.com with UTF8SMTPSA id l15sm422658pjj.23.2021.05.19.16.07.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 16:07:19 -0700 (PDT)
Date:   Wed, 19 May 2021 16:07:17 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Alan Stern <stern@rowland.harvard.edu>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Michal Simek <michal.simek@xilinx.com>,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-usb@vger.kernel.org, Peter Chen <peter.chen@kernel.org>,
        linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Al Cooper <alcooperx@gmail.com>,
        "Alexander A. Klimov" <grandmaster@al2klimov.de>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH v10 2/5] USB: misc: Add onboard_usb_hub driver
Message-ID: <YKWaJdrpj1ixx9+v@google.com>
References: <20210511225223.550762-1-mka@chromium.org>
 <20210511155152.v10.2.I7c9a1f1d6ced41dd8310e8a03da666a32364e790@changeid>
 <YKPz7a68duMyXU5x@google.com>
 <20210518194511.GA1137841@rowland.harvard.edu>
 <YKQ0XxhIWaN37HMr@google.com>
 <20210519144356.GB1165692@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210519144356.GB1165692@rowland.harvard.edu>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 10:43:56AM -0400, Alan Stern wrote:
> On Tue, May 18, 2021 at 02:40:47PM -0700, Matthias Kaehlcke wrote:
> > 
> > Could you also have a look at "[4/5] usb: host: xhci-plat:
> > Create platform device for onboard hubs in probe()"
> > (https://lore.kernel.org/patchwork/patch/1425453/)? It's a
> > relatively short patch that creates the platform device for
> > the driver from xhci-plat as you suggested in the v4
> > discussion.
> 
> I'm not the maintainer for xhci-related drivers.
> 
> However, there is at least one thing about this patch which looks 
> suspicious: Adding the onboard_hub_dev pointer to struct usb_hcd instead 
> of to struct xhci_plat_priv, where it would make a lot more sense.

I can move it to struct usb_hcd if that's preferred

> It's also worth mentioning that this approach won't work at all when the 
> onboard hub is not at the top level (its parent isn't the root hub),

Yes, this limitation is mentioned in the commit message of '[2/5] USB:
misc: Add onboard_usb_hub driver'. It shouldn't be hard to add support
for nested hubs, however I currently have no such configuration for
testing, so I prefer to defer it until the need actually arises and
it can be tested.

> or when more than one onboard hubs are connected to the same root hub.

Right, currently that isn't supported. xhci-plat could iterate over the
ports and have a list of the platform devices it owns. It would also
require some logic to make sure only one platform device is created per
hub. Much of this code could probably live in the onboard_hub driver
and would also be used if support for non-root hubs is added.
