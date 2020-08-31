Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27B452575F3
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 11:05:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725954AbgHaJF0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 05:05:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:39572 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725829AbgHaJFZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Aug 2020 05:05:25 -0400
Received: from localhost (unknown [122.171.38.130])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E5AB9208CA;
        Mon, 31 Aug 2020 09:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598864724;
        bh=ocmX0SD2tUZlzq/QpFFyOyTJNOWzG2VT2WUimRb/5yQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=b6FCpiG23h7tBqAiSZHXbfONolhOdD8pVcSZYvjsJh18UAXm7Rsj7lao85hCLzW16
         kUW9sIvPcbyp/oKZweArsb2mCjzuUlaykhHQJZNiL9daiBzmS9Cd0Fp7ON4XG1IHUV
         IrIbZAwbSe+Gc8+TcapqNBvAv34NHv6mwSu1O90Y=
Date:   Mon, 31 Aug 2020 14:35:20 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     kishon@ti.com, robh+dt@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy-imx8mq-usb: add compatible
 string for imx8mp usb phy
Message-ID: <20200831090520.GJ2639@vkoul-mobl>
References: <1598276014-2377-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1598276014-2377-1-git-send-email-jun.li@nxp.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24-08-20, 21:33, Li Jun wrote:
> Add "fsl,imx8mp-usb-phy" compatible string for imx8mp usb phy, which is
> similar with imx8mq usb phy but with some different customizations.

Applied both, thanks
-- 
~Vinod
