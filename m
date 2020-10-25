Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 509E1298290
	for <lists+devicetree@lfdr.de>; Sun, 25 Oct 2020 17:35:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1417227AbgJYQev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Oct 2020 12:34:51 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:43544 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1415565AbgJYQeg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Oct 2020 12:34:36 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kWiyT-003Rel-U3; Sun, 25 Oct 2020 17:34:29 +0100
Date:   Sun, 25 Oct 2020 17:34:29 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Adam Sampson <ats@offog.org>
Cc:     linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: sun7i: pcduino3-nano: enable RGMII RX/TX delay
 on PHY
Message-ID: <20201025163429.GH792004@lunn.ch>
References: <20201025140144.28693-1-ats@offog.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201025140144.28693-1-ats@offog.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 25, 2020 at 02:01:44PM +0000, Adam Sampson wrote:
> The RX/TX delays for the Ethernet PHY on the Linksprite pcDuino 3 Nano
> are configured in hardware, using resistors that are populated to pull
> the RTL8211E's RXDLY/TXDLY pins low or high as needed.
> 
> phy-mode should be set to rgmii-id to reflect this. Previously it was
> set to rgmii, which used to work but now results in the delays being
> disabled again as a result of the bugfix in commit bbc4d71d6354 ("net:
> phy: realtek: fix rtl8211e rx/tx delay config").
> 
> Tested on two pcDuino 3 Nano boards purchased in 2015. Without this fix,
> Ethernet works unreliably on one board and doesn't work at all on the
> other.
> 
> Fixes: 061035d456c9 ("ARM: dts: sun7i: Add dts file for pcDuino 3 Nano board")
> Signed-off-by: Adam Sampson <ats@offog.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
