Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE7C0646060
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 18:37:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbiLGRhw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 12:37:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbiLGRhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 12:37:47 -0500
Received: from gateway31.websitewelcome.com (gateway31.websitewelcome.com [192.185.144.91])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41412FCF4
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 09:37:41 -0800 (PST)
Received: from atl1wswcm03.websitewelcome.com (unknown [50.6.129.164])
        by atl3wswob02.websitewelcome.com (Postfix) with ESMTP id 1F1251657E
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 17:37:41 +0000 (UTC)
Received: from md-in-79.webhostbox.net ([43.225.55.182])
        by cmsmtp with ESMTP
        id 2yMUp9QyZHV9c2yMWpaNXA; Wed, 07 Dec 2022 17:37:41 +0000
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
        ; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=efIW6hYLqncAPSwH8N/keo9ht9eCT94RVCVQpGph/EU=; b=IlO2ZhGRDhAUWELkp0cP9iD2dg
        z4hkWig6r8qCAuIaS2QPqqQObUPCCp3rRq3RfUnajSp3Is8o3AlAbY9QDKPS8405K/IrDzlxMb90l
        7EgUDuMYWOJ76rvYl0NVsyy1KkoRbI3MPXRnCy+Hp8Tqq/zLaroejwDRSuK/LWVq45mJ4GfEklE6A
        z4f4D/GLfIJ3QQIVf+42IGw4v7rqUMmLKe2Wg5Tzmp5te2EfVeAo0Az4/1435gWQ3YgDJd+blhl+2
        ffW58qs83zD6tJ/8bcRO4Z4qq502ghyP8/xu7P226Gs8ZePG7vh3DpF08jaohyN4tIlSQ4PDYFcrh
        gfUuKU2Q==;
Received: from [106.222.117.249] (port=8172 helo=discovery..)
        by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.95)
        (envelope-from <saravanan@linumiz.com>)
        id 1p2yMT-0025qb-AU;
        Wed, 07 Dec 2022 17:37:37 +0000
From:   Saravanan Sekar <saravanan@linumiz.com>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, marten.lindahl@axis.com
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Saravanan Sekar <saravanan@linumiz.com>
Subject: [PATCH v3 4/4] MAINTAINERS: Update the entry for MPQ7932 PMIC driver
Date:   Wed,  7 Dec 2022 18:37:16 +0100
Message-Id: <20221207173716.123223-5-saravanan@linumiz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221207173716.123223-1-saravanan@linumiz.com>
References: <20221207173716.123223-1-saravanan@linumiz.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 106.222.117.249
X-Source-L: No
X-Exim-ID: 1p2yMT-0025qb-AU
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (discovery..) [106.222.117.249]:8172
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 34
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPsSVrDh81i27x4UMtLHpatvWOFg3bigD2gOfo2DZOGifAkE/9LxxuYGQgrV+L2m/+fqHomyzrfBuZjs08icN5NKMXgOAjnMe4i1fYNPwqLAngLD7Y2U
 RKcApq5pxVbku9EAWsfqHulgkPTNk7nvmNmaG3rlppvo1CS9g19KrR/mWsgFpbhdAbUoa2p3sRo/OFUJOiFSIjK2IAQEh6YqmVM=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the MAINTAINERS file to include the path for the MPQ7932

Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1daadaa4d48b..469ff520c479 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13932,6 +13932,7 @@ M:	Saravanan Sekar <sravanhome@gmail.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/mfd/mps,mp2629.yaml
 F:	Documentation/devicetree/bindings/regulator/mps,mp*.yaml
+F:	drivers/hwmon/pmbus/mpq7932.c
 F:	drivers/iio/adc/mp2629_adc.c
 F:	drivers/mfd/mp2629.c
 F:	drivers/power/supply/mp2629_charger.c
-- 
2.34.1

