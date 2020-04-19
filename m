Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7E331AF9A0
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2020 13:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725988AbgDSLjI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Apr 2020 07:39:08 -0400
Received: from gloria.sntech.de ([185.11.138.130]:55850 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725960AbgDSLjI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 19 Apr 2020 07:39:08 -0400
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1jQ8Hx-0006VP-IM; Sun, 19 Apr 2020 13:39:05 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Tobias Schramm <t.schramm@manjaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Fix some GPIO setup on Pinebook Pro
Date:   Sun, 19 Apr 2020 13:39:04 +0200
Message-ID: <3127044.X0uEAIj3pV@phil>
In-Reply-To: <20200414163952.1093784-1-t.schramm@manjaro.org>
References: <20200414163952.1093784-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 14. April 2020, 18:39:50 CEST schrieb Tobias Schramm:
> This patchset contains two small fixes for the dts of the Pinebook Pro.
> The first fixes inverted logic on the headphone detect GPIO.
> The second patch fixes unreliable DC charger detection.
> 
> Tobias Schramm (2):
>   arm64: dts: rockchip: fix inverted headphone detection
>   arm64: dts: rockchip: enable DC charger detection pullup

applied as fixes for 5.7

Thanks
Heiko


