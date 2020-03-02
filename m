Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEB4A175F93
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 17:28:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726831AbgCBQ2R convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 2 Mar 2020 11:28:17 -0500
Received: from gloria.sntech.de ([185.11.138.130]:43448 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727085AbgCBQ2Q (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Mar 2020 11:28:16 -0500
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1j8nvP-0003vM-Sj; Mon, 02 Mar 2020 17:28:11 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Describe PX30 GPU
Date:   Mon, 02 Mar 2020 17:28:11 +0100
Message-ID: <3626817.RKRXn6i3ii@diego>
In-Reply-To: <20200302155808.11273-2-miquel.raynal@bootlin.com>
References: <20200302155808.11273-1-miquel.raynal@bootlin.com> <20200302155808.11273-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

Am Montag, 2. M�rz 2020, 16:58:08 CET schrieb Miquel Raynal:
> PX30 SoCs feature an ARM Bifrost GPU.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> 
> Hello, this change is just adding basic GPU support, more work is
> needed on the devfreq/opp side to be sure everything works and is
> properly described. Hence, this proposal aims at describing the HW
> block only, not its hability to change voltages/frequencies.

please check mainline for existing patches ;-)

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a07f34a083f211c5f2f9b073a9b499accee078a2

Heiko


