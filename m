Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF47A2D29D1
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 12:34:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727844AbgLHLee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 06:34:34 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60364 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727839AbgLHLee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 06:34:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607427232; x=1610019232;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=n2q2WN/q5U0vHCnHfjkUQQapiMbVThBBS6QprCE76wI=;
        b=tboJAwj1eH5FxkMjhEvxAejTfupGy/8OZYYfTH6ADmPi3TfYOpm61QlqHuYXjr0v
        9RZLZ+UJFpQgKmSx4JUvMQIVyYtlOti6SmXhjPAuHu/AmEXyXxS7J1tT3bEJnxet
        cJcmfxV6NkQPWvKmohEYjyjJ1Lq4GldoBnJFeg1IQXI=;
X-AuditID: c39127d2-981ff70000006435-84-5fcf64a07097
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id D0.21.25653.0A46FCF5; Tue,  8 Dec 2020 12:33:52 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120812335195-937735 ;
          Tue, 8 Dec 2020 12:33:51 +0100 
Message-ID: <39ab8e317628de07b0ddc6129ceefda935eb5b5a.camel@phytec.de>
Subject: Re: [PATCH 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Date:   Tue, 08 Dec 2020 12:33:51 +0100
In-Reply-To: <20201207135004.GA34599@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
         <1607113982-109524-2-git-send-email-t.remmet@phytec.de>
         <20201207121029.GC27266@kozik-lap>
         <5b8617e4b6abe19750cec17f4d6e501fe957f193.camel@phytec.de>
         <20201207135004.GA34599@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 12:33:52,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 12:33:52,
        Serialize complete at 08.12.2020 12:33:52
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLLMWRmVeSWpSXmKPExsWyRoCBS3dByvl4g0U7OC3eL+thtJh/5Byr
        xcOr/hbnz29gt9j0+BqrReveI+wWf7dvYrF4sUXcgcNjzbw1jB47Z91l99i0qpPNY/OSeo/+
        vwYenzfJBbBFcdmkpOZklqUW6dslcGVc2nSVseAHX8Wl6ceYGhjPcHcxcnJICJhItBx6xNTF
        yMUhJLCVUaL93kk2COcYo8TB5ulAGQ4OXgE3iRV9UiANwgLuEivabrKC2GwCGhJPV5xmArFF
        BDQlrv/9zgrSyyzwl1Fi+eJ3LCAJFgFViTXnGtlAbE4BfYnvq+axQyzoYJJonb2bHeIMHYkP
        9z8xQiwTlPi7QxikRkKgkUmib8VCqBohidOLzzKD2MwC8hLb386BsjUlWrf/Zp/AKDgLoX0W
        kqpZSKoWMDKvYhTKzUzOTi3KzNYryKgsSU3WS0ndxAiMgsMT1S/tYOyb43GIkYmD8RCjBAez
        kgivmtTZeCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8G3hLwoQE0hNLUrNTUwtSi2CyTBycUg2M
        ZXWqgkJbr+/2Xtfulx6n8MKGU9z7uvjM3Z3GZTw9Lp414ScZb6pb/H7/TH22v/6/xRqT+YKO
        T2z97mTLxFertjk9nzMuUTvEuqvXtk1te1OFpcCP3XInm5eYy5tdW9o5ozhrypajtySMfB6G
        ptcdzvwYznPN6m3FzOX3ddbMPb1xh86XH0JKLMUZiYZazEXFiQC6zcIccAIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

Am Montag, den 07.12.2020, 14:50 +0100 schrieb Krzysztof Kozlowski:
> On Mon, Dec 07, 2020 at 02:38:51PM +0100, Teresa Remmet wrote:
> > Am Montag, den 07.12.2020, 13:10 +0100 schrieb Krzysztof Kozlowski:
> > > On Fri, Dec 04, 2020 at 09:32:59PM +0100, Teresa Remmet wrote:
> > > > Enable rv3028 i2c rtc driver populated on phyBOARD-Pollux-
> > > > i.MX8M
> > > > Plus.
> > > > 
> > > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > > ---
> > > >  arch/arm64/configs/defconfig | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/arch/arm64/configs/defconfig
> > > > b/arch/arm64/configs/defconfig
> > > > index 5cfe3cf6f2ac..2034fefb3f44 100644
> > > > --- a/arch/arm64/configs/defconfig
> > > > +++ b/arch/arm64/configs/defconfig
> > > > @@ -818,6 +818,7 @@ CONFIG_RTC_DRV_MAX77686=y
> > > >  CONFIG_RTC_DRV_RK808=m
> > > >  CONFIG_RTC_DRV_PCF85363=m
> > > >  CONFIG_RTC_DRV_RX8581=m
> > > > +CONFIG_RTC_DRV_RV3028=y
> > > 
> > > This should be a module.
> > 
> > with having this build in the clock out of this rtc will be
> > disabled as
> > not using during boot up. The clock out is enabled as default and
> > has
> > to be disabled explicit. But I guess the correct way would be to
> > find a
> > solution in the rtc driver itself?
> 
> Regardless whether it is built-in or module, the driver will behave
> the
> same. So either the driver disables the clock, or not. The only
> difference will be *when* the action happens.
> 
> Choosing it as built-in for the purpose of disabling some clock is
> not a
> proper approach.
> 
> The defconfig here serves only a development/debugging/reference
> purpose.
> It's not for production so anyway the effect on disabling some parts
> is
> not that important.

I will include this as module in v2.

Thanks,
Teresa

> 
> Best regards,
> Krzysztof
> 

