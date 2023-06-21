Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E32573806F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 13:10:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231907AbjFUJc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 05:32:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231244AbjFUJbP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 05:31:15 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 715431BC
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 02:31:12 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-311099fac92so6627581f8f.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 02:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687339871; x=1689931871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aOPR69iAQ16PRI3TWa1E2gZcgSDBVpUe2mB3Tg7XdFY=;
        b=p6VfhCsZ1XQVk+UFLTJRo9cf3iTipfn7+MBuZGX/3xu99DkZWmG8tzt/4QEiu0vdoP
         SwlKwJZpil8SEzBGic9Sdgl41L2ROAyA7fjHmwCysGNFyiJ2HXeo4xDhFyiizQzpbGAb
         pFEwDePat4OO5iNIvyfT6kCa1Y1wwPfNVqWTUay+XSTDaay8iLXaiNAWpNJosnHvR002
         85B6egNdHCN4pFH1hnrVd2eyXbxaTHobsIy0GYO0HIrF0qrfTKXUZWMqa3bWv6qy4XO8
         Fmtgt9r0knq3H5Xf8bnbXgXrDmp7C2UqP5JkHSCkA99CZSH22vhgwzEkEOE5iahxQgJf
         FIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687339871; x=1689931871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aOPR69iAQ16PRI3TWa1E2gZcgSDBVpUe2mB3Tg7XdFY=;
        b=jzHxrs56tzKHyXgTjW+8PMFo7XBSQb2OTIWSHfZC2EpoCJDMmuDToMAw1u/Eg5cVKT
         4ZhQk5r9uDUAowIM3bDAmck52BfmqJpxo3vca373xk5Pv7o5CqzWsjzH+iv2+gu+mRXI
         GQmJgAJhfNH5qCFz4/LAhgLULQJZy7jARe4OvmDVz1P8d7nXZq1ck6ciSUQyZ1GEBm1M
         pFaIbHtTWZDVYDXJ7RGIDVtsyzIOGauYoUo1Na8DXFIjwdv9tcbpKvFw4vjpdMpyAsov
         taYNO32FXijZZjiugC76Vx+3gFAbr17JmCI5mHA+XzAObtMAP0RudN8sOMhsaI/InH2m
         qESw==
X-Gm-Message-State: AC+VfDwBGX+dbI9F0HzmOJNWwuRQPd0ilp1AuwcLDgQNc8oudu6K/80a
        GkHoTWC94mjwcceeVRcEaGfgTg==
X-Google-Smtp-Source: ACHHUZ7h1oBelfPdJ7hS0YJrsBMI7+8RNi0jGbeXTETw7BrgmXNO4eGVgr+m/lxb6bEa7Izo9X0Sqw==
X-Received: by 2002:adf:f287:0:b0:311:13e6:650a with SMTP id k7-20020adff287000000b0031113e6650amr12500326wro.28.1687339870910;
        Wed, 21 Jun 2023 02:31:10 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a247:82fa:b762:4f68:e1ed:5041])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d49ca000000b002fe96f0b3acsm3977344wrs.63.2023.06.21.02.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 02:31:10 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Wolfgang Grandegger <wg@grandegger.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Vivek Yadav <vivek.2311@samsung.com>,
        linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Simon Horman <simon.horman@corigine.com>,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 2/6] can: tcan4x5x: Remove reserved register 0x814 from writable table
Date:   Wed, 21 Jun 2023 11:30:59 +0200
Message-Id: <20230621093103.3134655-3-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230621093103.3134655-1-msp@baylibre.com>
References: <20230621093103.3134655-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The mentioned register is not writable. It is reserved and should not be
written.

Fixes: 39dbb21b6a29 ("can: tcan4x5x: Specify separate read/write ranges")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/can/m_can/tcan4x5x-regmap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/can/m_can/tcan4x5x-regmap.c b/drivers/net/can/m_can/tcan4x5x-regmap.c
index 2b218ce04e9f..fafa6daa67e6 100644
--- a/drivers/net/can/m_can/tcan4x5x-regmap.c
+++ b/drivers/net/can/m_can/tcan4x5x-regmap.c
@@ -95,7 +95,6 @@ static const struct regmap_range tcan4x5x_reg_table_wr_range[] = {
 	regmap_reg_range(0x000c, 0x0010),
 	/* Device configuration registers and Interrupt Flags*/
 	regmap_reg_range(0x0800, 0x080c),
-	regmap_reg_range(0x0814, 0x0814),
 	regmap_reg_range(0x0820, 0x0820),
 	regmap_reg_range(0x0830, 0x0830),
 	/* M_CAN */
-- 
2.40.1

