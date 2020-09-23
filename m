Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFCC2762D0
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 23:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726680AbgIWVEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 17:04:38 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:43978 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726515AbgIWVEi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Sep 2020 17:04:38 -0400
Received: by mail-io1-f65.google.com with SMTP id z25so971312iol.10
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 14:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wjtv+H/WIIv1m9opsewyJW5IfCL2k4JpFOBomPj7tkU=;
        b=kTaEPE0mmuwXuyFwnquL+OXh8udSwR8WvsEuvqQK2h5+gRuJ56bdbyvaoIjvO64CWo
         sBNWfq/T6qEJHiBIzT2X+biY/hlX//6s0OGW2fb0+SLaub+WqsHNnIJUD2lTJMkKvk59
         eM/C/wpu7/zn0GisuC27FAmOaZzx9APkHV430C7TGf99CNbQ5DrU5csUCjWWPsQ7thc9
         3MckUdZ61o5581hWRZIkTS2n8a6I93cynZrSqacB010rsMTR9WcF6wG0J1xiO4LSsv7J
         Fv4Td9I7mLefeKrtyav934srBTR9TKYukTg8Hv4cecgazPY/TYD+YuQ0mNc8aWUraKOK
         /K1Q==
X-Gm-Message-State: AOAM532fROBRSsnJhMIeZuVqmAH8gB45x4pkUe7yukUtnKWUJ8/gnLbw
        nSpNZ1eRsfw7aPNb4avWB/mAktresS7TtHs=
X-Google-Smtp-Source: ABdhPJx1Iuol3XgbzkvwVcpRLSyxpuBUF3KM8odUe399tOKhg1iSdSIzm3TdNdUuP6FJPNWX71MEnQ==
X-Received: by 2002:a5d:8e12:: with SMTP id e18mr974309iod.99.1600895077239;
        Wed, 23 Sep 2020 14:04:37 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id f4sm405188ils.51.2020.09.23.14.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 14:04:36 -0700 (PDT)
Received: (nullmailer pid 1306334 invoked by uid 1000);
        Wed, 23 Sep 2020 21:04:35 -0000
Date:   Wed, 23 Sep 2020 15:04:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Adrian Schmutzler <mail@adrianschmutzler.de>
Cc:     'Pavel Machek' <pavel@ucw.cz>, 'Dan Murphy' <dmurphy@ti.com>,
        'Linus Walleij' <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: leds: add LED_FUNCTION for
 wlan2g/wlan5g
Message-ID: <20200923210435.GA1300785@bogus>
References: <20200919172733.57217-1-freifunk@adrianschmutzler.de>
 <00b701d68ece$2b237700$816a6500$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00b701d68ece$2b237700$816a6500$@adrianschmutzler.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 19, 2020 at 11:45:18PM +0200, Adrian Schmutzler wrote:
> > -----Original Message-----
> > From: Adrian Schmutzler [mailto:freifunk@adrianschmutzler.de]
> > Sent: Samstag, 19. September 2020 19:28
> > To: Rob Herring <robh+dt@kernel.org>; Pavel Machek <pavel@ucw.cz>; Dan
> > Murphy <dmurphy@ti.com>; Linus Walleij <linus.walleij@linaro.org>;
> > devicetree@vger.kernel.org; Adrian Schmutzler
> > <freifunk@adrianschmutzler.de>
> > Subject: [PATCH v2 1/2] dt-bindings: leds: add LED_FUNCTION for
> > wlan2g/wlan5g
> > 
> > Many consumer "routers" have dedicated LEDs for specific WiFi bands, e.g.
> > one for 2.4 GHz and one for 5 GHz. These LEDs specifically indicate the state
> > of the relevant band, so the latter should be included in the function name.
> > LED_FUNCTION_WLAN will remain for general cases or when the LED is used
> > for more than one band.
> > 
> > This essentially is equivalent to how we use LED_FUNCTION_LAN and
> > LED_FUNCTION_WAN instead of just having LED_FUNCTION_ETHERNET.
> 
> I only just became aware of the linux-leds@vger.kernel.org mailing list, and resubmitted there.

It should both there and the DT list.

> Sorry for the noise. Maybe get_maintainers.sh should be updated for this file.

Patches welcome.

Rob
