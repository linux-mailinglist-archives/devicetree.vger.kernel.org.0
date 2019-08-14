Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF628D609
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728164AbfHNOaH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:30:07 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35802 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728232AbfHNO3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:35 -0400
Received: by mail-wr1-f67.google.com with SMTP id k2so25458474wrq.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pwx9hW1o2Gq2PergB5v8yAwMnz0OCKYudbljjiRvXYk=;
        b=Eb7EDaqtXhqzBiYSbdt5nj7cUJOesBGZQXjQGx8P5z8JqtF3ycxq2N+m6+TbPXN7RY
         Fng0SarDUOEMF1v7x00LxuTin02vm50+HH0qQ67TsSGiIxIG1Dk2AJIVWDz7aFG4XmgN
         horDmB4Ho4CRvX6FQGvnLZ2D2jm0i+BNfOSGRs2M6UkLZUyaiPmzVQaNQ0ezskEWjNbE
         rk0zBi5o3XmLPtWH6R06MFqjvCvlXV8yFY+g5HN7pGBi+dTSaCR+7qZDhoNpaRR6zEcA
         vs+Ib0qH8ApzA+VamZxKkLT6qh0yr03mhaVTq8EKLaKTN0X9wz13zPbobRvSF0yvN0Kb
         1rpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pwx9hW1o2Gq2PergB5v8yAwMnz0OCKYudbljjiRvXYk=;
        b=nBSqmIGu8b6q8UrqWNK6VY2dUhOWMbQaDONisQDR1P9NA7L9aO3vPJIiV2539kLqff
         tvYd0NQKGRRoy3oeiwjrnHXwfFvP599L+Gxx7alC/5hNM7J6RlHpht4mN0xEqV/gwSHc
         vt8p1ixDmq623+yPSrMNNqzmlw+BD+TgU/owJniClIpDFGTps9wmEc69Rkz3jyfWZpiF
         MnvcYZQxSPI+dU8Fdj2Vo5qRJaG4DcBR4ZadFU2EsG5S/CrxfN383O9WuszdU/khQSdS
         1Rs3ij+ymViZrVDk3fHRA3NIPyr0uCz30iP6vx0vjkk8RfcdeBNvxfh+Tw1Kp1ltfs7W
         h9WQ==
X-Gm-Message-State: APjAAAVlT+YIzOHylXvu5XdHD5U6o1Osi5g6V0f0Sf/d17dhrTdjH3ZX
        GX/gJ7pzWveuwQa7WdNjPzepDA==
X-Google-Smtp-Source: APXvYqwFlZqG2iV08FiE4OCohyI3fIgKZcqD8f1isbMX17aYIR7vsElvrXVqtTUDDib5F7ms/LyrVg==
X-Received: by 2002:a5d:4b83:: with SMTP id b3mr48215449wrt.104.1565792973471;
        Wed, 14 Aug 2019 07:29:33 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:32 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 10/14] arm64: dts: meson-g12a: fix reset controller compatible
Date:   Wed, 14 Aug 2019 16:29:14 +0200
Message-Id: <20190814142918.11636-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-g12a-u200.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
meson-g12a-sei510.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 465106d37289..74c587411306 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -2215,8 +2215,7 @@
 			ranges = <0x0 0x0 0x0 0xffd00000 0x0 0x100000>;
 
 			reset: reset-controller@1004 {
-				compatible = "amlogic,meson-g12a-reset",
-					     "amlogic,meson-axg-reset";
+				compatible = "amlogic,meson-axg-reset";
 				reg = <0x0 0x1004 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0

