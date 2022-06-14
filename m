Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB1C054B841
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 20:06:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242964AbiFNSGR convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 14 Jun 2022 14:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233430AbiFNSGQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 14:06:16 -0400
X-Greylist: delayed 10151 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 14 Jun 2022 11:06:15 PDT
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5DFB7FD12
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 11:06:15 -0700 (PDT)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com
 (mail-zr0che01lp2105.outbound.protection.outlook.com [104.47.22.105]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-33-pDIm-sONN-Wq88UWA48mvg-2; Tue, 14 Jun 2022 20:06:12 +0200
X-MC-Unique: pDIm-sONN-Wq88UWA48mvg-2
Received: from ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:2e::8) by
 ZR0P278MB0313.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:36::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.11; Tue, 14 Jun 2022 18:06:10 +0000
Received: from ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
 ([fe80::2879:acb:62c8:4987]) by ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
 ([fe80::2879:acb:62c8:4987%8]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 18:06:10 +0000
Date:   Tue, 14 Jun 2022 20:06:09 +0200
From:   Francesco Dolcini <francesco.dolcini@toradex.com>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        marcel.ziswiler@toradex.com, francesco.dolcini@toradex.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Decrease the line length
Message-ID: <20220614180609.GA350285@francesco-nb.int.toradex.com>
References: <20220614173206.2885817-1-festevam@gmail.com>
In-Reply-To: <20220614173206.2885817-1-festevam@gmail.com>
X-ClientProxiedBy: MR2P264CA0134.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:30::26) To ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:2e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: afb937bf-7e78-46cb-ee7a-08da4e308fd0
X-MS-TrafficTypeDiagnostic: ZR0P278MB0313:EE_
X-Microsoft-Antispam-PRVS: <ZR0P278MB03130BBE3FF11BBC539F8F4AE2AA9@ZR0P278MB0313.CHEP278.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: rD8ZoVqy/9r99zawVtrhbdjRL98RB/gQZcQMCQHqePCO5HPM4xFo5D5ka7dqXOfvFF7zSc/rWSWe4JTmiKBUKoJm0f5bbKVmoShKQjMA86TFMGIs2ENaxbmcCQJs3g2PK2LJXY8drrqh9upkpbTfD+TnD4HoQpeFVRvODSrnLTH5nrYJZRZQNkUIANY4HlbIeAzKWMA+d3ysGhBH2fILNPBHRn/eOBpqoqTE964i6V75x733YmkjQ2n0ZVX7i8tJOoOrs5PuMp+dKJRDnf/gtxXdZOJNok5eJ+q4GxV5Qa5QYhBr84/CLgM+Oy/w3T4mmDJu2TDAvrb1lht0YwWXH1KQjCSz1MjFKHpWbLw6wt8QZGRCpc+6dNlrgAl7/HwgLNuH/5T/NxaZjzM8udkRzBdzKSiMxHdqzIskv8otTcOKCfMrOSIeAVvkPGnJQ4b704VM5gGOamqHzBR9Sr1Qi86mcr2eHpZyrWgvoj0KlU+/9Pktan7ozvhdz7kCSWBl91VAiF0p6yoMKK2BtlZYYqtbqn1xTucdpMwIQ+mV/MD2+iYn96mia3Yszb3xvb2KyHs+CGmyfWaoszqyeqcsGjg38EYSX87xDRvB/s4+UyViRQIan/jthIoQMlD6FR8Oes0stwKFK+2rRQQ/VwVNp7nojpZwR8tcnkV5XUZhSvFcWn56klcUv0CN6Pvb4sTvOv4TGdm8BWOPhfoJkcuDxA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(39840400004)(136003)(346002)(4326008)(1076003)(66476007)(8676002)(66556008)(66946007)(508600001)(4744005)(83380400001)(41300700001)(33656002)(186003)(6486002)(6512007)(6916009)(44832011)(2906002)(8936002)(26005)(86362001)(5660300002)(52116002)(38350700002)(38100700002)(316002)(6506007);DIR:OUT;SFP:1102
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cFh7kGdMxc6iuizVVN+ApuGttToGDFA1S39OZ/+bt2Jvg9mc3sNdRb1IUNZT?=
 =?us-ascii?Q?KskNRP6Cm9+V0UwjFnKXbyWlgqdZHZO635yDmpMhUoIXc6IPldmYfVufITu4?=
 =?us-ascii?Q?kO9CCGl7ubY2+f/YyJW+mEgkkFiLUCe5RjO6RHmqBZ3LqdYlG+16vWB+pAVu?=
 =?us-ascii?Q?MqlWJM9/O98uOMJBl4OHcj7n6Uu/UkEdrD+lAIeVRSr6OLpto3ir3hdFADdR?=
 =?us-ascii?Q?zXXbXFLGjQqbt1JueUlahXEnp0unf0smW2lZylBRGTiVQVJGxBjqGLCNy9P3?=
 =?us-ascii?Q?vRKMyE0jAqnCpkW43/j0Ua2D+gmWIYp1MWiZ7CUseE3VQYVW9JTLmV9f8XTv?=
 =?us-ascii?Q?7W+rsrubI2ZBhxP1e5telx0GLh5aT0oe2GA5UlTzw+VUJxpgT7MJlSZshpx3?=
 =?us-ascii?Q?KGegXVA+RV0O1QhI04mHphGQdtyoX3DK3+HxN0KlDWlqvlt+zIbAaU0YGkc3?=
 =?us-ascii?Q?gue/ruoZJEJuncBMz9ky45LI9YvknSExakRML3LXGcjOi9YE/ZhMFY+48uPy?=
 =?us-ascii?Q?RwJjNDyJrrBT1dj/ckRPnRZom+gDpqf6WMXmtlKc1cc2E9pBXf8MuZP7u1Q/?=
 =?us-ascii?Q?w86vsKTjWzwpu0zJ7tp6r+6H6hL5UkvkxAi4+jbF1Nyfv8I4pxDjRQjAE8Fj?=
 =?us-ascii?Q?MFv06upQLEd54qg5F2zRImmHBwt0KeKNT4DAyDC+lNoxLJes1qK+GZiNiCPu?=
 =?us-ascii?Q?jZnHPpmUFdZU1GwFUZBxND7Zp4C3W4Us6FdawqxjGVnmRHIfGnONtozXSOec?=
 =?us-ascii?Q?zoz+Kl/4Nuk9kbS+vDpsltHzz48ZejDitukNj7KmkgpvTqr8l+jV51J3YBnw?=
 =?us-ascii?Q?M0BIDpAWxqmTSgsKHNK+c3zfKLAhkAWqmpDurzdcTAAUlRvElJ52mjGzrTpt?=
 =?us-ascii?Q?hKDYCMbLdpf/pchyR+ETLqd8vK6aYnWwn6u74mpc6qDw5h5gOn13U+wLLnp9?=
 =?us-ascii?Q?LzfsUOtwNGxl/3L8Gt+SFWcg//fmNHgb23K1w6pZfUiafiM0urBOCOuQUvop?=
 =?us-ascii?Q?5c51YUiszgJmjxpCHyBTD8sSbqgTs5OlaQIjkpnGPRlz8duA3jy+xGXxxA5u?=
 =?us-ascii?Q?7rGE20mbdx0+/ytzA9DZsGhUF7h06t8F3LGjUyn8SRbkgjOYOyk8YfEytKyU?=
 =?us-ascii?Q?ZRILVoMDDiW37PGcYWCzx/cp8uPTU2Y2iqWq251U7VFCVeysO49QVADe/+5c?=
 =?us-ascii?Q?iTY+fFeb+8nLOHJR0x/Gsy9xeS1+96dKL8SlzAadBZt7rQZ/zOazKxut0Irp?=
 =?us-ascii?Q?C37VfnPYzJoggjlBV0CzdD5gUyB/AF2bDAEnMJjLa1ajaDMlJKSO6eDuLN45?=
 =?us-ascii?Q?joZZOq/pwzb9+8QUI62lP64C+w4+njyAXkgBdViUEoyje0F9vw+fzhc5cMsW?=
 =?us-ascii?Q?xChb53sJcf8Hqz2Ptu0+Dd/Ndo9wb1gn6VxI+gbjWNIzueID78SOkMPz5tms?=
 =?us-ascii?Q?KKhQVM79v/rXwwPz4kEk5ugYciL7EvYRGXBZVN8VQdGNaBAcHJ+Z+eokSV83?=
 =?us-ascii?Q?8a9VgEw0RHsEIkKlkVE20aeG/DaYL0EtUDADHRaude9BlqhxThY8AfJxcpeD?=
 =?us-ascii?Q?hPN0Lu1eHfTiyB0+qSTRifLJpGLQJI2piEVjuBheez9HDAZjGDzwvTLVeSpb?=
 =?us-ascii?Q?qnfmaazeSydQoNkTINagz2Es3UwUbV9J6XZ6ft2bZbkGOgKwvnTBafU6jj7e?=
 =?us-ascii?Q?nMb41pwqoHiGad26kakj78UPS5kTBCX27Vwt0Fq7l3EsuvbQ0HjWbQDu/AA3?=
 =?us-ascii?Q?93IvID+MevnXgvmS90591sCsnifBAAI=3D?=
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afb937bf-7e78-46cb-ee7a-08da4e308fd0
X-MS-Exchange-CrossTenant-AuthSource: ZRAP278MB0495.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2022 18:06:10.5358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9vm0rcxe+N8zoWHgfX3qGqsylUXNaCQTP/uOosqwL7jGLmPr7bLpYvW2GlLvDdA0DXAyBuHqIjsERSYgQnG7k2xC/A154SFOhifrs8JD5Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0313
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CDE13A77 smtp.mailfrom=francesco.dolcini@toradex.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Fabio!

On Tue, Jun 14, 2022 at 02:32:06PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Decrease the line length of the toradex,colibri-imx6ull-emmc boards
> to fix the following build warning:
> 
> ./Documentation/devicetree/bindings/arm/fsl.yaml:684:111: [warning]
> line too long (111 > 110 characters) (line-length)
> 
> Fixes: bb0fa1533715 ("dt-bindings: arm: fsl: correct 1g vs. 1gb in toradex,colibri-imx6ull-*")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>

