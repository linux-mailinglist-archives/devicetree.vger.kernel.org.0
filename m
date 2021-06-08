Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6344939F32E
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 12:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230460AbhFHKIt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 06:08:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:46482 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230369AbhFHKIt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Jun 2021 06:08:49 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D40EA60FE8;
        Tue,  8 Jun 2021 10:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623146817;
        bh=oKQn07gBiXs7d7y9+nS/ZKudX75ncmwnkheQiYUV7xc=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=fGYQAScRJjNYDaPW8ey9C1Db3VimzcIi7NW3m8Vi2NJzDt8D+iYQkvRF+vNspPIos
         6e5q03hxtYShf8tFCaAKG/2hqtv93ych1KhKv4rCMWhlmccEq5jM+0+653nfbSdlIc
         cJTQHnTjriCrTqRzq2GiOJ4GnlMLWzLOVfnMCZgSmSyPn3kMd3DZKPwJp2mgiF+uxp
         Fw7kPcoOZE8MCkiASU7hSJ3fSMmluMuxPY73r2H6zlHvtnxbIa03G2gVQytKOGNQfu
         8uJszvvQ56XLyrBlrm1hRIztOsqhRqSFUH59w10ZRiaB1tzBNJgwP6wUOiEDHIIuBl
         0p/1Zgw2R59dw==
Message-ID: <31a7c717b404f1dfd82bb2cc3cbd16c4b1830dde.camel@kernel.org>
Subject: Re: [PATCH] Revert "ARM: dts: bcm283x: increase dwc2's RX FIFO size"
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Pavel Hofman <pavel.hofman@ivitera.com>
Date:   Tue, 08 Jun 2021 12:06:52 +0200
In-Reply-To: <1622293371-5997-1-git-send-email-stefan.wahren@i2se.com>
References: <1622293371-5997-1-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 2021-05-29 at 15:02 +0200, Stefan Wahren wrote:
> This reverts commit 278407a53c3b33fb820332c4d39eb39316c3879a.
> 
> The original change breaks USB config on Raspberry Pi Zero and Pi 4 B,
> because it exceeds the total fifo size of 4080. A naive attempt to reduce
> g-tx-fifo-size doesn't help on Raspberry Pi Zero. So better go back.
> 
> Fixes: 278407a53c3b ("ARM: dts: bcm283x: increase dwc2's RX FIFO size")
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: Pavel Hofman <pavel.hofman@ivitera.com>
> ---

Applied for next.

Regards,
Nicolas

