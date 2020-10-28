Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA3E529DEDE
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 01:57:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731625AbgJ2A5P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 20:57:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:60510 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731613AbgJ1WRf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 18:17:35 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 703C824673;
        Wed, 28 Oct 2020 08:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603874908;
        bh=t1ANJBiq0nS30Lz5oZ2oQmI85YPvqswyQ8CaWFGAD+c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hiS2MxsqhNnAbs4Vi1s4Qids1vBIh/eil2WaXn1lrXbEenV1MRj020MD2qfASoSL/
         1OaCQ82ZZRvy4/dhDQKyUBwH4QgBvLGo8CpsVdcLUWbLA5gMl2O4HUFPKGSkoqT0XT
         39ZNe4fLjp12fD3niDbFoCuBGGDYGqZhX6cKbNrU=
Date:   Wed, 28 Oct 2020 16:48:21 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 2/6] ARM: dts: imx6: phytec: Set correct eeprom compatible
Message-ID: <20201028084820.GG28755@dragon>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
 <20200922092313.151293-2-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200922092313.151293-2-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 22, 2020 at 11:23:09AM +0200, Stefan Riedmueller wrote:
> Set the correct EEPROM compatible for phyCORE-i.MX 6 and phyFLEX-i.MX 6,
> as stated in the device tree bindings.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Applied, thanks.
