Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D50AECE34A
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 15:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728258AbfJGNVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 09:21:41 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:44099 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728164AbfJGNVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 09:21:40 -0400
Received: by mail-lf1-f65.google.com with SMTP id q12so4304200lfc.11
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 06:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8lFKpywdPpAsicgn0/2wcRw41YVk58KkpKaw3FhsBFg=;
        b=kzlZ1z4pnQ9ElMcAAvOAiALRNqpqyMMoDDh6kl2IFt1Qp45uDKh6abSvD0oEiGal+H
         MBnfKpBtjz50DsDYc3uh3L02w5MD77BD5eFT4gdVpfd+EZxBXRrsu1S1LvzkXl81Kr2y
         KukRAsEvizvL8jjIz9pWP5hthlbKDXXKauZE8JBU1Haz9GXujFr+Ngc1jXoHW42W8B0U
         szNRAvXXQ5BDUZpOIJBcvCdwyWIdAE4Ykfye3tfRzVbkk29N0OAqnXNWgI7XJsCxLwN4
         UOfRTbN2IZAuq7VWS5/64GvKfCfdvQC3cNTBDixQgKGMGjK0hOMxCRkD0PIRfMJ92Fcu
         2EXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8lFKpywdPpAsicgn0/2wcRw41YVk58KkpKaw3FhsBFg=;
        b=s/4mkKDoUx2ox9YAc9iyt3/aMVzELkyMdpeC2saZ+Mn9Vl02ZIa0hUb96EKHwi2KrI
         6i6UaMvSsRHevjh0Ke1Bkwh6s8y+1VjUILI0vm/8rRKKn4qo8gA8M9ZD1jINIAm02CVL
         CPzRas+eds0YzYYskrBpDPQEB8jC+1exw7tuwmd8k+ZD6FNQP0Yw+AcEZCqBCMUhXvl/
         RMscqUla4P9W01rwZ+ua26au014CcBSCt63sKcGAiHFBKpf1wVNRIhR/v1yRSNI7Zfru
         FJW+DX9wTc2JMs+Vi7IqO3Q6ooD9NRY/eOeRJQM8jxTZaheXTQSR7pNJ/+Px+dMRqy3D
         Trww==
X-Gm-Message-State: APjAAAVk+ee40kQhcpsX3I52V3NzdBu1LpNDuBYrsIalR4iTstBqd4zS
        V2vcFgnqLnVVyW8vCkgMRfQkg4qgCoJUDw==
X-Google-Smtp-Source: APXvYqzkmVDDzi+6y2wMEn6caUhn1m4J52DjMbKL7et0q2OMyTb5IcTV1Br0sOtRl74VRsS0ZZqJaA==
X-Received: by 2002:a19:f512:: with SMTP id j18mr17055451lfb.169.1570454498586;
        Mon, 07 Oct 2019 06:21:38 -0700 (PDT)
Received: from marek-VirtualBox.ccr.corp.intel.com ([78.133.233.210])
        by smtp.gmail.com with ESMTPSA id y3sm2894932lfh.97.2019.10.07.06.21.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 07 Oct 2019 06:21:38 -0700 (PDT)
From:   marek.bykowski@gmail.com
To:     robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
        pawel.moll@arm.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Marek Bykowski <marek.bykowski@gmail.com>
Subject: [PATCH 1/2] bus: arm-ccn: Enable stats for CCN-512 interconnect
Date:   Mon,  7 Oct 2019 15:21:14 +0200
Message-Id: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marek Bykowski <marek.bykowski@gmail.com>

Add compatible string for the ARM CCN-512 interconnect

Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
---
 drivers/perf/arm-ccn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index 7dd850e02f19..b6e00f35a448 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -1545,6 +1545,7 @@ static int arm_ccn_remove(struct platform_device *pdev)
 static const struct of_device_id arm_ccn_match[] = {
 	{ .compatible = "arm,ccn-502", },
 	{ .compatible = "arm,ccn-504", },
+	{ .compatible = "arm,ccn-512", },
 	{},
 };
 MODULE_DEVICE_TABLE(of, arm_ccn_match);
-- 
2.21.0.896.g6a6c0f1

