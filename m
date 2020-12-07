Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6AE2D1CC3
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 23:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725969AbgLGWGP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 17:06:15 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:39299 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725774AbgLGWGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 17:06:14 -0500
Received: by mail-oi1-f196.google.com with SMTP id v85so6639816oia.6
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 14:05:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=5XYMrGCLh9Qu4YVu/HHyfC6ZXk2Dva0Vw6ksw0mAQeo=;
        b=CQ4qwrsIi8urJWm5Xo+IEHHBxLTyWCKYv2ZGYQZ9+Z9eHbAkw57Ua86647Sxo0G3hO
         2V5uUObOkjSmKDx6ZbjOG9MRVL0TDPcT4ZXA2Tdetg9zQ7hu7dwKUOXf1CDvYMhKRNm0
         dhj1xQ7vpOthYOe0kclXq+2/EO39qPP8R/vLEjcC271wDIzDXnJiqEj/ftQPZhbDbvLu
         HQkRzw5vBgxF2XNjI/ZKqvlKZ4ka6ocbXaZWTpQ8LxIb38Bt4It8zD589VXZUYCC7Ujc
         3G4SxQqgcfMAgZK+kUR9fN5qLWdDwbu9qZQWHYqfQ1vhxjRd1IHfU/IyG+EnfdMzBauz
         xxSw==
X-Gm-Message-State: AOAM532y5dDzYfj5K+W2TJd1Kq1RsEH7Hxw4WQakArRgcXL+DeBiMNe9
        aUtx5ntW9i9Jh4yf7u+WMw==
X-Google-Smtp-Source: ABdhPJz6zHTty6unNDn0gEfplzH+S+3J62SnGcoXoB56u+wxLZWzk3qph8cTRTym8Z/B/X3WxveQ/g==
X-Received: by 2002:aca:130a:: with SMTP id e10mr618261oii.163.1607378733698;
        Mon, 07 Dec 2020 14:05:33 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y21sm2952391oti.21.2020.12.07.14.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 14:05:32 -0800 (PST)
Received: (nullmailer pid 918159 invoked by uid 1000);
        Mon, 07 Dec 2020 22:05:31 -0000
Date:   Mon, 7 Dec 2020 16:05:31 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH V2 1/2] dt-bindings: reset: document Broadcom's PMB
 binding
Message-ID: <20201207220531.GA918081@robh.at.kernel.org>
References: <20201119125600.8559-1-zajec5@gmail.com>
 <20201119125600.8559-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201119125600.8559-2-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Nov 2020 13:55:59 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's PMB is reset controller used for disabling and enabling SoC
> devices.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
> V2: Fix example compilation
>     Describe #reset-cells
> ---
>  .../devicetree/bindings/reset/brcm,pmb.yaml   | 54 +++++++++++++++++++
>  include/dt-bindings/reset/brcm,pmb.h          |  9 ++++
>  2 files changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
>  create mode 100644 include/dt-bindings/reset/brcm,pmb.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>
