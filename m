Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C8CE2B4304
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 12:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728989AbgKPLi7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 06:38:59 -0500
Received: from muru.com ([72.249.23.125]:48578 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728352AbgKPLi7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Nov 2020 06:38:59 -0500
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 1838280C8;
        Mon, 16 Nov 2020 11:39:04 +0000 (UTC)
Date:   Mon, 16 Nov 2020 13:38:55 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Alexander Shiyan <shc_work@mail.ru>
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] ARM: dts: am335x: Fix comments for AM335X_PIN_GPMC_WPN
 pin in GPIO mode
Message-ID: <20201116113855.GF26857@atomide.com>
References: <20201111155910.13728-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201111155910.13728-1-shc_work@mail.ru>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Alexander Shiyan <shc_work@mail.ru> [201111 17:59]:
> According to AM335x datasheet pin AM335X_PIN_GPMC_WPN in MODE7 works as
> GPIO0[31].

Thanks applying into omap-for-v5.11/dt.

Tony
