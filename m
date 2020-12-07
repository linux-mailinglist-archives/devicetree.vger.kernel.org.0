Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6D832D1248
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 14:39:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbgLGNje (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 08:39:34 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:54616 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726122AbgLGNjd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 08:39:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607348332; x=1609940332;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Fr5ZRVHJ1Y/U2brd+6Sj48jYwNqb5UMz1h9z6qULkWU=;
        b=CSzGFhH8M5HJ+CZ6U+glHOB2DrytbDBEN3ytwhV12dyXIakPxvZc5Rs965nV4DWv
        Wh5/WEGiIi7s5rBHgJMDo3lBGNBS4fCwO4ImqQ4L6uwYg1j7k9J+YTofEwa+vXik
        /6ZAb75cyn9CwgZTgC15LQ7AWIdrmVcJY1+Sycfd20I=;
X-AuditID: c39127d2-96bff70000006435-80-5fce306cf47b
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id FC.5B.25653.C603ECF5; Mon,  7 Dec 2020 14:38:52 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120714385184-929747 ;
          Mon, 7 Dec 2020 14:38:51 +0100 
Message-ID: <5b8617e4b6abe19750cec17f4d6e501fe957f193.camel@phytec.de>
Subject: Re: [PATCH 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Date:   Mon, 07 Dec 2020 14:38:51 +0100
In-Reply-To: <20201207121029.GC27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
         <1607113982-109524-2-git-send-email-t.remmet@phytec.de>
         <20201207121029.GC27266@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.12.2020 14:38:51,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.12.2020 14:38:52,
        Serialize complete at 07.12.2020 14:38:52
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHLMWRmVeSWpSXmKPExsWyRoCBSzfH4Fy8wdQ2Fov3y3oYLeYfOcdq
        8fCqv8X58xvYLTY9vsZq0br3CLvF3+2bWCxebBF34PBYM28No8fOWXfZPTat6mTz2Lyk3qP/
        r4HH501yAWxRXDYpqTmZZalF+nYJXBmPV99hKdjGWdHaOpu9gfEgexcjJ4eEgInEu2nLmboY
        uTiEBLYySrw7e4AdwjnGKDHx+Ho2kCpeATeJxS+/s4DYwgLuEivabrKC2GwCGhJPV5xmArFF
        BDQlrv/9zgrSzCzwl1Fi+eJ3YA0sAqoSj6/8ACviFNCXmHbzCNS6JYwSS5ZsZIG4Q0fiw/1P
        jF2MHEDbBCX+7hAGqZEQaGSSWLnhCyNEjZDE6cVnmUFsZgF5ie1v50DZmhKt23+zT2AUnIXQ
        PgtJ1SwkVQsYmVcxCuVmJmenFmVm6xVkVJakJuulpG5iBMbB4Ynql3Yw9s3xOMTIxMF4iFGC
        g1lJhFdN6my8EG9KYmVValF+fFFpTmrxIUZpDhYlcd4NvCVhQgLpiSWp2ampBalFMFkmDk6p
        BkZ7JkkdJfH1T4tCagKOPZsyndlxYb3i0olN8XxhxzdfPSOsqmO09Ox/J6fkp7datKKPTvo1
        40eFZbqAwbSZB19JfXM66CUpcXaV2JwFRr98fr58+G2npZeK96ztL9jyX3SwNR39tDfrf92a
        BQXnDXbPWFNWeKzmsrU1s9KZ+nfMbaWKM+9fZdZTYinOSDTUYi4qTgQAin/uLnECAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, den 07.12.2020, 13:10 +0100 schrieb Krzysztof Kozlowski:
> On Fri, Dec 04, 2020 at 09:32:59PM +0100, Teresa Remmet wrote:
> > Enable rv3028 i2c rtc driver populated on phyBOARD-Pollux-i.MX8M
> > Plus.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig
> > b/arch/arm64/configs/defconfig
> > index 5cfe3cf6f2ac..2034fefb3f44 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -818,6 +818,7 @@ CONFIG_RTC_DRV_MAX77686=y
> >  CONFIG_RTC_DRV_RK808=m
> >  CONFIG_RTC_DRV_PCF85363=m
> >  CONFIG_RTC_DRV_RX8581=m
> > +CONFIG_RTC_DRV_RV3028=y
> 
> This should be a module.

with having this build in the clock out of this rtc will be disabled as
not using during boot up. The clock out is enabled as default and has
to be disabled explicit. But I guess the correct way would be to find a
solution in the rtc driver itself?

Teresa

> 
> Best regards,
> Krzysztof
> 
> 
> >  CONFIG_RTC_DRV_RV8803=m
> >  CONFIG_RTC_DRV_S5M=y
> >  CONFIG_RTC_DRV_DS3232=y
> > -- 
> > 2.7.4
> > 

