Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 778AF3D55A6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 10:30:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231779AbhGZHtp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 03:49:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:49462 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231707AbhGZHto (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 03:49:44 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0621F60F48;
        Mon, 26 Jul 2021 08:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627288213;
        bh=9ALaw7y2tRFr/BE56ff65zn5b4GcdY8S0eccT1u4ZuA=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=Nd+O82Lj4BOQPNw5bXAXnmgpbqnp2m+TEiVzyKdTJKFugOb9CQaL613VtLC06C2vX
         kdYdf7L6+KzVvzs6qaOltjiTUq5u1i83snzT06X/BGnkJObBltLaylWwUyt1Vrdaev
         VsE6R6f+1RNy3hesvFEtKzwTTp1l8wCy1ed96EmiMDSuVrVk53qd0Dsk0jafSuWnWv
         VA80YFglaDHKqdt6kr9scl1Le9YLL8c36MhD9wOnU40TVcxr/L4D0z9otvKiZ/1YJb
         xip++mfVheE3Qk1Vw+R1MyxEBc3dG47ahhQ00QFj91Whs+Z2Meg/Stn23XYoQtbsWf
         tWWoZmXbdwjhQ==
Message-ID: <1a9705ff4a4f30b80371f464182ac53a5b16a541.camel@kernel.org>
Subject: Re: [PATCH] ARM: dts: bcm283x: Fix VEC address for BCM2711
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>
Date:   Mon, 26 Jul 2021 10:30:08 +0200
In-Reply-To: <1626980528-3835-1-git-send-email-stefan.wahren@i2se.com>
References: <1626980528-3835-1-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2021-07-22 at 21:02 +0200, Stefan Wahren wrote:
> From: Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>
> 
> The VEC has a different address (0x7ec13000) on the BCM2711 (used in
> e.g. Raspberry Pi 4) compared to BCM283x (e.g. Pi 3 and earlier). This
> was erroneously not taken account for.
> 
> Definition of the VEC in the devicetrees had to be moved from
> bcm283x.dtsi to bcm2711.dtsi and bcm2835-common.dtsi to allow for this
> differentiation.
> 
> Fixes: 7894bdc6228f ("ARM: boot: dts: bcm2711: Add BCM2711 VEC compatible")
> Signed-off-by: Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied for next.

Thanks,
Nicolas


