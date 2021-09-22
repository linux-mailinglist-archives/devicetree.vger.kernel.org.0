Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26595414319
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 09:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233396AbhIVH7G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 03:59:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233394AbhIVH7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 03:59:06 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59986C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 00:57:36 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id t18so4320990wrb.0
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 00:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=fGXl0KeIjcoM5s5bRzzdyi1aRveqH8tZqcXcxjtKyJs=;
        b=iYe8BPNL2kyGirvgQnm/X0Y/XhTSprHlKfUERs6a5402Vdth73+NESFvf3JhHEQhJn
         8La3QDQ79in72RQRrxokSyALYTpLdUqeWTE89Qzo85XxC5ERrNp6ToEIKLsIrwt+kSgm
         xy8fQJzEj37RH0Z9xgj0Y/q3CZ99K+m2Q2u+ciLJ2AKrLQAe9GLOT3Cpv0Cdct8TPyIW
         Em85M8ennpRBWzwF8RDK8ESpQBplUD3keFSQcyvBDUVYMdksSDvdF2cb+GNuykFDtJvM
         JprN0A+nYc54SLif/45hJ0fN926VcdHlcIMHW1da8C17mccT+gYd+wf8v/dtVVi7XTrY
         6S3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=fGXl0KeIjcoM5s5bRzzdyi1aRveqH8tZqcXcxjtKyJs=;
        b=7IHgU2ws2jvJKbAGCVphezg9rchxP3tWbTXbEy8qwcmxhXHF71gQ4jDfZLp1LfEGce
         HTAzmbUkMWOXyehVRHKwzG16E8oI0PCrNUEhSJKOWV6AL0p1YhQl+tCWfjrFTHZhB665
         O+s0tKbI+y+tLmSNdbab/nxTCqsajw5msLaE8+dDKSU/SCqYKpyd0RY56Ly1NznEhYcI
         pRurY0Q+oDzIxK10nBPuMBNvdL+ti0S3V5C36xJxE5Fyqut7zpDxmOYxFg5A8WjDFE4o
         Vqaqro3F+USnczqJQ6210AUuvos9zGWa/xyKaxp+cjqDuncgkpLAGDkxXn671PaAZc+I
         7nqQ==
X-Gm-Message-State: AOAM532/mNQXeCVNdccsdlTEMG56rMnmNYYb0F3wHG93qfnbTWRyTjiM
        YfVr9+GTG/isf74rZhJ8fyraIQ==
X-Google-Smtp-Source: ABdhPJwkICQgfJ7bWJwiuTYm+f+/7r28Cdl77ODCGFT7Pc9HRYSxuz9HKikTFnqTpprmjU2cabXvxA==
X-Received: by 2002:a05:6000:d2:: with SMTP id q18mr16952300wrx.4.1632297454866;
        Wed, 22 Sep 2021 00:57:34 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id p6sm1308202wrq.47.2021.09.22.00.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 00:57:34 -0700 (PDT)
Date:   Wed, 22 Sep 2021 08:57:32 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/4] dt-bindings: mfd: brcm,cru: add clkset syscon
Message-ID: <YUrh7A0ZPBhHjy2d@google.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Sep 2021, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU has a shared register that is used e.g. to control USB 2.0 PHY block
> access. It's a single 32 b register. Document it as syscon so it can be
> used with a regmap.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/mfd/brcm,cru.yaml | 8 ++++++++
>  Documentation/devicetree/bindings/mfd/syscon.yaml   | 1 +
>  2 files changed, 9 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
