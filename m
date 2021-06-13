Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D90693A5183
	for <lists+devicetree@lfdr.de>; Sun, 13 Jun 2021 02:49:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbhFMAu5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 20:50:57 -0400
Received: from mail-pj1-f52.google.com ([209.85.216.52]:38789 "EHLO
        mail-pj1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbhFMAu4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Jun 2021 20:50:56 -0400
Received: by mail-pj1-f52.google.com with SMTP id m13-20020a17090b068db02901656cc93a75so7965207pjz.3
        for <devicetree@vger.kernel.org>; Sat, 12 Jun 2021 17:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=subject:date:message-id:mime-version:content-transfer-encoding:cc
         :from:to;
        bh=M1E/KqCrqBw8na7d8YIMW+xmxN0lavHYzwrAJ6gdNyE=;
        b=aJ4vaMntnYLgO+AgqInAT3oip05GQ9+gNzo1FF0RO3y0ROVmsEO59Kf6M9WRmKNexd
         Im3aqEwp2V9tWPw5sEBgAubEpA3Ugl/hA9ynMewPB7KygbAOo+im7/kZdwReYgA3EiO1
         pxfp9s5vuQAFDvv1Hm5XHiqmTrof5qiMxTFuln8RzviTRkDT8oqAiwMawXo4xej5eqdH
         aH4u9/o27P4ylT3Rd2/lmmeTIIyryMt/sTtCCk64WQa8kIFc1BUR9ATxnxxxhXMNegLQ
         E3K+D+4GZjAyoMdufCAj4/KdgoPEFGhciRSWg79FPFUUPfwnCaLXiJQYEXQKahBoWMVl
         sIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version
         :content-transfer-encoding:cc:from:to;
        bh=M1E/KqCrqBw8na7d8YIMW+xmxN0lavHYzwrAJ6gdNyE=;
        b=gEpM4wi0iw3qOO3VRobviUzkSNOabMsRDhK5HiITKHyHHmZqiELdbal6pMY28rwtUC
         AyyXzozlEGJv8GWWyn5Js+C3eR8cyJEo/FUjmQzx31V/2alUUQnHntQfn6QIOoiVX1F1
         2JJoxSDAeJZb59uytcqoColaxjCpHAuJXEZzkqDzmKISv/by0xmtG0GRggU+az3UYVd5
         4yLaN2ZS2gay7RnGkMDwQy3NjNCW2PAxhhpvPwgmBHWpc3L51lGIDKKKVpF5B8qfzrJX
         AClnBXwSFsSz79weHQ0szHp4DFKv+3uCLxMIExXkFz+ndLx0/rG8YCdsVoQSQ9sdxbM7
         cAcw==
X-Gm-Message-State: AOAM532ZMGmBs3hZF2U/fLmOUc9frY0yIudgjE7bR/w7Hje5ktv3bXjx
        p7o1YnM2ppc+A3yRpCEVa1zq0A==
X-Google-Smtp-Source: ABdhPJxIgIF6EZ1OZi/YZBMXsbuk9BT5FZqb5enbN/qDJXSDgc7aIaGWEWdDmWC73fybobAJGHJ9Dw==
X-Received: by 2002:a17:902:c78a:b029:109:edbb:44de with SMTP id w10-20020a170902c78ab0290109edbb44demr10408698pla.6.1623545263470;
        Sat, 12 Jun 2021 17:47:43 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id q18sm8900032pfj.5.2021.06.12.17.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 17:47:42 -0700 (PDT)
Subject: [PATCH] riscv: dts: fu740: fix cache-controller interrupts
Date:   Sat, 12 Jun 2021 17:43:57 -0700
Message-Id: <20210613004356.3503995-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc:     robh+dt@kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, greentime.hu@sifive.com,
        lorenzo.pieralisi@arm.com, yash.shah@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel-team@android.com,
        Palmer Dabbelt <palmerdabbelt@google.com>
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     david.abdurachmanov@sifive.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: David Abdurachmanov <david.abdurachmanov@sifive.com>

The order of interrupt numbers is incorrect.

The order for FU740 is: DirError, DataError, DataFail, DirFail

From SiFive FU740-C000 Manual:
19 - L2 Cache DirError
20 - L2 Cache DirFail
21 - L2 Cache DataError
22 - L2 Cache DataFail

Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
Olof pointed me to
https://raw.githubusercontent.com/sifive/meta-sifive/2021.03/recipes-kernel/linux/files/unmatched/0009-riscv-dts-fu740-fix-cache-controller-interrupts.patch

This appears necessary to make the FU740 function properly, but hasn't been
posted on the mailing lists.  Given the age I'm hoping it's just slipped
through the cracks somewhere, but I figured I'd send it out to give David a
chance to comment if there's a different plan.
---
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
index 8eef82e4199f..abbb960f90a0 100644
--- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
@@ -273,7 +273,7 @@ ccache: cache-controller@2010000 {
 			cache-size = <2097152>;
 			cache-unified;
 			interrupt-parent = <&plic0>;
-			interrupts = <19 20 21 22>;
+			interrupts = <19 21 22 20>;
 			reg = <0x0 0x2010000 0x0 0x1000>;
 		};
 		gpio: gpio@10060000 {
-- 
2.32.0.272.g935e593368-goog

