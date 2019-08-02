Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CE037FFEF
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2019 19:59:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406504AbfHBR7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Aug 2019 13:59:23 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:43500 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405953AbfHBR7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Aug 2019 13:59:22 -0400
Received: by mail-pl1-f194.google.com with SMTP id 4so26923099pld.10
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2019 10:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OVqucGi6mCgtuzFb+mM0I54hdxnF7iQT16DRkPLbzfw=;
        b=CjA6pbUuaMPDMwcOs1NU1RiCZ3DR8v3r3TDpISfRp+sa+efn/P6rt3PH/uZnyP2ZnZ
         qriwMeECuq/cObFfAIzcDKwqO9kg5UXXdlagupGgYXVp1Nzi/TI2S8IS8UT/sY/wP4ct
         HjvPLaDl0To+ZtkRiw10XQrLFbXCLXCiBEIdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OVqucGi6mCgtuzFb+mM0I54hdxnF7iQT16DRkPLbzfw=;
        b=lYuusIcf54rkcVwSEwNKskfXR0mLMXEE6yGSxSfv63MixKszdIi4aGS3kY1zwfyzb/
         G245aZKJ2pYyeZgDnIgaq5eKH1/R6/+ZgBrqTv9OwpX+EnJ25dZ264wqF2dclp4OGmV3
         I9EKEBs0eOfNd/PeGjsRmrOrzfKveXpk99xCfOcwbhMQC5YT8fvHAMybrlKkZDIh3C8F
         XgPGbD3Y1MS1JhefK7amjOaDz7C0w9SiHIGuXPNXZikVBjpDkkmzO8Eq5nSvW7sZAVda
         AdnfFVP0bXC0Gf9a6BmIkgl3nv+lK8ZVCFaSQtz+NGR+UBuZUuozLZ1RBBTxSAehuOuk
         frhw==
X-Gm-Message-State: APjAAAXI9PaajffE5Ur4l7hgJQgUd2lO6EapogAI/DOODI57SM4GENUd
        oW4sqMnYmu37x3xUVa80311Frg==
X-Google-Smtp-Source: APXvYqwEB0rTsAhxiTa/i+1acy/zxoYQ//dir91uDgoORP0CSaaYnGoNXT6j/HgT+qMctyliELEGGg==
X-Received: by 2002:a17:902:204:: with SMTP id 4mr45618964plc.178.1564768762354;
        Fri, 02 Aug 2019 10:59:22 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id v184sm75225172pfb.82.2019.08.02.10.59.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 10:59:20 -0700 (PDT)
Date:   Fri, 2 Aug 2019 10:59:18 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 2/4] net: phy: Add function to retrieve LED
 configuration from the DT
Message-ID: <20190802175918.GK250418@google.com>
References: <20190801190759.28201-1-mka@chromium.org>
 <20190801190759.28201-3-mka@chromium.org>
 <20190802163810.GL2099@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190802163810.GL2099@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 02, 2019 at 06:38:10PM +0200, Andrew Lunn wrote:
> On Thu, Aug 01, 2019 at 12:07:57PM -0700, Matthias Kaehlcke wrote:
> > Add a phylib function for retrieving PHY LED configuration that
> > is specified in the device tree using the generic binding. LEDs
> > can be configured to be 'on' for a certain link speed or to blink
> > when there is TX/RX activity.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > Changes in v4:
> > - patch added to the series
> > ---
> >  drivers/net/phy/phy_device.c | 50 ++++++++++++++++++++++++++++++++++++
> >  include/linux/phy.h          | 15 +++++++++++
> >  2 files changed, 65 insertions(+)
> > 
> > diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
> > index 6b5cb87f3866..b4b48de45712 100644
> > --- a/drivers/net/phy/phy_device.c
> > +++ b/drivers/net/phy/phy_device.c
> > @@ -2188,6 +2188,56 @@ static bool phy_drv_supports_irq(struct phy_driver *phydrv)
> >  	return phydrv->config_intr && phydrv->ack_interrupt;
> >  }
> >  
> > +int of_get_phy_led_cfg(struct phy_device *phydev, int led,
> > +		       struct phy_led_config *cfg)
> > +{
> > +	struct device_node *np, *child;
> > +	const char *trigger;
> > +	int ret;
> > +
> > +	if (!IS_ENABLED(CONFIG_OF_MDIO))
> > +		return -ENOENT;
> > +
> > +	np = of_find_node_by_name(phydev->mdio.dev.of_node, "leds");
> > +	if (!np)
> > +		return -ENOENT;
> > +
> > +	for_each_child_of_node(np, child) {
> > +		u32 val;
> > +
> > +		if (!of_property_read_u32(child, "reg", &val)) {
> > +			if (val == (u32)led)
> > +				break;
> > +		}
> > +	}
> 
> Hi Matthias
> 
> This is leaking references to np and child. In the past we have not
> cared about this too much, but we are now getting patches adding the
> missing releases. So it would be good to fix this.

Good point, I'll fix it in the next revision.

Thanks

Matthias
