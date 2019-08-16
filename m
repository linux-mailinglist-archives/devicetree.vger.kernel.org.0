Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7515890A41
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2019 23:27:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727711AbfHPV1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Aug 2019 17:27:33 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41981 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727687AbfHPV1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Aug 2019 17:27:32 -0400
Received: by mail-pf1-f193.google.com with SMTP id 196so3743294pfz.8
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2019 14:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5+ZQXsiG4dFvJZO/CtCADlk+/s2HQcVxge7ZEsZ75MA=;
        b=JwsVzigeqeonkzmA6qGereNHoD3N+KunzR2inoTOrf+8mfyhAQmFS/WPodBY/Zr/Zx
         ZifH3DBLqLFUHgYIveyE0T8rvkv5PM/vc8Rs8Xj+bDUdLC7EKLj9a6ZqNbJdcPFbVrfC
         DYUG7UXtae/wvzcFeipGvQq7qgjrrSNA4OMtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5+ZQXsiG4dFvJZO/CtCADlk+/s2HQcVxge7ZEsZ75MA=;
        b=Qnm7NGUPS2lf6n8WKu3P50HIcn0al8Z9bLzaK6HmtoiydxZqKum0QrqK4b2+ipM5Vd
         mCcrLCaN43VMprSusrp3ZrooJNnkcD9X8FmMhNRoXXE6xjkFSHX7HJDunBU8lNMaCfVU
         wXDewrd+rbV1TaszKMvnX2/CLUmDqRa0b34BqHoBH/wNcfG+seYyRm7/x6Ry4c9CQUGi
         aSGDKjtse7Buprm1Dox3pKpZU2vGXCOy1DOn4dy7d5j+046G+Ry5AWniS9+Z4F8TwFkk
         bjdLD3ABBQiJYYvIbRKOWI4mi5bZuJtfxoA0r+0Wz8v+q23k0U4/2Qog4zG/AKybR01b
         yPvA==
X-Gm-Message-State: APjAAAX+xEh944zERsL8ilRH4d9aITgL+yuBNi12KVYVybI8nOAvYYaV
        i1Fk8nQxctzKe10t5UbGo/EYfw==
X-Google-Smtp-Source: APXvYqzbeuEjhrZHzS2dfMcNDL91d/TEzw4enwa88Gi11sQXjvhfKaU/LEFoIDh62jfymEIREP68+g==
X-Received: by 2002:a63:6904:: with SMTP id e4mr9352982pgc.321.1565990852019;
        Fri, 16 Aug 2019 14:27:32 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id 136sm10761162pfz.123.2019.08.16.14.27.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Aug 2019 14:27:30 -0700 (PDT)
Date:   Fri, 16 Aug 2019 14:27:28 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Pavel Machek <pavel@ucw.cz>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v6 4/4] net: phy: realtek: Add LED configuration support
 for RTL8211E
Message-ID: <20190816212728.GW250418@google.com>
References: <20190813191147.19936-1-mka@chromium.org>
 <20190813191147.19936-5-mka@chromium.org>
 <20190816201342.GB1646@bug>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190816201342.GB1646@bug>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 16, 2019 at 10:13:42PM +0200, Pavel Machek wrote:
> On Tue 2019-08-13 12:11:47, Matthias Kaehlcke wrote:
> > Add a .config_led hook which is called by the PHY core when
> > configuration data for a PHY LED is available. Each LED can be
> > configured to be solid 'off, solid 'on' for certain (or all)
> > link speeds or to blink on RX/TX activity.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> 
> THis really needs to go through the LED subsystem,

Sorry, I used what get_maintainers.pl threw at me, I should have
manually cc-ed the LED list.

> and use the same userland interfaces as the rest of the system.

With the PHY maintainers we discussed to define a binding that is
compatible with that of the LED one, to have the option to integrate
it with the LED subsystem later. The integration itself is beyond the
scope of this patchset.

The PHY LED configuration is a low priority for the project I'm
working on. I wanted to make an attempt to upstream it and spent
already significantly more time on it than planned, if integration
with the LED framework now is a requirement please consider this
series abandonded.
