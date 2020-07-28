Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E193D230736
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 12:03:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728629AbgG1KDt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 06:03:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728623AbgG1KDt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 06:03:49 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F11ECC0619D2
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 03:03:48 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id r11so2751808pfl.11
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 03:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cxwX2AIPHGdhCk9KqDzZeCU4mfFsakd7X68zNyxQ72o=;
        b=kRi5SkZv8IHg4TsHBmPxoAIQrMfk/7RqlXrlV2KdfiwYpu8Aof+prql+jql0KvKP5B
         0cx1fjZhvSyJFQ0J41PzkXy8qL6ibrANmpURngEckm3m+/klq8t3N8z5ovqt3MuVeeuM
         5SjHQpx8ERBxOiTYxTMt3l3AfNdJjiAvOPkoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cxwX2AIPHGdhCk9KqDzZeCU4mfFsakd7X68zNyxQ72o=;
        b=fKzUAxHeBAzx7Y+wE1E8jg6/umJM0af19sVZ2GFMRV8uGx+YRadH79aMveJVu87Kuk
         yWHYhduCe60vY7zvngnyc1kslTai1ciygCaNtXBx5cdKdHDLvPPx1lp2AWmXMFfgtEKo
         kBSeYCdsq9jTYgQYlfXKh+/i8hZkcyzxgllRVRek2nFMjGfpJasyRLG4foBMsG4ED0Pk
         3xVLtxgtseg5ks+wqqXfiDlk8G9IoshwtUDZkFTtpNrgJORIcAiT+urzxk5TWNdt6dM8
         Hw8CWHIXGDkaorJJvBjvMZxdY4sVr5jTdviyKQpi2j5m+9al8K3rEkd2DVpPCN449gwb
         mTrQ==
X-Gm-Message-State: AOAM533mmK4Z+msjZU1iNrn0cvVSWZe8lcw8Gk1kqRwqPm1OvQNhq7Sq
        +0pYzVu1/iESYgrwnfyUdNJXpQ==
X-Google-Smtp-Source: ABdhPJykO4NL4VrLIapmtE6Vs+7sXczgf5nsq2JGZVl2s6Vb/zlG7D8OcRP/RsaZu40a58FNtP9a3g==
X-Received: by 2002:a63:e008:: with SMTP id e8mr17790326pgh.50.1595930628503;
        Tue, 28 Jul 2020 03:03:48 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id u66sm17779018pfb.191.2020.07.28.03.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 03:03:47 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 6/9] ARM: mstar: Adjust IMI size for infinity3
Date:   Tue, 28 Jul 2020 19:03:18 +0900
Message-Id: <20200728100321.1691745-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200728100321.1691745-1-daniel@0x0f.com>
References: <20200728100321.1691745-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

infinity3 has 128KB of SRAM at the IMI region.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/infinity3.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/infinity3.dtsi b/arch/arm/boot/dts/infinity3.dtsi
index 2830d064c07d..9b918c802654 100644
--- a/arch/arm/boot/dts/infinity3.dtsi
+++ b/arch/arm/boot/dts/infinity3.dtsi
@@ -5,3 +5,7 @@
  */
 
 #include "infinity.dtsi"
+
+&imi {
+	reg = <0xa0000000 0x20000>;
+};
-- 
2.27.0

