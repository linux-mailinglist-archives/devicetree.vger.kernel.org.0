Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98686308ED4
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 21:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232733AbhA2UxS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 15:53:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233102AbhA2UwR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 15:52:17 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 758FFC061573
        for <devicetree@vger.kernel.org>; Fri, 29 Jan 2021 12:51:37 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DS8d65Z0TzQl34;
        Fri, 29 Jan 2021 21:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1611953462; bh=xTUSlQGlJ4
        O/glSdfwt6VTU8Y2vdtR0/SkFekJvWbtU=; b=WDD5PJtGo6eQ9lZ/cNrVq/J0y0
        FjJbauQXj/YgLkyvLOp4LquDBER7c+EFyHZvdxITalRNgQwAfQiucQl9KDUcz+Yp
        W3MWn0XYDZLuXZetcjyaDUaathqAX81gvCrvXhQGUSEax8hfvs15ZUZjLSFS9ZLZ
        gd2ICj9xH+KJSLvccIVu+4gUoTeRG4XuHkbsIIh9ibWGDrzRePatAESckT9bgoWC
        MTKhfdkaTB+oQKs2pGUnHr2hQJrGOfgQ1qh8pbj2Z1ZtVru/XuZ+6yrRgTWhJblb
        hJx/M6GHSFU+cDm8q6Ujg5wgrcmBnTXLXQLF8iEpbUxIWDpWx1HSUuHehZ4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1611953464;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=JzwsCdfVSTOtS/bF/vm3HDlF8TCyOY29JFbirc/qunM=;
        b=e8uDT7orDdDNJHq8KvDOgDe5mQ0fOeN7Dvv9fmQnwgPesvFV5NVG4r1atXu2w8WU7+yKsZ
        9MjhnR1Zq/cbY0ww/ovxGlm3yM+arY1ui4KXVClQ0Hmj6QgZIaknAU8XqO9cpfjRbQlGnk
        wBuBl16LQ3KKIC9YBzjQS5wHBhA4A8Ys2MENfTf7p3KYwrysEesQjbsIgIqI6WKZ9RHCE6
        daqTd/GDmgf5oZeP5ShMTGJsBVY0ZSWNLgR+LS7juZmVHi76wvGLkORKHnticZNDOPrvur
        pystS4OB5vnK08JgU77SGIx5rbUEMRwHJ9XrHnjR+4OjR5csGZuEMLqqWebGyg==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173]) (amavisd-new, port 10030)
        with ESMTP id bt0eZ20CUUjS; Fri, 29 Jan 2021 21:51:02 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Assign a fixed index to mmc devices
Date:   Fri, 29 Jan 2021 21:51:01 +0100
Message-ID: <1975982.ltkoRUPMKj@kongar>
In-Reply-To: <8de4d82e-b9a5-f809-ea67-5527f9fdde5f@baylibre.com>
References: <20210127230852.66686-1-alexander.stein@mailbox.org> <8de4d82e-b9a5-f809-ea67-5527f9fdde5f@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -3.75 / 15.00 / 15.00
X-Rspamd-Queue-Id: 627F217CC
X-Rspamd-UID: 19e790
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Freitag, 29. Januar 2021, 09:07:45 CET schrieb Neil Armstrong:
> On 28/01/2021 00:08, Alexander Stein wrote:
> > Recently introduced async probe on mmc devices can shuffle block IDs.
> > Pin them to fixed values to ease booting in environments where UUIDs
> > are not practical. Use newly introduced aliases for mmcblk devices from 
[1].
> > [1]
> > https://patchwork.kernel.org/patch/11747669/
> 
> I understand the goal, and this should be done for _all_ boards, not only 
the Odroid-N2.

I see. So there are 2 options:
1.
Set the mapping for all 3 sd_emmc_* in the top-most .dtsi
Upside: very easy patch
Downside: When sd_emmc_a is not enabled "mmc0" will never be available.
Might be confusing.

2.
Set mapping only for enabled sd_emmc_* in the .dts[i] where it is enabled
Upside: Clean setup, only enabled sd_emmc_* have an alias
Downside: Much verbose patch(set)

Any preferences here? I honestly tend to 1. But this might break boards where
sd_emmc_a is not enabled, because the root device _will_ change in that case.

Best regards,
Alexander



