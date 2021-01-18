Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D00DD2FA2A3
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 15:14:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392726AbhARONp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 09:13:45 -0500
Received: from mail-ve1eur02hn2214.outbound.protection.outlook.com ([52.100.10.214]:39822
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2404579AbhAROKw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 09:10:52 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyc8z0uV4RLfYYrYmEZLY4pAgIOkxkyEaGQZFKIKD2aBrepOzYAz1iOizSK6s57bFdwYd5Zhq2G8MBzWhnT/91OzR4HDfj4M+7R9Ovw6I8RN4n+2M5krkHlgbUzcRNq5pX+J6UWudZAx3hUJJKmT/na2R73qedyn6TEZji1XlxINVbyt9NgnEJxd25SCAsd7vtxYks0DcdOzYGCRenjLHr+9OhmI1jvcq3gwgNkjBQSZIWurcFtjhIvyjvStwMa5DYAexw9/6zVAz29iuQGgzkk7oU1l+AVlbxW/6NExlGGPLpuu3HBewxVXCtVqjiB0f0Wx6dN2ezgvAqH7clcgdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ch+TDBVQwmtp0AZCA0o9OKX8vp7eqp2AkDNaCu/lnw=;
 b=E3vCuZX1WXR1TsJ+3+a2SXNnon2K7XLLCp/FmNPW4+TycuOQ1xe1oKd41UYpEhUrYaP26DVfPWgEmyfjjZiDeq663mNGNISsHKqg8ooHU8+j9cxQ43q/LJrFEXf4nDAgOb/qykIfN/bb39jD93DhdMEIgxYWIArMblq9akzU/FfaAf3Z90XGFci9VNy1rQg7l3Oc8oHjqk2IVDCDEmWBQVzlfq6R95UtQ8us1/UzTq7WBm8SIWqQlBFLgIHrLs6HtFHyu57FX8wzYTq2xgZNTt4C3u5FEKxe1iufyJu43C5Oi/9ytMKOocVQv1sQbzXwbpOjTm2h8naNOHP/DSzZlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 62.153.209.162) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=schleissheimer.de; dmarc=none action=none
 header.from=schleissheimer.de; dkim=fail (no key for signature)
 header.d=schleissheimer.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=schleissheimer.onmicrosoft.com; s=selector1-schleissheimer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ch+TDBVQwmtp0AZCA0o9OKX8vp7eqp2AkDNaCu/lnw=;
 b=FuMqjrLAHPKo0BZugJOTasvayMSGUe6NSXZtI7ivpZxH2sJzdNwVYpJYv4sAGaZWBK0SgC2GjEEBtzDdKYvJH7bVmZ6d/QZU0dUzZj4tYn3Cc/TxRhEbXgVkY9KCM/x7NimSWRwUlCpPkysninu9Yv7vTcZkYkfFlgUjpU2lGOI=
Received: from MR2P264CA0003.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:1::15) by
 AM5P190MB0419.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:17::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.11; Mon, 18 Jan 2021 14:10:02 +0000
Received: from VI1EUR04FT057.eop-eur04.prod.protection.outlook.com
 (2603:10a6:500:1:cafe::a9) by MR2P264CA0003.outlook.office365.com
 (2603:10a6:500:1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.12 via Frontend
 Transport; Mon, 18 Jan 2021 14:10:02 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 62.153.209.162)
 smtp.mailfrom=schleissheimer.de; vger.kernel.org; dkim=fail (no key for
 signature) header.d=schleissheimer.de;vger.kernel.org; dmarc=none action=none
 header.from=schleissheimer.de;
Received-SPF: Fail (protection.outlook.com: domain of schleissheimer.de does
 not designate 62.153.209.162 as permitted sender)
 receiver=protection.outlook.com; client-ip=62.153.209.162;
 helo=mail.schleissheimer.de;
Received: from mail.schleissheimer.de (62.153.209.162) by
 VI1EUR04FT057.mail.protection.outlook.com (10.152.29.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.12 via Frontend Transport; Mon, 18 Jan 2021 14:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=schleissheimer.de; s=dkim1;
        h=Message-Id:Date:Subject:Cc:To:From; bh=2Ch+TDBVQwmtp0AZCA0o9OKX8vp7eqp2AkDNaCu/lnw=;
        b=pRllO+N3qGsfhl6Rpram2B+hbHcyVBK0jL826ibpuy9nja4MkymWejsMSLpdruY9Pir4ffMmkckPbBuzGU07MpWnqZ5kHnVsyZbCbjIynFh6sggX9VmiK77v0JMCx9F7ZpDQpULegGss0FBBNvtBVHJgU5WDEdI0mZNyaseMlzA=;
Received: from [192.168.10.165] (port=40438 helo=contiredmine.schleissheimer.de)
        by mail.schleissheimer.de with esmtp (Exim 4.82_1-5b7a7c0-XX)
        (envelope-from <schuchmann@schleissheimer.de>)
        id 1l1VEA-0003DD-2g; Mon, 18 Jan 2021 15:09:54 +0100
X-CTCH-RefID: str=0001.0A782F23.600596B2.00D5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
From:   Sven Schuchmann <schuchmann@schleissheimer.de>
To:     schuchmann@schleissheimer.de
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] leds: lp50xx: add setting of default intensity from DT
Date:   Mon, 18 Jan 2021 14:09:47 +0000
Message-Id: <20210118140947.3887-1-schuchmann@schleissheimer.de>
X-Mailer: git-send-email 2.17.1
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2375168b-421e-423a-14e8-08d8bbbabf31
X-MS-TrafficTypeDiagnostic: AM5P190MB0419:
X-Microsoft-Antispam-PRVS: <AM5P190MB041960E1F6133622BB0702B984A40@AM5P190MB0419.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P8HfNApsTjwlplmvQBR3aWgPPRvMIgPVx2jHLJrGXKM58zuRVJF9AK1i2sLnXMZZIL49mbRl6T6snzzLEkf5lN+oZj1gQvI/9wZPFUhB3w5f+xRprBO6dNIiOe9NyQx2Rlaah2mhlRrNFQcHUdsD0xM7yzMkY9dSlj6dmuWR5O5nt0GwOS4BbuJr3ggxnMpvOKkMWjeZLs9TpdqHnZ3/TNw1jDUiQCwBg6CIJzQSioglX5aUVX82pgiCDGBh/jBVJrHt8SeiVK1M7HqamceL7rAWWE0cL2GMAXm9DyfGHhUSII7ZKmfVFmk5HP53L0xCiETI650L/llRRnsewY8Lg9Q6K2CvZ/dc/6Hs7hpOVJjIT7HcxS3fDBzX1GJqghL3nx3+M/uBNPj0D1RViL/O133pHoD1vFg8nY9tbXhDWKQ2wqb8HjrEufikityEtkGDv4uS/GtDEWIDF/6BtaU7IA==
X-Forefront-Antispam-Report: CIP:62.153.209.162;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:mail.schleissheimer.de;PTR:www.schleissheimer.de;CAT:NONE;SFS:(346002)(136003)(376002)(396003)(39840400004)(46966006)(186003)(7636003)(83380400001)(5660300002)(26005)(9786002)(6666004)(1076003)(8936002)(356005)(2906002)(34206002)(47076005)(4326008)(36756003)(37006003)(2616005)(8676002)(7696005)(54906003)(82310400003)(70206006)(34010700045)(316002)(478600001)(70586007)(426003)(336012);DIR:OUT;SFP:1501;
X-OriginatorOrg: schleissheimer.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2021 14:10:01.8031
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2375168b-421e-423a-14e8-08d8bbbabf31
X-MS-Exchange-CrossTenant-Id: ba05321a-a007-44df-8805-c7e62d5887b5
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ba05321a-a007-44df-8805-c7e62d5887b5;Ip=[62.153.209.162];Helo=[mail.schleissheimer.de]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR04FT057.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0419
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to use a multicolor-led together with a trigger
the led needs to have an intensity set to see something.
The trigger changes the brightness of the led but if there
is no intensity we actually see nothing.

This patch adds the ability to set the default intensity
of each led so that it is turned on from DT.

Signed-off-by: Sven Schuchmann <schuchmann@schleissheimer.de>
---
 Documentation/devicetree/bindings/leds/leds-lp50xx.yaml | 6 +++++-
 drivers/leds/leds-lp50xx.c                              | 4 ++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index c192b5feadc7..f810c4e84c44 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -69,7 +69,11 @@ patternProperties:
     patternProperties:
       "(^led-[0-9a-f]$|led)":
         type: object
-        $ref: common.yaml#
+        allOf:
+          - $ref: common.yaml#
+        properties:
+          default-intensity:
+            The intensity the LED get initialised with.
 
 required:
   - compatible
diff --git a/drivers/leds/leds-lp50xx.c b/drivers/leds/leds-lp50xx.c
index f13117eed976..55b9e0c9e737 100644
--- a/drivers/leds/leds-lp50xx.c
+++ b/drivers/leds/leds-lp50xx.c
@@ -501,6 +501,10 @@ static int lp50xx_probe_dt(struct lp50xx *priv)
 			}
 
 			mc_led_info[num_colors].color_index = color_id;
+
+			fwnode_property_read_u32(led_node, "default-intensity",
+				&mc_led_info[num_colors].intensity);
+
 			num_colors++;
 		}
 
-- 
2.17.1

