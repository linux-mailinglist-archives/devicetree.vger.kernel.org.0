Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE26434F94
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 18:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230272AbhJTQEj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 12:04:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230219AbhJTQEj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 12:04:39 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A75C061749
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 09:02:24 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l38-20020a05600c1d2600b0030d80c3667aso11337853wms.5
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 09:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=xq/MLWmQIO0yxHi2ZCFGeRtQRs/NeB37B3g4U/XhLrc=;
        b=O3O0v0A21zEhwU9mStfZrZOeOnwqKw1fnrUOWLRYik8HzhecXM3/YE+jDv3lJmiTNC
         zg6Yjo7dOtxBhMERCZsXy3M2v2luBfxPe52kPprF9s66PMw0RocVNMdEoJyPSGD7XOrN
         7tmmRJe9n1qz6qCvlta75FquRrWIrsf/yT8p1qQDQ5CS1HQSUfzcOpMe280g2ZysFbkw
         WFzsLKYC3N5BlC4bsfOokKwnvIs5VFyoorELD6/xGGD0Ylu/gjD889td3m3fr8ngzTeP
         djHKLLFDHuKzK6/IniWMOs+zvhQ70VaJrN1JnHMcspv3A/TlV/r1ur1KoEGD5BOyGLh2
         s3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=xq/MLWmQIO0yxHi2ZCFGeRtQRs/NeB37B3g4U/XhLrc=;
        b=GoBf40abA8tatotjh5ZKbAQvSUZY75G+3GxMZ84VI/XNCoWMMY2jfYl3v5QIGgVYgi
         zrpBF05oIj8RpM1Sw27mbyrJhBtMcZumqEflf4pA3FF+SgpjQ1BWEOM7wV8Gl6mUytRj
         CwWafklWXirHUiHvGi+plCFUyYN/cfZgkcSYsGdXLwpKFKW3YEZiUQQSfYv5nm7UDWzk
         jSxAOs8yzpw5EUrAOGDNtVS1XTVeUeG9eZMtLfCcdDqGpJ85HkG4V1UclXW9jZXILcWP
         I8Lp/Re1v2liDRTwb43znQ0uP/93zX6KROtev+On6NUEs4pATZDjL8fppksBUraYf2gW
         p5Vg==
X-Gm-Message-State: AOAM5336YvOy8Zdsy0j/TPzDwV9GKSEChPVpmY/eld9Hlko8fo/ywM6h
        O46K7MYrsQIp8Erw2fol82ZVsA==
X-Google-Smtp-Source: ABdhPJzxmxFWwHks8POaVy7s/vWLf/RFUmDYw1mucQozrDHY3uJDvWA2g1QI9+6dueex6HlQxqbKBQ==
X-Received: by 2002:adf:bb0a:: with SMTP id r10mr77871wrg.23.1634745743237;
        Wed, 20 Oct 2021 09:02:23 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id l6sm2398953wmg.10.2021.10.20.09.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 09:02:22 -0700 (PDT)
Date:   Wed, 20 Oct 2021 17:02:20 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
        Linus Walleij <linus.walleij@linaro.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [RESEND v2 1/3] dt-bindings: gpio: Convert X-Powers AXP209 GPIO
 binding to a schema
Message-ID: <YXA9jObKKOvW07IB@google.com>
References: <20210924071614.868307-1-maxime@cerno.tech>
 <YWfREhBIFLD/9aqo@google.com>
 <CAL_Jsq+tX2TNBLwohWCh05qPsuiYb6n6qmap9f-sko1oOEsi7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+tX2TNBLwohWCh05qPsuiYb6n6qmap9f-sko1oOEsi7A@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 20 Oct 2021, Rob Herring wrote:

> On Thu, Oct 14, 2021 at 1:41 AM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Fri, 24 Sep 2021, Maxime Ripard wrote:
> >
> > > The X-Powers AXP PMICs feature a GPIO Controller supported by Linux
> > > thanks to its device tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device
> > > tree bindings for that driver over to a YAML schema.
> > >
> > > Cc: Chen-Yu Tsai <wens@csie.org>
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Cc: linux-gpio@vger.kernel.org
> > > Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > >
> > > ---
> > >
> > > Changes from v1:
> > >   - Removed the example and moved it in the mfd schema
> > > ---
> > >  .../devicetree/bindings/gpio/gpio-axp209.txt  | 75 -------------------
> > >  .../bindings/gpio/x-powers,axp209-gpio.yaml   | 55 ++++++++++++++
> > >  2 files changed, 55 insertions(+), 75 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-axp209.txt
> > >  create mode 100644 Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
> >
> > Applied, thanks.
> 
> Pushed out? Still failing in linux-next.

No, but I did a push ~10mins ago, so will be in -next on the morrow.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
