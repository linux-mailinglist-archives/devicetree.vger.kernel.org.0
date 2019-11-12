Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F25CCF942D
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2019 16:27:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727276AbfKLP1F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Nov 2019 10:27:05 -0500
Received: from muru.com ([72.249.23.125]:41798 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727166AbfKLP1E (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Nov 2019 10:27:04 -0500
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 021D980F3;
        Tue, 12 Nov 2019 15:27:40 +0000 (UTC)
Date:   Tue, 12 Nov 2019 07:27:01 -0800
From:   Tony Lindgren <tony@atomide.com>
To:     Benoit Parrot <bparrot@ti.com>
Cc:     Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [Patch v4 1/3] clk: ti: dra7: add vpe clkctrl data
Message-ID: <20191112152701.GD5610@atomide.com>
References: <20191112142657.22898-1-bparrot@ti.com>
 <20191112142657.22898-2-bparrot@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191112142657.22898-2-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Benoit Parrot <bparrot@ti.com> [191112 14:24]:
> Add clkctrl data for VPE.

Looks OK to me, did not check against the TRM though:

Acked-by: Tony Lindgren <tony@atomide.com>
