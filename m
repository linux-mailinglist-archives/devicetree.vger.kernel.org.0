Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7298A3A1348
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239452AbhFILsx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:53 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:36471 "EHLO
        mail-wm1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239391AbhFILsd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:33 -0400
Received: by mail-wm1-f50.google.com with SMTP id h11-20020a05600c350bb02901b59c28e8b4so3593156wmq.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IyfmD8DZDuvMGX8TMgLHBLVuXjpa67aulA9PCio4mUQ=;
        b=GQUZrQk2siL3MYsb3zbntAIwvSNm4XXGm3WUDGOuR8XR1JrQSF7+W2WYm7wMNj3b4N
         w0t4vk8jdCKVZHfwqvallHEnhNW3PmVUVsGK/XnqOOr2xZP5/xpaaGQEg8hKQnP//hx/
         YAi2GU2LKtQVmJ42fRZ8IuxljKlOKreT4yL2iyFmYfXunWats9CIAZnbkDrBrSIa879W
         vKH2g+pxd7Tyawqnuf37P+rnbv8kdzRLAhzbWmYnz9J2wnHB7hgVv5EWGlCeRcpw+X1R
         2gTsab24LQrPhTXE+GvKFlY+BR7za7EaJyq3oVa/UYdbKft7xZjgyJdfSiYVnW4IHkEl
         GshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=IyfmD8DZDuvMGX8TMgLHBLVuXjpa67aulA9PCio4mUQ=;
        b=ejxXoi2jofs5zlUv36mIBpKT/Zl+GvvL6NbDCnYsXtJw2V/TIIjaMZFqoosKa94yHA
         pMnvhsjb+hbFMhi/iWvYznKNg2K8LFtbV0t/4Dc//QbQ5e3KVVWoGRhS5PeUxIkQQ0Hg
         ryNtlKfQyN3GXBHIMmQuGR3hhhG/CyHmMm7Pk873WiLgVHDJprZGhxBOSOx5OQN2W34H
         iiPF9+HbiH8AWXS7ZSzCs+e2QNoE13ix6xPtOHEnvosoD5/0uF+H5dc6+QzfvjYEe1+F
         D+0XWt+c1j7St1HaO1tQABavbL2t7Ci0DUNISm6bj0DE7klqSip9VEiakxfceUkCVHgv
         CDiA==
X-Gm-Message-State: AOAM533LPgf/JdRDwdfzaWqE2XC/pyZsKPlDttU0c6nIzEtH1sRYyL/v
        OeOFaWYo8AnSmUJ/3DY0ypg/eA==
X-Google-Smtp-Source: ABdhPJzYQshAC9lzL2og3uBVwNPXkYkx8vduU1+Nsvitalj3WqDePCR14cefVuls41RnV+uEnUInOw==
X-Received: by 2002:a1c:a382:: with SMTP id m124mr26635972wme.40.1623239138380;
        Wed, 09 Jun 2021 04:45:38 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id z5sm15172660wrv.67.2021.06.09.04.45.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:38 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/31] arm64: zynqmp: Disable WP on zcu111
Date:   Wed,  9 Jun 2021 13:44:46 +0200
Message-Id: <88e41d4f5c6a7353762bd5ad38b92ce352c3a123.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On this board there is SD slot without WP connected.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 0bf29ff9c714..e646246a3b14 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -796,6 +796,7 @@ &sdhci1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
 	no-1-8-v;
+	disable-wp;
 	xlnx,mio-bank = <1>;
 };
 
-- 
2.31.1

