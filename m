Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E4B7D34900
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 15:37:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727229AbfFDNhn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 09:37:43 -0400
Received: from gloria.sntech.de ([185.11.138.130]:47572 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727161AbfFDNhm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 4 Jun 2019 09:37:42 -0400
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hY9dD-0001P7-Lx; Tue, 04 Jun 2019 15:37:39 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     John Keeping <john@metanate.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: fix pwm-cells for rk3288's pwm3
Date:   Tue, 04 Jun 2019 15:37:38 +0200
Message-ID: <4241857.8QsoknCOxu@phil>
In-Reply-To: <20190603143435.23352-1-john@metanate.com>
References: <20190603143435.23352-1-john@metanate.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 3. Juni 2019, 16:34:35 CEST schrieb John Keeping:
> This is the same as the other PWMs on this SoC and uses 3 cells.
> 
> Signed-off-by: John Keeping <john@metanate.com>

applied for 5.3

Thanks
Heiko


