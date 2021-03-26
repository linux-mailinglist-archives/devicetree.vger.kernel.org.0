Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C71F34A6EB
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 13:13:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbhCZMMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 08:12:44 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:49014 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229935AbhCZMM3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Mar 2021 08:12:29 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1lPlKB-00D7rF-Ad; Fri, 26 Mar 2021 13:12:23 +0100
Date:   Fri, 26 Mar 2021 13:12:23 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Robert Hancock <robert.hancock@calian.com>
Cc:     davem@davemloft.net, kuba@kernel.org,
        radhey.shyam.pandey@xilinx.com, robh@kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH net-next v4 1/2] dt-bindings: net: xilinx_axienet:
 Document additional clocks
Message-ID: <YF3Pp7Ez8f0/jmvM@lunn.ch>
References: <20210326000438.2292548-1-robert.hancock@calian.com>
 <20210326000438.2292548-2-robert.hancock@calian.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210326000438.2292548-2-robert.hancock@calian.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 25, 2021 at 06:04:37PM -0600, Robert Hancock wrote:
> Update DT bindings to describe all of the clocks that the axienet
> driver will now be able to make use of.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Robert Hancock <robert.hancock@calian.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
