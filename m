Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF9054D385
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:18:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350355AbiFOVSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350066AbiFOVSZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:18:25 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6D815537A
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:18:24 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id m20so25618183ejj.10
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=onSkWvejAT9Ncx0zMHpsFmQrSb1YaP70TEFWtoKzsRU=;
        b=jwSQCLch9+e9jFkZSvrwVY6Tamk5VhPqTaqby4t4uzm+gChifoKKoKF0eMu3A3W88M
         tEmh0RCKWGUF9ntIGTDq+fG9ZubzF0RmXm3ExZc3coGAeAukuOmVe/tkxdji5VlTkTfD
         Fmpdz632wGxbT7Ma6+Z3XQw/8h25phlffHbRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=onSkWvejAT9Ncx0zMHpsFmQrSb1YaP70TEFWtoKzsRU=;
        b=O+XAXrGxjaySQVG2Giwm0Ck/eN4RH3FDL0j9XjJF97B4FawgmK/UEbP/XtAyO62R0T
         sFkDeMthfSdM1cR5CkqMHye+hpcED4/GyejF3vkjJRI7PpsGG8Ozcq35ukF1VV4JK346
         PA+ynL7rMXJAnRts6TY2BR3dXPxWrhpfaW83ZX6dV19Mob0xv3AoZFDCzeHMJQc4wsjh
         s6XggeArrDTWs/oTg3FCcRxUYVYux0iuiyPta1ImK/d7Gc23YdQt78lh8fcxVvx7BE01
         Q6aPeNRQFpX0//Ko99xlOqEC2/nazW1SQTC08I2gP1UBBVeyQKfhWRI5gtpppKI7mEN/
         +VrA==
X-Gm-Message-State: AJIora8hj5HGFyy6nOvwaOij3wh/yIRrW9FsWnTPta1/QI13wpluCHez
        1j1EFlW4RQkAyznSS93z42MULaYPi9v35QkixCI=
X-Google-Smtp-Source: AGRyM1sSyFVwm0WSJWPUUVoaXk+Sur8i3gDqIfaoQF3jBnEGwTJwgE++aCC/krlLfd9XbAK6wl31sw==
X-Received: by 2002:a17:907:e92:b0:711:9fe4:b226 with SMTP id ho18-20020a1709070e9200b007119fe4b226mr1635371ejc.88.1655327902969;
        Wed, 15 Jun 2022 14:18:22 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id k3-20020a17090627c300b006feb20b5235sm6683282ejc.84.2022.06.15.14.18.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 14:18:22 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id c130-20020a1c3588000000b0039c6fd897b4so1819450wma.4
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:18:22 -0700 (PDT)
X-Received: by 2002:a05:600c:2054:b0:39c:3f73:3552 with SMTP id
 p20-20020a05600c205400b0039c3f733552mr1430873wmg.15.1655327439836; Wed, 15
 Jun 2022 14:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220609192000.990763-1-mka@chromium.org> <20220609121838.v22.3.Ic9dd36078f9d803de82ca01a6700c58b8e4de27e@changeid>
In-Reply-To: <20220609121838.v22.3.Ic9dd36078f9d803de82ca01a6700c58b8e4de27e@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 Jun 2022 14:10:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VF8u=7f7ak5vmvFCSGtjQ3A7V52MfAu+qMsbGrFYz_LA@mail.gmail.com>
Message-ID: <CAD=FV=VF8u=7f7ak5vmvFCSGtjQ3A7V52MfAu+qMsbGrFYz_LA@mail.gmail.com>
Subject: Re: [PATCH v22 3/3] usb: core: hub: Create platform devices for
 onboard hubs in hub_probe()
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Bastien Nocera <hadess@hadess.net>,
        Peter Chen <peter.chen@kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Bhuvanesh Surachari <Bhuvanesh_Surachari@mentor.com>,
        Kai-Heng Feng <kai.heng.feng@canonical.com>,
        Mathias Nyman <mathias.nyman@linux.intel.com>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 9, 2022 at 12:20 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Call onboard_hub_create/destroy_pdevs() from hub_probe/disconnect()
> to create/destroy platform devices for onboard USB hubs that may be
> connected to the hub. The onboard hubs must have nodes in the
> device tree.
>
> onboard_hub_create/destroy_pdevs() are NOPs unless
> CONFIG_USB_ONBOARD_HUB=y/m.
>
> Also add a field to struct usb_hub to keep track of the onboard hub
> platform devices that are owned by the hub.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v22:
> - patch added to the series (moved creation/deletion from HCD)
>
>  drivers/usb/core/hub.c | 9 ++++++++-
>  drivers/usb/core/hub.h | 1 +
>  2 files changed, 9 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
