Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EBC13AD8A6
	for <lists+devicetree@lfdr.de>; Sat, 19 Jun 2021 10:38:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234255AbhFSIlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Jun 2021 04:41:01 -0400
Received: from gloria.sntech.de ([185.11.138.130]:49468 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232181AbhFSIlB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 19 Jun 2021 04:41:01 -0400
Received: from p508fcd5b.dip0.t-ipconnect.de ([80.143.205.91] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1luWV7-0006Rd-Om; Sat, 19 Jun 2021 10:38:49 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
        jbx6244@gmail.com, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Rotation Property for OGA Panel
Date:   Sat, 19 Jun 2021 10:38:48 +0200
Message-Id: <162409189059.4183685.1922169605671385895.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210614161849.332-1-macroalpha82@gmail.com>
References: <20210614161849.332-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Jun 2021 11:18:49 -0500, Chris Morgan wrote:
> Add rotation property for Odroid Go Advance panel to note that it is
> rotated 270 degrees. Rotation affects DRM connector after this patch:
> 
> https://cgit.freedesktop.org/drm/drm/commit/drivers/gpu/drm/panel/panel-elida-kd35t133.c?id=610d9c311b1387f8c4ac602fee1f2a1cb0508707
> 
> Note: following example of motorola-mapphone-common and
> tegra30-asus-nexus7-grouper-common where rotation is specified by
> itself with other physical properties (which are already hard-coded
> into the driver in this case so not necessary). Please advise if this
> is not the correct manner in the devicetree to specify this.

Applied, thanks!
(adapted to property ordering to just follow our alphabetical sorting)

[1/1] arm64: dts: rockchip: Add Rotation Property for OGA Panel
      commit: edb39de5d731f147c7b08c4a5eb246ae1dbdd947

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
