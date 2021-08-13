Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9457B3EB528
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 14:20:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240175AbhHMMUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 08:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240246AbhHMMUe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 08:20:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12461C061756
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 05:20:08 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso15761079pjb.1
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 05:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YCtFiQGzSSD0WFlLn3y5kRxY45lpqdiAdKef9EbWCKk=;
        b=LmhgmB1aSkYNmHUQ7x4C0CJPEJsYjcxTYKjpTJzPXflVtai+MVevIpvUyeY8I0bQN8
         zxRJSp7jmxNf9vgol2DLBA5Evn3qtTVQdotTXcS0wIVVmDuRsigeTnAdUvcRnhzp2t3S
         v2q5vEv9HEP0DHWfSBHhrvOKbj5TFYVeaTAKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YCtFiQGzSSD0WFlLn3y5kRxY45lpqdiAdKef9EbWCKk=;
        b=TwqaeCENRLjXAxdxohQ3R0beVsv03yT+zcATMeVGuaZ3/EJma2j1ueABQk66HFjvkP
         +ZqPHDGacbd641bnCS0YtvVe/Hs9JqoFIZvnixC0rLa4E1h+U89H+u/dSOyY+lrw7IL9
         fJuLCpljVbuznt+q9sNFpiFmEpzZSICT6vxx8vEhqNDNXl/isOXcyon2vrqp9vOJtqGC
         aSEQ15oB+baXnfIYpAwUovozVbxHpkZzMne5u22w0/2eWplBkt23XbcP58njVbrwg6FX
         3wZSrTYhOi7zRtvDnVPl3yfnYBs9X2qbALdBLWeJw3DkABRA67coyJtj43v38Wn11QWP
         LrMg==
X-Gm-Message-State: AOAM531TbMInsGpXVONCRwGkmfY92/nSwyKq9GMmr5wNzFJiqFMuC1zp
        d6wEZQ0pY3piyvsEMMNezkeIxA==
X-Google-Smtp-Source: ABdhPJxi7siu4n9mjrZKiMUTXiVwqus2x1w6B4njNKyABlCL9wXM3/vTwkJchlcU2oExzMAR/5Ajaw==
X-Received: by 2002:a17:902:9303:b029:12c:29c:43f9 with SMTP id bc3-20020a1709029303b029012c029c43f9mr1806527plb.5.1628857207649;
        Fri, 13 Aug 2021 05:20:07 -0700 (PDT)
Received: from kansho.tok.corp.google.com ([2401:fa00:8f:203:5293:be68:a318:ba36])
        by smtp.gmail.com with ESMTPSA id v15sm2181680pff.105.2021.08.13.05.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 05:20:07 -0700 (PDT)
From:   Kansho Nishida <kansho@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Eddie Huang <eddie.huang@mediatek.com>,
        linux-arm-kernel@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>,
        Kansho Nishida <kansho@chromium.org>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 0/1] dt-bindings: mediatek: update audio binding documentation
Date:   Fri, 13 Aug 2021 21:19:56 +0900
Message-Id: <20210813121957.3089816-1-kansho@chromium.org>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Matthias,

Thank you for your merging! This patch updates the binding description.

Regards,
Kansho



Kansho Nishida (1):
  dt-bindings: mediatek: update audio binding documentation

 .../devicetree/bindings/arm/mediatek/mediatek,audsys.txt      | 4 ++--
 arch/arm64/boot/dts/mediatek/mt7622.dtsi                      | 4 ++--
 arch/arm64/boot/dts/mediatek/mt8183.dtsi                      | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.33.0.rc1.237.g0d66db33f3-goog

