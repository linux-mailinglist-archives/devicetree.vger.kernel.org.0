Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF39B3A1349
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235466AbhFILsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:54 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:33609 "EHLO
        mail-wm1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239449AbhFILsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:42 -0400
Received: by mail-wm1-f50.google.com with SMTP id s70-20020a1ca9490000b02901a589651424so3074413wme.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=958Czn2DLB+o/NZtXonc7bnisFWGNfDVO9VxvQ+P81g=;
        b=JPp+4hs+e1lRRVOlXTYSKUNgES7Yspkb4tBX4RSwbXg5kWE2KIkq3HGXzAR6gCVQ0s
         Ww3Vx3zwXajcMMpM1odY5aa27oIs0Wv3RBM3boxOh+zKOGS3Tv7BPH9IrPZMUHSlzsL0
         ousS0VsdfKsg9DCX9SO9EweV85gTIBSybH1CZq/z2LU77FGkhYHBFP0qK9qCzjwtEyIK
         BCo2DJuM4PwWKgBxs3auHmYcW3miz21ac1RTIuwqrU/r4s06+cSOmtDRIxp1nX7VBukY
         TOz+x5yRq9e0SBzcogdny1zahZ9j/1cvCBV1bxUU5hQyMjMdfCMZy340Rb1fFY08tunN
         vwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=958Czn2DLB+o/NZtXonc7bnisFWGNfDVO9VxvQ+P81g=;
        b=hbC0LPMVB/1KZJs9IhzjFI5jPooCgRD8VZCp6crjwXFK9Di0jDRnyelQXnG9rsqmzW
         8OkLHoypwGKmOhuux/HrWX9ClDPSnK37LI5MN6Jz4zc+CCqchTkqG+fr1LzzOtGrxE/5
         bUvfD+sytWddjRPFEaQSw9ASHMMks8iJMkL+GFBSZKFFQfvbkL8LWkraB6yzlgza9pOK
         7crKq3EENObmMuEOJcFwnqwqIi2eU6ZM92s6cxNzzdC3yUxcP/1W9imING3LiRrXiP/K
         XLD/Xj5sR/TqfSh/hGNX6HiVfABZ3hY6BcKvJEH3B/4JCWkNE/FCzvIg6qCMKSjn29lA
         ZMOg==
X-Gm-Message-State: AOAM531YcuqHCryHW5nlrSf119B3Ti0eCBFJeIAoBSyCOPBQcjMMMPut
        JPsKK5HHXzAemYEPxaaN01HH9w==
X-Google-Smtp-Source: ABdhPJxWWYa3eVsbzmR8sPamyReW3RB7KhmZEZSUIEmZ+yyq4NYQyOeC4FZSkJ5ONT0Z5UCxzr4UVg==
X-Received: by 2002:a05:600c:4f4e:: with SMTP id m14mr9333276wmq.157.1623239146885;
        Wed, 09 Jun 2021 04:45:46 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id j7sm21467822wrm.93.2021.06.09.04.45.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:46 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 15/31] arm64: zynqmp: Remove additional newline
Date:   Wed,  9 Jun 2021 13:44:51 +0200
Message-Id: <16f6f41c8d748d3c7cd4f49b2839e63a5b41c944.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is sync between Linux and U-Boot. Trivial change.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 719a9e5e1b01..1a45e4946dd4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -463,7 +463,6 @@ max15303@20 { /* u8 */
 				status = "disabled"; /* unreachable */
 				reg = <0x20>;
 			};
-
 			max20751@72 { /* u95 */
 				compatible = "maxim,max20751";
 				reg = <0x72>;
-- 
2.31.1

