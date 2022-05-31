Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7311553908E
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344170AbiEaMTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245045AbiEaMTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:19:30 -0400
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 195FB813F7
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:19:28 -0700 (PDT)
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
        by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220531121925epoutp011558c6aa581b40c9b8faff23ed9e78cb~0L9d7SOol2409424094epoutp01v
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 12:19:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220531121925epoutp011558c6aa581b40c9b8faff23ed9e78cb~0L9d7SOol2409424094epoutp01v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1653999565;
        bh=D/ZcotWpVaQeVIfuUFsbhS1M/TS7osi7M9+ZOlhv51I=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=o991PgoXvy77Ova0c1FpfuAh3vm9LrCz1rYG4ZkVhSuCLZ/FXwIcgxqsUYdwfe3jE
         hk8EXj/de7mTgoZyNlaOOpExytlyx6xXJEhwsU/zm5ihHuQ0WpCm1xVNtktYyQAnXp
         j80ysK9gGnbFCpxkPPB4G06B6R8VtqrvddIolvMg=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
        epcas2p3.samsung.com (KnoxPortal) with ESMTP id
        20220531121924epcas2p37121c2681572d02a35f694abb767a258~0L9c_XR1Y2465724657epcas2p3O;
        Tue, 31 May 2022 12:19:24 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.68]) by
        epsnrtp2.localdomain (Postfix) with ESMTP id 4LCBCt5Gfvz4x9QB; Tue, 31 May
        2022 12:19:22 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
        epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
        DC.BA.09764.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
        20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c~0L9a7Ktex0343703437epcas2p4Z;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
        epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220531121922epsmtrp14a3a74453409922644034a75d7093cb3~0L9a6N0Y11304613046epsmtrp1D;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-af-629607ca95e0
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
        epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
        38.2B.08924.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
        epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
        20220531121922epsmtip1f9a5f5f8938c1e1d5c4fc22234ab3f54~0L9asTTRe1778017780epsmtip1w;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
From:   Chanho Park <chanho61.park@samsung.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH 3/4] arm64: dts: exynosautov9: add secondary ufs devices
Date:   Tue, 31 May 2022 21:19:12 +0900
Message-Id: <20220531121913.48722-4-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531121913.48722-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLJsWRmVeSWpSXmKPExsWy7bCmme4p9mlJBlM2aFk8mLeNzeLyfm2L
        +UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
        PDYvqffo27KK0eP4je1MHp83yQWwRWXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpa
        mCsp5CXmptoqufgE6Lpl5gAdpqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMC/Q
        K07MLS7NS9fLSy2xMjQwMDIFKkzIzpi8JbGgjb9i1/67jA2M3TxdjJwcEgImEkcnTmTrYuTi
        EBLYwShx42cvM0hCSOATo8TrOXIQic+MEv/3zWOF6Vg7/QgzRGIXo0TbrNVQ7R8ZJY5tmQtW
        xSagK7Hl+StGkISIQDuTxIl7c9lBHGaBCYwSFy/tYAKpEhbwkOjpeckCYrMIqEp0nD3MBmLz
        CthJfN38hhlin7zEhvkgR3FwcArYS2yZYQdRIihxcuYTsFZmoJLmrbPBTpIQaOWQ+LHiGQtI
        vYSAi8SU034QY4QlXh3fwg5hS0m87G+Dsoslls76xATR28AocXnbLzaIhLHErGftjCBzmAU0
        Jdbv0ocYqSxx5BbUWj6JjsN/2SHCvBIdbUIQjeoSB7ZPZ4GwZSW653yGBpyHROekGUyQsJrE
        KPFg73/WCYwKs5B8MwvJN7MQFi9gZF7FKJZaUJybnlpsVGAEj+Dk/NxNjOB0quW2g3HK2w96
        hxiZOBgPMUpwMCuJ8JbsmpokxJuSWFmVWpQfX1Sak1p8iNEUGNQTmaVEk/OBCT2vJN7QxNLA
        xMzM0NzI1MBcSZzXK2VDopBAemJJanZqakFqEUwfEwenVAMTT/+srnmHU99H7YpfmM4imf1+
        hd1lgeIy3agbO453v5WrubZ54pGZk5c8ZEu8afLkbMysqAkpK8J+t8d1Nf1erPHLTsieqzp6
        2bJPG/Z8teyZK39UNF/RY8JKl7Ql5k33D505PTHzqIzLPNnlMuGh+wrPuigzv/MyWeV8d8oa
        f6Gc2StUTQ+eirLikf17yfPuV+t9bSdb/C3rpz9Ojokx3WDrN1XM8CbLtuOLG6yT9gewuLfv
        6P/k+fVZ9vrjXy5PVuB/39j3ftLnsAiHpHj7e+pq+T67T/DZLvv/e3vBl/nfAibzz8q4rm06
        J9/4/HTXghVH1K8fXNLUumzR7q23TSy33+fwXdq7xvJksN//diWW4oxEQy3mouJEAJmygSYw
        BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBLMWRmVeSWpSXmKPExsWy7bCSnO4p9mlJBge3Cls8mLeNzeLyfm2L
        +UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
        PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBlTN6SWNDGX7Fr/13GBsZuni5G
        Tg4JAROJtdOPMHcxcnEICexglGheu5oRIiEr8ezdDnYIW1jifssRVoii94wS66c1gyXYBHQl
        tjx/xQiSEBHoZpKYs6mfCSTBLDCJUeLP3wgQW1jAQ6Kn5yULiM0ioCrRcfYwG4jNK2An8XXz
        G2aIDfISG+b3AtkcHJwC9hJbZtiBhIWASq5M7WaFKBeUODnzCQvEeHmJ5q2zmScwCsxCkpqF
        JLWAkWkVo2RqQXFuem6xYYFRXmq5XnFibnFpXrpecn7uJkZw4Gtp7WDcs+qD3iFGJg7GQ4wS
        HMxKIrwlu6YmCfGmJFZWpRblxxeV5qQWH2KU5mBREue90HUyXkggPbEkNTs1tSC1CCbLxMEp
        1cCku3GB3IF0e6tX8+fGC70v1doj/XfB1yuHL108vLS2Tnf2nC255VGTVrKIZU4uWJEZqJew
        XnrJj8lc88+Xv+y1E5ky8R1z/MMpIZlJq3hjlhbLK6lHlIguPBFkcnvON7PPmXo1YXbT92yb
        7Gmwc1r48g2lSVlVHSvPSVxeNsno+jHdEs1tchmrFrUKpW1NT71xz7vKatUuDp5OzU27Gl5u
        3mSxLCu42fHIhNK1qY5bQo1ETgQfrM37ILjQ0kEybHnLTgbnI0WPHliqnVMwPlmdcbJSZs2G
        T5wudySrgmd+uLCQ5XfAjGf3079oT77+d5Lj1vm7Si9WfNRwTlppfvtuw0KmFynNCzk2Hzup
        pSJUp8RSnJFoqMVcVJwIANuT+ITrAgAA
X-CMS-MailID: 20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c
References: <20220531121913.48722-1-chanho61.park@samsung.com>
        <CGME20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c@epcas2p4.samsung.com>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ufs_1_phy and ufs_1 for secondary ufs hci controller and phy
device.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index 3e23db8f09d9..c146271af477 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -380,6 +380,17 @@ ufs_0_phy: ufs0-phy@17e04000 {
 			status = "disabled";
 		};
 
+		ufs_1_phy: ufs0-phy@17f04000 {
+			compatible = "samsung,exynosautov9-ufs-phy";
+			reg = <0x17f04000 0xc00>;
+			reg-names = "phy-pma";
+			samsung,pmu-syscon = <&pmu_system_controller 0x72c>;
+			#phy-cells = <0>;
+			clocks = <&xtcxo>;
+			clock-names = "ref_clk";
+			status = "disabled";
+		};
+
 		ufs_0: ufs0@17e00000 {
 			compatible ="samsung,exynosautov9-ufs";
 
@@ -400,6 +411,27 @@ ufs_0: ufs0@17e00000 {
 			samsung,sysreg = <&syscon_fsys2 0x710>;
 			status = "disabled";
 		};
+
+		ufs_1: ufs0@17f00000 {
+			compatible ="samsung,exynosautov9-ufs";
+
+			reg = <0x17f00000 0x100>,  /* 0: HCI standard */
+				<0x17f01100 0x410>,  /* 1: Vendor-specific */
+				<0x17f80000 0x8000>,  /* 2: UNIPRO */
+				<0x17de0000 0x2200>;  /* 3: UFS protector */
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_ACLK>,
+				 <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_UNIPRO>;
+			clock-names = "core_clk", "sclk_unipro_main";
+			freq-table-hz = <0 0>, <0 0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&ufs_rst_n_1 &ufs_refclk_out_1>;
+			phys = <&ufs_1_phy>;
+			phy-names = "ufs-phy";
+			samsung,sysreg = <&syscon_fsys2 0x714>;
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.36.1

