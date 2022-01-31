Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E19FC4A4BE2
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 17:23:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380302AbiAaQXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 11:23:43 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:40058 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359795AbiAaQXl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 11:23:41 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 47FFA614AA
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:23:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A586C340E8;
        Mon, 31 Jan 2022 16:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643646220;
        bh=WOfKALhDxeOhQuy/6mtFhAYmXwnPQ5hzGpzVg8gP/+s=;
        h=From:To:Cc:Subject:Date:From;
        b=GQhgQkKqQqJFBdaTG4j3qgyiOFQ3IfCZoEXc+8LHObZYD2FIKq0eANeBW5uHcmipH
         YbvowvjnFfR1j2wqg2TbF86jmKN2XGqqyQm7nluO5KAc1pWZfa7S/09h+6BJuWMw0N
         89W+5rVF2mnrSjuXbYCen5cOudRuZQQcfxpvTpx7pGqgaoZl10mKMb0yb/4zv+8BrC
         njn2tMq5kYVrKUa78U4T9EETVl+4yTVIJDYUsuNK3gJjQPx8E4gn5DVr41cA1SJ00P
         7Ta5/CYHVFsPXCJqYNAUiVQivu7ankdK89JEhLYJJrg7Io5ElHmAF3qO6rClm8912e
         D8Na4RDTfBcOQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        kernel test robot <lkp@intel.com>
Subject: [PATCH] ARM: dts: socfpga: arria10: align regulator node with dtschema
Date:   Mon, 31 Jan 2022 10:23:22 -0600
Message-Id: <20220131162322.2226781-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

'3-3-v-regulator' does not match any of the regexes: '.*-names$'

Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria5_socdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
index 1b02d46496a8..617fec5e2c57 100644
--- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
@@ -50,7 +50,7 @@ hps3 {
 		};
 	};
 
-	regulator_3_3v: 3-3-v-regulator {
+	regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3.3V";
 		regulator-min-microvolt = <3300000>;
-- 
2.25.1

