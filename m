Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0675E08F3
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2019 18:34:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388591AbfJVQdu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Oct 2019 12:33:50 -0400
Received: from muru.com ([72.249.23.125]:39082 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389013AbfJVQbn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Oct 2019 12:31:43 -0400
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 3C9A080FA;
        Tue, 22 Oct 2019 16:32:18 +0000 (UTC)
Date:   Tue, 22 Oct 2019 09:31:40 -0700
From:   Tony Lindgren <tony@atomide.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] ARM: dts: am: Rename "ocmcram" node to "sram"
Message-ID: <20191022163140.GZ5610@atomide.com>
References: <20191021161752.21502-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191021161752.21502-1-krzk@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Krzysztof Kozlowski <krzk@kernel.org> [191021 09:39]:
> The device node name should reflect generic class of a device so rename
> the "ocmcram" node and its children to "sram".  This will be also in
> sync with upcoming DT schema.  No functional change.

Applying into omap-for-v5.5/dt thanks.

Tony
