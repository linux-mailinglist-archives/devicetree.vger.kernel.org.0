Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D85B398850
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 13:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232955AbhFBL2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 07:28:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232692AbhFBL1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 07:27:37 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08B37C061355
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 04:25:00 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id k15so1923626pfp.6
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 04:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=heitbaum.com; s=google;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=li91TkB8vt4LZTs/ZRDPEkBtTqhmB+m8Wqp+53J3jpY=;
        b=aonkHIp6X5zJfn9dkevz/e7hkCumER3RcmOsiw9du/9D9yv94CjQLo/uYyuC/XvNPf
         SohKN8bPTJ8DIEn3p+38+e/UxffGTjgmc2yVx0mpVd9jw1xOAnvgrFB5P/4IoInc+373
         Yb3dj/a26fUyuxUZC5tisApOpD1X0pSwB1ljE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=li91TkB8vt4LZTs/ZRDPEkBtTqhmB+m8Wqp+53J3jpY=;
        b=c9wrc6zslBCByH0uozAt9cpU4J3pbBnjXcsGvvvx6tuMg/ea7xasuoL0KnoPsaaaFP
         t5jAsOjzbR3xBgI+tPg8zzd3OYzn6TOoL0d7nzwEqyTvxp/H9EFq1hLVXKc2g8XFQCyj
         zwlG6a54bvfQfDAR6QkjN9rPha+KFPoS1344hywjixQ7k5qk57epUil7vPBTd3XI8cXm
         V7LgnBNX4HOnwUeso9bODVhvlnQEpcsqZPM/KE5uZasfxlS80MjQLkUaUgKAaOfEs10x
         k7jn9SE/PEX6ZY55q1vmGeVPyg9d+OFqEMvaSvL0x8HChUwnxBGrbzs2nB46MzyBcY1d
         clEQ==
X-Gm-Message-State: AOAM532jmdM18a9fGPKB4ZO7Nb0ScLa1XfktCltR9vSVe/yL2JD2G74k
        rIdFgf/ScEqtGAMY+SGTXI4yihNX1Q/RKhsV/qw=
X-Google-Smtp-Source: ABdhPJxpfZpr0xBPXyYNB5hyvH20vouT4QUVROCCeFjRrQPFQFstm2zrwf9q7Ou5UnmCblp40cXiWA==
X-Received: by 2002:a63:b507:: with SMTP id y7mr33357175pge.74.1622633099202;
        Wed, 02 Jun 2021 04:24:59 -0700 (PDT)
Received: from 5f9be87369f8 ([124.170.34.40])
        by smtp.gmail.com with ESMTPSA id t1sm10568249pfe.61.2021.06.02.04.24.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Jun 2021 04:24:58 -0700 (PDT)
Date:   Wed, 2 Jun 2021 11:24:53 +0000
From:   Rudi Heitbaum <rudi@heitbaum.com>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
        pgwipeout@gmail.com
Subject: [PATCH 1/2] dt-bindings: regulator: Add support for TCS4526
Message-ID: <20210602112452.GA98@5f9be87369f8>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string to support the TCS4526 device,
which is compatible with Fairchild FAN53555 regulators.

Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 Documentation/devicetree/bindings/regulator/fan53555.txt | 2 +-
 1 file changed, 1 insertions(+), 1 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/fan53555.txt b/Documentation/devicetree/bindings/regulator/fan53555.txt
index e7fc045281d1..013f096ac0aa 100644
--- a/Documentation/devicetree/bindings/regulator/fan53555.txt
+++ b/Documentation/devicetree/bindings/regulator/fan53555.txt
@@ -2,7 +2,7 @@
 
 Required properties:
   - compatible: one of "fcs,fan53555", "fcs,fan53526", "silergy,syr827",
-		"silergy,syr828" or "tcs,tcs4525".
+		"silergy,syr828", "tcs,tcs4525" or "tcs,tcs4526".
   - reg: I2C address
 
 Optional properties:
-- 
2.29.2


