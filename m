Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6C7B30D548
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 09:34:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232531AbhBCIeB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 03:34:01 -0500
Received: from mail-am6eur05on2093.outbound.protection.outlook.com ([40.107.22.93]:45441
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232427AbhBCIeB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Feb 2021 03:34:01 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioeB6Z98SZ4sE0+mFl2CSJMipH+NkU8m3xO/PngH3ImB1wIaXLaYDf6i4aKkx80/a2uSYlMDo6U5c9O+6K69EZNfRwiJ5OD1CvGfrQBIxe5W12CTlqb2Bf30jSF5G+5VwUddyVIoObbi0Kui2assq1dzWFDvyOfVRa4A/ccYp4Y+NalNa1SAQ+UhHJ1r2X3CB4gHgW87uM7SdLAlHYvihE6dht7SaePyvR9WoAall4LQfeiY503OS9ck10NLu/y36h6YDiXVLtYm5YCUaNnIQGND+jO9ZktyAkbRhlNP+bWVCYdjXE1jdmQMxuldzxACG8haUal28LHasjIo49ySzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIQ5aVc8j6wPONhR97VooRWUuupFHz58Mznm6W7U2P0=;
 b=Op/4FglAGIIciMPEJjybsrRsvGKiBJA/YUtImeC/6jbdsGGbwh2a5OYRZ1c1u9TVrdKzXwVqUxWHY2zgA2dtzOirephoiZ7LZlC/c6OoEkts+XoKFu57eLtae4TV51+HNXKeTlb/jbDOv24RUqxWAY9R8iDCbC6CURNTFZKEBxrCFwyp59ciiuYXFiYO/ih3gr7CFCEtBrLKHOYzWdlF2e9Bfx/rdRv0YcfiKYiAfqHOtOgovWKK8FW95y0mLQSaFpi2cvTRduMEkbKfwTOcoRkhaUxE/BAJ3ncEOn2UKyCRwRdHkREmMuxgNEXMvwdbGqUT+sfq2gpd3fL1qiVF1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 62.153.209.162) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=schleissheimer.de; dmarc=none action=none
 header.from=schleissheimer.de; dkim=fail (no key for signature)
 header.d=schleissheimer.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=schleissheimer.onmicrosoft.com; s=selector1-schleissheimer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIQ5aVc8j6wPONhR97VooRWUuupFHz58Mznm6W7U2P0=;
 b=CXax+oitaiFPJx0YyTVzghFpUHrBAYrR4hDy8AEyODEj0rupePp3P5NJo34p/xnQpZWIbcvJoV+SZH9wc2d0EYs0WpjINS8seQeyQHi/snnGMlazRkjqZdLdtAfO7fJVR6W0thZoy7yQd4DEom9sJ5/OAuSvdGm0K8eZGND3ZQo=
Received: from DBBPR09CA0017.eurprd09.prod.outlook.com (2603:10a6:10:c0::29)
 by DB9P190MB1356.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:22a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Wed, 3 Feb
 2021 08:33:12 +0000
Received: from DB3EUR04FT016.eop-eur04.prod.protection.outlook.com
 (2603:10a6:10:c0:cafe::b2) by DBBPR09CA0017.outlook.office365.com
 (2603:10a6:10:c0::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend
 Transport; Wed, 3 Feb 2021 08:33:12 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 62.153.209.162)
 smtp.mailfrom=schleissheimer.de; vger.kernel.org; dkim=fail (no key for
 signature) header.d=schleissheimer.de;vger.kernel.org; dmarc=none action=none
 header.from=schleissheimer.de;
Received-SPF: Fail (protection.outlook.com: domain of schleissheimer.de does
 not designate 62.153.209.162 as permitted sender)
 receiver=protection.outlook.com; client-ip=62.153.209.162;
 helo=mail.schleissheimer.de;
Received: from mail.schleissheimer.de (62.153.209.162) by
 DB3EUR04FT016.mail.protection.outlook.com (10.152.25.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11 via Frontend Transport; Wed, 3 Feb 2021 08:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=schleissheimer.de; s=dkim1;
        h=Message-Id:Date:Subject:Cc:To:From; bh=fIQ5aVc8j6wPONhR97VooRWUuupFHz58Mznm6W7U2P0=;
        b=AQnUeJvp/h/4GaDUE/R67rWnf/1ghIDQ3ZfkaIZBYaZI3o3DKoYS5797Jm3YAFDKkmjNP/nWmEe3d8iWVEHNZe1OJhDALjvmmlb045z24ztNytscqxPblRD9W0bFlrTLlJnzAORdhewISunHNH3WvGZ0osjrySd5Hl46HZIsNmg=;
Received: from [192.168.10.165] (port=41936 helo=contiredmine.schleissheimer.de)
        by mail.schleissheimer.de with esmtp (Exim 4.82_1-5b7a7c0-XX)
        (envelope-from <schuchmann@schleissheimer.de>)
        id 1l7Db0-0001iI-2v; Wed, 03 Feb 2021 09:33:06 +0100
X-CTCH-RefID: str=0001.0A782F21.601A5FC2.00F3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
From:   Sven Schuchmann <schuchmann@schleissheimer.de>
To:     schuchmann@schleissheimer.de
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] leds: lp50xx: remove unused regulator
Date:   Wed,  3 Feb 2021 08:33:05 +0000
Message-Id: <20210203083305.2434-1-schuchmann@schleissheimer.de>
X-Mailer: git-send-email 2.17.1
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: edeb942f-af85-4d65-ddd6-08d8c81e5781
X-MS-TrafficTypeDiagnostic: DB9P190MB1356:
X-Microsoft-Antispam-PRVS: <DB9P190MB135616909AA378FB5026F908D8B49@DB9P190MB1356.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +u8RctszHKYbvun+WYX7nN/p03xr816hmpiNwFXizouMfwpxHBWprTr+QoA8FtSNX+dRWsPOZT6PPXYTIryClR3QxMP8dyQ1+2YzyylxIu9WQfrEJjKV+i1UcjW4kcH5NSpLntbt+rVJheJ2VAZfNza8ipJ1qCphjGMdxXa4fuyZVjG+2oKd6j9aZ6bRtgFRfEV7DATb5gINaMjqaQTZ53aYHACOskW18Q3IS3HDDhVbMzF5fJ++ln8q9QjDpibCZADm7aWy/j2H61/uSlgmYLS1B7oULSNteHB/rHn6qS2Bn7QeSR32nFMGNXjlPVtoIpkduRBSAXgGOEhKJN/yJquqOhLeBsC0HlYLdwAW0n/hl9OPXGFs6KGSlf2QGsZwlKjQ01Tf1O7F5r1/yG+ODGQOQUweDnY1a+UnaPvC/jzT5GzBtqzy6gLyKlB4MpuvNAVFmPkSxXV4baR2T/wsA1j6xPKQ4YP3Bclmgcu682nTe3urYQeaHjigHMnJVtwpMQQQiJK5uhLuNYkepp9so69DEUZfM0XGJaVzIH8VPxYhyN6chmQG6we6kc1w60b6ZLu7/ax6s0DUEvBc8+TuAHovgcInjC6LPn7CwXuc+2PQR9esqwuzVnjOys/AkZDj4OusUzgTMYS+58SwhULYZwgtPf3b69J90V46M6y2yQQ=
X-Forefront-Antispam-Report: CIP:62.153.209.162;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:mail.schleissheimer.de;PTR:mail.schleissheimer.de;CAT:NONE;SFS:(346002)(376002)(396003)(136003)(39830400003)(46966006)(36840700001)(36756003)(356005)(70206006)(4744005)(1076003)(336012)(2906002)(7636003)(47076005)(83380400001)(82310400003)(5660300002)(8676002)(70586007)(54906003)(37006003)(316002)(4326008)(426003)(2616005)(34206002)(7696005)(8936002)(9786002)(186003)(26005)(36860700001)(7596003)(478600001);DIR:OUT;SFP:1102;
X-OriginatorOrg: schleissheimer.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2021 08:33:11.4738
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: edeb942f-af85-4d65-ddd6-08d8c81e5781
X-MS-Exchange-CrossTenant-Id: ba05321a-a007-44df-8805-c7e62d5887b5
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ba05321a-a007-44df-8805-c7e62d5887b5;Ip=[62.153.209.162];Helo=[mail.schleissheimer.de]
X-MS-Exchange-CrossTenant-AuthSource: DB3EUR04FT016.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P190MB1356
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The regulator for vled-supply is unused in the driver.
It is just assigned from DT and disabled in lp50xx_remove.
So the code can be removed from the driver.

Part 1 updates the documentation
Part 2 removes the code

Signed-off-by: Sven Schuchmann <schuchmann@schleissheimer.de>

---
 Documentation/devicetree/bindings/leds/leds-lp50xx.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index c192b5feadc7..c20a81d13bfd 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -43,9 +43,6 @@ properties:
     maxItems: 1
     description: GPIO pin to enable/disable the device.
 
-  vled-supply:
-    description: LED supply.
-
   '#address-cells':
     const: 1
 
-- 
2.17.1

