Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C49F45516B
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 01:03:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240415AbhKRAGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 19:06:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239785AbhKRAGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 19:06:37 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75016C061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 16:03:38 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id k1so4596364ilo.7
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 16:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hl+jHNmt64gcmop2VJ5YRcreilaGiydQ+Rm3hJ+geuM=;
        b=C/ZiqA5KWRgbZsPgO6NZ5wRG/u5B1DYJCyimXTpNpDryUAx+ssN5yomcXO1RGpDY9A
         ixB4krsYY/nzR8gQqmIUHUmL0918qK6khE5JQ6ciLvbsemrN4PRtFl1RJ/XVy1ummekC
         dMqUGD4sWrobbLj1f44v7vmXIqCcGhVVMdqMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hl+jHNmt64gcmop2VJ5YRcreilaGiydQ+Rm3hJ+geuM=;
        b=AFKJpUN/PtGzUVoiUELnvvarPuCv+dx8F8nZ5L2zUf4MBqISd3G14BeMIXzVg9Uuh/
         U1ICYlBMU25vJxWFD3XJFVEKHUO9Z3zd6Vk6CWEzNy1K3YQ5zhKD+t9YPU0tsC9Sdc6A
         KO8mBoRbUo1Euf6gHXlQWxSxhOSZdtQXzM0ktenZzqmJ8QrXUHFUbEctOKVr52oB64mA
         d1SoH5OgtQRx523I655IanHra0VF53tBEwHjw9eD83MpzcKkUTxl0WyRF9D6SraalTbG
         l3P+sH2l8bVV0U1EzyjvzmopH93MN2i+L4gFSzHUkL45hfRgSMtG9KmSx2WZCNLTuOGo
         Rxgw==
X-Gm-Message-State: AOAM530jWHgM0YzATSgQfJT1gwp2/DJCLhq8GVU6sf/gwcxbGhTFhUyV
        XK9zLoCGj6XSKUAaTgcoeKtLZicsOfiKYw==
X-Google-Smtp-Source: ABdhPJzZVVlNZxrUKjW+IkfH+gPixJuGqPOnLiJsQnuxhjXiMowsuXs7pr9H+xdRyBYlReumpRy8tw==
X-Received: by 2002:a05:6e02:1c0e:: with SMTP id l14mr12631044ilh.8.1637193817671;
        Wed, 17 Nov 2021 16:03:37 -0800 (PST)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id m2sm683689iob.21.2021.11.17.16.03.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 16:03:37 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id x10so5624986ioj.9
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 16:03:36 -0800 (PST)
X-Received: by 2002:a05:6638:190f:: with SMTP id p15mr16966992jal.82.1637193816599;
 Wed, 17 Nov 2021 16:03:36 -0800 (PST)
MIME-Version: 1.0
References: <20211116200739.924401-1-mka@chromium.org> <20211116120642.v17.3.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
In-Reply-To: <20211116120642.v17.3.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 17 Nov 2021 16:03:25 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VcAdSWWVykGrw2r5BFMe4Esotb+ieggczcrY2TH-4VSA@mail.gmail.com>
Message-ID: <CAD=FV=VcAdSWWVykGrw2r5BFMe4Esotb+ieggczcrY2TH-4VSA@mail.gmail.com>
Subject: Re: [PATCH v17 3/7] usb: core: hcd: Create platform devices for
 onboard hubs in probe()
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Peter Chen <peter.chen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Bastien Nocera <hadess@hadess.net>,
        Andrey Konovalov <andreyknvl@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Li Jun <jun.li@nxp.com>, Peter Chen <peter.chen@nxp.com>,
        Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Nov 16, 2021 at 12:07 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Call onboard_hub_create/destroy_pdevs() from usb_add/remove_hcd()
> for primary HCDs to create/destroy platform devices for onboard
> USB hubs that may be connected to the root hub of the controller.
> These functions are a NOP unless CONFIG_USB_ONBOARD_HUB=y/m.
>
> Also add a field to struct usb_hcd to keep track of the onboard hub
> platform devices that are owned by the HCD.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v17:
> - create the platform devices in the generic HCD code instead of
>   the xhci_platform driver
> - updated subject and commit message to reflect the above change
> - dropped initialization of platform device list, which is now
>   done in onboard_hub_create_pdevs()
>
> Changes in v16:
> - none
>
> Changes in v15:
> - none
>
> Changes in v14:
> - none
>
> Changes in v13:
> - added comment for 'depends on USB_ONBOARD_HUB || !USB_ONBOARD_HUB'
>   construct
>
> Changes in v12:
> - none
>
> Changes in v11:
> - use onboard_hub_create/destroy_pdevs() to support multiple onboard
>   hubs that are connected to the same root hub
> - moved field/list to keep track of platform devices from struct
>   usb_hcd to struct xhci_hcd
> - updated commit message
>
> Changes in v10:
> - none
>
> Changes in v9:
> - added dependency on USB_ONBOARD_HUB (or !!USB_ONBOARD_HUB) to
>   USB_XHCI_PLATFORM
>
> Changes in v8:
> - none
>
> Changes in v7:
> - none
>
> Changes in v6:
> - none
>
> Changes in v5:
> - patch added to the series
>
>  drivers/usb/core/hcd.c  | 6 ++++++
>  include/linux/usb/hcd.h | 1 +
>  2 files changed, 7 insertions(+)

This looks sane to me, so:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

That being said, I don't know these functions and can't say with any
authority that this is the "right" place to put the
onboard_hub_create_pdevs() and onboard_hub_destroy_pdevs(). I'm
assuming that Alan, Greg, or someone else on this CC list will
scrutinize that more closely and make sure where Matthias picked is
OK.


-Doug
