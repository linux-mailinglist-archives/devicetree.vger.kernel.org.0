Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163C0303C71
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 13:05:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392365AbhAZMFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 07:05:10 -0500
Received: from muru.com ([72.249.23.125]:53262 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2390381AbhAZLZU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Jan 2021 06:25:20 -0500
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 855D9814C;
        Tue, 26 Jan 2021 11:24:36 +0000 (UTC)
Date:   Tue, 26 Jan 2021 13:24:29 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Alexander Shiyan <shc_work@mail.ru>
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>
Subject: Re: [PATCH] ARM: dts: am335x-myirtech-*: Add DT for AM335X MYIR Tech
 Limited board
Message-ID: <YA/77XX8hMxAMUIL@atomide.com>
References: <20210125105011.7887-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210125105011.7887-1-shc_work@mail.ru>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Alexander Shiyan <shc_work@mail.ru> [210125 12:50]:
> This patch adds basic support for MYIR Tech MYC-AM335X CPU Module:
> - Up to 1GHz TI AM335X Series ARM Cortex-A8 Processors
> - Up to 512MB DDR3 SDRAM
> - Up to 512MB Nand Flash
> 
> and MYD-AM335X Development Board:
> - MYC-AM335X CPU Module as Controller Board
> - Serial ports, 4 x USB Host, OTG, 2 x Gigabit Ethernet, CAN, RS485,
>   TF, Audio
> - Supports HDMI and LCD Display

Thanks applying into omap-for-v5.12/dt.

Tony
