Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 655C4458E8E
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 13:41:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239579AbhKVMo0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 07:44:26 -0500
Received: from frasgout.his.huawei.com ([185.176.79.56]:4125 "EHLO
        frasgout.his.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbhKVMoZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Nov 2021 07:44:25 -0500
Received: from fraeml745-chm.china.huawei.com (unknown [172.18.147.226])
        by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4HyRhP23Btz6GDMH;
        Mon, 22 Nov 2021 20:40:53 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml745-chm.china.huawei.com (10.206.15.226) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 22 Nov 2021 13:41:17 +0100
Received: from localhost (10.202.226.41) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Mon, 22 Nov
 2021 12:41:16 +0000
Date:   Mon, 22 Nov 2021 12:41:15 +0000
From:   Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To:     Maxime Ripard <maxime@cerno.tech>
CC:     Evgeny Boger <boger@wirenboard.com>, Chen-Yu Tsai <wens@csie.org>,
        <linux-sunxi@lists.linux.dev>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH 1/3] iio: adc: sun4i-gpadc-iio: no temp sensor on R40
Message-ID: <20211122124115.00005186@Huawei.com>
In-Reply-To: <20211122091132.yjudzei3bdqmnxq6@gilmour>
References: <20211119191456.510435-1-boger@wirenboard.com>
        <20211119191456.510435-2-boger@wirenboard.com>
        <20211122091132.yjudzei3bdqmnxq6@gilmour>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.29; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.202.226.41]
X-ClientProxiedBy: lhreml737-chm.china.huawei.com (10.201.108.187) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Nov 2021 10:11:32 +0100
Maxime Ripard <maxime@cerno.tech> wrote:

> On Fri, Nov 19, 2021 at 10:14:54PM +0300, Evgeny Boger wrote:
> > R40 SoC has touchscreen controller also serving as general-purpose ADC.
> > The hardware is very similar to A31, except that R40 has separate
> > calibrated thermal sensor IP (handled by sun8i_thermal).
> > 
> > Despite the temperature sensor in the RTP is never mentioned in
> > the R40 family user manuals, it appears to be working. However,
> > it's not very useful as it lacks calibration data and there is another
> > fully functioning temperature sensor anyway.
> > 
> > This patch disables the temperature sensor in RTP/GPADC IP on R40.
> > 
> > The reason for disabling the temperature sensor is that the IP
> > needs to be switched back and forth between RTP and GPADC modes for
> > temperature measurements. Not only this introduces delays, but it also
> > disturbs external circuitry by injecting current into ADC inputs.
> > 
> > Signed-off-by: Evgeny Boger <boger@wirenboard.com>  
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>

+Cc linux-iio@vger.kernel.org

I'm fine with this and assuming Lee is happy to pick it up + send
me an immutable branch in case anything crosses with it this cycle..

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks,

Jonathan

> 
> Maxime
> 

