Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3C204023D1
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 09:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236691AbhIGHH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 03:07:59 -0400
Received: from mail-eopbgr50107.outbound.protection.outlook.com ([40.107.5.107]:1958
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S235480AbhIGHH7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Sep 2021 03:07:59 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UEhcPDSlfVj+3EIaW2Ychh/4rGLWSDpqrV5QFzSi19ftgePT8OFhRxalPoVtA4mEKwOTB2+TmK9yHgdvqJN9mThFujmYHEvufoSuVwVSvyNnz0metOseCCT+TK8LGNOXYzHaRunX/YAZJU3LhiXyFOLWtDxwiPtHr0FGnXUmEUq0RuOQUxrrEBdKCf4IDFzLRDOnPaVRg/f2M3DcB9Bt/rpWzMvChPU+hZfRbj2z8ttpbduqw7MsRXHJorZ6ewbCwsr7F+5Mkv+9IB5QSx5o7U0zgnQbpvYhxZKs8M5+L00Uj3WRFYQhWDl3nBJ86riHZAHULF3cTporyKSZ177nMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=amwmIIcmuu3QAIKyxHhkKTR6sUwbNoEetit+v+5U/oY=;
 b=kh8znJDpn+3rpdnSLKzc3gxbsTcFFQlPfLKbsOkK5iT2vqv6piRnuisrZJJg8aFz1GZomvo1/7cJiYjTvQMNL7OI/Ezb+pram8SaGhj0j327pJQOEj8SD+USqun5134tVWHFEJQODcUAhXc//9Xg12swfr7i6LOeNNXoKNjmetyJ8HNLK1WNP4IWPCCyg3Po18DVbIdMQqLMoOHzhu2XR9SHjN5bncdnJ6uFME7bUSvIPdD43HnKa3NMoFPfq4nCIF0iHBkzR75CGUlmz8enq/JP9iuTGJ/ILFWxJGMsYCYxUZlUzz/KVqUl6RmyXp/co401QRuVfasSq6mi7vXQUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=amwmIIcmuu3QAIKyxHhkKTR6sUwbNoEetit+v+5U/oY=;
 b=njjHRUVYD/dQ1BfnoMbTfIfvTr1fQD1OeOn2GdQb6UuWykBpynsy55PdNl6fUCp/qOklxDqanC8bOUiRZQLfkCLLDj+SWWHieduSsxYadih88v3kr1RUbskpJkUgYjlqKGLkUZpGpOhAaJbx4PrSNAO6HYV+fJDgPHrZL0aN3m8=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:d6::31)
 by AM6PR10MB2791.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:b0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17; Tue, 7 Sep
 2021 07:06:51 +0000
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1]) by AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1%5]) with mapi id 15.20.4478.019; Tue, 7 Sep 2021
 07:06:51 +0000
Subject: Re: [PATCH v3 09/18] dt-bindings: power: imx8mm: add defines for VPU
 blk-ctrl domains
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
 <20210906184333.1855426-10-l.stach@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <e5e34d1e-6e5b-4517-2b8b-daf6a966cde4@kontron.de>
Date:   Tue, 7 Sep 2021 09:06:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210906184333.1855426-10-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR04CA0057.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::34) To AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:d6::31)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.40] (88.130.75.72) by AM6PR04CA0057.eurprd04.prod.outlook.com (2603:10a6:20b:f0::34) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend Transport; Tue, 7 Sep 2021 07:06:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5224c1f-760e-4405-3344-08d971ce10e5
X-MS-TrafficTypeDiagnostic: AM6PR10MB2791:
X-Microsoft-Antispam-PRVS: <AM6PR10MB2791569C28E71911976848AFE9D39@AM6PR10MB2791.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BT0tgWVqHUqu38LoDEXqKEOcBom1fQZTou7pzxQakJhG2LL2kInEd3CAiGuNpfvIkKYgo2A2pF9Nty0ZmPIBCZuorca4YIzHK3b/0inpCOH0h7/qXBSYz9J5c406NGQN0JFuGGnjKZLamG9OTLEkPyVkq5WccyViU+Ah3ZaI1YEBQwdALCE7xZYuBvVwmdLDdDWEtsKuP252QNX7gSVQQKOMxkIlX1tu10ZtYs7PMgZ5W3+BSUxXrru5VI/Oc6mfipVYx/3f96VZUB6fU9eB6HsW0swIfwTAPFLEzDNRzIrGyo8IkrY/KTzNijGaI1VE/PADkdBsJe5Gu4aDEiaqydhH/v1sv4YdeO/CtU0O5/2oLjYqvj9eCr23zsD7A43Gt4SvKQDk0wy7xD5sxh/I2z1Hbc4HcBrm3yATOwfI9pOyDSGPfsp4S2BdWDYmhL2RJ4/NgG80jSINs0i5xHJkN6XJD7t4oALYUtkz1k7JXgHCc72YT8d3ZCp+bcQbLp7kDQB/FceOlfBwkn5dlV4xwY6QJEGf9Zy4zeZ43h+QqKpX91Dv56AnBzdZyE+hxBUX3q7eUbmddvcgROk7FheIJ16ho+Ej+oMs6i9/wGP90aCr8aa6d/z1gHucVQz5V/C9auyFUsbPYTX7RglYoymmOpIDy9Y/IR1PM3w/Ybuo+67MaQ2xKCHuqRNeABoQB6jy4lzGI4e3DYzMVmwHcLlqGZ5vOUE8aQ25JrjrGBIz5MPpDVSymOhnxYQsZG9zk/havkUC1pBklYbRRcxKuxdDqdOfajAhs/g1fib+r8tabdEZVUW8XGKMmZBg2kt9RQLGXbnWydHd57riAj9Q+fma5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(136003)(376002)(366004)(346002)(54906003)(478600001)(5660300002)(31696002)(31686004)(8676002)(6486002)(966005)(66476007)(26005)(8936002)(38100700002)(16576012)(86362001)(2906002)(316002)(186003)(110136005)(66556008)(66946007)(2616005)(7416002)(956004)(83380400001)(44832011)(36756003)(53546011)(4326008)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z09BTkhkdjNnOHJwUk1zYjVGQ2ZtMnRCL1ZhZUpnUWJnZnhrRFd5bTJlbVhi?=
 =?utf-8?B?djlKRHlCVy9VWlh2eEVkaDhGQ2pCMnFpNnE1V3JnK25kM0paS0kwaHpPdit5?=
 =?utf-8?B?N1d3S2o5em1tclp1V2IvSkxJcG9JSWRrVGRxOVdLM0h6NkljMW44dzRGeEU4?=
 =?utf-8?B?Y0FqaE1JNGxOU2UrcUlJMk1pTE5pcGd6S3FVckNXcG5MZmJyTWh4NG9iKzZF?=
 =?utf-8?B?bWxMNTNPOG5ycU4yNE9pY2RUR2tIRUhPeFpKVVVKQ0dkTm9JaVQwQ1NxT00w?=
 =?utf-8?B?L2NXbVhreVMyR2FtdnNORGRTYkZDZ0JGVWpKRDRSMlUyTXB0RTl4Z2cycWUy?=
 =?utf-8?B?UVFWTmxFamtpdjFkT2xpT1FPWjJ6Wk5JWE13UHNMeSs3YVVTYjNlbGJKekNF?=
 =?utf-8?B?T3Y0dk1ncCtrTFF2RUJXV29HUzFoWEdLa09FMkhXTlJtWHRHalRKTjZoUzVR?=
 =?utf-8?B?VUZBeVptc1dLR3R6N0drUW44d2RmQkFYODNhNkNkZkZxRGQxNFQzYVdxSjZ3?=
 =?utf-8?B?VVNRM3QzWWovaTROZGdvc1dMOHFiMFJyQ1pRTzgxeEkxVjlER1g3WmpHZGV0?=
 =?utf-8?B?RnRHYmR0R0xBNTN5dnMvYmUyV0l1UHJ6SWtveTFRQk1sQVN3eWVIZnBrOEhK?=
 =?utf-8?B?VnpTcGZpMEd4eGFHTHBGaVRGSTllWW16T3hoZ08yZTRpbThHN2RJcjJHYjhR?=
 =?utf-8?B?cXVSTmFlVVhKOXpiM2hrQ05rOGdUd3BYWjVZK2pFd3puSDJJd1o2bm42UkhN?=
 =?utf-8?B?MkJnMWtiU0xlRDJWejBsQXZLdWRnSHVXYWxEV21yQlQrdFRCQzA4QWE2eGZP?=
 =?utf-8?B?cHJkQkVJYVVjNndlSTBBaHpVUlREaUNnc0o2NVBSSlNiRXB2bVFOR2JzQ3RS?=
 =?utf-8?B?S3J2VEJqSUpOS3NWTXk3N1g0WS9SSlVrWE5aNGVzdjkvTG90U2s1YWFrbzFP?=
 =?utf-8?B?L3o5NjQ4TEFyMUQ1NDZxcXRJV1VqeGVjdUQ4aTNGVElwZlpNTTYya2ZyY2ps?=
 =?utf-8?B?eTlDajAyeVpnOVNtbTEwLzluT3hkcnorbmxoajAzSWsvT0Z6SEtRQ2I4cXll?=
 =?utf-8?B?R2RsRTl0aEwyMXlLd082YnRMalJXNzI0OXpnWGZ4U3hvc09xNEhkWVZFNnFS?=
 =?utf-8?B?U1FUM2Y5WHBpTXpNU1dNOEl4cmZpR00ySFF3Qnoydm9rZDRXclZJZ2Q0T0pn?=
 =?utf-8?B?YzRoWGFvWk9YSjY0dVNjWVJocThxZi9heGN6MVhaWW5maEtUTGduRnY1V1Bj?=
 =?utf-8?B?a0E2S0JDNjRKNHlnSDl2WDg3RDJSVHV3YlJmcnFYa21Yb0NiaWJGdWVybUtu?=
 =?utf-8?B?ajc2VjIyaUtZOEZzbWV3alZDNUU2ZEsweFgrSktmbFo2Y3FkVk0rdXFac2tZ?=
 =?utf-8?B?V2FYQnB1cUpoU3Vvek1wTXFVbGF2bVpUQ3JJejQzZU1FUDk4emE4WmRhbVA2?=
 =?utf-8?B?bk9EbERyWm1CN3N4SEtLb3JGU1Y5N09wTUMyUVRGU3dyODZkRDByNGRSajdp?=
 =?utf-8?B?RWZaRHpJYkhkSFhpOGc5c3F5UVlJWjM5UmdrRjd0MWVkZDFGZWhSWEwvWEFT?=
 =?utf-8?B?bFZFQnVhY0VFdzlSR2lHVnhMWVBqbDBpK0FZbzBpVWRxTytPNGNnbXRCeC9X?=
 =?utf-8?B?R2lRbkpRalZuTFN2bkxXeFg2TnFGVHBRSXBNMCt5UHJnYUZCMmxxaWJ5UHR3?=
 =?utf-8?B?c2Q1MENDclFkTkx2eWZ5L1VzdDVHWmpqdVYwOE91S0tPbkk5MXR4TjVheTRj?=
 =?utf-8?Q?v9o0QcNrtmxaRtfc8gUSKsevrXP36CTN2tdhwqg?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b5224c1f-760e-4405-3344-08d971ce10e5
X-MS-Exchange-CrossTenant-AuthSource: AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2021 07:06:51.2502
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dwoXBDtiu3TOCpfQznEIcpcMSXEnA3WMhtpcBesa6yUHEuvrfNDynZ2b1Smr42ip4JM6WrjXmmFY2Nq+3eLqKlaq2DudXUuxcPl4/rNWEdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR10MB2791
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06.09.21 20:43, Lucas Stach wrote:
> This adds the defines for the power domains provided by the VPU
> blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/dt-bindings/power/imx8mm-power.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/dt-bindings/power/imx8mm-power.h b/include/dt-bindings/power/imx8mm-power.h
> index fc9c2e16aadc..38b0a56fd7d0 100644
> --- a/include/dt-bindings/power/imx8mm-power.h
> +++ b/include/dt-bindings/power/imx8mm-power.h
> @@ -19,4 +19,8 @@
>  #define IMX8MM_POWER_DOMAIN_DISPMIX	10
>  #define IMX8MM_POWER_DOMAIN_MIPI	11
>  
> +#define IMX8MM_VPUBLK_PD_G1		0
> +#define IMX8MM_VPUBLK_PD_G2		1
> +#define IMX8MM_VPUBLK_PD_H1		2

I wonder how these defines should be named. Here you have a
IMX8MM_*BLK_PD_*, but for the DISP BLK-CTRL you only have IMX8MM_*BLK_*
(without the PD).

Also in Peng's last approach for this we already have defines for this
[1] that have been acked by Rob and might be useful as a reference or
you could even pick up Peng's patch and by that carry over the existing
R-b/A-b tags.

Though, in general I like the shorter versions you provided better.

[1]
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210629072941.7980-2-peng.fan@oss.nxp.com/

> +
>  #endif
> 
