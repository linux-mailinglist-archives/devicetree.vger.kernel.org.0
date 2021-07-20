Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63A043CFEF5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 18:13:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231951AbhGTPcs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 11:32:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234295AbhGTP22 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 11:28:28 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73912C061762
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 09:09:06 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id l7so26585632wrv.7
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 09:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=pVCv+JmIPRuD56E6LjWFf8ij0FQMIIJAhgyKZFkghdo=;
        b=KDpF/QuyH2EEa4BxevRhhQRc3tL81pg7UjwtIzvYVL5SLu8YVOJrJ9pS9/7kTefrcU
         u1e+/YKV6+TzGoOi77/Pc96ewWe86kIvh9NLH9csdUUuVKG3vR+N8dYoMMNQkxq7aRtz
         ETSXIp3GvVbfdPbRpafp1gXsMp86+41dnN5bI1HmJZqLepvzGWX52EQVP+bDehb9GVs+
         gpxnKY7qFSkIJBwbSMun3krCYFY3yCImcKBVRmkoISIENvPECjvK+asWRIfXiNI+dS7P
         pjKhCguoDdH51b6rCn0onhpZBgiDq/PMw8EiUI8Hlq4A88Oa5lkETUWcmtlwI/EJhqmA
         3W/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=pVCv+JmIPRuD56E6LjWFf8ij0FQMIIJAhgyKZFkghdo=;
        b=diyLVjSe3VvKBpB1PcXGj4STEJNriH9xciw5o1X1U7qrFuGdh++h/mfdOfXzf7wQjC
         +p/fpKS3UYEX9cRPOVY+AfZJBQQx1CDFkjVjKMwPDOkUgF0Jg2Fn0fPB58bakYnWDzVL
         0X5o24LkJa6FKdguCYLWFjw51kGH6LRZfhOaIzFki8X3UfZz6kb3HHcopJxcEin4qIp3
         GlII8okDKHtNnpXje6LiNNMQ+j/lwJLIibOtbmVa56uTRZh/bz0XudUEkYNgtG2MfIAm
         qpxx4LiT/lVN4hrrywk1pPLdHYIXi+k88/daZPPd1UhplebqaW1htE2oc4OXzr96TLXq
         PROw==
X-Gm-Message-State: AOAM5339GbyMaxPfoAsJG81NxlyJFpggqv8kYJCoAO6Dqh1zukUpQ8qH
        E4vgBMFPbwBTSnBxKzJ6+41y2A==
X-Google-Smtp-Source: ABdhPJwuHu/m1lthS5BccZ3wR2hL1mhKs6xxC4mTNdlgsglE1LyhxOZuQpDBSRcSffjjBOtWVsERbg==
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr38140595wrn.111.1626797345081;
        Tue, 20 Jul 2021 09:09:05 -0700 (PDT)
Received: from google.com ([31.124.24.141])
        by smtp.gmail.com with ESMTPSA id q19sm2676239wmq.38.2021.07.20.09.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 09:09:04 -0700 (PDT)
Date:   Tue, 20 Jul 2021 17:09:02 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Alistair Francis <alistair@alistair23.me>, robh+dt@kernel.org,
        lgirdwood@gmail.com, linux-imx@nxp.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alistair23@gmail.com
Subject: Re: [PATCH v7 1/6] mfd: sy7636a: Initial commit
Message-ID: <YPb1Hs0EoZ1MikuX@google.com>
References: <20210708115804.212-1-alistair@alistair23.me>
 <YPbjZdu7T9wFcvNz@google.com>
 <20210720152351.GC5042@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210720152351.GC5042@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Jul 2021, Mark Brown wrote:

> On Tue, Jul 20, 2021 at 03:53:25PM +0100, Lee Jones wrote:
> > On Thu, 08 Jul 2021, Alistair Francis wrote:
> 
> > > +static const struct mfd_cell sy7636a_cells[] = {
> > > +	{ .name = "sy7636a-regulator", },
> > > +	{ .name = "sy7636a-temperature", },
> > > +	{ .name = "sy7636a-thermal", },
> > > +};
> 
> > If you put these in the Device Tree, you can use "simple-mfd-i2c"
> 
> At least the regulator probably shouldn't be - this is just a Linux
> specific grouping of devices, it's not really directly a block in the
> hardware in a way that's platform independent.

I've seen (and authored) regulator support in DT before.

What's changed?  They're controlled by registers, right?

Is the problem that the registers are usually split?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
