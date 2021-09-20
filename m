Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8BC8410FE2
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 09:15:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234700AbhITHRV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 03:17:21 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49320
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234571AbhITHRV (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 03:17:21 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1FDAB4018F
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632122152;
        bh=Wx09CSLf2BUcoT4i99Nl9tot/C6qmojAMi1r7QcpgsQ=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=kRqjRFjJ9cwxpJ6arJg+5euv7meAfcoXZjQV6R4bA/GvR4FPKgWCI1k6YDtv3rLwZ
         gzDBg7vouIAEzY6ojpJ27H8aEuNF8K2H9y31sSBj/JDTqklZJD7qTrV9hrycWddYAi
         z9fuoBEiQsVQYak22KUkL3Gv+48pJSroM41Oa1+nzyhB0UwqLK2Zg1xuxSSZph3xx6
         bECwKL7M6QfTQ1b0U/O5SHAT3zOTXxXwQCiQQ1Hu3rzrTQhUSFIZ0mKxRHiW7EVpA/
         Clrcc5iLuQ3jDg5m/c3/Rtx4Gl0R/4nV1E0AODWM/SzO2L8+5ohxWM56bE4OcG8W+d
         2i6tife7044xg==
Received: by mail-wr1-f71.google.com with SMTP id r9-20020a5d4989000000b0015d0fbb8823so5456212wrq.18
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 00:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wx09CSLf2BUcoT4i99Nl9tot/C6qmojAMi1r7QcpgsQ=;
        b=fy00deqGMZrXhgaGTI3z3IescAJU8413/q7fLAxiqil5L2Uo1r6tNy2yvMVI+DtoR1
         xZX7rdpq8euri+zcQOS+2/XCqn7w1TR7sm0Akn0Q8VLP/8YPZPyvD0kvLYn5xWhz0yhE
         zFCV4XiAcvJklE+58IHuzL6PKFhK6E5JLUvbtFz+8myHmstaX6vd+N6XqDASAsIN8UES
         cOxL8qvijgUQAC5IzuCxvzxnMjLKEyvaoamnRzY8k6nOXndWPYm40psvf6FX3pWHUfA+
         IuPkZ6YUUwbzeHbpVI5lJnekF6fCqZv98Dmpr7udjYtTiMSVPDc51wX7tzH8pkmfTRd9
         EVJw==
X-Gm-Message-State: AOAM533uJRRZx2EH4DRnrrrTE8O9ekKVYzAHdWMXKeniO/5erFrY3EfE
        qUePtA4aIueHXboIHJ1U0ije7oPutztp4VF0vDu5a4a7MTYTX7BYj8iuRdnV4YPbfwElBFQqm6b
        YlZc5hJxlX8G6bUBPgetvqMdKnHemQhDdMpGJh5A=
X-Received: by 2002:a1c:7e55:: with SMTP id z82mr262579wmc.95.1632122149468;
        Mon, 20 Sep 2021 00:15:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+/JWO4KawW9KMTN5QacKUh4LzdTsDtHGOI8eupCw/ohf4m9JVuD9eePbgGFUp8uXDjI5x6g==
X-Received: by 2002:a1c:7e55:: with SMTP id z82mr262553wmc.95.1632122149216;
        Mon, 20 Sep 2021 00:15:49 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id x5sm17456153wmk.32.2021.09.20.00.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 00:15:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v2 0/3] devfreq: exynos-ppmu: conform to dt naming convention
Date:   Mon, 20 Sep 2021 09:15:37 +0200
Message-Id: <20210920071540.38337-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

My previous patch 3/3 (ARM: dts: exynos: align PPMU event node names
with dtschema) caused issues reported by Marek [1].

Tested on Exynos5422. Testing on Exynso5433 board would be very useful.

Changes since v1:
1. New patches 1/3 and 2/3.
2. Patch 3/3: rename event-name to match node name.

[1] https://lore.kernel.org/linux-samsung-soc/0212a402-1490-0f8f-005e-32bb6f636a13@canonical.com/T/#m570c0257204af553fe11f9122551311beb56c15e

Best regards,
Krzysztof


Krzysztof Kozlowski (3):
  devfreq: exynos-ppmu: use node names with hyphens
  devfreq: exynos-ppmu: simplify parsing event-type from DT
  ARM: dts: exynos: align PPMU event node names with dtschema

 arch/arm/boot/dts/exynos5420.dtsi   | 16 ++++++++--------
 drivers/devfreq/event/exynos-ppmu.c | 12 +++++++-----
 2 files changed, 15 insertions(+), 13 deletions(-)

-- 
2.30.2

