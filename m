Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 171721AB428
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2020 01:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388934AbgDOXVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Apr 2020 19:21:30 -0400
Received: from shards.monkeyblade.net ([23.128.96.9]:47048 "EHLO
        shards.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388889AbgDOXV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Apr 2020 19:21:27 -0400
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
        (using TLSv1 with cipher AES256-SHA (256/256 bits))
        (Client did not present a certificate)
        (Authenticated sender: davem-davemloft)
        by shards.monkeyblade.net (Postfix) with ESMTPSA id 8C67E120ED569;
        Wed, 15 Apr 2020 16:21:26 -0700 (PDT)
Date:   Wed, 15 Apr 2020 16:21:25 -0700 (PDT)
Message-Id: <20200415.162125.2094896562695820757.davem@davemloft.net>
To:     jbx6244@gmail.com
Cc:     heiko@sntech.de, robh+dt@kernel.org, andrew@lunn.ch,
        f.fainelli@gmail.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: net: ethernet-phy: add desciption for
 ethernet-phy-id1234.d400
From:   David Miller <davem@davemloft.net>
In-Reply-To: <20200415200149.16986-1-jbx6244@gmail.com>
References: <20200415200149.16986-1-jbx6244@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 15 Apr 2020 16:21:27 -0700 (PDT)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Johan Jonker <jbx6244@gmail.com>
Date: Wed, 15 Apr 2020 22:01:49 +0200

> The description below is already in use in
> 'rk3228-evb.dts', 'rk3229-xms6.dts' and 'rk3328.dtsi'
> but somehow never added to a document, so add
> "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
> for ethernet-phy nodes on Rockchip platforms to
> 'ethernet-phy.yaml'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I'll take this via my net tree, thanks.
