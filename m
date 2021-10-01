Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2008B41EAA1
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 12:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353352AbhJAKKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 06:10:06 -0400
Received: from mail.kernel.org ([198.145.29.99]:37598 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230073AbhJAKKG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Oct 2021 06:10:06 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6081A6134F;
        Fri,  1 Oct 2021 10:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633082902;
        bh=jIoDVs/Z/LVK/g4wkFRFhOcING/G9KP8xXEzegnDoIM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C0iK1JzL0JPU29PHAivKdGtf+bGgGvCC86oEWoiUl+98XOPJw0PXPHomrbGsmvpBT
         pZq+/uWqqqsVs0oKgYKumeYQBwfa6toQ2lGiIapiRsOgeVb8f6Bq+qWyAPB14rjAvm
         eWekvrsLJa3S1VSNCBI11/pRgV2aiDRYLyO9D23Mc178tBn4Vwm7mWiYDcPCwWmmgW
         QBYfZfKbKrA7uZZBt8Nk/UrxvN3jKCmCmpbjJdj/8iR85IkI2Dj5xCS4Gw8dI+hjWr
         6jtB+JNmz1vFXJYyFAus4z33+a/r/gFBZO3N7/JgbUjkWrY481t2NC5seMbEw5zjdt
         kYsqdH3V3fl6A==
Date:   Fri, 1 Oct 2021 15:38:18 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/4] dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY
 block
Message-ID: <YVbeEg0qX1jC0Udb@matsya>
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

On 13-09-21, 10:00, Rafał Miłecki wrote:
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

Applied, thanks

-- 
~Vinod
