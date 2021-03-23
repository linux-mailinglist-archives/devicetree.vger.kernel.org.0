Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48FA03466B4
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 18:50:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231151AbhCWRti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 13:49:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:39548 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230378AbhCWRtb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Mar 2021 13:49:31 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C15761585;
        Tue, 23 Mar 2021 17:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1616521770;
        bh=6P8vaM2XQAA2KpjFumyTdeJK1VkRE9N2BbXvWNJWA94=;
        h=From:To:Cc:Subject:Date:From;
        b=vQwSgppdFsX513jXcg/bITVlTYmaYBPLw7WGYDoRpbRU2r5m+l184pPM+Ub04MeQO
         NSGDGAdEY1eI3M4B6JNHy/SHFmgECS5EVbl59lYtnPwivSjHBn2Vgarg43q/k41kYy
         cOlaSuKHVG7noe6e8+qR2UinFIxrbjPecDSdyr70gv801i4N2t6H2S2K3UV2/L9VqF
         zoJXkyMLmgDc4J6XcpsxKozyZ1zRyl9zBNtUhfs9uJOGEL1kCS1hvVMT0G1G/qC1nm
         pXUsYPBnUzDabe2tFyWvnlGCYsaNQgvTdt0De14Hpo40jJZnouBP6+VrWT/qMZhc36
         mrJuCgZZQSBHQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org
Subject: [PATCH] arm64: dts: intel: adjust qpsi read-delay property
Date:   Tue, 23 Mar 2021 12:49:26 -0500
Message-Id: <20210323174926.2820920-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "cnds,read-delay" value needs to be 2 for the Agilex devkit.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index f14a89ca8784..0f7a0ba344be 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -113,7 +113,7 @@ flash@0 {
 		m25p,fast-read;
 		cdns,page-size = <256>;
 		cdns,block-size = <16>;
-		cdns,read-delay = <1>;
+		cdns,read-delay = <2>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
 		cdns,tchsh-ns = <4>;
-- 
2.25.1

