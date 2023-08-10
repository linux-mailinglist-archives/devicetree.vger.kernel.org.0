Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECC5377AFAB
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 04:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231612AbjHNCxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Aug 2023 22:53:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229824AbjHNCwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Aug 2023 22:52:44 -0400
X-Greylist: delayed 1099 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 13 Aug 2023 19:52:41 PDT
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02hn2245.outbound.protection.partner.outlook.cn [139.219.17.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 703ACE65
        for <devicetree@vger.kernel.org>; Sun, 13 Aug 2023 19:52:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZp+FY5E5/rize1iXU6i7fkGcpuuopRh9RtLvgFZ6kEzE+Tl6BdRqbab7QaEbBmU/0Unh3AOCdrUmH07MoBiGa2vEZGiaw8gYKdZRuNwAjHW2EJV1AOpTRfM1yGqtcOJyBZZs9dWt3zWx5yIlXvdtymQMNgIpMzluHSfdDS6gd4rdhk3UtvYxuKGQMA7z9EtfgSk6uN+HfiOlOU/gQicDqywl3Qjgtip8C3FG0DRNHKa86Z5XKTP4+EBZU367/ZaaEh7yuhqJNNrdr+BCvXJvY1lWS6z+PKWurLIDWbOgvDqA+wNRpKWLeaCZI4mD3WWz3aYoKykS4nruYC7NjcKSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dc5w8+osUbZnoHTUvQF10FWng+yZYuJWYUQuxbuFeDo=;
 b=FZ/1FhCmhqPuILAXaVZVALXJQbeqMza4d4qLzL1+cvE3ek/UBnNi4HkkNtR+8WsmlP+beaAsuMKxtDHoCoEbqi9V96s/Ar1ioR0VSDGugCfursiaxzUI7sv8vCp+urtZKCUTYq5VCa5Uu3VZ5eAAxNPpg4LE1aDMvz1s22vY+pdoFiiXH5Um+uZ4jvJgddTdXoRqsEMr1SQsDrW9pZ+WoYV0uGeCrkwTs5kOZDPP2Kt6bQ1qGtyW7SZHX7cYClks0iJjzwxYbtLTmUVTZdPirU5INdujHa6LP6j7+0NkA1jzOK+GZH2W9j8SYloIMGDLXHUVXgj5I0OKDBHLix+QEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sju.edu.cn; dmarc=pass action=none header.from=sju.edu.cn;
 dkim=pass header.d=sju.edu.cn; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sjuedu.partner.onmschina.cn; s=selector1-sjuedu-partner-onmschina-cn;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dc5w8+osUbZnoHTUvQF10FWng+yZYuJWYUQuxbuFeDo=;
 b=nMOrrEjHjURrbqAvLVp1A71xCh7rlAtn94lpzX4nbb0BjPljPJPU7b8W9b5jlsTkLTnW2HyhTr3N3zXNveH/W9hNHVg/N7YzuR/5GW554gXHIHxw767qqJrfPW1V7LzcWVQlJ56L+hGY+qsbgXfUjXn7swSF51MEk/NoPBpNzmc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sju.edu.cn;
Received: from NT0PR01MB1038.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:7::8) by NT0PR01MB1327.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:10::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.33; Mon, 14 Aug
 2023 02:18:51 +0000
Received: from NT0PR01MB1038.CHNPR01.prod.partner.outlook.cn
 ([fe80::a045:aa15:e7e2:b420]) by
 NT0PR01MB1038.CHNPR01.prod.partner.outlook.cn ([fe80::a045:aa15:e7e2:b420%4])
 with mapi id 15.20.6652.033; Mon, 14 Aug 2023 02:18:51 +0000
Reply-To: domakye20@gmail.com
From:   Dominique Ahkye <sjzs@sju.edu.cn>
To:     devicetree@vger.kernel.org
Subject: Info Details
Date:   9 Aug 2023 19:36:21 -0700
Message-ID: <20230809193621.F1AE3E951AF0CBA1@sju.edu.cn>
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: NT0PR01CA0004.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510::22) To NT0PR01MB1038.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:7::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NT0PR01MB1038:EE_|NT0PR01MB1327:EE_
X-MS-Office365-Filtering-Correlation-Id: 43c213b5-c215-4163-0734-08db994a9605
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c1NBRUxzMVlzamRSNnZhZG1xVzFmbTU3SHhxbnJ0RXlnSmJCTUMyYjBrVXQ5?=
 =?utf-8?B?UkZkYXFtSjJoRnZ0MUlUS0NJWDRlcnZhdytUS3lFQ09xTzRKaDNKeTBLelhL?=
 =?utf-8?B?NnpJQ1dldjZ6RXZhUmtTS0hzNllZNFp2cCt3c0ZrS1o3TzdSeWlkZW9FNTll?=
 =?utf-8?B?T2lsMEZjTVUydng3YWRGZURpaHlwT0xLKzl2VTA2QUNpOFRQV3dmaUpSNFlH?=
 =?utf-8?B?cU1MTUNJRWtsNUZBeDFldnlPTXhrRGc5RXpmeFdZU3V5QkJBTThpR2lpTGdC?=
 =?utf-8?B?WlNBSGFXSnNjZ2huN05Kdy9ya2JTVWVXb01DdlNuamNlRWorRlRCSjBXWUlD?=
 =?utf-8?B?ZGRCempodFA3UzVXRDRkci9zb2ZMU21FazVsSndueFZEQ2VIK0hKMHVGQkl0?=
 =?utf-8?B?V0dwRVloaTNiZDI3TkQ3dDFGTkVsTXFIWTJ0VW82enR3QmtMdTU4WDY4SFN5?=
 =?utf-8?B?UytnN2J3UGVzc1dLWjhVT05rWk44WFV5MHlnSXVVSUNwb3hhL2huWk9hWU5s?=
 =?utf-8?B?cXpJMEhYWDhtY2p4MjBVUTJ1eEJkOWFYNXVSMDM0TXk1aGVOV1Q3WWppcGRF?=
 =?utf-8?B?M1pZeWRaNFVSVUx6L1dtRHpySmsvV1RPdDJYR1BHR2h3RC94TmxsTEpoOUVh?=
 =?utf-8?B?TmJpeEVCMm42TzhGMmNSS3dvVmVnVHlJc0dTT1U0NUdmSVBRbFRwRkdqM0ZU?=
 =?utf-8?B?TU9PZXd5UlVNcDN0eDduZXdJaWYxMTU5SHRGNVRiRC9NWGFMR1ZvQW00T0k0?=
 =?utf-8?B?Q1c5N2F4OWZLUkFEaUVsdExrZzZrSFIvTzI2VzJxa1ZiTW81RlRSaTBoYkFQ?=
 =?utf-8?B?YkFoQzdyTTMvQ0dHNDJwVG1TM3lLUVJoTmpYN0U1T1hMTkQ1cXNXVFdrYmxv?=
 =?utf-8?B?dFNlWExadXRxY3BwZ2JXVExsbkYvWkJRamh4U1hFVVFKY1VRWGFPVjJ6eVBC?=
 =?utf-8?B?VW5mS0xRbUJxdWlYVXFGZ1p5YmNKb0VyWVNIQVpQZ2ZzZ2pNV1hLbnJZSUVl?=
 =?utf-8?B?NjdDUHk3eWgxSEFEWno3UG9tTW53MHA4ajkxendoZ2hUL0JCME1BUWlhR2xq?=
 =?utf-8?B?OFhVVXc5eEhuQlpOSW5ncFBKOWpnUUtQckNTU3Y5bVJMU0tLKy9GblVjZHFl?=
 =?utf-8?B?S3MyVUZxYlU1RWxxSlg1L25xWDNnZVh2ZXdXL3Y4UCsvZmQvQ2dpNFVPQ1FY?=
 =?utf-8?B?eXBYNGhiMWVHMmMxc3JhSUQrMm9MZkcxaldOenZJSjdqbFR2WWt0SURxSXYw?=
 =?utf-8?B?SnJnN2pmbldZd3VENmYyc05TQXRWR3N4VmlML2hBaEFzTnJVVjlCcmdKKzFt?=
 =?utf-8?B?MkM3NS8wSjlqUVJCN2h0ZFVybkFJYjVsbUowNFp5TXd1UlBZVTU0N0RQVDk4?=
 =?utf-8?B?NzlsU3BySkV1OWxoU00xTVMxQ1JJN3FYRmpYclJ2OUpINjh1UnNPZzNmNm9W?=
 =?utf-8?B?bGEzSVZQUWNRYmVqTFNjMUhXZk5pSDl0b1krMnlwNUpnOWozYnRycFhFMUdy?=
 =?utf-8?Q?SmvNoo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:NT0PR01MB1038.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:OSPM;SFS:(13230028)(39830400003)(396003)(346002)(136003)(366004)(186006)(1800799006)(451199021)(38100700002)(38350700002)(6666004)(52116002)(508600001)(103936005)(1076003)(40180700001)(26005)(3480700007)(33656002)(2616005)(36756003)(66556008)(6916009)(66476007)(2906002)(558084003)(40160700002)(54836003)(8936002)(5660300002)(7116003)(86362001)(41300700001)(41320700001)(8676002)(66946007)(2860700004)(442674003);DIR:OUT;SFP:1501;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azcxYWxPZzhLV28xYWRzaGk5RUVQUExGVzRWb21SSG00Y0lUYmlGcGZLdUor?=
 =?utf-8?B?cDVudjV6K3Y5bVpoRDhjTWhmQ0RIQmYxM21YTWlIRWNObi9WQmlxRllRZ3dJ?=
 =?utf-8?B?amlwdkpoVkhpMFg0ZmNOMkRrMnFscm0vKzZWTjN1cmVIZWxWS05JS1FHd1Rm?=
 =?utf-8?B?STYrWnNhWjgxaWZzeHFiUVVkS2xsQ1NscGdaWUx4TWgwZSsra2VJNENCMzM5?=
 =?utf-8?B?clJXZ1lnd2tmOHpKRitzVXNTRHdjZXVoOURBb3lwVS9jZ29XVCtEd3J2RHZO?=
 =?utf-8?B?c0VkSlVFd0FRZjNmZGsyZWdXa0ZYNjJ0K2VZVjRiMU9td0E5cExQakZTTW80?=
 =?utf-8?B?cW1vbkZXZ2RYZlVYK3FYZ05MM2R6b0k1alBIZnZqWWc4a3hCYWRXL1VDVnNy?=
 =?utf-8?B?SW8yNzBnR3pESU9ZZVdUWW92Vm9oSkpKaW5YY2FDNURjSVdwWm1ZQ2F4L1cx?=
 =?utf-8?B?VkpXQXh2aWVMejRiT25VcldQeEpsY0FyQ2RacGJxdWk3SlNMb1VodkVmWnVN?=
 =?utf-8?B?RnlBWUZURDdYRFlKcnJDLzBNdFdQcDJIY0t3RDVML3B5RjU1RVA0c2FMcXFy?=
 =?utf-8?B?eVl4aFRaaEdndHFTNE94OTJiTFFZK0Q3RmJEK1M5Yko5QUFpYlNhME96cEJI?=
 =?utf-8?B?YUlTVzRUSXZjMjZyUjVpa1JsMi9nTk1VWTI5bGhvcG1majc5QStqYkp0TDYy?=
 =?utf-8?B?NG4xWFhCN3BEZVFnSUdUUlJkeDFMTUs5bjdGUHV6eTNmSXk4bXFCeEFzd1lF?=
 =?utf-8?B?eVhnZi9WWGdFN0JQWWdaeVc4b1gwclUxazczVkYwbTRxV3pha29tTUpaQkJS?=
 =?utf-8?B?ZWpHYXg2ZDM1OFR2SCt5dGF1VzJCVEdUZDJGZXBWNnlJcUFGVXloT2xCT1Ra?=
 =?utf-8?B?ZUVYdjBFQ05lVFFBSGR4NWVnakhpVHBiRHg5eTkyOVQ3VjN6ektJODlDQ1hE?=
 =?utf-8?B?aXBwL3c5WnlSaisrMnRKcGNDNXdBWVZMRUJXdHFKMmFDM3hvNGh2Zms3Z1o5?=
 =?utf-8?B?MlBzMTREZENMOXZsUjFYbFJtbDFrcVo1YUJmTzJnS01RUFFJMHNTbi8zN3dK?=
 =?utf-8?B?bm5WK21hdXhETTRWT0Ywd3FNakIvYUYySHhQQ2Q4cjR4NFY0Y1FZQ0U0Y3Qw?=
 =?utf-8?B?VTV3K0FqM1NlanpuSDFuSDM0ZU53T2hsNVFLUFh3K2tnTUJHQTJoUXVPTGo5?=
 =?utf-8?B?UjJLa2V1bjJ1QlZsNTY0Tm5WUGNWb1d6aW1vaUdRQ1FDSmpJdzVCNmIrVERw?=
 =?utf-8?B?Zmxmb3RDeHBTME1xaHdpMDZmcXJmUlNMLzlPeS9HajFpNXdIUkRXS0VuV3p3?=
 =?utf-8?B?aGl3RnZBUGdXWWI3MVhYamhLT1oyeGdIN0dRRFJ5VnV4TjlvWXU5QVRmOTRy?=
 =?utf-8?B?YXJWZGlpbmw4TXRvRHA4QVRyZEdYY3paTzJGeDdjVkgrTEpJSXQ0TmEyS1Uw?=
 =?utf-8?B?bm16bGI3dDdYaTBveGtFeUtOOFRLeGl4eGd6TVp4YlppbDBjVWJheHVLOVlS?=
 =?utf-8?B?VVpjOFpNS3JQRFVSalZxTHlYc0ZNb1dPRUN3N3dTWGNIRHh5d2Q2ZFB1UFFB?=
 =?utf-8?B?MHhqMlkzcjBJMnhPbHl4amZCS2Q3cVVPRFl4dERSTnUyQkFqaXhlV3dTSkZk?=
 =?utf-8?B?cER1WWlKUnlWL3Awb3Q5c0NkU2k1V3lWZHQ5bGZSMkM2ZWpIR2ZBMFBRUW51?=
 =?utf-8?B?dmNKTHJlcDdDYzZWUGVXaTdhbklnTGw4UnVLWEZGOFd2UWhOMXFFSlhJODRH?=
 =?utf-8?B?Ym8xWE9JY2F0ZTlJYzhlQnNOTlJucVgxbW5TNjlPUmR5emJyeXIxQUZ6QzAz?=
 =?utf-8?B?aDlyZDRqdG80WFB6WDYwcHFueFJ1b3FpcFdPYnBlY0czUURua1pKU0VmNlhI?=
 =?utf-8?B?WmdOTUZQVWZBWFNVcEtha2o1UGJsVHBhVmpsays2TWhlZWhFZU50bzczQVZB?=
 =?utf-8?B?VEVzTlgvbTBHcVQ4Q2RyTng5dEw3aGdYb3F3Wm1SNHBUTU5ITVg2ekVjMU1L?=
 =?utf-8?B?K1JRQzZqODN1QVdIV0lOYVFmc0s5UjFuMk5DZUJRQUNockhHaE9qTVhBS0NF?=
 =?utf-8?B?Q2QwMjV5a1FzL1c1Vi8vZHNzcWwyL1NQSFRiTXI4dWlBd3U1anRwdUFEWGE4?=
 =?utf-8?Q?9KnWNp1iuTzxZqXx4Xr7lwaF9?=
X-OriginatorOrg: sju.edu.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 43c213b5-c215-4163-0734-08db994a9605
X-MS-Exchange-CrossTenant-AuthSource: NT0PR01MB1038.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 02:36:22.7190
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe5722c4-1202-4d43-8945-3a777a9411aa
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YLYl2Kl9Ot8lFKZH3uGhzwSD9uM7O/OZ8fZ79kWu7Zm+A9iJvWTS45C+JYRVMdPS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NT0PR01MB1327
X-Spam-Status: No, score=3.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,FREEMAIL_FORGED_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,
I am reaching out to you to provide you with information about=20
important business transactions. Kindly get back to me for more=20
details.
Regards.
Dominique
e-Mail:domakye20@gmail.com
