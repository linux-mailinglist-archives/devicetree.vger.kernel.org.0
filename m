Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1F731EE33
	for <lists+devicetree@lfdr.de>; Thu, 18 Feb 2021 19:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232098AbhBRSYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Feb 2021 13:24:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231735AbhBRSKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Feb 2021 13:10:23 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DBF4C061756
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 10:09:40 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DhN5Y3LpYzQk8g;
        Thu, 18 Feb 2021 19:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1613671773; bh=W/Dls4BBn0
        cZBu0J1HB0GO9lXeKTSNrYr87sAw81zvc=; b=ENGz48t9l3y4/vBYGldpgWmr+y
        nONQUabzsiW2uW3eRVexRkteGu46ZE1l4KefYDfbKI/pKNOiReaJ7C84PMQ9/hsU
        ZA5TOCEJFxKGsFOwfDwtwW06AQZ440HiKBNdrvKR+FTpHYzT5oSHybaxkYxXVC+q
        9HzwYXtWX3xy2NL6sT2QbqX+pNL65gbBxLGYbJCkZDQaFB//78I4UTzc4U2glZ5e
        PMgZ2WqOmFTnEMQYL9q+fya/vZGyNcTkf65OQ4VAhP6AmsLki/X9UTSL9/lQRCbv
        NaG410FYx4yyjANiDY08Q6tMXrJOUMnoYMO/sPLsGGfDPwibHy4DXCwzF7xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1613671775;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9ZCc8BafT07k/uY7SVF+4P/8ZypzbJUznZWOpeKSXpQ=;
        b=X2d5YBZmnZgIn6wfcC64zps2sccljYASZfY9eiXvoSZY8yMt/aBSYqCBuX2BUntMSEDX4O
        tCB86ubvH2Yj7J+VUwjr4y09iVshlGpDMXaW+ikVLczFs1JYK0gfRjb8OGUH8O7zTYSQQr
        vkkMWknB/c5rg7CuIyhzQ5qz4rzOZcRBi3lLYkiHHfT46/568JR/pS56Iro9yH2lj5fSF5
        RY3/Q2qPjJq8kw4/Y6TR4g9tQ5qZd8AR2MqvT06o3GKs62tQU5eQa4RAmn5puGxm/HJy5q
        PZt2OKAxZRrPk9m949c6M1lJFA8zc7BxU1517sqKVyHOlaB/AidH3U0TP6sykg==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de [80.241.56.115]) (amavisd-new, port 10030)
        with ESMTP id xu8EzBvS0Qa0; Thu, 18 Feb 2021 19:09:33 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
Date:   Thu, 18 Feb 2021 19:09:30 +0100
Message-ID: <2921197.CJbAp5Dgou@natsu>
In-Reply-To: <20210203192824.854491-1-alexander.stein@mailbox.org>
References: <20210127230852.66686-1-alexander.stein@mailbox.org> <20210203192824.854491-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -3.39 / 15.00 / 15.00
X-Rspamd-Queue-Id: 1A87917D1
X-Rspamd-UID: 48e893
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 3. Februar 2021, 20:28:24 CET schrieb Alexander Stein:
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs
> are not practical. Use newly introduced aliases for mmcblk devices from [1].
> [1]
> https://patchwork.kernel.org/patch/11747669/
> 
> Commit message taken from commit 0011c6d18277 ("arm64: dts: rockchip: Assign
> a fixed index to mmc devices on rk3399 boards.")
> 
> The unconventional order (B, C, A) is due to the fact that sd_emmc_a is
> (according to the comments) only used for SDIO.
> 
> AFAICS all boards either have both sd_emmc_b and sd_emmc_c or only one of
> them enabled. So the alias order should match the previous non-async order
> for all of them.
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>

Any feedback on this?

Best regards,
Alexander


