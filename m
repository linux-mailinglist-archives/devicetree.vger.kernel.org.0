Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECFE0539093
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:19:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234110AbiEaMTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344191AbiEaMTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:19:39 -0400
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 635ED8148A
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:19:31 -0700 (PDT)
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
        by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220531121926epoutp03d6be722760b576987c716d1d1ce438ee~0L9eluAj82860128601epoutp03e
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 12:19:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220531121926epoutp03d6be722760b576987c716d1d1ce438ee~0L9eluAj82860128601epoutp03e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1653999566;
        bh=NBWjWlY2TaMrSi0e6sb5p2UTiyWC5KJi9atCINvmi4Q=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Xsqefx917tHduohDy8NhQ6NCZu0eO7amlqLQTmg7emzOw6XgA8JtO6abmNuDQPl9t
         pMmSrKQEidAl+RLyuVfIMN9XB9pgogQEbW+ysuCFYV2H1S8o2zLt2sra7fOtWQA5ly
         ZstQ6nRMKPozBpqnlSDK7JsM3FOzx5R7sf/1PFko=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTP id
        20220531121925epcas2p48980f048e654b62a36012f27840e364f~0L9d4iHm10344803448epcas2p4Y;
        Tue, 31 May 2022 12:19:25 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.36.68]) by
        epsnrtp3.localdomain (Postfix) with ESMTP id 4LCBCv58XRz4x9Q9; Tue, 31 May
        2022 12:19:23 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
        epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
        AC.F2.10069.BC706926; Tue, 31 May 2022 21:19:23 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
        20220531121922epcas2p4753a8b704540799711f03d33346fc6ff~0L9bESv_k0344803448epcas2p4V;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
        epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220531121922epsmtrp1cc514865fc242a220218ff2b2af7c18e~0L9a-nyGw1304613046epsmtrp1E;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
X-AuditID: b6c32a45-a79ff70000002755-d9-629607cb6c70
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
        epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
        F3.E1.11276.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
        epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
        20220531121922epsmtip166a7906511b689906e0312af5f6b6cd0~0L9avjuzq1777617776epsmtip1N;
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
Subject: [PATCH 4/4] arm64: dts: exynosautov9-sadk: enable secondary ufs
 devices
Date:   Tue, 31 May 2022 21:19:13 +0900
Message-Id: <20220531121913.48722-5-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531121913.48722-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPJsWRmVeSWpSXmKPExsWy7bCmue5p9mlJBhuna1o8mLeNzeLyfm2L
        +UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
        PDYvqffo27KK0eP4je1MHp83yQWwRWXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpa
        mCsp5CXmptoqufgE6Lpl5gAdpqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMC/Q
        K07MLS7NS9fLSy2xMjQwMDIFKkzIztg/+zljwVbOistNf9gbGG+ydzFyckgImEgcPLSCqYuR
        i0NIYAejxIzzM5khnE+MEjfP32aFcL4xStzf94wNpqXtVjsLRGIvo0R/wxKolo+MEge+PgAb
        zCagK7Hl+StGkISIQDuTxIl7c9lBHGaBCYwSFy/tYAKpEhYIkvj79jUjiM0ioCqxd80XoFEc
        HLwCdhJvL3tCrJOX2DC/FyzMKWAvsWWGHUiYV0BQ4uTMJywgNjNQSfPW2WBHSAi0ckhsmfyH
        FaLXReLXvBOMELawxKvjW6C+lpJ42d8GZRdLLJ31iQmiuYFR4vK2X1B/GkvMetbOCLKYWUBT
        Yv0ufRBTQkBZ4sgtqL18Eh2H/7JDhHklOtqEIBrVJQ5sn84CYctKdM/5DHWNh8Sr+7egATeJ
        UWLznyksExgVZiF5ZxaSd2YhLF7AyLyKUSy1oDg3PbXYqMAQHsXJ+bmbGMEpVct1B+Pktx/0
        DjEycTAeYpTgYFYS4S3ZNTVJiDclsbIqtSg/vqg0J7X4EKMpMKgnMkuJJucDk3peSbyhiaWB
        iZmZobmRqYG5kjivV8qGRCGB9MSS1OzU1ILUIpg+Jg5OqQYmhelBriXCP5juGP6bFH3Sv9K0
        Z9Ur6+o10aVhczOvz2YPdWQPvGkWv0Dmh7VI8CIvPqE0ATuPpF77knn8F3fFc9q9+6EmO2X7
        i4UnL2W9+SnYmZmVn6vA5fogNk7i2sPCqfKlMhKll46tyezM5/WVaWj+cTZukbxG+wJvs57z
        IjJfpjmyrPn4eJ2z3UM/iYqzhZviH9ettPaSbl80KbL2tMnWnUHPw0/piUwWd8l879Sxd8fl
        tBNTxM7b28oc223MKvztM9vyb3+lt2bOO+U549bGmouXJ2Qb/9A+d+qnflOtvprWZDWnRG6G
        Ww57VO7+73L3fmTwT1LLtU1Mgn1Z+tPItKNcPOVBJ1rupCqxFGckGmoxFxUnAgCS5EFmMgQA
        AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsWy7bCSnO4p9mlJBmfvSVg8mLeNzeLyfm2L
        +UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
        PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBl7J/9nLFgK2fF5aY/7A2MN9m7
        GDk5JARMJNputbN0MXJxCAnsZpSYcuUxG0RCVuLZux1QRcIS91uOsILYQgLvGSXm7wGrYRPQ
        ldjy/BUjSLOIQDeTxJxN/UwgCWaBSYwSf/5GgNjCAgESLR1XWEBsFgFVib1rvjB3MXJw8ArY
        Sby97AkxX15iw/xesDCngL3Elhl2EKvsJK5M7QZbyysgKHFy5hMWiOnyEs1bZzNPYBSYhSQ1
        C0lqASPTKkbJ1ILi3PTcYsMCw7zUcr3ixNzi0rx0veT83E2M4LDX0tzBuH3VB71DjEwcjIcY
        JTiYlUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6HrZLyQQHpiSWp2ampBahFMlomD
        U6qBiXFx/zxpy3t7Cwu40pZHfbzbwrRJuHORT/iG52ypJ3RrN8eV3bxz7kATw7Sgtd8D6zc4
        Gj6993fhhufGRsWrvbnOzksR2G8483vOOUMhQbeQuyaf9VsUX7UFBGTJl4YwJNvVfi/dpyjd
        9/qShFHUx0uJ9/K8bq6p3jb18ry8Od+MN60075f5wF71fepR7d6HTL/OFHEL7pg+f8N3JhWu
        rfef/DONVjoqvN6AbZlPIt+OTbOWlR1YcVnoOmuwD980JjXJMvYZYXcems32PK8SW9PGcvNW
        79tDPl6HvR/lv3v4/dqU6f+jDQwZ/pnqxopEmh9XrNz08IGlYY6CwWOLjz67blZzB3z5Ezz1
        1WJ2TSWW4oxEQy3mouJEACQUKdfqAgAA
X-CMS-MailID: 20220531121922epcas2p4753a8b704540799711f03d33346fc6ff
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p4753a8b704540799711f03d33346fc6ff
References: <20220531121913.48722-1-chanho61.park@samsung.com>
        <CGME20220531121922epcas2p4753a8b704540799711f03d33346fc6ff@epcas2p4.samsung.com>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable ufs_1_phy and ufs_1 devices with ufs_1_fixed_vcc_reg regulator.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../boot/dts/exynos/exynosautov9-sadk.dts      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
index 17e568853eb6..2b30a7458297 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
+++ b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
@@ -39,6 +39,14 @@ ufs_0_fixed_vcc_reg: regulator-0 {
 		regulator-boot-on;
 		enable-active-high;
 	};
+
+	ufs_1_fixed_vcc_reg: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpg2 2 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &serial_0 {
@@ -49,12 +57,22 @@ &ufs_0_phy {
 	status = "okay";
 };
 
+&ufs_1_phy {
+	status = "okay";
+};
+
 &ufs_0 {
 	status = "okay";
 	vcc-supply = <&ufs_0_fixed_vcc_reg>;
 	vcc-fixed-regulator;
 };
 
+&ufs_1 {
+	status = "okay";
+	vcc-supply = <&ufs_1_fixed_vcc_reg>;
+	vcc-fixed-regulator;
+};
+
 &usi_0 {
 	status = "okay";
 };
-- 
2.36.1

