Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 539264B6953
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 11:31:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235978AbiBOKba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 05:31:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231234AbiBOKb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 05:31:29 -0500
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2082.outbound.protection.outlook.com [40.107.255.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E61D2B184
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 02:31:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D49Cd+xWh0mNOqdEz1s8u9b+T1MTiT6U2plzQs8fVvsBwubXs+M71R9u4lezEd+F8eoV0geVcta60MxOmeZgnesViXIpOAQ7lwi+7n0p+qXdmp5rDGyauyrbc3o5gNfres3Mjcw23b4xprB7H3I0BySItTYwiR0AcENG2vpaMFTz5OvRjRj/QMB//Q97pbPZafEpkTJxI4kGcep8BpIN/uJNPnOGpzOq0GISt5WHX/WRVgXBJts90cEusnad8+g/pjirjuRV4Sdowio4CO8GEIY/MsHyIqBAINn9hC55oQSXjakUoChTFeaFCd17VqZaYn9UuGdEw4XNAAmSXI/Qsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USj5X5+XK1GgQdHAeM7+JC1yAplPS5PyQVLoUewzBhY=;
 b=OfBMGDIybYn1BQlopJHiozxZV0Xm4GsaOYPj8HLO3miCTar+j3wBwN7ZMbmQEIpoGceqN3j8U+t07QTt3S7COk+DmKAum4QbfotjijRDnRsV/k0imqyD9ww/XCB6alqPdQKPuwQSOc6ApBBp5zGUljRKZ1lQ+u4IDBrXyLiyp5ORbkSAWYeaSrw+0Rjm8HM7iFsU8m1WDm4RpMseEXKEAGG9L5/cc9JuKkPhmnTFeec5a3wIvPBnAwCy0hdGuNDSGeQfmsd6DJAbOFJCPbMLmFHL69DfQ5XGwtf3+6exZ0pRMCThv0ztpgD6T3SU5HgAY0go0JwhfYQgyvbwbgFXHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nuvoton.com; dmarc=pass action=none header.from=nuvoton.com;
 dkim=pass header.d=nuvoton.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuvoton.onmicrosoft.com; s=selector2-nuvoton-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=USj5X5+XK1GgQdHAeM7+JC1yAplPS5PyQVLoUewzBhY=;
 b=RKa7OQ+JTcLVNzQFzc2KNJ8WFmPhGymfA2r+GPKtCXNg5vs6/Tcr0c+0y0D2QC9tBQOVk8RSlf8oaLMKgtpnsFWTC2E38E2jUrLadP5zW4z+nerbovlI7qJcb3YynN8OrKmdgtQdQlbcE5gUDe9eY1ZoAiVkFoENFaPsk5LePIM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nuvoton.com;
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com (2603:1096:203:97::12)
 by KL1PR0302MB5315.apcprd03.prod.outlook.com (2603:1096:820:35::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.6; Tue, 15 Feb
 2022 10:31:15 +0000
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef]) by HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef%6]) with mapi id 15.20.4995.013; Tue, 15 Feb 2022
 10:31:15 +0000
From:   CFLi0@nuvoton.com
To:     devicetree@vger.kernel.org
Subject: 
Date:   Tue, 15 Feb 2022 18:31:08 +0800
Message-Id: <20220215103108.9981-1-CFLi0@nuvoton.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: HK2P15301CA0023.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::33) To HK0PR03MB3937.apcprd03.prod.outlook.com
 (2603:1096:203:97::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 989c5d85-1972-4ef2-39e1-08d9f06e4b5e
X-MS-TrafficTypeDiagnostic: KL1PR0302MB5315:EE_
X-Microsoft-Antispam-PRVS: <KL1PR0302MB53150DD1E1134FC75818F512F2349@KL1PR0302MB5315.apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EZY3NeU4sQjyNu2M71VLaDzWTSxzmFJpy6HCNRVpud8nA5hL3+8Y/wjzmTi/yMgOxrjfZlA8qQqQt2yOfF0tWF5yn2AyVRSicrOPD9xxC5gVlgh80wrTLA67OZE81VUwvf631uBgGZsH+v3vcgy1SdTBSuvd3lYMO4zz37h+2MQRubjAW/NnOA0k0cLFyT2qqdH/6HxXrr+RgU/f4EnLZ9spLBwaF8EfmUDc1RRKhcHjHvc0je3F0LQoAp9VeTgyoKi+Si1bDzveaSHLyIEJD0lY6549CmNcAea5sbmrVrkLpB25xvxn6cf0TbGGvzsd5QGOWSuZ0/vHI2O0K0vyUeKZlv7QMWKnfdTfTFZdcVeC/cDtcxPjSmTsHuWxv0BWPYoq+AdmnZxhspDHUJSnKQ5V/AT/SewiCVtb78cPDpkQJP/w47k+4aFDH36IBN7NcJJwqoyiH1l/fNRiHTBJk0/1uhcpZdomJw88kiWctoBdRT3oBzchVmGWukIOpKup2iOIAHzqszkAfQ7/IQv4NAtPo3NSWN4UY2+PyXWdGdPrSjZ6Vc2LE/JC644EVqJytLtINUnhAr2noBg4Q1/M4yhASq7tBkAVl61V6IXpTPaMNRBiF/9MmZ7yrdXIVinZu3b3/xsdMa5970gJzqqcJyGfcKm1n4ppbDdGH/QSxlzYDv4F1onWLPqLp71tmSzlqDkAolzA+eaVHUXIhSa4Fg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR03MB3937.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(9686003)(316002)(26005)(5406001)(6512007)(1076003)(508600001)(2616005)(86362001)(186003)(6486002)(52116002)(6916009)(6506007)(6666004)(38350700002)(38100700002)(4744005)(5660300002)(66476007)(2906002)(36756003)(8936002)(66556008)(83380400001)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vVprPllL28OmNJ8XIhlei3y+j7by+xa3guoXfnl19hfJBv4ZLaNytXBgmklp?=
 =?us-ascii?Q?20I1pEXJOgtzKEtuTInq9l70Os91wx8WBk98dYX+M/cjSPHaNJT4nkjJ9mxL?=
 =?us-ascii?Q?Gk+93U43Hfnnl++25W2p7KrbWbpCEv0obJRNWS1iNhaKnbzH9++xjFPDexpb?=
 =?us-ascii?Q?Y44HBe36S+QtP5MWekNFqtbPtPUH6z2Z/zGwT0qhxy0jTR2emjNm+hPo/bij?=
 =?us-ascii?Q?+4isEnaSpC96yu1csid9uuOWLZ6ucid/o3eT6Au61x7EMjL0nnR4S8eBnQc5?=
 =?us-ascii?Q?dDwa7Os4kooqglG6MOS48788EZEjPlkkNZ0J3xSjlk9wT353clvb2AqCgVOo?=
 =?us-ascii?Q?tWMNBkcFgh/y/fzPWC1IJ4dUcggMqDOgEWVAQjtOBrFOexa+MN6iYqjDz0Sd?=
 =?us-ascii?Q?VtKqKgRlkDXruuMhv5QPzxxh8fkM1NaTYCiBRZLxX1K315PX6dqDbjDbfIey?=
 =?us-ascii?Q?Ivch0fR/gZHNDV1Yw7+MnkjpRLjE83RCyjst5JzXFWw//DyDxjm4aGDWOFQl?=
 =?us-ascii?Q?+iMxunccoE32aUOkL8EKE0FaxPw3UI29F/6IVkke61OibvEBib3g90+4DSWo?=
 =?us-ascii?Q?XcaU/E8lEzIXSbM6O2YdF48EgL/LBiBDjg853iuvEoClwJXthpyY8A2LOO3U?=
 =?us-ascii?Q?Pgwhbz4mg1d72k2cB1rVMR/QkjChDgHnpIy5z2GZ5AVBBwY/bisyqcvGAz+2?=
 =?us-ascii?Q?IMR84Y/yLLVgAUfW+3LO6NcHivFe0iPDxzi+L6De07BkrFtLyGcPlSzdMWi9?=
 =?us-ascii?Q?oLGEQKqqfSoagromr5RL9dKC1sUDf8UKRz+Wd9lNCtcEzThyGPOjo8powcpw?=
 =?us-ascii?Q?W2cUf62+G5dTgxZ1pNkZpMlJggKdqgg6gIp9jZtVJL9uO4CqvktGQJcffrAe?=
 =?us-ascii?Q?FEUjCV5NoIw9inhBVfqun6nS+wUNh/24WQKvl9QFfX2Vuwbwed9di9Fp5Prp?=
 =?us-ascii?Q?doiktyXQkJ0fL60LDlwVal4Y4xqqC3NKbG9ZOoqlSFUMmNiVKmw0x1vNVQXh?=
 =?us-ascii?Q?bJ21FwjWf4OgR5OPROyYKMJlGdaJlouQBRkXIFvm+2/88bh8wMprfMnZAg8k?=
 =?us-ascii?Q?du5y/mU/qjqw7vRQT9l5HqnRNj/NDr5U+1vetqk/vizZ8wmxfBEVxvmjmQm/?=
 =?us-ascii?Q?72HPh9HkfDS9ElzTgtdAu6s7mgAkJi7s+dut6/W03ZKHJf4tIkXeZt2ychLu?=
 =?us-ascii?Q?ZuA6kqQr/ag0gCGQixFGFkTNyIJlPFf7y0nYDO6n4fG8Dq+iZdEqTvf6nW5W?=
 =?us-ascii?Q?bZR8dcQ3HEkwOXIEn+/qRqqvruB2dfY9g28IIp9MXyaUQ9rbPiDQjnDdKTob?=
 =?us-ascii?Q?HDYav+pl95rkR8npDTHnhgWQnWyjnlFusDmbuMhFNJbSDHYXB5dFA1bg3Kxe?=
 =?us-ascii?Q?h3gu/JnlThEm8ZZ+TOU/CDlo0UPrvh1EiIh4a6j7KsNxklEltQ1DAQGGREXy?=
 =?us-ascii?Q?h4fO/JfvrfEoiFXjK6hroFI0S3dTsWZw0Y3m8QukaP3lJnA3rnbeyTKYI8Me?=
 =?us-ascii?Q?hTozjyHfwPz9wLM2mRSFT9E4M/Fpx7FbbihvrG+qOr2P7wgYWBohu6FuQNaP?=
 =?us-ascii?Q?p7uUtc4kNW9mmOE4UL/Kq69tCBYM4ZfaQ7P2p+/Tau18h+pcGoPBo+jTyQiE?=
 =?us-ascii?Q?xTO/WH5NElNJ0TQnJnYWErk=3D?=
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 989c5d85-1972-4ef2-39e1-08d9f06e4b5e
X-MS-Exchange-CrossTenant-AuthSource: HK0PR03MB3937.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2022 10:31:15.2577
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p50nFE+gs7JmxdhYhO0TEW45ogTb/dEuHDh55CQfehc3xb0ELm3RDxNHtvpkmTyO6vUitHTigvooE0YWF5XVgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0302MB5315
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

subscribe linux-devicetree

________________________________
________________________________
 The privileged confidential information contained in this email is intende=
d for use only by the addressees as indicated by the original sender of thi=
s email. If you are not the addressee indicated in this email or are not re=
sponsible for delivery of the email to such a person, please kindly reply t=
o the sender indicating this fact and delete all copies of it from your com=
puter and network server immediately. Your cooperation is highly appreciate=
d. It is advised that any unauthorized use of confidential information of N=
uvoton is strictly prohibited; and any information in this email irrelevant=
 to the official business of Nuvoton shall be deemed as neither given nor e=
ndorsed by Nuvoton.
