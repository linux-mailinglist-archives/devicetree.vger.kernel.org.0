Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6DE2261456
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731690AbgIHQOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:14:24 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:50324 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731432AbgIHQNF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Sep 2020 12:13:05 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kFcUo-00Dmba-Lx; Tue, 08 Sep 2020 14:13:10 +0200
Date:   Tue, 8 Sep 2020 14:13:10 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Andre Heider <a.heider@gmail.com>
Cc:     Jason Cooper <jason@lakedaemon.net>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tomasz Maciej Nowak <tmn505@gmail.com>,
        Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: espressobin: Simplify v7 ethernet
 port labeling
Message-ID: <20200908121310.GA3284780@lunn.ch>
References: <20200908073050.535919-1-a.heider@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200908073050.535919-1-a.heider@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 08, 2020 at 09:30:50AM +0200, Andre Heider wrote:
> Now that the switch ports have a label in the .dtsi, simplify the whole
> "switch0" block for the v7 dts files.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
