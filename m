Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B6654011A4
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:03:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231143AbhIEVES (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:04:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhIEVES (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:04:18 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D42AC061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:03:14 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id q3so6613926edt.5
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t1KH/RnlM3yYfiyYe0VEjJcNf+qTJciLLvNJDfujIoI=;
        b=g/gluL746PhV4RoKq86dcdtouF7FRtKtlXmfskFNconPV19u11kwpDUp+cYmwJDKvS
         /D6jlMyW0HtPnYmoK/PANhoI7zFI6yVdwYmOBVdY/AZG1XHIkdnsoze3IgYJHs051C5D
         riLTfAiDE8lGXqgb6FugG/GIoJvWd7DZ2d1ixJLAP223gGfjzuDacWzSdq5hTzbZnN2y
         ZqKIrqND9K1JLKX+V7D5KjE2LFeK6VNsEIY1RF8WkPVyuGELeSU/F69KLIwaZQWx4RWZ
         kShISmYwzK+LlnZRpGo9cPm/7fDNr/t4PP4xzOb7AXgAAlOekpY7Bx8BxUtLP5Xo/e6w
         hvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t1KH/RnlM3yYfiyYe0VEjJcNf+qTJciLLvNJDfujIoI=;
        b=S91CuIsCAm5GxRS1Wwo+d2OgaJ0siNbIBJjuMU2dmAKQLXSwqEK8gnwwYiJRHQ3CnJ
         VANeeTZ4SqSwc2PdtVJQsudTiRNvyqzNN9zN6YUduTJPPK802Wf/Q0vaUDMJLNmXd435
         XM2MDHpsoEEHgwO8xt/9MmuXKmpqpjmQavfuoNvy2l1/KQWjzB7I9o0xqiocbNZiUnBu
         aDuuzPsW+e0F7XDhQI3qaGpJgjog+qPxqURoAov4AVWiysNskZY1StiMnc0j1SssV//N
         hNtjadd/n4XhE6hRDvgkjKXVV94FNH5UH2WN/szK/d2ny1bMzvtRCiTiDrP64D5/sbAU
         U3PQ==
X-Gm-Message-State: AOAM533HS4I+YMslPrhjmAqEqf6/ID0AiRCt6hotxhXBZuRHtCbB1TVk
        bncsXTdYhAVOmSMTmvaGKJIWZywsPpHOyQ==
X-Google-Smtp-Source: ABdhPJyAuFTCNjqTXIm2iHX9HbtvBbEMSMSmsZQflxVKQoyWK1FNQRaGOHLXg3VDB6KOrnGdDWh6Ew==
X-Received: by 2002:a05:6402:4396:: with SMTP id o22mr10108474edc.232.1630875793132;
        Sun, 05 Sep 2021 14:03:13 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id j13sm3368638edt.72.2021.09.05.14.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:03:12 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 40/52] ARM: dts: sunxi: Rename gpio pinctrl names
Date:   Sun, 05 Sep 2021 23:03:11 +0200
Message-ID: <1977908.zjU7uxLu2B@kista>
In-Reply-To: <20210901091852.479202-41-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-41-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:40 CEST je Maxime Ripard napisal(a):
> We've had a pinctrl node name convention for a while now, let's follow
> it for the AXP pinctrl nodes as well.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


