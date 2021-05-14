Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC9C1380959
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 14:20:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233234AbhENMVr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 08:21:47 -0400
Received: from gloria.sntech.de ([185.11.138.130]:44022 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232671AbhENMVq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 May 2021 08:21:46 -0400
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lhWny-0002bC-8u; Fri, 14 May 2021 14:20:34 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for PCIe
Date:   Fri, 14 May 2021 14:20:31 +0200
Message-Id: <162099477649.1967349.13845476754836490046.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510090932.970447-1-uwe@kleine-koenig.org>
References: <20210510090932.970447-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 11:09:32 +0200, Uwe Kleine-König wrote:
> This is enough to make the SATA controller visible:
> 
> # lspci
> 00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd RK3399 PCI Express Root Port
> 01:00.0 SATA controller: JMicron Technology Corp. JMB58x AHCI SATA controller

Applied, thanks!

[1/1] arm64: dts: rockchip: helios64: Add support for PCIe
      commit: 5a65adfa2ad1542f856fc7de3999d51f3a35d2e2

Adapted to new fan ordering from previous patch.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
