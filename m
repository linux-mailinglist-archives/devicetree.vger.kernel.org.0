Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 259B8284DC
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 19:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731095AbfEWRZA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 13:25:00 -0400
Received: from mail-eopbgr00045.outbound.protection.outlook.com ([40.107.0.45]:2678
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1731075AbfEWRZA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 13:25:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J8wk3axRcofJU6ok/pWR27a5nb5ggUShxHLNcMX3vps=;
 b=OnL3Sz/mKG0lgevhfyhD3gwtzFXqzzOnlsD1iW12Tkd5HrrRnsm+FTMb4X0bbCp0nqjdIV09pRclABOTpkiydrHDhQ7bMoX2Ag085/RJGuPRoXQMBQeFd3i4JZJYc947yt/0L6Sth2//1Chd+oC0LvZFNPDGukpW1Tksbdk+yjOo1Qi7Tza0fNiKbazRkz1e+ptSiy3xAiX51bFQmnTifhMjILnO6raEyl+P16YOsAWTD0/UTn0R/sav+wYPrE3znqrmfnsEQ7vjhVYcbvYJ25LzWW+MO8rnUMFeSMCulugujc7RtznAOVMSI4/TOSRycdvyd22SS96IAwfgs5JIsA==
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com (20.176.214.210) by
 AM0PR03MB3538.eurprd03.prod.outlook.com (52.134.80.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 17:24:57 +0000
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a]) by AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a%3]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 17:24:57 +0000
From:   Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>,
        "trivial@kernel.org" <trivial@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Topic: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Index: AQHVEVn2U05P8CKPx0+q1JYvuEenTaZ48eYAgAAERwA=
Date:   Thu, 23 May 2019 17:24:56 +0000
Message-ID: <877eah84nr.fsf@epam.com>
References: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
 <20190523170938.GC4224@e107155-lin>
In-Reply-To: <20190523170938.GC4224@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Volodymyr_Babchuk@epam.com; 
x-originating-ip: [85.223.209.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce5af6ac-c988-4821-aa76-08d6dfa393b3
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);SRVR:AM0PR03MB3538;
x-ms-traffictypediagnostic: AM0PR03MB3538:
x-microsoft-antispam-prvs: <AM0PR03MB35386A23C82FD6C09E3527FFE6010@AM0PR03MB3538.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(376002)(366004)(136003)(346002)(39860400002)(396003)(189003)(199004)(36756003)(6506007)(446003)(2616005)(72206003)(11346002)(25786009)(316002)(486006)(14454004)(186003)(86362001)(7736002)(71200400001)(305945005)(71190400001)(55236004)(5660300002)(102836004)(99286004)(2906002)(4744005)(76176011)(6246003)(4326008)(54906003)(6512007)(53936002)(229853002)(508600001)(66066001)(256004)(3846002)(6116002)(26005)(81156014)(66476007)(6916009)(73956011)(76116006)(6486002)(8936002)(66446008)(66556008)(6436002)(64756008)(80792005)(66946007)(81166006)(8676002)(68736007)(476003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR03MB3538;H:AM0PR03MB4148.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: epam.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1No+QT6wopdUwh54m4lwCZFfBOQKV0PChUWeFK+DxpRdXrhfsWer7RLHbiHJht0qXB7Jo2Vz4jcm4TyUgL2kgOcp/+eLqMJANnONDQ7KeU6Qlazbbo9qTd1qNu041VFqae8NZPq3Es0mrJYyQ9mTtnkDen10VxF4Rz8Cmbblpbzm6AeMyLktTyw52ZXfLYn4Qron8naYm1pcKjJWllMfVImtIROcsFDuCux/nsk/Wm67RmFxSmx07x3q86lR9DRc1X4RYVfRuu5IqYNKBLI2fgLbXxlO6iUE/6TGHimOemLq1v1ReGJHADxpd5tgd7+yigDbvI1G3y0dS+9mptsExdfyawvzK1bqsWK+1iqPcfrgTbUhuS2RWP09Qed1YsIzUmqbI+RvN1DeP4k+1yB8/dqUlF/PiZaS3dQme9adinE=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: epam.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5af6ac-c988-4821-aa76-08d6dfa393b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 17:24:56.8463
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB3538
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi,

Sudeep Holla writes:

> On Thu, May 23, 2019 at 11:23:35AM +0000, Volodymyr Babchuk wrote:
>> From: Volodymyr Babchuk <volodymyr_babchuk@epam.com

I accidentally deleted ending ">" symbol in the line above, so "git
send-email" decided to move that line from headers to the message body.

>> arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
>> the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
>> need is the ARM DEN 0056A - "ARM System Control and Management
>> Interface Platform Design Document".
>>
>
> Indeed, it's most stupid copy-paste mistake. Thanks for fixing this.
> Applied now.
It happens all the time. I also did stupid mistake in my patch file. It
is described above. Could you please ensure that this line will be not
in the resulting commit message? Thank you.

--=20
Best regards,Volodymyr Babchuk=
