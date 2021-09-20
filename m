Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FDA541153A
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239064AbhITNFz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:05:55 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:37648
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239072AbhITNFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 09:05:45 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CF3FA40265
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 13:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632143057;
        bh=KyQicLYMcvTUsuouhObsDgwfTY/CvChfVjl2/JZq64I=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=hDvX46djM7ZMcjesVpGssaknlbsN/pSpc9/S3qva4wVbVWgkZob5bGjGMAnfTDwE0
         1Q7YYQol2vEsvBlgUtvTFfSk8VxqYAMsFeWEwQ6fx1mdBXbj2C9PMzCmnNA6yf9CI5
         fuIgzME6zhZe56eEY64iVZRkTQT9HabhCuNeQF8h61TcejRqMfnSfxbbwK49OaPewy
         nUAD4gO29nYIYrdRiVs9QOVoCIvJGK8kDtdn4GitNp1lyN//QuYPBHkCz/PInY2USd
         97K2PL+qLuiwHjniH/c3dkkqhiR7IB0AdZKRSn0g4Yf6ASnv13j6scpjfkMHcQaUfs
         xnkKPNu6FklGA==
Received: by mail-wr1-f72.google.com with SMTP id r7-20020a5d6947000000b0015e0f68a63bso6032330wrw.22
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KyQicLYMcvTUsuouhObsDgwfTY/CvChfVjl2/JZq64I=;
        b=av/fDE2HJv8ysA83YvwLhhSlDekO1upzTkKy3+zUVbiHyIE2/Hat9URET1hlLbIRyz
         cjdYCo9h0E41Pm139uZdiipbn1wMHFLplRBam4+AkNJlr1OAJkNu0gEOFt2Yp/jnG0QC
         VVI7M93njbywzbLsom74te4mtHb10x0dHjy2DEuIiHw10YJX7DLmKF4VpFHQGocN4B6g
         /BaklG3228RdS6K5njuZ+sFXoBmtNTNGbVPv5ZxsIddpFe5wzNWPzlkpu51M4lXxNg23
         lzA5uPB0BCP7ZGxNiTpqvHC3ORG3Sd0FWq5R4cuQV8GcA3Va/jWp92AeG8SZbasE10aC
         yzgA==
X-Gm-Message-State: AOAM530mcql+NKnGtuY69997RoegRt/n5+32UHDo+6uqCLbvFU1vEBvs
        3o4n1WM0Zx7FPXd+i+8Ut//IiLmRu5bC2RY5qN1GLSk+M0jdcPkA9xgS6byKctL/UyxmLBJUZ1b
        PYvNbGxfjpfAZeOtuXQDH/xhFmb5J+477ca4P/yg=
X-Received: by 2002:a1c:28b:: with SMTP id 133mr24133076wmc.14.1632143057510;
        Mon, 20 Sep 2021 06:04:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJypg5QGxpLH5N2pakMgq9jvpjRG8kkva5Tcgev2sXz+0gx7PhG+53e0/fOPWDZYp26XzyqyLA==
X-Received: by 2002:a1c:28b:: with SMTP id 133mr24133048wmc.14.1632143057361;
        Mon, 20 Sep 2021 06:04:17 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id 25sm22965108wmo.9.2021.09.20.06.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 06:04:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v2 5/5] riscv: dts: sifive: add missing compatible for plic
Date:   Mon, 20 Sep 2021 15:04:12 +0200
Message-Id: <20210920130412.145231-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add proper compatible for Platform-Level Interrupt Controller to silence
dtbs_check warnings:

  interrupt-controller@c000000: compatible: ['sifive,plic-1.0.0'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. None
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 7db861053483..0655b5c4201d 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -141,7 +141,7 @@ soc {
 		ranges;
 		plic0: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
-			compatible = "sifive,plic-1.0.0";
+			compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
 			riscv,ndev = <53>;
 			interrupt-controller;
-- 
2.30.2

