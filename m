Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4C03413B2C
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 22:19:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234032AbhIUUVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 16:21:16 -0400
Received: from mail-oo1-f46.google.com ([209.85.161.46]:37539 "EHLO
        mail-oo1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbhIUUVQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 16:21:16 -0400
Received: by mail-oo1-f46.google.com with SMTP id h11-20020a4aa74b000000b002a933d156cbso93667oom.4
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 13:19:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=zHCtkCJ+YU8sr1eqCh9RJWt6GKE+8RB1+mxyRXI5Y7Q=;
        b=asZdV08Dmjq7ze/gqeS/63P+IRcnM/sLN2m4mZf19hoUOxvd+fL/JQfNtGfbtkvccP
         GF/BuW+sKTBbPJMp2tFtO65EJKAba4D5kD+dlUIEG2lwxkQo75uKpJbeIfnQjZOyn5u6
         gKcfmbqH7bdLWBXN5NjAgeN2NMG+mzxfZKmRU5NJgbkYmKxSYfkkzZZb0ukN/lHutKfo
         PNGgauB6APyagNhQR3ka/RrprV7EKW0k7BKGaoeh8Ww2JbPfWkAiEaPUAsWI2gbjhv2L
         iuDAixLOIIw4g8WNmcWttxXjxRXu1vzhy5yY9ihN5FoIhkLhu9yu7aMDoA9CyNIfACPU
         DP8Q==
X-Gm-Message-State: AOAM533KmbbTdviYyGB7DXZ5WyK9LUGmGIXTcK8v7gz2OOGlXBI4FyLI
        zxo82pB/OswI9HgodztZcA==
X-Google-Smtp-Source: ABdhPJz0GpQ1eMdu717vAcv6s3prw4o9Aw8b/FmW1Xen1J5SuIvOn0PDqKolr3ryK4+BR+PeW00P+Q==
X-Received: by 2002:a4a:e297:: with SMTP id k23mr25908090oot.4.1632255587216;
        Tue, 21 Sep 2021 13:19:47 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com. [192.154.179.36])
        by smtp.gmail.com with ESMTPSA id q24sm4210otf.52.2021.09.21.13.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 13:19:46 -0700 (PDT)
Received: (nullmailer pid 3262786 invoked by uid 1000);
        Tue, 21 Sep 2021 20:19:45 -0000
Date:   Tue, 21 Sep 2021 15:19:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     linux-phy@lists.infradead.org,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Message-ID: <YUo+YYTgholE/mkI@robh.at.kernel.org>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913080024.6951-3-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Sep 2021 10:00:23 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Northstar's USB 2.0 PHY is part of the CRU MFD.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml         | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
