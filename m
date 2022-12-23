Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C122654C1E
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 05:58:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235913AbiLWE6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 23:58:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235932AbiLWE5x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 23:57:53 -0500
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2045.outbound.protection.outlook.com [40.107.223.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3D9330C
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 20:55:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YaZaBiv2dYqSuknglizB6dFupbbOqObmK3N9i7ltw1Ch3Za2LW9tG8vWcr5k3q95klt9GXMSt4OHeTbpqgwLSEuz2QTCd0W3a5TFF5sIL5EnzFCMgLYxcXEzmeCqFkFH65siwV9Qt6LAbabLnoFhEZKzCHIpO1BAqAMgLd0yIbckVARDUQFahZH0GStLJlLjkyXVjdVRf5AC0KNDPIBOMklYzW7Qs7Cl2un/4YtRNXvhDyJki/Mcz4vswEvGSIvOKY00DCJN4ExcI2TiPBBTpEJS8FFXCy8czBqAIDgNkTR/QD5XVAiHU2t9SjZZN5PDHGKVGKZ6z0xQ7K6A+XbZ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QunNyg2y2f2gl//CHDjg4ZxtS9+B7SbErOeJLRhqqTg=;
 b=mKvkLDrhT7m0rUtRcv41BXO8TG3NOnQ9qg9P4u3SKdf0xnBaHu8E7bwaKkJnxR6xUv5oRQdpyIH5qTnGLTziyUjbNYVfgM+cwByIoZ2UTyDRY3WGx8q2kF60mxPff+/Amj+FdYQ/Yy4OvPFtaXdyFenk7z0yPsgLpe2yFy5YxUGZhCgcgqnSKqn5irVSBQpl6RvxTGeaHZG1eCi4Lpi2NOv57Q+ZIXIZNFi6X3gGSTxbfNl3pV5PBdCNdz6EYslU4Gai93EzdljeVx1AhOT/cpSnRdRcSmUoB935O+wuZnv1Va6P3NVRUPg8rpxDDFL+p8vUQxXrjzDNxBn7hNfnGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QunNyg2y2f2gl//CHDjg4ZxtS9+B7SbErOeJLRhqqTg=;
 b=QvdKzRa8q6bYPP2MxcWMJQITghhapkuMBo1u39Px1W8D5mpl7rc0lfVrGMhU21AizkZsVH7ssyKBtZG+rMXhbhL38DuW04HudriooXrIh2/VeY045jNhZqG6znUEfG9ssplz5Un4YUJyXrue2TheTCHgdnkzhQB/rNK7S8TOkr8=
Received: from BY5PR12MB4902.namprd12.prod.outlook.com (2603:10b6:a03:1dd::9)
 by DS0PR12MB8573.namprd12.prod.outlook.com (2603:10b6:8:162::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 04:55:18 +0000
Received: from BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::6d38:39ed:63ee:2a74]) by BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::6d38:39ed:63ee:2a74%6]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 04:55:18 +0000
From:   "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     "git (AMD-Xilinx)" <git@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx APM
Thread-Topic: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx APM
Thread-Index: AQHZFeFn88LOTU8wDEOTEEurF+UVHK55qmwAgAE/EHA=
Date:   Fri, 23 Dec 2022 04:55:18 +0000
Message-ID: <BY5PR12MB4902A397745DA48813C6548D81E99@BY5PR12MB4902.namprd12.prod.outlook.com>
References: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
 <20221222084235.12235-2-shubhrajyoti.datta@amd.com>
 <8d35613e-5729-ccc0-6344-eae1ede5616e@linaro.org>
In-Reply-To: <8d35613e-5729-ccc0-6344-eae1ede5616e@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2022-12-23T04:55:13Z;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=8c91e391-2ca4-4069-8f8e-59f1728a4f5c;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR12MB4902:EE_|DS0PR12MB8573:EE_
x-ms-office365-filtering-correlation-id: d9d7b793-ce3e-4681-5b80-08dae4a1e375
x-ld-processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hZuArgOaF3yP2OrMwD0xWWSidkKkgilwGctqOOLVKgXoZ178hYGX9f0wJOjsUkuUkySY5vJBZwI7awK0lXrEzvdezuwkvx+HSGxfIt9KrnN8P+x/+odxzhbAXwzBWDC7Ir6VHQGBzPNvGXFAexQd+0ji4klSsCFQG0nRKmSkI/00FctQHhB8mNoE7pJXPlaV0FRVWZxjwN84ZlRFWvP3CAjKqvqyMLMWKLszLUVXUdxB5XoQQ0BB0UB8hzpegK65ssXvMt2A3BF/9BqSpHpiWU8f0bbSdQ934A5qxTnTEFvRusZpRtffURUEOUo2Yw+e+hnUrv8QUYMDmG7o4zB18/HD8fxh27QfNNe5ZVnbw0gzZ1+wjxFKiSce8Fn4zKyoE0HdtpmIRBRn8szcbwkpzcZQuZ56bPxrlw8IGlUvYVzXmo3U6MrCVmMYth4f8PcBP+bqLlZXIRdli1MkrgQFk2yGVmcRx35hMKDKKy7a9v5yiPh4QkVfGsnwJ42o54RHIwKz3zNk29OogJdOWcWr8SithK8GJvn0JfJOGxq7SjLiQqWIQkLIZDl3V4+iL6x19gXA6fiIU8FppXU6Vpjx9RsCdEClCIHyzRGWKYE8z/TEyVM0tKBVln99R8iVwCJbFBl9Mumudh7uuOFMsnisyyPI+Q1gx6+meF68iDJUp/Yo7Mo7kowdyMT91Xx0ZyhDC6HPivBW+s2nhS3u50jaAA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR12MB4902.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199015)(66946007)(86362001)(66476007)(66556008)(64756008)(52536014)(83380400001)(8676002)(8936002)(316002)(66446008)(5660300002)(4326008)(41300700001)(9686003)(6506007)(186003)(33656002)(71200400001)(2906002)(53546011)(38070700005)(7696005)(26005)(54906003)(38100700002)(478600001)(55016003)(122000001)(110136005)(4744005)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HpijYMVmn8e67yV2UzaJVKYtvqJNybfiuVpXX8tN8GkK3cC2i5tWacz68VnR?=
 =?us-ascii?Q?V2wWt1nnfHhsXA1xK5cqTDmZ5e5t2Gp6tAWRICJOOheLm8Xn8annDbSvmsyh?=
 =?us-ascii?Q?UFtBMFFCSMuhhVth7sOZ0/PTD98AdOOfKHVJu2T+j/DMfhSOxncS+dfEl+MQ?=
 =?us-ascii?Q?SIiWIz8CmuepVQB9PQJXRaElvjezj/X0d4j1WeWE6zUGpwptIXGrXoNCjUye?=
 =?us-ascii?Q?KNsylociG/tPZQf0HrcbKfP6D89O+5I66q7iGYGpuANVaso9YhQeE8ub6bfw?=
 =?us-ascii?Q?QU2S9VYdM5VHAt/jKLc5ZZ6KAsnkUWyMHP57QVXCMjJiEAJZVbw58g7gyZX5?=
 =?us-ascii?Q?Mis5xwabnxtdU5OifVeqhzrTen7g5NMHxMBCOkY0LCJ6D3sBjGFp8r+5X2n1?=
 =?us-ascii?Q?2gsGTsuqwv2B9unF6XIFPACUY4M7OmcwpF7xetmJbvztq0nHVCZ4z/DTsJGC?=
 =?us-ascii?Q?qafktGk9HE31pHoqF3mtNMKjJJojpw97jz6jedpG7ffxX5h1oak4OPtZsj5A?=
 =?us-ascii?Q?WPQ7Gb5I16GuBB+nABkHNMTKjWvPdKacSdh6FdYtcLmjFsy8sC9dtPlaGPkA?=
 =?us-ascii?Q?SZlTGsfGoT0/xUF2VoLzfP3To3TZ3rvGf4YVIYs6jyXgdJsmJxeGmmJJJCTl?=
 =?us-ascii?Q?LwBs1LrLhNN0oO8g/VWWWmaQM2GTOr7cUg0cL1jXpJcTIqBjd2CqAlKxT7mv?=
 =?us-ascii?Q?13JnbDwYk+U30F3wjw2ZErcDtBq//+qobKifUnR4VF2OAt9Lq+es7qC4q+p+?=
 =?us-ascii?Q?h5jh39LFJkLn328oxXdra7MaQFrTAMGIeS1/JK86M08oVx3vTwWiSUQWPUtE?=
 =?us-ascii?Q?K0Fhlf55nr2EAwSWdaogmKTJKZHfng1p4uRROF2j0ChlXO+o0GCgOrmptadD?=
 =?us-ascii?Q?Rn/N4L6z6hlcbw9i0sXTA71n7+rZuT+olv+lN5049ISbDl4JJii2Ss9JKBur?=
 =?us-ascii?Q?K113dAlKrxHDTeDaVMP5Pcwz7vXwKPk8MHDAWkMAFIaWPka646Tvvoe81/JR?=
 =?us-ascii?Q?FiH+K2PaXyCCVK0i035BNIMoAsNlh96p+KmEaW4bvgNZSu6JmDPeQ+guLl0h?=
 =?us-ascii?Q?u9YUbUQyJYWP6E5WJgL8rmkeYAtdhXMli+gHKRvHZA91A6GTx9j8T3R99YP0?=
 =?us-ascii?Q?6fyxx4hd7P2aThuVLPN9eSc02qQG6RwhPhpE+QRk0CzdU71VjrTQCoLw4+va?=
 =?us-ascii?Q?C3z0tfCgQDjqwoZdTH3zifvL024714eaD4S+FnM6M9gxHyWOGDiqOSBY0W10?=
 =?us-ascii?Q?34n/0YSNgbbqLDNRC6MkJoU7XfC+bNLDkTfhm5QIWdPFKU0RcjbPYKSiH0Rl?=
 =?us-ascii?Q?RIeEEwxtn49+Ca3J+HYcEfeyzvOF9fB9HdFzAbodDDper/6aWoqzM+xxG0uw?=
 =?us-ascii?Q?ERaVOKS9b2U8dOAdEkUN//t1Zo7JHQPviTR33+wnKgqq8ch+hwQ06tKinhdK?=
 =?us-ascii?Q?19k5WCZsm6WfOWWN/bBaXzps+kTbT8gGbGTI/3sCxGwQYpDkUo+g9IwQmlxF?=
 =?us-ascii?Q?9/g2hk0cYpKixtcwHDoGbuObr771eVs0j70EQrwgZZFKh721Hg8fMkyZ0LII?=
 =?us-ascii?Q?NuzScLUiNHrAQ05xTYE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4902.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9d7b793-ce3e-4681-5b80-08dae4a1e375
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 04:55:18.3020
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NAoohOeXeSMJ/PTxj8rgKYXqRmopJMd7QZK6giuLf+28ix1vxmru18qcbpIjR3y3382odsRfy/GtDIAgn+mvbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8573
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[AMD Official Use Only - General]



> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Thursday, December 22, 2022 3:22 PM
> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>; linux-arm-
> kernel@lists.infradead.org
> Cc: git (AMD-Xilinx) <git@amd.com>; devicetree@vger.kernel.org;
> michal.simek@xilinx.com; krzysztof.kozlowski+dt@linaro.org;
> robh+dt@kernel.org
> Subject: Re: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx A=
PM
>=20
> Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
>=20
>=20
> On 22/12/2022 09:42, Shubhrajyoti Datta wrote:
> > The LogiCORE IP AXI Performance Monitor core enables AXI system
> > performance measurement for multiple slots (AXI4/AXI3/
> > AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for xilinx
> > APM.
>=20
> You did not implement what I asked for in the subject.
>=20
I missed out I will fix in next version.=20
