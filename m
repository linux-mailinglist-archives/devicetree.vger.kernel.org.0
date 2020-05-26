Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0158A1C18F9
	for <lists+devicetree@lfdr.de>; Fri,  1 May 2020 17:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728919AbgEAPIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 May 2020 11:08:19 -0400
Received: from mail.nic.cz ([217.31.204.67]:45474 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728856AbgEAPIS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 May 2020 11:08:18 -0400
Received: from localhost (unknown [172.20.6.135])
        by mail.nic.cz (Postfix) with ESMTPSA id 1B4C1141D39;
        Fri,  1 May 2020 17:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
        t=1588345697; bh=AJGu5j0JJ2utVwFgN8azGwXWZDhEn++6PU5ffpqhxWY=;
        h=Date:From:To;
        b=J9lEStWmsEqIjzpliY570gSQ2TVCPhq7hMCGgaphMBoF4jkIoZznm1D9eOd/Sn49C
         mLZqk2bLcq4aVCYE5MNU8yF0qrcLofyaHKpogpCoYtvevlljcOGG7cgFCL/xO2RIqf
         ZINHLJ+m3t7P/CJ+1wR9hgAqlb2WEL9BA2nYG4EQ=
Date:   Fri, 1 May 2020 17:08:16 +0200
From:   Marek Behun <marek.behun@nic.cz>
To:     Masahiro Yamada <masahiroy@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>,
        Pavel Modilaynen <pavel.modilaynen@axis.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dtc: Use better check for libyaml
Message-ID: <20200501170816.2f95a2ad@nic.cz>
In-Reply-To: <CAK7LNARhK08CcDNij25PR0_r2A27Qx+psQp50_AgDJijexDAiA@mail.gmail.com>
References: <20200501015147.32391-1-marek.behun@nic.cz>
        <CAK7LNARhK08CcDNij25PR0_r2A27Qx+psQp50_AgDJijexDAiA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
        USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.101.4 at mail
X-Virus-Status: Clean
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 1 May 2020 14:27:57 +0900
Masahiro Yamada <masahiroy@kernel.org> wrote:

> Is it possible to fix the .pc file instead?
> 
> This is ugly, and I do not know what is the
> point of pkg-config if it cannot detect the pkg correctly.

I know this is ugly, though no more than some code in
scripts/Makefile.build.

What do you mean fixing the pc file?
When the header is not present because libyaml-dev is not installed,
but the library is present, then pkg-config just reports that the
package exists, when asking with --exists, right?

Marek

