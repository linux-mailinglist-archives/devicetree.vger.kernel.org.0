Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9473C178532
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2020 23:02:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726982AbgCCWCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Mar 2020 17:02:46 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:44524 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726465AbgCCWCp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Mar 2020 17:02:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=+OZcw8l+cWV3/BgRP7/b2S09yi/oFPtUNYgnKfoydWA=; b=yZZk7pTG1pfVoUrkUgwNE/VotL
        fhpFDXm8/tEpfasm0fCIcgS0DkaS31k18538lSETk+e9I26fCmgR7SaPFut1AhhVDmzSWeeD7sm78
        qNewRzEbl00C9EGoj05iaINRMq29O57whSzzNW9N5NnIZrVPaJZ9zBbl7yaoWmafzkqQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
        (envelope-from <andrew@lunn.ch>)
        id 1j9Fcd-0000wD-Ti; Tue, 03 Mar 2020 23:02:39 +0100
Date:   Tue, 3 Mar 2020 23:02:39 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Dajun Jin <adajunjin@gmail.com>
Cc:     hkallweit1@gmail.com, linux@armlinux.org.uk, robh+dt@kernel.org,
        frowand.list@gmail.com, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] drivers/of/of_mdio.c:fix of_mdiobus_register()
Message-ID: <20200303220239.GA3553@lunn.ch>
References: <20200302175759.GD24912@lunn.ch>
 <20200303042421.23050-1-adajunjin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200303042421.23050-1-adajunjin@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 02, 2020 at 08:24:21PM -0800, Dajun Jin wrote:
> When registers a phy_device successful, should terminate the loop
> or the phy_device would be registered in other addr. If there are
> multiple PHYs without reg properties, it will go wrong.
> 
> Signed-off-by: Dajun Jin <adajunjin@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
