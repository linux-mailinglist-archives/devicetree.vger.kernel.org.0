Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35288303120
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 02:25:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732063AbhAYX6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 18:58:38 -0500
Received: from gloria.sntech.de ([185.11.138.130]:34188 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732056AbhAYX5R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Jan 2021 18:57:17 -0500
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1l4Bii-00066j-RK; Tue, 26 Jan 2021 00:56:33 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Aditya Prayoga <aditya@kobol.io>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Increase maximal SDIO voltage to 3.3 V
Date:   Tue, 26 Jan 2021 00:56:26 +0100
Message-Id: <161161878916.2050283.12931282362839155996.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210124210328.611707-1-uwe@kleine-koenig.org>
References: <20210124210328.611707-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jan 2021 22:03:27 +0100, Uwe Kleine-König wrote:
> While comparing the vendor dts with the one added in v5.11-rc1 I noticed
> that the vendor dts specified 3.3 V which matches the SDIO specification.
> 
> So fix the sdio regulator to provide (up to) 3.3 V.

Applied, thanks!

[1/2] arm64: dts: rockchip: Increase maximal SDIO voltage to 3.3 V
      commit: d134ac731feed91a81b447e0e63c1c35523fc574
[2/2] arm64: dts: rockchip: Rely on SoC external pull up on pmic-int-l
      commit: 19de5156d0029ccdf0153cee35fb8356b56ba9c6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
