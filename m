Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ECB842F9C5
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 19:10:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242015AbhJORMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 13:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242019AbhJORMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 13:12:54 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B692C061765
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 10:10:47 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id d9so40500586edh.5
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 10:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8ikRAU8NHFzNYjawBqwBBU6E4YNbTByAd4empVS3Xtk=;
        b=grtmIkV6ISb6uKF5iGitBVdMCcs02leb9mkvStfPsO5OXusWcP/2sxGYpS0bfvjufV
         2vA+FMlyPY3Yppg718PztITn7NjnBi54yhTMbFTgiWU5NBsmKtQfak++fV3tzM34Cjgj
         ut67XffslY6mWNKSoONvkGDF4xg+LPuEZ3ny4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8ikRAU8NHFzNYjawBqwBBU6E4YNbTByAd4empVS3Xtk=;
        b=19EA+/AHd8rlIx+6vsqn+OKLMQYYcTnDSbje5XIH/90D7m6q3gyE9MuGvEangFb9Zb
         DhRpPFDXD5mRZDy11f7YxZBYJfr1+j+gJLcVCE70EgNExCg3tz58PcH7dlxv09/iRwkP
         7HzX1vxgghIUbRQNGMTQTdl7y8T0MJun025D4y1Qt/mbERdaishkMP7ML/a3Zx91IB0L
         l2VWE0K/44/nAcvmGuGxMWGLYwr/jchTzJUNp4Is8TXDtWPxn0q66KQIKxEc2eEIDIi1
         0MxJ4vxJu3/wUN+s7/IjF1r3lcWj3qG/oAw5sZXbMwWuhLkoBHue7IqnmfME9B0TNYvC
         W/WQ==
X-Gm-Message-State: AOAM533bMe/8JO9e5zAgfY0AhQHIeokif08wO6UYKRnLtOlGOwaOXezH
        KXML8Lg1hy/xZ/8rT/Xhl6IMUg==
X-Google-Smtp-Source: ABdhPJzWVj9P7jdMJQUirh2z/2+OLQsdAKBGprcp9o3pff7bjo5dm5wrHLqppf7NruiLQHuUEs5ZKQ==
X-Received: by 2002:a17:906:c18d:: with SMTP id g13mr8251898ejz.518.1634317845742;
        Fri, 15 Oct 2021 10:10:45 -0700 (PDT)
Received: from capella.. (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id jt24sm4735792ejb.59.2021.10.15.10.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 10:10:45 -0700 (PDT)
From:   =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 net-next 1/7] ether: add EtherType for proprietary Realtek protocols
Date:   Fri, 15 Oct 2021 19:10:22 +0200
Message-Id: <20211015171030.2713493-2-alvin@pqrs.dk>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015171030.2713493-1-alvin@pqrs.dk>
References: <20211015171030.2713493-1-alvin@pqrs.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alvin Šipraga <alsi@bang-olufsen.dk>

Add a new EtherType ETH_P_REALTEK to the if_ether.h uapi header. The
EtherType 0x8899 is used in a number of different protocols from Realtek
Semiconductor Corp [1], so no general assumptions should be made when
trying to decode such packets. Observed protocols include:

  0x1 - Realtek Remote Control protocol [2]
  0x2 - Echo protocol [2]
  0x3 - Loop detection protocol [2]
  0x4 - RTL8365MB 4- and 8-byte switch CPU tag protocols [3]
  0x9 - RTL8306 switch CPU tag protocol [4]
  0xA - RTL8366RB switch CPU tag protocol [4]

[1] https://lore.kernel.org/netdev/CACRpkdYQthFgjwVzHyK3DeYUOdcYyWmdjDPG=Rf9B3VrJ12Rzg@mail.gmail.com/
[2] https://www.wireshark.org/lists/ethereal-dev/200409/msg00090.html
[3] https://lore.kernel.org/netdev/20210822193145.1312668-4-alvin@pqrs.dk/
[4] https://lore.kernel.org/netdev/20200708122537.1341307-2-linus.walleij@linaro.org/

Suggested-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---

v2 -> v3: no change; collect Reviewed-by from Florian

v1 -> v2: no change; collect Reviewed-by from Vladimir

RFC -> v1: this patch is new



 include/uapi/linux/if_ether.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
index 5f589c7a8382..5da4ee234e0b 100644
--- a/include/uapi/linux/if_ether.h
+++ b/include/uapi/linux/if_ether.h
@@ -86,6 +86,7 @@
 					 * over Ethernet
 					 */
 #define ETH_P_PAE	0x888E		/* Port Access Entity (IEEE 802.1X) */
+#define ETH_P_REALTEK	0x8899          /* Multiple proprietary protocols */
 #define ETH_P_AOE	0x88A2		/* ATA over Ethernet		*/
 #define ETH_P_8021AD	0x88A8          /* 802.1ad Service VLAN		*/
 #define ETH_P_802_EX1	0x88B5		/* 802.1 Local Experimental 1.  */
-- 
2.32.0

