Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6042C413B2B
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 22:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233070AbhIUUVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 16:21:07 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:37515 "EHLO
        mail-oi1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbhIUUVG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 16:21:06 -0400
Received: by mail-oi1-f177.google.com with SMTP id w206so964393oiw.4
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 13:19:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wtdzPeFFuh0gwpeXMWbzGz7iIlMKdoUJF4jnFh3Iuso=;
        b=0MgDdu8nf8sqA6IFl0L4F/K5TRfK6lJeDL0gMQeRzOsYTJ1GaJKdsYvwa1hAreTijw
         P84lWHIBpqylYDyr13QIr4cRA4rBWD33Am/yNC5wqHl2fKnUnBUjvS7NKuB5cA5PHBga
         ZmCdN7e+lQ5tru/cxkgwVvGM+usxQAMGpsYRQEfAS/vfGPVcF6jS+1DHkwjXSWOQB7Xd
         ltrJPJb0HV5VhrhffY8atlCG/V1MJv1njB9HCAsvFSYBIcmkzrJQ96DGqRFW12g5umLt
         mdX5dD1zLAz7RZHbHD6SrfEWiV0zhfOcky9KRGxRHllAMaSVmJROaKayH4QUN0T0tfQi
         o0+A==
X-Gm-Message-State: AOAM530GQ/voXiNdb6QrqK+xnxBDxriIYsbu2J8T1rEQdVXssG/zLv3g
        rdCULuuoT53sSRVw5h4RGQ==
X-Google-Smtp-Source: ABdhPJyQaz7j6iheSPexlbp1r5PyD+pT4Y70SHhBnVukKtq2Dy8v4eVnHIFls4zuwxVWAikryGsJ+w==
X-Received: by 2002:a05:6808:1513:: with SMTP id u19mr5174867oiw.109.1632255577537;
        Tue, 21 Sep 2021 13:19:37 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com. [192.154.179.36])
        by smtp.gmail.com with ESMTPSA id y11sm19816oof.32.2021.09.21.13.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 13:19:37 -0700 (PDT)
Received: (nullmailer pid 3262470 invoked by uid 1000);
        Tue, 21 Sep 2021 20:19:35 -0000
Date:   Tue, 21 Sep 2021 15:19:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 2/4] dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY
 block
Message-ID: <YUo+V6yItABkQI1S@robh.at.kernel.org>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913080024.6951-2-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Sep 2021 10:00:22 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> The old binding was covering the whole DMU block space (DMU block
> contains CRU block which contains USB PHY). It was a bad design,
> overkill and a non-generic solution.
> 
> Northstar's USB 2.0 PHY is a small block (part of the CRU MFD) and
> binding should be designed to represent that properly. Rework the
> binding to map just PHY with the "reg" property and use syscon to
> reference shared register that controls block access.
> 
> The old binding is deprecated now.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bindings/phy/bcm-ns-usb2-phy.yaml         | 25 ++++++++++++++-----
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
