Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20DB163CC78
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 01:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231681AbiK3AS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 19:18:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231808AbiK3ASx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 19:18:53 -0500
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE2C6D4B9
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 16:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=+/MnN+uLKi/T1urg9KlFghSSlvKX5h+QPk2zrneRRPs=; b=OGj6bnpKUxHZspYeAHTS2YRD3R
        wzXkYP4q8Mh5d69QMFb/yFFEO32o/tV+0lyuwFL9NJ73lt/XDJqJBKjSWZlsH5e9knm6oXi48m98a
        MTUEyix7aCgEprEjmEDE6O3NWN7vhuAx818Vc8Ib0zmD1mDRY/X+a8RTwMCnrbu37mgw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1p0Anx-003v8d-KE; Wed, 30 Nov 2022 01:18:25 +0100
Date:   Wed, 30 Nov 2022 01:18:25 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
Message-ID: <Y4ahUWz0z8nBRWCN@lunn.ch>
References: <20221003073443.1511266-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003073443.1511266-1-paweldembicki@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 03, 2022 at 09:34:43AM +0200, Pawel Dembicki wrote:
> Add Endian 4i Edge 200 is 5-port firewall.
> It have also clone: Endian UTM Mini (The same hardware, with added WLAN
> card).
> 
> Hardware:
>   - SoC: Marvell 88F6281-A1 ARMv5TE Processor 1.2GHz
>   - Ram: 512MB (4x Nanya NT5TU128M8GE-AC)
>   - NAND Flash: 512MB (Micron 29F4G08AAC)
>   - Lan 1-4: 4x GBE (Marvell 88E6171R-TFJ2)
>   - Lan 5: 1x GBE (Marvell 88E1116R-NNC1)
>   - Storage: MicroSD Slot
>   - MCPIE: MiniPCIe Slot present [fitted with SparkLan WPEA-110N/E
>           (Atheros AR9280 chipset) in Endian UTM Mini WLAN only]
>   - USB: 1x USB 2.0 port
>   - Console: RJ-45 port
>   - LEDs: 3x GPIO controlled
> 
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
