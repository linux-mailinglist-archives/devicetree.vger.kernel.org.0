Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DBF2760C0A
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 09:36:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbjGYHgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 03:36:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231887AbjGYHfV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 03:35:21 -0400
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2099.outbound.protection.outlook.com [40.107.15.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1BB22136
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 00:34:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1d5JPOGmOvlfc9hpLhiC2FmubnqMHhESC7SeID5XKzT596l812tjZ29r80GC9jxsFPFY5HHsd/VnKkSvG4dCg7RLa1/LrntucepSQMX9kKlCWMCe/1JYu7zrmnufv/Gt9Cd4t7JZMqUNGAqr3SZ6YQmrZFTbBZkbQWiHXjrudFfsxy6homTgiRRPxNgbFnsQCZ5IKYq/v7jelBYOLnxWB7qVLnPk0zAdD+9mFmoGvwt9Br5bIrQE8EabpyAw561lyz+fq86CACQvKV5hY4VD+mUguUAgQPrn6yu3OQIFIv8nMTJ+6Vsmwt0PEKwggruDxgAFYOKgArox+H+SXFIiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZIfNYGL+cX8KBXuQ5OHTKwZ/O5hdpdOPCeJEGU0H40=;
 b=CHagmK2yYz2ZkwMbjsZt09krCFG70X4XplgsUrjExWqLp9B+wU7lUN7fai/tA4HJn6AWnfbwDkZNx+pwyj0NjvjAVBKS/pwZUIHD0ghF7OUNV4CtMYcIhNNy6zpaRROVakfnBg3KgH38W5i4kIKzlg6eQiSRiN2oHjep7B2AU+X3RQV13jIHyOchFkQpWArtuAAX5keJ7RuNG24PhUudhInil86D0UcXJYX+4EIfHjlbLZ+KU2OfcgtmvoNSo9+IFi+4eWtysfvftz/rxwsyZV16drs2VEkVMDCj721Ses9a1TwdRdpAdwQrf78vyWWRDl0NL9W1Sf7/SFVzXSo9yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZIfNYGL+cX8KBXuQ5OHTKwZ/O5hdpdOPCeJEGU0H40=;
 b=jvJia5qTSxmwpCkWkCJC1bELqnAwjDjEl2S3eQfnUrCSLMFW80ySJoNB328lHoTqvfpF+RhwE1vhJefgjiwgZIFgCtu/mDriinsdCDpxk2y4bAv089AMGzk/YXl/PQTw/I3p+phIkJY5VReNvSuu8yjnyNnPDTtD1OsONIpaSCE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by PAXPR10MB5383.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:284::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 07:34:20 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::95ae:6cb:e93:cce0]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::95ae:6cb:e93:cce0%6]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 07:34:20 +0000
Message-ID: <2605b7f2-b776-3759-5619-9c4c08d6129a@kontron.de>
Date:   Tue, 25 Jul 2023 09:34:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Content-Language: en-US, de-DE
To:     Lucas Stach <l.stach@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Sandor Yu <Sandor.yu@nxp.com>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
 <20221215201100.2897501-2-l.stach@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR02CA0174.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::11) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|PAXPR10MB5383:EE_
X-MS-Office365-Filtering-Correlation-Id: 9191c2f8-8cb4-44f1-81c3-08db8ce18f4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y24bkIoTbed2+Q+bh7zkZWGcVKZ+8cJeSYjOhajs61rZMAuqXnCWPCA2RYIAaBYAJ/tpjuKUxSsfXNW8rve27uvNyj2fyii54Ju8tyWrhLGmprmLVcMDXmvHji7CVUXAF+q8RUgwFt2A6wSMHsb7Kh9/yIupO7el6/ydfN9/aiUMelDRhbCQq2DjoJWwnyYtZ7ZJYuiJhR5i/MTVHlQoRtQPA1yuwxV62ESmdWJ1w0LQcBP8MMSr/wAHmny/qS1Fw/lZYUz7f/B8UsnmnxZuk2E3jEIUefyl0X1nPcGVtyhDWDOobY8hjKS+DTJ921C19lxsueQco2m7hRBmzXbiyqsFJG5e+0mGIGqONlhS1+LeKSUxMK8wChlIfkvbsmPp8GN5m6ywsEUfDOg9SM2eolSJLaR07WCJoHsiClOcQkjwTX7zB3gmM73AIk9R3ziIMzfpfi5xJOoZMg59V6eW3LQOghSpDJNld/XCQG66lb736bN2+buDUh4DRBSP1xB3rJEH/kYI9wrZkJAR/tzX+pbTHkcct6MHMNVCSTA+tJfM3/gl1GBWwu+LBaeVMZElPHRktKF3y7+rgzLUoISb2FR4+6LaKd/W3VD3fpbtYJaAjL1MoiU6SXBezIENNd9ZzSkp5fkgJ0Dq8cvxCKr6zQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(346002)(366004)(39860400002)(136003)(451199021)(31686004)(36756003)(31696002)(86362001)(4744005)(2906002)(44832011)(7416002)(186003)(53546011)(6506007)(26005)(6666004)(38100700002)(6486002)(6512007)(54906003)(478600001)(110136005)(4326008)(8936002)(8676002)(66946007)(66476007)(66556008)(2616005)(316002)(41300700001)(5660300002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlZYYnBodmdpOHAvcHNaU1NKWlpaUlhOUHFNQU12RllKSUVwWk1xaEo0U0Mw?=
 =?utf-8?B?MXhTNkdDNkdGd1g1cEErRGhQQlRPbWpOVDNpQ3NjaXk1Wk05WlkxYzk2RGFr?=
 =?utf-8?B?NElXUkxCSU44QzEzY2wxT1pobUphOTNvZDNneDZxTExrdTQwR1ZvVHNEYWxh?=
 =?utf-8?B?ZUdrSmZtbzFEbkhXM3krOEdmNmdNdjZjTHNWUGlCeW5EVjJ1cTJWVzNjamVR?=
 =?utf-8?B?UnJUa29hRWdKM3AxNEg1UmF0R2lnc1NvS0pCSjdOOUhBTVJqNWNnbVd5NzFM?=
 =?utf-8?B?aXpLS0hXZ281Q2p4d3JTUkw4a0hOdTdQUW9ZZlJJdmtaMmdjb1dLNkNwcldn?=
 =?utf-8?B?aXpYZUVMTzkvMmtxb2grb1JBQzJVbVZ4QWJsY2RuOWwrTVBaRko0clZRMGlu?=
 =?utf-8?B?UjljWmhJUlJLdm02Z3NwdFRYTHYxSVcvcDRtV09wT2N1SFlaV2FIQk5SS1hV?=
 =?utf-8?B?aHJyNmd0ZnpQeldMdVRhMjYzM2pIK2IyUGdYSlBSb3NIRFpZeTVjZ2hhTjBJ?=
 =?utf-8?B?R0l3MUllcjVmRjNRNkd6bTM0azN1UGtnamc4T1cyWkhCV1JjQW9uMTZRb2hT?=
 =?utf-8?B?M2tUYjMrYWlOQkVYWVZmR3BReDZhNFVURGV1UG5ZZmpxOEhnUEdNbndQa0Zw?=
 =?utf-8?B?cUxwenB6eVYrbWRFbHIrbmtMVVV0ZEpEbXU4S0xKbmtXeXp4NXVYSVllYjgy?=
 =?utf-8?B?VnhhKzJtcStKak9kbVFPRFJJUnhLalRHVHhmWmY4NGtNTDNZZVg2czEzM2Z6?=
 =?utf-8?B?VHdkL0tSMjZHRlFWeHZXOEE5S0dZT1dCTVJ4L1VWdWkyV0FjZ2hyUDZEZTRM?=
 =?utf-8?B?dzd0UDNwTzE0S1kwdG0xUzJPaUljRVZzdnpOZjlsUlhIQ2ZyOXg4a05aTGRi?=
 =?utf-8?B?M0ZETUgvT2VoeUlod2tXN3hZNTl0L2h3K0h6NUtCZkNQSk1sb2ltS0hTU1Vt?=
 =?utf-8?B?QVR4NUEzRi9tNWthWStXWGo2dTVLT3dMYTVadVRwK0Q0L3dMR1lGMGRhdzNn?=
 =?utf-8?B?cThMc05IZVlDaFVCdDFqaXBLOEhkblVLQUNlcHBOazY5UmgyZ3ROZ1pqRCtB?=
 =?utf-8?B?bXUzeWxXQnc1aU9lcGRIZzZzNmhkOGVvSUo4Z3pPamtSM3hvV3hSMnhmS1E3?=
 =?utf-8?B?VnVRVkEzb2dtbWlKRHFMZEJVOGtIVWlHZEszZ0dJYUowbVd2dXBveWhnMWwy?=
 =?utf-8?B?WHhoZ3Q0SVZ3M0pRUXVQVTNRcGwzeUwveS94WW9DczJWZGQ0ZEpRTllDaGNJ?=
 =?utf-8?B?YzhnbTdxRnYzY2tjQ20weGhQOC80VnpkSlhqeUlnQ2ZReUZESkRySEhvY3lt?=
 =?utf-8?B?Sng2VDlDL3lsWDRuWW9neTU3YTNMNUF1TFJnZU1UQU4xWmt6clVRRWgxa09N?=
 =?utf-8?B?ZTNJa0cxcE1ZNDFMYTZ1b1ZveFNYeDhGcy9MSEI1S1NlL1RFeTB0TUJPSllV?=
 =?utf-8?B?NE9qWkZrNnlwMVBsK3hHT2xvTGpWRWMyZmN5MXVTT1VYT1JOU0JMOGRpR0hZ?=
 =?utf-8?B?YjNGalZ1MnRaOU90ek1XbjQ3TkJnT1MrZis4SWRrb1FYL3FicGFhcStLQmNy?=
 =?utf-8?B?dWs4SEFJU29RQ0c1ZTIrSnc0Y084ZmdtUk1RM1hobjlNVUhBa2tKL3BPcXMv?=
 =?utf-8?B?Q1d5MGtuVUl5OGxMdit0ZjdINWRUVUdXRzFsK3lCQmhQVnlkRDFBWUE1SmRm?=
 =?utf-8?B?UU14U2YrVUk3R0F1RFNuRTU5T3laSWV4OU40ZGhiR281czNpZldlaVZFWHZp?=
 =?utf-8?B?UXF6Z3ZNdUxpdE1OR0w5dGpQTFdVbkl6d3NsWmxoSitCNGdJRktnOGoxRjJK?=
 =?utf-8?B?bkkxMklSZXIyZEM4TkF5WTI0K0ZtS3JMRlNORzB5RE9lbzZJNDVWZlZIV2pa?=
 =?utf-8?B?djYvMlpreW9mZDZLU21zS2wrNFMrblBUZXh1RDQvdGtHUjlwUUNlNTBPV0sw?=
 =?utf-8?B?UjNpV250RTNHNUN4U1E1OTdDZUw0U2FodmYxZnVMSU5UTzZ3aTU3a1JtNWxF?=
 =?utf-8?B?NklKZXJjb0E3UTdXV0JqL0JxZ2I5ODdtalRtZWE4eTJ1dmhzWXZRNXUxakhu?=
 =?utf-8?B?L2VMVWRLQ0Y2NllaV29nZWNMRlR6RHFpT1RwVDR0T2FaSUtpeFRvMGM2TW1l?=
 =?utf-8?B?SXl3cXNScTdmNVNjektUaVN4aUxsM0NxNHFkM0lLTVZxNUN1MkkxWm4xeFhy?=
 =?utf-8?B?UkE9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9191c2f8-8cb4-44f1-81c3-08db8ce18f4e
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 07:34:20.4564
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jO49e/erFS/ES6yqQ+9+Yh6mGHw6uJYo27XB06I1fACwzYCgeEuuaSvkzJ4DFnkGaIZlv/oqj4k2ta7C0Ifg2AWa2uzUM7MhnfRDkk5iDg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5383
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15.12.22 21:11, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>

I tested this on our Kontron BL i.MX8MP board. Feel free to add:

Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Lucas, any chance that you can revive this series and bring it over the
finish line?
