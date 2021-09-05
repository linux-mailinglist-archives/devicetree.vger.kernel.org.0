Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54F6E4011B8
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:12:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238030AbhIEVN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:13:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVN5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:13:57 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38E1C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:12:53 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id v5so6632409edc.2
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=luWLfeTjn3Q+MGlmsIBLolm+EqwdAB40t3i0A8Gd8fM=;
        b=qgx1vnAzvQRDOtmq3gsoao8VAbFpquZCw+gRVjagjYMcjfw05c3ak162zzkwNcpsH6
         njO8gtybq6Vxu0FkCM9yrFQtfxz9A8lQ6LkiKOfOkpPl1FOp3SN36k+LEhsrCDKfkZt7
         1IpXCJTG6V2IL6Sdyhow8fgGtSznLVFYbK0Rbxkwv9jhbi1FzKYo3MPw2CsaxDVm46Do
         +JGyXdtO4OZHkNiuu9+UNQcV3gzKb3TX12xhikmmhXCzQsx4qnJ+P0u8yQY8p8v0fq85
         l4yY+rUVEWeFonRpV147l64bobleIiASdypXiJtyUjDvnLI4Hsfr3tgfeg1gyTre31Sv
         L5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=luWLfeTjn3Q+MGlmsIBLolm+EqwdAB40t3i0A8Gd8fM=;
        b=Ti9rSNwwtrp0z8BEUbbspjV+ye/mqnFPsxOahgKzsgDBHZYwU7IGVJHSP7/Wq40+1F
         pvqS4OnQ2eYdo16vuFMyHIwI+r9F3oX+VZ7Z4BMWEzUge+raJN87zhemWVAfaXrxeyaZ
         Q5di6p+bhEFRNnpL9R1XnX/pBemHwZP+BCnmYdC4qKnSnHTON610Fm3eIe2mKppCK/XO
         f5CC8yusKnLcIqw0x4xSWaiHjN9RkA6tLfK+1094U+bDHAlViDtzjPRucROWSugR51X2
         ySMKENbn7ohCB+FR+Y8l+GKOgHao1h9L0Smscq6lM5yUZZM9cEp3UNhFL6VQ+XtqOlZP
         7Lnw==
X-Gm-Message-State: AOAM533feampPiZFkO/Bd7shT8JFsNM0nFPX4YDV5BIUSupTrJkaeBfJ
        U7aWzZ7asTnhP6G67IpOsD9ZelYRVfW/xA==
X-Google-Smtp-Source: ABdhPJzGsk8NUg9a92LBD4r397ttDEwMZKIo2L18FcBkAmu4n7E07c1hMfbS/qDf4iYBE2USS0fZ9g==
X-Received: by 2002:a05:6402:318c:: with SMTP id di12mr10200325edb.55.1630876372535;
        Sun, 05 Sep 2021 14:12:52 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id c17sm3364174edu.11.2021.09.05.14.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:12:52 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 47/52] arm64: dts: allwinner: h5: Fix GPU thermal zone node name
Date:   Sun, 05 Sep 2021 23:12:51 +0200
Message-ID: <4078279.uekIYQBzCl@kista>
In-Reply-To: <20210901091852.479202-48-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-48-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:47 CEST je Maxime Ripard napisal(a):
> The GPU thermal zone is named gpu_thermal. However, the underscore is
> an invalid character for a node name and the thermal zone binding
> explicitly requires that zones are called *-thermal. Let's fix it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


