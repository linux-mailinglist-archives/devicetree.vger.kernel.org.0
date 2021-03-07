Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4175F32FE82
	for <lists+devicetree@lfdr.de>; Sun,  7 Mar 2021 04:16:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbhCGDOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Mar 2021 22:14:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230140AbhCGDOV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Mar 2021 22:14:21 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 327EFC06175F
        for <devicetree@vger.kernel.org>; Sat,  6 Mar 2021 19:14:10 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id v2so550981lft.9
        for <devicetree@vger.kernel.org>; Sat, 06 Mar 2021 19:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=6TB9PYEq3zeYLZKg5D+xCq8Y8gZgxb5+A3yPQ8nEc80=;
        b=Oi0z0SklDqrXcqlHBRHFrkXflYidmA96ce3L8SnewtmlNvJg/wASaoAA9B+EagEKXS
         5RlkBpc6HdUMSo5tB8SslAPx/Li9Q2LZFyAVHrSanS3nCqzbGkBes206RRB+px0VbD0e
         2bWc9ZyZlPjWupQw8vCUjT+0IbbD9iG5Tm2egHzQlifVITQbeUGenUGXgqpoOU9yCbdK
         3IiriSqrl/1Tc5GUDEX9EqQlp7sNKM6FGzbS5yCzxABnhOs+6YhKKGgzPEnZzyxXJKN3
         gItKg3zhfDFbVoVbOd9r+4YyuLYl9h1g26hcVFmI8dajpFYPPNhu5vF50bx+Rye4dJ0N
         pFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6TB9PYEq3zeYLZKg5D+xCq8Y8gZgxb5+A3yPQ8nEc80=;
        b=YF+wZvVPmWR9vNUrR1Z8GxicutoLZoWBRYvehz2KsWnehqx+4M8o4luWcmLK8kFqIq
         yhnrqhHsQobSx4GRKKS6tF3DkWArJMTOozgZGrNZ5Ra9ojat3oGfiz6Fuvo/hYpKgZls
         KZk9aVE2ccH8zfNIKbWvsraSlHXvziU/tGjtw0MwAyOYsyj2vaU51d4kZdRdnNxMUlv5
         KVvRmfCvq959DTjmE4BWqjHs0Cf6ZJLI57/Y1YZMkMpUYZ4MJQz3iY0S62y6+JytHHpr
         oyFJKCyeFm3i9KS0x1uwb3dvphXUTg3FrIb+8Z/ExcVxxuro0fl7oKFvSGQhySoDvnkw
         83YA==
X-Gm-Message-State: AOAM530wNOWvTMrAxQ/oe0jSFhySwCmZS4BPTTE8NMHeYc0zbKLY6JOh
        oHe6UV9T3ruzhQd7qBY9o7C1pQ==
X-Google-Smtp-Source: ABdhPJwshrSBMjXUj3KQqRSF3VJ1Pfnh6bzsJj1UEisjKErvLIovUsoRaMDy2gFLfKgxvg8y3fAGXg==
X-Received: by 2002:a05:6512:a8b:: with SMTP id m11mr10074997lfu.112.1615086848587;
        Sat, 06 Mar 2021 19:14:08 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.6.dhcp.mipt-telecom.ru. [81.5.99.6])
        by smtp.gmail.com with ESMTPSA id u16sm847582lff.169.2021.03.06.19.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Mar 2021 19:14:07 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/2] sun8i: r40: second ethernet support
Date:   Sun,  7 Mar 2021 06:13:50 +0300
Message-Id: <20210307031353.12643-1-boger@wirenboard.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


This patch series adds support for two Ethernet ports on Allwinner R40.

R40 (aka V40,A40i,T3) has two different Ethernet IPs called EMAC and GMAC.
EMAC only support 10/100 Mbit in MII mode, while GMAC support both 10/100
(MII) and 10/100/1000 (RGMII).

In contrast to A10/A20 where GMAC and EMAC share the same pins making EMAC
somewhat pointless, on R40 EMAC can be routed to port H.
Both EMAC (on port H) and GMAC (on port A) can be then enabled at the same 
time, allowing for two ethernet ports.


Evgeny Boger (2):
  net: allwinner: reset control support
  dts: r40: add second ethernet support

 arch/arm/boot/dts/sun8i-r40.dtsi            | 53 +++++++++++++++++++++
 drivers/net/ethernet/allwinner/sun4i-emac.c | 21 +++++++-
 2 files changed, 73 insertions(+), 1 deletion(-)

-- 
2.17.1

