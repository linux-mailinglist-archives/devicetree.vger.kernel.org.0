Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C7B727BAC
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 13:23:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730404AbfEWLXl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 07:23:41 -0400
Received: from mail-eopbgr70040.outbound.protection.outlook.com ([40.107.7.40]:58151
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729934AbfEWLXl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 07:23:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ed32Chka+6thbE9sFwHyq6Y69WFt2xNaPXh/EdResLo=;
 b=oQm+uwUhOChqWiXMiyHk/Bo0POzG/55pUsSiD2FBCuvoLX7hMinj1ceimkr9ykREYaI3LU9+581zm4kgkSNEdVy+d4yAZcikIUs/jcLq3tbt1DkU09Ne0dqYXtB/gIQjDVQdyCLuN1RPD27BfaqWn38ErAebeBRbPkdYdH62lDiwD9VkkV5XZniqUQ1eZrpXzdGkchQpiHEwIOq+vxzxIkpo4Gz7ALSEDiC8G4YFqy6iL5g0fvPAJR0ixUHZWM35nN2066qPpPu7L264arkNrQFEIe1ymNFmUmMRDmA0BpMWkROifYFPgXW0nsDcMjgYrg/WvC2cpOov1iex6ZJV5g==
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com (20.176.214.210) by
 AM0PR03MB4097.eurprd03.prod.outlook.com (52.135.145.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 11:23:35 +0000
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a]) by AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a%3]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 11:23:35 +0000
From:   Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>,
        "trivial@kernel.org" <trivial@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Topic: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Index: AQHVEVn2U05P8CKPx0+q1JYvuEenTQ==
Date:   Thu, 23 May 2019 11:23:35 +0000
Message-ID: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Volodymyr_Babchuk@epam.com; 
x-originating-ip: [85.223.209.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ff935c0-f8c9-43a9-d420-08d6df7118ba
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);SRVR:AM0PR03MB4097;
x-ms-traffictypediagnostic: AM0PR03MB4097:
x-microsoft-antispam-prvs: <AM0PR03MB40974CAFCF458D85FD153078E6010@AM0PR03MB4097.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(189003)(199004)(71200400001)(66066001)(71190400001)(14444005)(2906002)(6506007)(72206003)(4744005)(26005)(86362001)(7736002)(256004)(3846002)(305945005)(186003)(316002)(80792005)(36756003)(54906003)(6916009)(6512007)(6486002)(8936002)(91956017)(66556008)(64756008)(66446008)(73956011)(76116006)(508600001)(66946007)(66476007)(25786009)(486006)(476003)(6436002)(1076003)(2616005)(8676002)(81156014)(53936002)(102836004)(81166006)(4326008)(14454004)(5660300002)(99286004)(55236004)(6116002)(68736007);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR03MB4097;H:AM0PR03MB4148.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: epam.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gtKwsS3K30wIPVTa4jZasgER5FVv/HiaAE9l9PIMPUGjifB6CoPxlZbDwHnn4O8B/l2TrNZMqXlv3lx8vYaYhHlcP5iEhy7Kl24CEjRgqiS19l7HtnK3IKjKwz8WSaUnJIU/LbIUIPxZmKeQzKo68M8Sw03uUFTq8YVKBp9/YkEG8d0ZlSLEjufjpbRRESGD/u5tEHFNE0bZLapn6Cy72QIykTOQJnqBoLNGM75ZQTLmgyWYJ3VBTdD3Jz5gopdNiOKXFaG0uaYw4Jh/yGh01RyIjhK2oFOs8Hm5kHW3bULoI1wA+D9z3RKVsL46qRmcqsXxcd+ml7DAmjKUUP0aPJFgCiFre5vQxWJ/pwLbh8s4yhO0zdzEJDjfuH2hmNcIafa/b8/eA2upDpMJNto9gfCgiPjARl4qeuQtohv6Ye0=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: epam.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ff935c0-f8c9-43a9-d420-08d6df7118ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 11:23:35.7760
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB4097
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Volodymyr Babchuk <volodymyr_babchuk@epam.com

arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
need is the ARM DEN 0056A - "ARM System Control and Management
Interface Platform Design Document".

Signed-off-by: Volodymyr Babchuk <volodymyr_babchuk@epam.com>
---
 Documentation/devicetree/bindings/arm/arm,scmi.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documenta=
tion/devicetree/bindings/arm/arm,scmi.txt
index 5f3719ab7075..317a2fc3667a 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -6,7 +6,7 @@ that are provided by the hardware platform it is running on=
, including power
 and performance functions.
=20
 This binding is intended to define the interface the firmware implementing
-the SCMI as described in ARM document number ARM DUI 0922B ("ARM System Co=
ntrol
+the SCMI as described in ARM document number ARM DEN 0056A ("ARM System Co=
ntrol
 and Management Interface Platform Design Document")[0] provide for OSPM in
 the device tree.
=20
--=20
2.21.0
