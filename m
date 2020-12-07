Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADC9B2D128A
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 14:52:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725867AbgLGNu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 08:50:59 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:52920 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726164AbgLGNu7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 08:50:59 -0500
Received: by mail-wm1-f67.google.com with SMTP id a6so11523529wmc.2
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 05:50:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FftH6af/C4ijp9qZAXmpaXm/xsA7yaDpXA+L76ZmNPw=;
        b=IbgOKxTZms7hgZbw04l6L4VWfea1MoUUE+UHpLe2NMixzU+5KjGpT6YYYpGbIqp1C2
         FkdfIpy6dMGgkmKunRB6SHRW2R91ZhGXmABXJjpNsvBtozztpKlaG8tNLoan0DxHxVaq
         2M7hptWPRaeUZC4KO6d1/JJPVdOZ9GBIcpA3cAuUDkEh5uTx9nJwV1wkcJQqd2bHfB7d
         IGjTWXLOVdfqBkGyBk8cWhNne8btiAoCmV/nX7BLZj71nvmdNzS/x/vs/egdhTjtz2iq
         jDO+j9rwbDdk9++oO914CbeeBoeWyU4cnDRzhwVzDjACxyT0xPFdWchdFSMgV08Kv/MT
         f2xg==
X-Gm-Message-State: AOAM5324YgzwwUVd7mVqoxW27YOE6HBNJC59galT1QGITbL2cmYMJys5
        E7Tx37zLQhTzW+ArfVpPuoU=
X-Google-Smtp-Source: ABdhPJy9WMUqw/xMWQUbnpndvxbL6i1Xb8vqxJB03XdFnfPtyCvXw4Vg8Nhx5udPvmfl6jK5WbYKQQ==
X-Received: by 2002:a05:600c:258:: with SMTP id 24mr18886051wmj.16.1607349011527;
        Mon, 07 Dec 2020 05:50:11 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id r128sm15082189wma.5.2020.12.07.05.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 05:50:10 -0800 (PST)
Date:   Mon, 7 Dec 2020 14:50:04 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Message-ID: <20201207135004.GA34599@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
 <1607113982-109524-2-git-send-email-t.remmet@phytec.de>
 <20201207121029.GC27266@kozik-lap>
 <5b8617e4b6abe19750cec17f4d6e501fe957f193.camel@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5b8617e4b6abe19750cec17f4d6e501fe957f193.camel@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 07, 2020 at 02:38:51PM +0100, Teresa Remmet wrote:
> Am Montag, den 07.12.2020, 13:10 +0100 schrieb Krzysztof Kozlowski:
> > On Fri, Dec 04, 2020 at 09:32:59PM +0100, Teresa Remmet wrote:
> > > Enable rv3028 i2c rtc driver populated on phyBOARD-Pollux-i.MX8M
> > > Plus.
> > > 
> > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > ---
> > >  arch/arm64/configs/defconfig | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm64/configs/defconfig
> > > b/arch/arm64/configs/defconfig
> > > index 5cfe3cf6f2ac..2034fefb3f44 100644
> > > --- a/arch/arm64/configs/defconfig
> > > +++ b/arch/arm64/configs/defconfig
> > > @@ -818,6 +818,7 @@ CONFIG_RTC_DRV_MAX77686=y
> > >  CONFIG_RTC_DRV_RK808=m
> > >  CONFIG_RTC_DRV_PCF85363=m
> > >  CONFIG_RTC_DRV_RX8581=m
> > > +CONFIG_RTC_DRV_RV3028=y
> > 
> > This should be a module.
> 
> with having this build in the clock out of this rtc will be disabled as
> not using during boot up. The clock out is enabled as default and has
> to be disabled explicit. But I guess the correct way would be to find a
> solution in the rtc driver itself?

Regardless whether it is built-in or module, the driver will behave the
same. So either the driver disables the clock, or not. The only
difference will be *when* the action happens.

Choosing it as built-in for the purpose of disabling some clock is not a
proper approach.

The defconfig here serves only a development/debugging/reference purpose.
It's not for production so anyway the effect on disabling some parts is
not that important.

Best regards,
Krzysztof

