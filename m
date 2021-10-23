Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72704438590
	for <lists+devicetree@lfdr.de>; Sat, 23 Oct 2021 23:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbhJWVvm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Oct 2021 17:51:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbhJWVvl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Oct 2021 17:51:41 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20468C061714
        for <devicetree@vger.kernel.org>; Sat, 23 Oct 2021 14:49:22 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4HcFH448WtzQjx0;
        Sat, 23 Oct 2021 23:49:20 +0200 (CEST)
Authentication-Results: spamfilter04.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635025758;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=pRaUc/UwAjrxbie4yIFG+zP8rtWkGQNQmAlYTtHJbRA=;
        b=JxbdWPffchmgVLVz5pNwlv2DeS9RyWMRTzunEHDOKrI3mr8RbKY/f6dLYfm6zU+/pXt59y
        sViDjaLOddoIoYQ3ur7BSS7BNC3eJ6wVWas+ViX5okgFEMeh67mI2SEcvYKqwJOvd5xXMU
        StG+uAR80OWZbUzkn65J8HdO3c1814D5NDzZJpZo9vgFlE+DgIC2t1KuboKRSsQpFbgLFu
        ieXCgbzxPixAiB0M6x1/cZTCIIT9T7jOp1nM7RMp2azkGIPIaLPwqe5HNqruvWc1Z2/Jux
        dfvRANWJ9UyXzJNNsR7OuUQBFeEVjWsk1WpMw+GsECmyiBN+Lq8p3Emgj7DAsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :message-id:date:date:subject:subject:from:from:received; s=
        mail20150812; t=1635025757; bh=+owcMitknp0Jyss49meAllAEWlZi6bdTi
        WqmNmF6mDI=; b=PE7km41oOJIBD803AJflXO5VSu8MJCxfkgEB3MBRLbvyiy0ad
        LvoKcCWi1QU/2c6Uz8uPrwrsLaL+93sa63kcWbmumxaxnBMWTueM3gnRaxU+eTWE
        72K/VDaNHwG5zAGoz9oBAUyJJN6CRTpNzQ4euKuxhKJBMH3C1mqh7OIDMXqouhvp
        fQ2Fg1OqM1lv0a3rRALrcVo2Uug44e0FuqCfKwnoJ7L+YDiNryow4BZLR8d7r0h5
        LY9wPZ3jkvgppfIfdc+ZchYjS3yz7mOM7JV2vIHbP0ZKGWgfyaICaGSfUyjeF2mv
        pMynp4EQXoen5LDwgnrqaF1NYl/eOSFLTr9rA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: amlogic: meson-g12: Fix GPU operating point table node name
Date:   Sat, 23 Oct 2021 23:48:55 +0200
Message-Id: <20211023214856.30097-3-alexander.stein@mailbox.org>
In-Reply-To: <20211023214856.30097-1-alexander.stein@mailbox.org>
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D57831313
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
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Same as with patch 2/4 about the 'Fixes' tag: At the time when
gpu-opp-table was added there was no schema present. So there was no bug at
the time of writing. I'm ok either way.

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

