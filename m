Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B86867E270
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 11:59:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232616AbjA0K7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 05:59:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232630AbjA0K7m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 05:59:42 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC5629415
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:59:40 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id k16so3168196wms.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lyx4vfyj5nu/u1Po9IGUR29avEnBx5AnQT3m1xKjVu0=;
        b=QepVfE39TZNYo9tVulpHd3SA1DkTfbJOA3N23Yw2yDBkN+oAWevQ3Zy2znn88IFwnG
         9dNOlbxLhInpUhO7uUwDWz0eKSv9icZfUaMore7F3kI4oI5rJhctMffM0orWeVvmUakq
         6rofYN16/KI3DZ9SZ03U0UzVcwBLw+5eqG2WAkvfM1P8A9PPbihRgvtf2N1Q3XhnujSg
         IM6gHwGvl4MTaABOMMG6N4DgjqRMrOU72eQ0bC3F5rJQnQRkA7hjezdIcL1OReDBIWaR
         JGmI7GvvINu+FvZM7eNsThU1nNgASLSeNeJGy53vA9mS5XuNCM27EioIqu2Rgi7YZz7B
         f9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lyx4vfyj5nu/u1Po9IGUR29avEnBx5AnQT3m1xKjVu0=;
        b=Kc65KSSHoVE7ecamJXVvCc6w0bnYYmDpwihOXebOz+C59RWxowQzpEASQZ53JuZPMT
         rY0S6DezeLufqIzlqLf7tu3SVNSrq0BGcYub7qGP8wJp/oWMjL9Nzk8+yLRVoK4nJImV
         Hi0sVkPTvD97MnH+J+uM2/eCs5b2GaoFH5wnHs6EkvfkjHEQrpxQk/mvhStRaAyDL6v2
         AA5u6+/aPZoc8PDTRygacswewg6lR7DNp/44xXHras7egaufNc/619n8/QiwRw21+M4a
         xri3eWFFAWKIv2j42KxxaG8fb8WdQYtaxN+w+iRBB+TYNGM7VFLpEU22EN0XMwMLUxOS
         VUJQ==
X-Gm-Message-State: AFqh2krhHDHMZao9lT3P/w2tyl6UB2RfonB0yM895+NCm9/j/rpsBw0J
        LNs83EBnbq1eZcswgYlVe+nyj3re61hYL5/P
X-Google-Smtp-Source: AMrXdXtwivjRPq/b7n7Kn232v28RTtcW2gNt8ghTdi5/saSeBkcbBlc+tl4SknBhbgB+co1gh6ca7w==
X-Received: by 2002:a05:600c:3b9b:b0:3d2:392e:905f with SMTP id n27-20020a05600c3b9b00b003d2392e905fmr38391793wms.24.1674817178564;
        Fri, 27 Jan 2023 02:59:38 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ay6-20020a05600c1e0600b003db00747fdesm7447827wmb.15.2023.01.27.02.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 02:59:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] MAINTAINERS: amd: drop inactive Brijesh Singh
Date:   Fri, 27 Jan 2023 11:59:35 +0100
Message-Id: <20230127105935.99174-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Brijesh Singh bounce ("550 5.1.10
RESOLVER.ADR.RecipientNotFound; Recipient not found by SMTP address
lookup").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 35385df2302c..028df656196f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1099,7 +1099,6 @@ S:	Maintained
 F:	drivers/dma/ptdma/
 
 AMD SEATTLE DEVICE TREE SUPPORT
-M:	Brijesh Singh <brijeshkumar.singh@amd.com>
 M:	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>
 M:	Tom Lendacky <thomas.lendacky@amd.com>
 S:	Supported
-- 
2.34.1

