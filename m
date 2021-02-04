Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 905C430F52E
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 15:42:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236832AbhBDOkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 09:40:10 -0500
Received: from mail-eopbgr60091.outbound.protection.outlook.com ([40.107.6.91]:15426
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S236852AbhBDOiV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Feb 2021 09:38:21 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSjgosloYwHgrsHQRoyRo7oSBKWjzF2LyJ0Fvv7TfOBJL+DSgtJHZIfL107E+bjYsDb66NVPfVKsuY5JchS6a7l/lQMCjOKWvNShtNCtmo+7VwqiraMs/FuCuifd6DirMieF36coK4TZmYGSzJcpJ8tjXJxfXThO0AQ6aXoSNvpejXi6bugKQPC0WvVw9fmHJ9g2uTtmfu6HTiTRjOKvkeSxmVq6URrkVoJFglyEeuMHJfUQ30QxSwHpvoR0jk9O7y473eFPk8GWJpSgnzGa4HPKcgIdFMAWb30BsLk0GJ0f+YzdzfsCUXUiGyFQ4dN5vqjLVNEUbGeJFFSLbGyqpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7y2dgRYVshTRN1Kzw/WSNFjbXsyrnW+GuDbIdQobtuM=;
 b=lWkvY4CGkD2NBIhGuCF5kiugLxJUQ0zd4sZh68+NvVnlHwfVsk3csv+TmzWd8Mo2iCaLTg4LWplbpwl6GTNgy+fZk1IxdU38p20vH4rKJo/qug4ql2pTXGeQCOS1ieoqdZOFstqH4epYsAjYG/uACuoLLc194oNWutDB3mgsnYJZYc/CRW5rd7o2Tp0v5lcoYhSqza1Rw2S2auKpb/FlF6RbXG+SuTXtyDx8U3aNQxwNdJqiAQReU/Qw1W/AkgJHsX7iFabtZubDHCRrU0rUeDF+pgBWrtLbzrfuphGdNsbSGeFgT4CZFAVHtdVV/XXIRLh0Qi93IJ1FVIjOgwNNlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 62.153.209.162) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=schleissheimer.de; dmarc=none action=none
 header.from=schleissheimer.de; dkim=fail (no key for signature)
 header.d=schleissheimer.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=schleissheimer.onmicrosoft.com; s=selector1-schleissheimer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7y2dgRYVshTRN1Kzw/WSNFjbXsyrnW+GuDbIdQobtuM=;
 b=F2M32kAkWZ+Fs27/EAyu0j+e8xVhJZYkV+ZRLW7TsBbhQatFA6frRpH0BZ8wsN0Loi9KUQEjZYoedp5hPORnE5QTUHlkoMrx1lbT56mv2p5DagX2m0fZKrNCDFmwPu1xJnFtlSJ5l+gdbqMNfbH8mcDr2KkMuc7ThOXEJjgvD6E=
Received: from DB6PR0202CA0026.eurprd02.prod.outlook.com (2603:10a6:4:a5::12)
 by DB9P190MB1052.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:229::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19; Thu, 4 Feb
 2021 14:37:32 +0000
Received: from DB3EUR04FT030.eop-eur04.prod.protection.outlook.com
 (2603:10a6:4:a5:cafe::5d) by DB6PR0202CA0026.outlook.office365.com
 (2603:10a6:4:a5::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20 via Frontend
 Transport; Thu, 4 Feb 2021 14:37:31 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 62.153.209.162)
 smtp.mailfrom=schleissheimer.de; vger.kernel.org; dkim=fail (no key for
 signature) header.d=schleissheimer.de;vger.kernel.org; dmarc=none action=none
 header.from=schleissheimer.de;
Received-SPF: Fail (protection.outlook.com: domain of schleissheimer.de does
 not designate 62.153.209.162 as permitted sender)
 receiver=protection.outlook.com; client-ip=62.153.209.162;
 helo=mail.schleissheimer.de;
Received: from mail.schleissheimer.de (62.153.209.162) by
 DB3EUR04FT030.mail.protection.outlook.com (10.152.24.99) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11 via Frontend Transport; Thu, 4 Feb 2021 14:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=schleissheimer.de; s=dkim1;
        h=Message-Id:Date:Subject:Cc:To:From; bh=7y2dgRYVshTRN1Kzw/WSNFjbXsyrnW+GuDbIdQobtuM=;
        b=NuSiNFtH97zcwyZW7lAVx4Oq4UBw/ugQQbaawLWijlvR7qoiSdM5SQn/XDy9kMgWP2vqXS8gRQDD0Xml9DJcpuqXufRkc+WGwreg/s0oyISm7YYlNsBXwimwZgkdQKsd9zX+Aib6OZ7gIb5QVYu/6YkOM5GTxvMJazSKaiQckec=;
Received: from [192.168.10.165] (port=41970 helo=contiredmine.schleissheimer.de)
        by mail.schleissheimer.de with esmtp (Exim 4.82_1-5b7a7c0-XX)
        (envelope-from <schuchmann@schleissheimer.de>)
        id 1l7fl9-0003vV-30; Thu, 04 Feb 2021 15:37:28 +0100
X-CTCH-RefID: str=0001.0A782F24.601C06A8.0001,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
From:   Sven Schuchmann <schuchmann@schleissheimer.de>
Cc:     Sven Schuchmann <schuchmann@schleissheimer.de>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] leds: lp50xx: add setting of default intensity from DT
Date:   Thu,  4 Feb 2021 14:37:26 +0000
Message-Id: <20210204143726.27977-1-schuchmann@schleissheimer.de>
X-Mailer: git-send-email 2.17.1
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 7ffe1a34-07bf-4632-918a-08d8c91a6776
X-MS-TrafficTypeDiagnostic: DB9P190MB1052:
X-Microsoft-Antispam-PRVS: <DB9P190MB1052467F9C46074117CD25A086B39@DB9P190MB1052.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MzEOtdGYeC4LxpmK+vDNoex/TSVktPOQ/ihb+4dzT+zks0GsGs/Yvzi/MpnHRe+n9khklH5INg56zBDjbS/6egZ1NFJyovlfsM1dMs6hwBntXWii7Y9uz2aZFk0orhG3H1X84xgfJcKLZB8XHuJZAkjgXEK0zalDxo2fP2DTiw6vgQCeE/cw4iNcPTJx5KTvxVeys4iG88/J4ETn8+H1TbqBPeekxD+mNSjqJPP51e9KhPytx/tj8jbEU7SFiscLvKSejA32/6ODOfww/9RkdljggxOTx+jQ51RdcRkco+iuztn1aAxn1ZfFAao2BypstjInLjch6jQcYGOS50/QtQTyPKEgeC+/L35CNrSCyPNRpzAURmlLGfpy0AnqwNaYXBMxIkNcaVObtjql4U/241t4/sGwNH2kJ+Awx7f/vD78weMIauKyTGWPIcOtVwJGYYoXoZNo6yAsLGQd4/b5V+Obe27R985k7iHChGZwR11glw8f5ozi5FQjPRTNTSv+sQdUUGvXq97IZu0eMcB/zUtUfTBaMVs6TDjyKQw0x52WwSDNgXnAtMmYEKFEMnyxrntBe9cXyExon/SG50Naag8M1tRJbm9HA808CfOjqcEdRz5ZDI+zhJCCyCZdwTgGPXwrBf/O+LgePwlVm3Mz5JSDCcKHInNG4vjJ5WI8BH4=
X-Forefront-Antispam-Report: CIP:62.153.209.162;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:mail.schleissheimer.de;PTR:mail.schleissheimer.de;CAT:NONE;SFS:(376002)(346002)(396003)(136003)(39830400003)(46966006)(36840700001)(7636003)(4326008)(356005)(8676002)(36860700001)(1076003)(70586007)(186003)(70206006)(2906002)(54906003)(5660300002)(7696005)(83380400001)(36756003)(8936002)(9786002)(109986005)(336012)(478600001)(426003)(2616005)(7596003)(82310400003)(47076005)(26005)(316002)(266003);DIR:OUT;SFP:1102;
X-OriginatorOrg: schleissheimer.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2021 14:37:31.4142
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ffe1a34-07bf-4632-918a-08d8c91a6776
X-MS-Exchange-CrossTenant-Id: ba05321a-a007-44df-8805-c7e62d5887b5
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ba05321a-a007-44df-8805-c7e62d5887b5;Ip=[62.153.209.162];Helo=[mail.schleissheimer.de]
X-MS-Exchange-CrossTenant-AuthSource: DB3EUR04FT030.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P190MB1052
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to use a multicolor-led together with a trigger
the led needs to have an intensity set to see something.
The trigger changes the brightness of the led but if there
is no intensity we actually see nothing.

This patch adds the ability to set the default intensity
of each multi-led node so that it is turned on from DT.
If no intensity is given the led will be initialized
with full intensity.

Part 1 updates the documentation.
Part 2 removes an unused variable.
Part 3 sets the initial intensity to full.
Part 4 reads the default intensity from DT

changes in v1
 - fix dt_binding_check errors

changes in v2
 - sets default intensity to full
 - adds the property to the multi-led node

Signed-off-by: Sven Schuchmann <schuchmann@schleissheimer.de>
---
 Documentation/devicetree/bindings/leds/leds-lp50xx.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index c192b5feadc7..2bc25b2fc94d 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -65,6 +65,11 @@ patternProperties:
           This property denotes the LED module number(s) that is used on the
           for the child node.  The LED modules can either be used stand alone
           or grouped into a module bank.
+      default-intensity:
+        minItems: 1
+        maxItems: 3
+        description:
+          The default intensity the multi-led gets initialised with.
 
     patternProperties:
       "(^led-[0-9a-f]$|led)":
@@ -99,6 +104,7 @@ examples:
                reg = <0x1>;
                color = <LED_COLOR_ID_RGB>;
                function = LED_FUNCTION_CHARGING;
+               default-intensity = <100 0 0>;
 
                led-0 {
                    color = <LED_COLOR_ID_RED>;
-- 
2.17.1

