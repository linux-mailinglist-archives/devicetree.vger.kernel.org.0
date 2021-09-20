Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B01424116F2
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 16:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240359AbhITOaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 10:30:24 -0400
Received: from gloria.sntech.de ([185.11.138.130]:55150 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229926AbhITOaX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 10:30:23 -0400
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mSKHs-0005O5-6O; Mon, 20 Sep 2021 16:28:52 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org, maccraft123mc@gmail.com
Subject: Re: [PATCH v3] arm64: dts: rockchip: Correct regulator for USB host
Date:   Mon, 20 Sep 2021 16:28:46 +0200
Message-Id: <163214478703.1547258.2838838549047701769.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210916190938.6175-1-macroalpha82@gmail.com>
References: <20210916190938.6175-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 14:09:38 -0500, Chris Morgan wrote:
> When writing a battery driver, I noticed that the USB voltage was ~3.7V
> while running off of battery on a mainline kernel. After consulting the
> schematics for the Odroid Go Advance, it appears that the BOOST
> regulator is involved in the process of powering the USB host. Power
> for the USB host goes from the vccsys regulator into the PMIC, then out
> from the PMIC BOOST regulator into the FC9516A (which is controlled by
> GPIO), which then feeds power into the USB host. I named the regulator
> usb_midu because on the datasheet the pin is described as "MIDU/BOOST -
> middle point of USB power supply / boost output". Making these changes
> solved the USB power issue on battery and I'm now reading approximately
> 5v.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct regulator for USB host
      commit: 4b90e34d9a3ba25a62e4ea42d63fbe6c7fb11ed1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
