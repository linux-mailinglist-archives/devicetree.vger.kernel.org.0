Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AD793A6A18
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233422AbhFNP2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233440AbhFNP2S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:18 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D5AC061283
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:14 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id f5so42050565eds.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MQ8cD05aqwUBt2XWbduZ8NI7T5S+zf8eT8UvSY/iTK8=;
        b=j7kffxxWVPtTTwZLDnoDKQCLtDOlxCAGa+sTtZjecMe7aV65x8nOLiM5e0mOKH1Pa/
         FQAUfHOYo5cC6Jje+nBxR7Gkux18+QpM9SLJTlQ3KjRftFQVRQIzVnk+YDv427oaELMi
         5h74tRAg2GR6NvnX16L6g2i6ALh2Arym1bbw8h17lrx4ibdC4ZzANpkk0gp2dzyqvyPP
         oTwOvBt9RfEyNV7hBODy1Z686WC/2k8X7bUIVR1D+byfu5dhyKYSP+KNHf9pzU5fT8sW
         vgHP+FHroMc1metN17DROnbs7hH3qtdSDr+vU28pMaS287r1x+KkJlYjKK+rgBzT6k1W
         MvDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=MQ8cD05aqwUBt2XWbduZ8NI7T5S+zf8eT8UvSY/iTK8=;
        b=IVDBJkvkqHL0ObxfUuxFkn7HkbEVcgAMj1zfcFKJv+FoIDUrO2xu7bPm1X+h7xYBnh
         LTOAyhFUoXieQYwFKQEDtrmdRMkH9gzbeZaT4iUyYeNFtxu+cDAfSLSwo0XeVmkLN9IE
         NAZZvaQjgdG9bFRd6a7xt10k7fL9cceDgpnr/GpR39DAhCSDuLQxCv8C1DTBLSIggYVm
         S3YLsMFUxSluVfrlcWwPO2HJ72SxJuTwdAlVoJpObuotwkgxFYz+8cXLVgjymYAF7fxq
         ggBrivzp4px4A0vzVog7Yeu6RBRp50hzLi8WXdrgR4d3quZc0X25bcCcW7c4bljpyiwt
         /mkA==
X-Gm-Message-State: AOAM530sPn8mhXQqEElpzX6YnUL0rYY+O2MGxDfPfTFt8WhKcQ9kRiR2
        CXoXQzT6T5vYY2g8l6C4JfzGhA==
X-Google-Smtp-Source: ABdhPJwrYcIgprwrCk4lIwC5KGoIatqItxPYHLqm9bxqFUoUQLwq/GijJ2tjARUUSFe8Kv82AZHJGw==
X-Received: by 2002:a05:6402:4301:: with SMTP id m1mr17884454edc.303.1623684373207;
        Mon, 14 Jun 2021 08:26:13 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id g11sm9283931eds.24.2021.06.14.08.26.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:12 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 20/33] arm64: zynqmp: Remove can aliases from zc1751
Date:   Mon, 14 Jun 2021 17:25:28 +0200
Message-Id: <475a60fc4d01ba9c61579801fb84620b6905dcad.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Networking subsystem is not using aliases that's why remove them for can
devices. There is also no any other Xilinx ZynqMP DT file with them.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index 4b4c19034fe1..cd61550c52e5 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -19,8 +19,6 @@ / {
 	compatible = "xlnx,zynqmp-zc1751", "xlnx,zynqmp";
 
 	aliases {
-		can0 = &can0;
-		can1 = &can1;
 		ethernet0 = &gem2;
 		i2c0 = &i2c0;
 		rtc0 = &rtc;
-- 
2.32.0

