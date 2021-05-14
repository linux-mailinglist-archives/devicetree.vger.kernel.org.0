Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54A4E38095A
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 14:20:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232671AbhENMVr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 08:21:47 -0400
Received: from gloria.sntech.de ([185.11.138.130]:44026 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232996AbhENMVq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 May 2021 08:21:46 -0400
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lhWny-0002bC-GU; Fri, 14 May 2021 14:20:34 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM fans
Date:   Fri, 14 May 2021 14:20:32 +0200
Message-Id: <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510090607.970145-1-uwe@kleine-koenig.org>
References: <20210510090607.970145-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 11:06:07 +0200, Uwe Kleine-König wrote:
> On the helios64 board the two connectors P6 and P7 are supposed to
> power two fans. Add the corresponding pwm-fan devices.

Applied, thanks!

[1/1] arm64: dts: rockchip: helios64: Add support for two PWM fans
      commit: 271b66414df0b172c936b3cfd1894b7939f84165

Adapted the ordering "fan*" above "led*".

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
