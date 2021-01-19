Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 434222FB7F2
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 15:28:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391211AbhASLc5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 06:32:57 -0500
Received: from mail-eopbgr60100.outbound.protection.outlook.com ([40.107.6.100]:49376
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2404644AbhASKyL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 Jan 2021 05:54:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uar8qATU4CiTvz9ANSYF8YfOfw4y21hC9yjlGp3Lw+3AN7k3Wrs1MRaHe+slxKQjVN8vy+YcsoOpnuocLp2zztwpnCDG4Yir0ccCbqifQK7WCuJc79jbBGcSWBQ2cmAhGR0AmWoFZKjlG/O3QOQ5mDWz5Huni/hCTujx7MsYFU62FOgsP+DHBX9Hj5eitrcy1SKwFXGyZ+Kh0qQzhMFCYssZ48OpGz7KwnUcGahpSsTmQCD34M38KBKZr0c3+WG3aupixlyEZyXqFTBxOyjfJ+FLkmhYwZTOmtkWEatmvJQjCKL/w7GfH9Zlau4i/kTH4n5O2SSltXJ2Ga3LxN09tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0F7yAidr0T81HREofnWAgNGv1GvLo5Pfvu/QPA2JaoI=;
 b=e0kCyu6hdjrix16UX/b30wskrHo9OiDNNWjnPzjwhexLCdx6CChI1Yi/5OuhHqHNHOeyO6eM8vN9Ts/qUnlqltVeK14JxmDTcdGRxa7LR4+DKOPO7OGBDbIK3d6av5omfuk7wPiEdjDb/9K79C7c7qBT0XmToHqoQ6iUB0ghlBuiykd1mPYiDifNVbfCTjQa85hJWv2sON5vk84e69yoOI8iEIx78lI1PpM1Uxzc600DYvP7Bps9quzDK+UkeEbcEiAqkldlZ04BH2CCgdAKw6zo3A80OzJwlbA6PfIXiO7FPgMQ1OujzdjajO8JvY5Vig8FK83MGbNvamOjet1zkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 62.153.209.162) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=schleissheimer.de; dmarc=none action=none
 header.from=schleissheimer.de; dkim=fail (no key for signature)
 header.d=schleissheimer.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=schleissheimer.onmicrosoft.com; s=selector1-schleissheimer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0F7yAidr0T81HREofnWAgNGv1GvLo5Pfvu/QPA2JaoI=;
 b=hJdaIhmGN5frroukLtcFCnuqHhj4aAAYwi4sfFURnuGCZWK4PR2PbYdp4RnJgG/59kG8t1IG1tOItCSZUc1kQDGmt3SiThH0poSxDlizp9YgnlVJ1MXpeOVSl4fdvmUGKNGj8mIZTVAmdbt5lHqBQta/lu7myiC2biUpGd6pFfA=
Received: from AM5P194CA0024.EURP194.PROD.OUTLOOK.COM (2603:10a6:203:8f::34)
 by DB6P190MB0149.EURP190.PROD.OUTLOOK.COM (2603:10a6:4:87::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.11; Tue, 19 Jan 2021 10:53:22 +0000
Received: from VI1EUR04FT008.eop-eur04.prod.protection.outlook.com
 (2603:10a6:203:8f:cafe::33) by AM5P194CA0024.outlook.office365.com
 (2603:10a6:203:8f::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend
 Transport; Tue, 19 Jan 2021 10:53:21 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 62.153.209.162)
 smtp.mailfrom=schleissheimer.de; vger.kernel.org; dkim=fail (no key for
 signature) header.d=schleissheimer.de;vger.kernel.org; dmarc=none action=none
 header.from=schleissheimer.de;
Received-SPF: Fail (protection.outlook.com: domain of schleissheimer.de does
 not designate 62.153.209.162 as permitted sender)
 receiver=protection.outlook.com; client-ip=62.153.209.162;
 helo=mail.schleissheimer.de;
Received: from mail.schleissheimer.de (62.153.209.162) by
 VI1EUR04FT008.mail.protection.outlook.com (10.152.29.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.12 via Frontend Transport; Tue, 19 Jan 2021 10:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=schleissheimer.de; s=dkim1;
        h=Message-Id:Date:Subject:Cc:To:From; bh=0F7yAidr0T81HREofnWAgNGv1GvLo5Pfvu/QPA2JaoI=;
        b=VuGTlqpj1u9rwKTsTszVcAXngDRjeOOolPxqpDlXZmn3TakW7jcNdphPQMa9pyXhVcTF6KnL2lCSpAIy+oTjV6le5oA9yYxw/nYcgedNrhqMrpDiPcnqQ4eoPYVtTcsdjpWNLj0Rpkr12DiDj7TWy/oEX/woWhKcRbedYw33GFM=;
Received: from [192.168.10.165] (port=50098 helo=contiredmine.schleissheimer.de)
        by mail.schleissheimer.de with esmtp (Exim 4.82_1-5b7a7c0-XX)
        (envelope-from <schuchmann@schleissheimer.de>)
        id 1l1odQ-000789-0y; Tue, 19 Jan 2021 11:53:16 +0100
X-CTCH-RefID: str=0001.0A782F1B.6006BA1C.0069,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
From:   Sven Schuchmann <schuchmann@schleissheimer.de>
To:     schuchmann@schleissheimer.de
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1] leds: lp50xx: add setting of default intensity from DT
Date:   Tue, 19 Jan 2021 10:53:12 +0000
Message-Id: <20210119105312.2636-1-schuchmann@schleissheimer.de>
X-Mailer: git-send-email 2.17.1
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 543a9ea9-e694-4000-68ca-08d8bc686ff5
X-MS-TrafficTypeDiagnostic: DB6P190MB0149:
X-Microsoft-Antispam-PRVS: <DB6P190MB01495545243B42D6A278E4148FA30@DB6P190MB0149.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZwCm2+Xq6N/Z9/YTDAOVJcRhwiiVGJ0+S+gwJFlF2VxpZSl9IhWOHysA6RRQP5Gjchej4e4hCjDwZBGb3+i3PngEMOdV0tFd9PoF4wjCa7PWmgtgYJ/wDmI8Ux7ujyJ8CRDj/VHlGTKVfIenmm/E398yC+zCwTt7WHu/7JfWMpY+3ERHcR0OZk5VEiZHvdL6f+VKhMeEy8Kga0202cgxCj9nuOYYRGHMaBUNyF/xWae9ZmYYUqqTbYtDDESKFBnrobC3d1u4TfSWnCZgDVQf9z7/aAG/TRj1aVO2HYpXQvL666CsCrX50ctn/IQK0kdRMl2AjfgzMAbq8hz4l8qvtuVsLyREkvKNZR0sd7clAGwmYAYkEwHLbTsyHVI1FhkiZpXYWjO7MfrjZd0tDgIFkIY07ML/yEFmU9uT4XieXVPS9eZnlMn5yuas+tfv7mOXjRcQOWh1Oj3m0ynRfky0wQ==
X-Forefront-Antispam-Report: CIP:62.153.209.162;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:mail.schleissheimer.de;PTR:www.schleissheimer.de;CAT:NONE;SFS:(39840400004)(376002)(346002)(136003)(396003)(46966006)(70206006)(82310400003)(2906002)(54906003)(26005)(336012)(2616005)(8676002)(6666004)(34206002)(37006003)(7636003)(478600001)(83380400001)(47076005)(316002)(7696005)(70586007)(4326008)(186003)(1076003)(426003)(8936002)(5660300002)(356005)(9786002)(36756003);DIR:OUT;SFP:1102;
X-OriginatorOrg: schleissheimer.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2021 10:53:21.3040
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 543a9ea9-e694-4000-68ca-08d8bc686ff5
X-MS-Exchange-CrossTenant-Id: ba05321a-a007-44df-8805-c7e62d5887b5
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ba05321a-a007-44df-8805-c7e62d5887b5;Ip=[62.153.209.162];Helo=[mail.schleissheimer.de]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR04FT008.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6P190MB0149
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to use a multicolor-led together with a trigger
from DT the led needs to have an intensity set to see something.
The trigger changes the brightness of the led but if there
is no intensity we actually see nothing.

This patch adds the ability to set the default intensity
of each led so that it is turned on from DT.

Signed-off-by: Sven Schuchmann <schuchmann@schleissheimer.de>
---
 Documentation/devicetree/bindings/leds/leds-lp50xx.yaml | 8 +++++++-
 drivers/leds/leds-lp50xx.c                              | 4 ++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index c192b5feadc7..5ad2a0c3c052 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -69,7 +69,12 @@ patternProperties:
     patternProperties:
       "(^led-[0-9a-f]$|led)":
         type: object
-        $ref: common.yaml#
+        allOf:
+          - $ref: common.yaml#
+        properties:
+          default-intensity:
+            maxItems: 1
+            description: The intensity the LED gets initialised with.
 
 required:
   - compatible
@@ -102,6 +107,7 @@ examples:
 
                led-0 {
                    color = <LED_COLOR_ID_RED>;
+                   default-intensity = <100>;
                };
 
                led-1 {
diff --git a/drivers/leds/leds-lp50xx.c b/drivers/leds/leds-lp50xx.c
index f13117eed976..ba760fa33bdc 100644
--- a/drivers/leds/leds-lp50xx.c
+++ b/drivers/leds/leds-lp50xx.c
@@ -501,6 +501,10 @@ static int lp50xx_probe_dt(struct lp50xx *priv)
 			}
 
 			mc_led_info[num_colors].color_index = color_id;
+
+			fwnode_property_read_u32(led_node, "default-intensity",
+						 &mc_led_info[num_colors].intensity);
+
 			num_colors++;
 		}
 
-- 
2.17.1

