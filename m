Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 528B41A94E
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2019 21:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726043AbfEKTv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 May 2019 15:51:56 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:60886 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725911AbfEKTv4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 11 May 2019 15:51:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=VG2yTD+3xTD/lCdbsfLUdnozxfIXWImi05fuOhNelsI=; b=A0FLOxsGDhE132dHk+ANiSr+Of
        y5fR+E5D2ElZTUeFSqT+oZzt+RnybP0qzb5B3vd+OrQdwb1qCeCM2goXyaaCxjqpuOZDynp786UT1
        dL81W2XnvCAsLpxFIh9u85tca1ol0B6WVqdl/6oU02bJSjQfFH8MnzvVLB3rkKFXpA7g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
        (envelope-from <andrew@lunn.ch>)
        id 1hPY2A-00056C-Pe; Sat, 11 May 2019 21:51:50 +0200
Date:   Sat, 11 May 2019 21:51:50 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     khilman@baylibre.com, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        jbrunet@baylibre.com
Subject: Re: [PATCH] arm64: dts: amlogic: remove ethernet-phy-idAAAA.BBBB
 compatible strings
Message-ID: <20190511195150.GI4889@lunn.ch>
References: <20190511174534.2403-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190511174534.2403-1-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 11, 2019 at 07:45:34PM +0200, Martin Blumenstingl wrote:
> The Ethernet PHY documentation
> (Documentation/devicetree/bindings/net/phy.txt) states that:
>   If the PHY reports an incorrect ID (or none at all) then the
>   "compatible" list may contain an entry with the correct PHY ID in the
>   form: "ethernet-phy-idAAAA.BBBB"
> 
> An older version of the documentation suggested that the compatible
> string can be used when the PHY ID is known.
> 
> Remove the ethernet-phy-id compatible string and add a comment with the
> PHY ID instead.
> This is a no-op on boards which are shipped with the PHY that was
> listed (= all known cases). However, if a board manufacturer decides to
> ship a different PHY we will now load and use the correct driver because
> we ask the PHY to identify itself.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
 
Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
