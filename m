Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78180463450
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 13:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbhK3Me3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 07:34:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241642AbhK3Me1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 07:34:27 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2D09C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 04:31:08 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B8120B8199E
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 12:31:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64EA0C53FCD;
        Tue, 30 Nov 2021 12:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638275466;
        bh=PC4jSkm8UWC9NnKVNfl5ofdiVWvY/WpTTVmvuYe6GdA=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=KgSsj3JqfBDa7PM+5T6QO180u/rlF78nfRpNYdAUHYoJ27A/ThgxR6oAFWcpdiUY/
         HI6Y6OH/TEjre1P6GplVWA+FxpY/YtQbp0KryQw9QUTnNlk/w8/gcsrjoA+oLQD4ox
         0tQBdEymzM1TlFdcmAhBJWTF1AcQyQV7PE7Hij9sFn/CHoW9RC9rK+UZ4RMUmr2yG3
         VBkyaYXVNpvN8mvWq5qFHS5dOHkqzMUs+U5AuxP95WSYemKvdUymNG5dzsP/OXQWYX
         GZM2gcqwyDuqoakwPtYabmv5vLDkE6QJpbJxCQpqpxldVIjV88P8Lx6WS+20nQmsrU
         8Kyew5dbMfFvw==
Message-ID: <13988b700b3b6652d115595a16f558e55ef32768.camel@kernel.org>
Subject: Re: [PATCH] ARM: dts: bcm2711-rpi-400: Fix GPIO expander labels
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Tue, 30 Nov 2021 13:31:01 +0100
In-Reply-To: <1638014982-4878-1-git-send-email-stefan.wahren@i2se.com>
References: <1638014982-4878-1-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 2021-11-27 at 13:09 +0100, Stefan Wahren wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> Recently 2 labels of the RPi 400 GPIO expander has been fixed in
> the vendor tree. So upstream this change to be in sync.
> 
> Fixes: 1c701accecf2 ("ARM: dts: Add Raspberry Pi 400 support")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied for-next.

Thanks!
