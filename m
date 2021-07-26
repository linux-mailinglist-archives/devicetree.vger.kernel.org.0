Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 289073D5516
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 10:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232973AbhGZHc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 03:32:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232977AbhGZHcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 03:32:25 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E449C0613D5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:12:54 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id h24-20020a1ccc180000b029022e0571d1a0so5655360wmb.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E1tqK1iTmNRLpcSNr0tub0A4uI6FbhV9kAz5unEaOR8=;
        b=qM+U7w3dxOkS3lq/Bekk4CYwU6QOPEr5DkUYPksSpVjVWCQkXUo+/IFShRFANUkqQz
         WZ+/szCu3z8L8ubAWqAcUHplQsA+lvs1GK8fwWrHyT1h2tOsRL0Kr55W1RAZG80/F00o
         EDrGOrH0FceaRBjGqeqqq51YsJw819KuikQk6wuKtED1dVdTpD3DudrkNIiJhGN17eJ1
         kw3bypQD4og+tzPPS0l5pLAiKR2owJLNZ+lrSbHX+2sEr02FnitRkqSNZiKYz8hCg64p
         hSjZo/y+Z+03h+3Tg4u4fZ5g9q2IRiacFTgI7AIkdY97utPoCpXWloTe3Dig6puuAYSu
         DbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E1tqK1iTmNRLpcSNr0tub0A4uI6FbhV9kAz5unEaOR8=;
        b=UvTKWGEMCz/6++4p3eCkgnxgecdyRCd5FpWs+qt2ybq5MJ0GKaF5UsxooHEYqxSugm
         q5kk7ZfOb4Qm9ETpZ51SUZKXIFGTZ4o/QNWMptG/SfF9tH8XS+snv7jNMEC0napkpMq/
         rQqKemdkuk88s/eURJpc4DrzSk4MtPQlTRiXmm4WCMW6ejMyef7yZmRVM3D1S/ZWG0Jh
         Qq0/PbLw5F+6pC+19krjjYRDdxP5snamkAHCAZGGY7gK1x9RZZKfPcmgYiJXaeVhm42u
         4zUz3UK861Lyl4lXxWYVOiHxSa20Ck2XCbI5V9DMd8GQUB9+dFG98zAHheF3Uv1VEU32
         67cg==
X-Gm-Message-State: AOAM530RJJMVEkf2qahtWEvzTWpsnaeTOQJ7De5hUc6pCczInQU8XCma
        PJgpoUsn6VafpXdPe4jYrwMrKw==
X-Google-Smtp-Source: ABdhPJz2/+Tf5eYCYct0tYno0IeJ3EoZiBJQ7jLZx/evy1F7uvBD3CbLodH4A1LLF0nDpgeY6bIdbQ==
X-Received: by 2002:a05:600c:4982:: with SMTP id h2mr16154472wmp.184.1627287173204;
        Mon, 26 Jul 2021 01:12:53 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:32b6:aa71:d2df:4f1d])
        by smtp.gmail.com with ESMTPSA id c15sm646762wrx.70.2021.07.26.01.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 01:12:52 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Chen-Yu Tsai <wens@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3] arm64: dts: meson-gxbb: nanopi-k2: Enable Bluetooth
Date:   Mon, 26 Jul 2021 10:12:41 +0200
Message-Id: <162728713307.14205.377532057351030776.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210712135919.32059-1-wens@kernel.org>
References: <20210712135919.32059-1-wens@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 12 Jul 2021 21:59:19 +0800, Chen-Yu Tsai wrote:
> The NanoPi K2 has a AP6212 WiFi+BT combo module. The WiFi portion is
> already enabled. The BT part is connected via UART and I2S.
> 
> Enable the UART and add a device node describing the Bluetooth portion
> of the module.

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (for-next)

[1/1] arm64: dts: meson-gxbb: nanopi-k2: Enable Bluetooth
      https://git.kernel.org/amlogic/c/46f2735c17d215fd76c54d7bfc4d7ca5ec206eb2

-- 
Neil
