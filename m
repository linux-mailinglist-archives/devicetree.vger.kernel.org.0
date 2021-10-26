Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BBA843B996
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 20:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236129AbhJZSbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 14:31:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238323AbhJZSav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 14:30:51 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BA61C061348
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 11:28:27 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4Hf0gs0zCvzQjx0;
        Tue, 26 Oct 2021 20:28:25 +0200 (CEST)
Authentication-Results: spamfilter04.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635272903;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ryQlrEDioZG4+xad6o3RcnbusIS4YhCJw9QSvKXY1oo=;
        b=peiAJo7Iw9hS0WazEEge66oCZtajiUtRLjzhpsayekSpUhmOYkcHI8gbzmgdQTvIO9sSdj
        mu94cfV/JFKHF5Oz2ipwYTqxPYGtGt+4T3mmvWKzhodVHMOavpvu6TUZwdpGi9AXJscTrt
        qc0OyizEbtEGaQwG1yZT+i3fhhe2YwH9ZiIU972e/YHUlaYQxknNd/Jpstw5LhzvQHS2rd
        o0b2AAOrsJHWDxABn8hPQnS+vte0FB25dbCsQISDs2Zv8i1GyFMYdcBAZypMCyIjIrCuDa
        tzuGhPL137eRTZzWwUKbkCUHNANtCuUBIs2JjoHmPlZJOgmDUkLzqHA8/hZbXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :message-id:date:date:subject:subject:from:from:received; s=
        mail20150812; t=1635272901; bh=5EgXE6bxTwConVMtzgdm1wPI+dWZkofST
        YmV1fWOES4=; b=a5Nk2zaulje6/P42RRGc8sMAf+LwFVUe+y5T5zAcUUjz1ScZx
        Klw2nqrCGwVfL1Xc7EFZwBsd0Y26+Hz1pMurmSeVlpvm9ZYGF3sjXYjTMiouy/Ao
        IT4l7HusaMpQfQx09dVNxIJnduR/T6LFFL6+jDlni+e3Wk00b6VTu1coOT+DDIXH
        4atrsxZcb2W2ivGZM5zZwozAm3sF+CDi9IUWpaRz1iWWY4UeZAPhT1UWRFujT02u
        iVo9qksk9VKc7Y3AGQXAkCY4gAF6AU+lKXCWnS3pPLe/POzEFITAQ8jLTFY41kvp
        KW16k/5KL6JtqWkapB9RzkWfOWOIL5pNAbPQg==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: dts: amlogic: meson-g12: Fix GPU operating point table node name
Date:   Tue, 26 Oct 2021 20:28:12 +0200
Message-Id: <20211026182813.900775-2-alexander.stein@mailbox.org>
In-Reply-To: <20211026182813.900775-1-alexander.stein@mailbox.org>
References: <20211026182813.900775-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B36971315
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Starting with commit 94274f20f6bf ("dt-bindings: opp: Convert to DT
schema") the opp node name has a mandatory pattern. This change
fixes the dtbs_check warning:
gpu-opp-table: $nodename:0: 'gpu-opp-table' does not match
'^opp-table(-[a-z0-9]+)?$'
Put the 'gpu' part at the end to match the pattern.

Fixes: 916a0edc43f0 ("arm64: dts: amlogic: meson-g12: add the Mali OPP table and use DVFS")
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Changes in v2:
* Separated from DT bindings patch in v1 (PATCH 1/4)
* Added Reviewed-by: Neil Armstrong tag

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index ff987e7ccff2..517519e6e87f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -58,7 +58,7 @@ efuse: efuse {
 		secure-monitor = <&sm>;
 	};
 
-	gpu_opp_table: gpu-opp-table {
+	gpu_opp_table: opp-table-gpu {
 		compatible = "operating-points-v2";
 
 		opp-124999998 {
-- 
2.33.1

