Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 784641F4200
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2020 19:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731643AbgFIRQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jun 2020 13:16:18 -0400
Received: from muru.com ([72.249.23.125]:57440 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731640AbgFIRQS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 9 Jun 2020 13:16:18 -0400
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 4F1658088;
        Tue,  9 Jun 2020 17:17:09 +0000 (UTC)
Date:   Tue, 9 Jun 2020 10:16:15 -0700
From:   Tony Lindgren <tony@atomide.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     bcousson@baylibre.com, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] ARM: dts: am437x-sk-evm: remove lcd timings
Message-ID: <20200609171615.GO37466@atomide.com>
References: <20200609103000.753453-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200609103000.753453-1-tomi.valkeinen@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200609 10:31]:
> LCD timings now come from panel-simple. Having timings in the DT will
> cause a WARN.

Thanks applying all three into fixes as they fix a
generic panel conversion regression and just remove
code.

Regards,

Tony
