Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C07CE1788E9
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2020 04:03:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387580AbgCDDCU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Mar 2020 22:02:20 -0500
Received: from shards.monkeyblade.net ([23.128.96.9]:38574 "EHLO
        shards.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387400AbgCDDCU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Mar 2020 22:02:20 -0500
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
        (using TLSv1 with cipher AES256-SHA (256/256 bits))
        (Client did not present a certificate)
        (Authenticated sender: davem-davemloft)
        by shards.monkeyblade.net (Postfix) with ESMTPSA id 9D15715B02CF1;
        Tue,  3 Mar 2020 19:02:19 -0800 (PST)
Date:   Tue, 03 Mar 2020 19:02:19 -0800 (PST)
Message-Id: <20200303.190219.145851077825763082.davem@davemloft.net>
To:     adajunjin@gmail.com
Cc:     andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        robh+dt@kernel.org, frowand.list@gmail.com, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] drivers/of/of_mdio.c:fix of_mdiobus_register()
From:   David Miller <davem@davemloft.net>
In-Reply-To: <20200303042421.23050-1-adajunjin@gmail.com>
References: <20200302175759.GD24912@lunn.ch>
        <20200303042421.23050-1-adajunjin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 03 Mar 2020 19:02:20 -0800 (PST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dajun Jin <adajunjin@gmail.com>
Date: Mon,  2 Mar 2020 20:24:21 -0800

> When registers a phy_device successful, should terminate the loop
> or the phy_device would be registered in other addr. If there are
> multiple PHYs without reg properties, it will go wrong.
> 
> Signed-off-by: Dajun Jin <adajunjin@gmail.com>

Applied, thank you.
