Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CF4644EF64
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 23:35:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236026AbhKLWiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 17:38:09 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:35456 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236055AbhKLWiH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 17:38:07 -0500
Received: by mail-ot1-f44.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso2488306otr.2
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 14:35:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=l1zP7sBRNwlwkETxLn0ekBFEa14/eatm0UvUCsGQU1I=;
        b=ftaMYtPXi35bEBma7S92rhszWM7DVVUpAIHKprVgr+X8RiYYWufzlj161taShWN2Vn
         MgqswkdzSXWvPxLUcIMYZyEyL3UDaA8akz0ATJbzeWVpcAEtt3K0hNsGL7j/0tozGRs/
         WqpyYzw+sntrELr16q4B2H7BR/IEDGMcuVdDRiUr+7HN+ppL0gBMnvO6DFFVenQ2XFPg
         UOjHrzaSJwdeg+wVx4FuCQnNGxvATgt2OV/kODgaliyO7f9cTNQ8vki7VwyChPsQKl6g
         ShLB0eCHxTL0REeZ34NEtb4i2ux1Z1yMRGAomnVzFbNPfPh9WcykLqVSf0LEHnPhrS5c
         +BQA==
X-Gm-Message-State: AOAM532h9BuTplWexyr0Jak4gDo3cMO9ywJ/2cIQGu9svqpS9bmN/4mn
        SOhdIjIAgRrXsaLOL+JizQ==
X-Google-Smtp-Source: ABdhPJxm04NbcDvX00NRYg12cXP9Hx8SNb0oZvljs5sVrR4uVXquqm3YU5hTsAUnWmTlFQxE2wyjVg==
X-Received: by 2002:a9d:19e3:: with SMTP id k90mr14942946otk.99.1636756515854;
        Fri, 12 Nov 2021 14:35:15 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w19sm1596845oih.44.2021.11.12.14.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 14:35:15 -0800 (PST)
Received: (nullmailer pid 3499396 invoked by uid 1000);
        Fri, 12 Nov 2021 22:35:14 -0000
Date:   Fri, 12 Nov 2021 16:35:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: document Netgear RAXE500
 binding
Message-ID: <YY7sIov2f3DTwF3C@robh.at.kernel.org>
References: <20211105101413.14926-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211105101413.14926-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 05 Nov 2021 11:14:12 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> One more BCM4908 based device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
