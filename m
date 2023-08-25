Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B480B78815A
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 09:58:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231940AbjHYH5a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 03:57:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234471AbjHYH44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 03:56:56 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2070.outbound.protection.outlook.com [40.107.20.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E82BCF1;
        Fri, 25 Aug 2023 00:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlPQbdFJsTK07bfDF+CYgK9wNjQyq1ftp6sux+T/tv12N2cDnQuylnuJ+mDUyKmG81xcrQCUExDVzNNp9ATTALqhecLGQOIQYSR0AW5RSpR0Eu+x9D4S+p7mn7pXtWCleMatX49h8h5gOQox9B6fmtShXv0UJNQl7buQuBBWxMbqkRutBXbNPP7Rtq4md2V55mC4eGdhuKxRgUIADBFlkQUqbgxXtNLMfWh24sRmhkZT8FTt/ygx5HL+M8FcGdIy89fF2hqWGKgI5BKyfeDoOUs9TXVPFffYhSlnL8GLuy0GAkizGbcJtEl8zCRGQvSW/m7QP/5pL0YmXnUpIOyPgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/DKgkivC8i4F586eldUxBaW74S6VN+BXe36y5gEbecM=;
 b=jycTzlnHtG8Fg0R19oIr3atveWZSVN4lTWJ9jxSaqGIPsu0YJhabuW/bXjC7tlR3PNdoQ38I/YnTdzfrPq6gZHzMMT7FQW26ODcxXqiJmx40RRL8ItSYGWZUDg5IYXHmXD4iIO/3GNkU9aRP/StHadGXVJK0WEw7jK0emMNmZQEwYlaYnaPjJaac9duHSUa5pK35hzgSbF0m50oioAvxwrbwKnnvuxU7lL53aPHJsRorteLj0IklB+QbFASJRiWCUrA1lrrhpquvhvhxOfEtgREfFVpUGpETwvuJBTvNPkK6dwKZzb+JW39auKigQdx2i/cB7tYM8f6WjJGMhy5PmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/DKgkivC8i4F586eldUxBaW74S6VN+BXe36y5gEbecM=;
 b=rt8H9H6vSYbsKK6w75UAKp1zyIoAgfvy9zQxV6CUBFbWNWywkCkBu2DFPS/llgMPzbAJybqQ7G6CqSBvd3ETfwIhdkW2nfAoboWFtmmzAMgOFeShqQaBM167dCrHki1VEn/gFfhAHEEJwJeqRxFIjIfZe6UooaDiiXZcDdPBg8s=
Received: from AM9PR04MB8211.eurprd04.prod.outlook.com (2603:10a6:20b:3ea::17)
 by DBBPR04MB7595.eurprd04.prod.outlook.com (2603:10a6:10:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 07:56:49 +0000
Received: from AM9PR04MB8211.eurprd04.prod.outlook.com
 ([fe80::3df9:f31a:be7f:4b97]) by AM9PR04MB8211.eurprd04.prod.outlook.com
 ([fe80::3df9:f31a:be7f:4b97%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 07:56:48 +0000
From:   Varun Sethi <V.Sethi@nxp.com>
To:     "krzk@kernel.org" <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Pankaj Gupta <pankaj.gupta@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "clin@suse.com" <clin@suse.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "pierre.gondois@arm.com" <pierre.gondois@arm.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Clark Wang <xiaoning.wang@nxp.com>,
        Wei Fang <wei.fang@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Bough Chen <haibo.chen@nxp.com>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "kernel@lists.infradead.org" <kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@vger.kernel.org" <kernel@vger.kernel.org>,
        Gaurav Jain <gaurav.jain@nxp.com>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
        Sahil Malhotra <sahil.malhotra@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [PATCH v5 01/11] dt-bindings: arm: fsl: add imx-se-fw
 binding doc
Thread-Topic: [EXT] Re: [PATCH v5 01/11] dt-bindings: arm: fsl: add imx-se-fw
 binding doc
Thread-Index: AQHZ1ZRNognu21NiNEqcymppfWTOnK/307kAgAH3e4CAANRjgIAAAJfQ
Date:   Fri, 25 Aug 2023 07:56:48 +0000
Message-ID: <AM9PR04MB8211FA3FED3E3F91B7A48434E8E3A@AM9PR04MB8211.eurprd04.prod.outlook.com>
References: <20230823073330.1712721-1-pankaj.gupta@nxp.com>
 <20230823073330.1712721-2-pankaj.gupta@nxp.com>
 <20230823124340.GA2022486-robh@kernel.org>
 <574e93da-ec74-f1a2-7170-c16bb225a2bb@kernel.org>
 <DU2PR04MB86302A2639CA64D8DF08BF0495E3A@DU2PR04MB8630.eurprd04.prod.outlook.com>
In-Reply-To: <DU2PR04MB86302A2639CA64D8DF08BF0495E3A@DU2PR04MB8630.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB8211:EE_|DBBPR04MB7595:EE_
x-ms-office365-filtering-correlation-id: 17edc3fd-f9a0-41eb-f7a0-08dba540d5b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sdu2qDnbEvnUhc9hVokSpSEu9HLbtXS+WNJ9KtwNoMwz8qwTMZJmIgWzctyEOCwduUV/X3+zaXeOWPZU80PrSSefUoupcFEOJMHGUU6wORk2RZYs6GAVTnYCyP6AnSbKyLO8DWZklnmoSIbEmYPScbzYgtTV7LTytWrXW2B/RJbSv9S6v1B+aBH/Zay2TRwPUZma3uCc9eB0pnIEMXKNIou9UqWorX8alsJCuSbACIEk+n6wEnTpFH8Y0rGu+LRM0g+ua7jLjqgFR2he+9w182/ftoVUp3/ZxTJBoYBKT4HWwEHbUQQubXqRiO0RTn5uhGVl5JnQSeN93Q3z+Jk3pM8tgnke8afhf4r+U1taWlOn/zSRzya9+zm6k1wmBDcoJb2fo9Gv7k/S5hXWr9naydynqPdY8dl4u7X491KI8wCGWbDPG9WdL57taOdHCktR6fzu8X6tZufR/yHkAvKfTQN44AOIB7BkIBp2YvGNsLGUgjYnBK/C1xivBo20M6jQvbYxXvqTtywT9lzSxMoJJAd3qQjP3sfc+UZNLtGPc40EbT3uXdqyCY6Z22kTO0cFAzRIktOpYCeKHsSSWLJ9cuCLaylSU7AZy/vs338aEKtjWvGtXDafFrjzqdekTapAWWafCLND5HAeUuvIFvLMmQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8211.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199024)(1800799009)(186009)(122000001)(38070700005)(38100700002)(921005)(66899024)(99936003)(8676002)(8936002)(64756008)(41300700001)(53546011)(6506007)(33656002)(316002)(66446008)(7696005)(66476007)(66556008)(110136005)(66946007)(76116006)(86362001)(71200400001)(9686003)(55016003)(26005)(478600001)(7416002)(83380400001)(2906002)(52536014)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVhyOS9jN3R5NkFSeFhPMWkyZXMySTkwZ2RWYnQ0MS90V2NWRURYS0N1WWRD?=
 =?utf-8?B?SnhXaVdTZEVERDdSMXo2dUxuUWlHY094dVdDYVlnamlScllHMWpnSlplNjZR?=
 =?utf-8?B?dVNGejZyOWQ2L1pRSTdHa0ZUdjV5YnMxdWpWNjlLTUhVZ1JNLzB2OEpST2lG?=
 =?utf-8?B?M2IwL1hSd2lPNWpoZy9wMVlFYW5jOHBRMkMzakszYXp2WHRoL29GYjgzZFlG?=
 =?utf-8?B?cU5aRTRjSE14Ly9YZHFkb25lZGJBbHJCWnN4LzdtV3lRS1NHOGRWWFM2dURO?=
 =?utf-8?B?MC9jNjUwWnNXZmUvYUlZVHFiTUEvOXV6ejRoZWR6T2M1UThydFdFMk5uSlpM?=
 =?utf-8?B?S0l4Vjh6OWZSQWtMQll6NWNoK3luSHZzRGZuNFhELzBBKzY3aFlIenR4UEdH?=
 =?utf-8?B?WlJQbXYzM0JjeUM0a2gzcjNiU0tGajBsYWQvNXdWWTlNUCtqVlB5ekFKZUc0?=
 =?utf-8?B?NWU2bkFVSkJQQWQ5VyttUWY3d250ZUd1STlNV3BUaG4wTGhMczFGZ1NGU09v?=
 =?utf-8?B?Y1VCZzBWVlduTHRUaFhiQ1FVTy9JdUkyZ0tra1A4ZnVCQk5BVFhPVGd2d0tY?=
 =?utf-8?B?QmNDcGxPbzFiNS9OK0dCT2FieFpZMEdBZUZNVkFYeDN6dVcxNERnYjdIemR2?=
 =?utf-8?B?WVVLaXpTRmNPdUc0aXEra2E0Y21PQ1l5eVcwN3RUZFJiNDJYNXR4L1BEdzlU?=
 =?utf-8?B?VXJlVVpKNThKRTNpMjFpUUZ6ZlF3c0NPa2ErUTBMd2kvQ3kxY2xDUmQ1RnJ2?=
 =?utf-8?B?UTRLZ3g5YmNCVWlJWDJ3UzFQNUtuVHAwNGtOSVBkR1JjVXdqWFMrdllUMHJm?=
 =?utf-8?B?b1hHVzk0YzMzL1IvenVqK3RaMWtvMXM0ZXJKL21pbWF1SmQzenFPbHhJaFRS?=
 =?utf-8?B?N0NSRksrTFlJaWNMRm9Pd2NtY25odXQxaitseFlFc0RRK0U0WUgxYVhWd0lC?=
 =?utf-8?B?YW9wa2pJOHV2cFRRQ2duZDJ0UExNRlNKSUR2dDFVZTZRenQ4Uyt4ZjlXdFRT?=
 =?utf-8?B?eUdFZEwwc0NDZDZUWTJVdGZDeWRDWmZRT1AxL2R0Smc0THJWOTQ2V0hSdG9Y?=
 =?utf-8?B?MFVxQW0ydzlaUU45Z25lMjNuMXVCY2o1OGx3QkhqVDV1bVZzSU5BV3NMMlFD?=
 =?utf-8?B?L0Z2TkZ2WHVuTCtENWdsMWRRc2xmMlByT0FTeVgvaW13MFpyN0xJbS95TUZm?=
 =?utf-8?B?VGh6WUdWMEZaRWJyVEQ4RTg2NFBOeTNHQnlCVmhLVXErdXFmRERqMy9kcC8w?=
 =?utf-8?B?Y09BYXJqWkFPZEEyZXM4NzVXMVNEWDM0bUFqbVptVmFNdG1xUVBHYkxLM2Y5?=
 =?utf-8?B?MlprNnBkUmRTVXpMR09zOG9uWnFpUlJhV0FxVmQrQzV2ZFgwRVBmT1c4V1Bp?=
 =?utf-8?B?TzZQVk9wNjlJTzZaa2RNVkIwOUlMd3orSjhBUjZVTkNnQkdzMk5xclhGQm14?=
 =?utf-8?B?dFM4M01OQllUVUt2VytOeGNiUXc0OTVoZldZeUNuT3pQa2VSYXBpRno4aUlP?=
 =?utf-8?B?R0ZvckFOeWNkNkoxZ29UM21OVXRSSlZyOGt4K3NIVnJaRFVCdlNtaW5BRnVW?=
 =?utf-8?B?UTcwN1I0YXo5WWo3Q1h3OTZUbFJzL1Qzb1RyQURhcmlvZzRwcUVhYkxvaTdq?=
 =?utf-8?B?eWMzM0Z5ZFpsSTVNL0dTUlZEMmZyTkUvdXVFVkp0UzdmMWFHaHd6NmtkTXZ0?=
 =?utf-8?B?RkRwNExISlNmRXo3Y2JPUDRBMWt6WjhwaURnYjluZE5GWlZ1ekhzZUdJN1hs?=
 =?utf-8?B?OU1Zd2VDSVpoWjM2NURmMDV3MC9yT1RKOWNaUDRob1ZnTHJwOUN5MTAvakQ3?=
 =?utf-8?B?S2dlNCszczNuRVN0R2RKZm5qUlhQSEhYQWJXblMyNkxWK0pTNkpJbDkrMDgw?=
 =?utf-8?B?dThmK283Q0FWREZ2a05qNGpnLzN3Nk9vRkx4UDhsdHNxZE9aRkFXSnFkVTJQ?=
 =?utf-8?B?Tm02d0YrUEt1NmFoUXFBNUFrV3d2THB4SGFnMzVRSmpOcnF3cjVNS28waEdU?=
 =?utf-8?B?RWdYcXUzd3dqWU1taFU5ODNMb1hrWnQwVFNvZlplcTlZdHFTZGdzSFFreml6?=
 =?utf-8?B?c3AycUdtbkZ6OFpjb1JCR1NlcDJ5aU9vaWRHMkNTVmhtMzUzcWQ2V3ZmSkwv?=
 =?utf-8?Q?OglU=3D?=
Content-Type: multipart/signed;
        protocol="application/x-pkcs7-signature";
        micalg=SHA1;
        boundary="----=_NextPart_000_01AE_01D9D757.C97DC610"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8211.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17edc3fd-f9a0-41eb-f7a0-08dba540d5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 07:56:48.4282
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pw06heOed1JOFdpu5s7+XaJ+Rt25xzBMQbf7GMy1ecEpqnwYsXzKpJRKoBpfe0DS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7595
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

------=_NextPart_000_01AE_01D9D757.C97DC610
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

Please find comments inline.


Regards
Varun

> -----Original Message-----
> From: Pankaj Gupta <pankaj.gupta@nxp.com>
> Sent: Friday, August 25, 2023 12:56 PM
> To: Varun Sethi <V.Sethi@nxp.com>
> Subject: FW: [EXT] Re: [PATCH v5 01/11] dt-bindings: arm: fsl: add imx-se-fw
> binding doc
>
>
>
> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: Friday, August 25, 2023 12:16 AM
> To: Rob Herring <robh@kernel.org>; Pankaj Gupta <pankaj.gupta@nxp.com>
> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; clin@suse.com; conor+dt@kernel.org;
> pierre.gondois@arm.com; Jacky Bai <ping.bai@nxp.com>; Clark Wang
> <xiaoning.wang@nxp.com>; Wei Fang <wei.fang@nxp.com>; Peng Fan
> <peng.fan@nxp.com>; Bough Chen <haibo.chen@nxp.com>;
> festevam@gmail.com; dl-linux-imx <linux-imx@nxp.com>;
> davem@davemloft.net; krzysztof.kozlowski+dt@linaro.org; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; Gaurav Jain <gaurav.jain@nxp.com>;
> alexander.stein@ew.tq-group.com; Sahil Malhotra
> <sahil.malhotra@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>; Varun
> Sethi <V.Sethi@nxp.com>; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>
> Subject: [EXT] Re: [PATCH v5 01/11] dt-bindings: arm: fsl: add imx-se-fw
> binding doc
>
> Caution: This is an external email. Please take care when clicking links or
> opening attachments. When in doubt, report the message using the 'Report
> this email' button
>
>
> On 23/08/2023 14:43, Rob Herring wrote:
> >> +                                                          |
> >> +  +------------------------------------------------------ |
> >> +                     |             |           |          |
> >> +  userspace     /dev/ele_muXch0    |           |          |
> >> +                           /dev/ele_muXch1     |          |
> >> +                                         /dev/ele_muXchY  |
> >> +                                                          |
> >> +
> >> +  When a user sends a command to the firmware, it registers its
> >> + device_ctx  as waiter of a response from firmware.
> >> +
> >> +  A user can be registered as receiver of command from the ELE.
> >> +  Create char devices in /dev as channels of the form
> >> + /dev/ele_muXchY with X  the id of the driver and Y for each users.
> >> + It allows to send and receive  messages to the NXP EdgeLock Enclave
> >> + IP firmware on NXP SoC, where current  possible value, i.e., supported
> SoC(s) are imx8ulp, imx93.
> >
> > Looks like a bunch of Linux details which don't belong in the binding.
> >
> > Why do you need your own custom interface to userspace? No one else
> > has a similar feature in their platforms? Something like virtio or
> > rpmsg doesn't work?
>
> +Cc Greg,
>
> I doubt they care. This is some stub-driver to pass messages from user-space
> to the firmware. The interface is undocumented, without examples and no
> user-space user.
>
> Best regards,
> Krzysztof

[Varun] The goal of the driver is to pass messages between firmware and user 
space/kernel consumers.
At the same time driver also enables firmware to use the storage via Linux 
user space. We do have
middleware applications that utilize the driver. These applications leverage 
cryptographic operations and trust
provisioning capabilities offered by the firmware. We can provide references 
to the middleware applications in the next
version of the patch. We do plan to enable the kernel crypto API interface to 
leverage operations provided by the firmware.

The operations that are exposed by the firmware are performance-sensitive and 
session-based (thus serialized). So, the Virtio/rpmsg model
is not suited for our implementation. Also, the secure enclave IP, with which 
the driver facilitates the communication is an opaque block
that doesn't fit the rpmsg model.


------=_NextPart_000_01AE_01D9D757.C97DC610
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIg+jCCBaIw
ggOKoAMCAQICCE4Rpu+H69FRMA0GCSqGSIb3DQEBCwUAMGUxIjAgBgNVBAMMGU5YUCBJbnRlcm5h
bCBQb2xpY3kgQ0EgRzIxCzAJBgNVBAsMAklUMREwDwYDVQQKDAhOWFAgQi5WLjESMBAGA1UEBwwJ
RWluZGhvdmVuMQswCQYDVQQGEwJOTDAeFw0yMzA0MjEwNjQzNDVaFw0yODA0MTkwNjQzNDVaMIG2
MRwwGgYDVQQDDBNOWFAgRW50ZXJwcmlzZSBDQSA1MQswCQYDVQQLDAJJVDERMA8GA1UECgwITlhQ
IEIuVi4xEjAQBgNVBAcMCUVpbmRob3ZlbjEWMBQGA1UECAwNTm9vcmQtQnJhYmFudDETMBEGCgmS
JomT8ixkARkWA3diaTETMBEGCgmSJomT8ixkARkWA254cDETMBEGCgmSJomT8ixkARkWA2NvbTEL
MAkGA1UEBhMCTkwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDAWrnSkYP60A8wj4AO
kATDjnbdgLv6waFfyXE/hvatdWz2YYtb1YSRi5/wXW+Pz8rsTmSj7iusI+FcLP8WEaMVLn4sEIQY
NI8KJUCz21tsIArYs0hMKEUFeCq3mxTJfPqzdj9CExJBlZ5vWS4er8eJI8U8kZrt4CoY7De0FdJh
35Pi5QGzUFmFuaLgXfV1N5yukTzEhqz36kODoSRw+eDHH9YqbzefzEHK9d93TNiLaVlln42O0qaI
MmxK1aNcZx+nQkFsF/VrV9M9iLGA+Qb/MFmR20MJAU5kRGkJ2/QzgVQM3Nlmp/bF/3HWOJ2j2mpg
axvzxHNN+5rSNvkG2vSpAgMBAAGjggECMIH/MFIGCCsGAQUFBwEBBEYwRDBCBggrBgEFBQcwAoY2
aHR0cDovL253dy5wa2kubnhwLmNvbS9jZXJ0cy9OWFBJbnRlcm5hbFBvbGljeUNBRzIuY2VyMB0G
A1UdDgQWBBRYlWDuTnTvZSKqve0ZqSt6jhedBzASBgNVHRMBAf8ECDAGAQH/AgEAMEUGA1UdHwQ+
MDwwOqA4oDaGNGh0dHA6Ly9ud3cucGtpLm54cC5jb20vY3JsL05YUEludGVybmFsUG9saWN5Q0FH
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
HwYDVR0jBBgwFoAUWJVg7k5072Uiqr3tGakreo4XnQcwggFGBgNVHR8EggE9MIIBOTCCATWgggEx
oIIBLYaByGxkYXA6Ly8vQ049TlhQJTIwRW50ZXJwcmlzZSUyMENBJTIwNSxDTj1OTEFNU1BLSTAw
MDUsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9d2JpLERDPW54cCxEQz1jb20/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9i
YXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hi9odHRwOi8vbnd3LnBraS5ueHAu
Y29tL2NybC9OWFBFbnRlcnByaXNlQ0E1LmNybIYvaHR0cDovL3d3dy5wa2kubnhwLmNvbS9jcmwv
TlhQRW50ZXJwcmlzZUNBNS5jcmwwggEQBggrBgEFBQcBAQSCAQIwgf8wgbsGCCsGAQUFBzAChoGu
bGRhcDovLy9DTj1OWFAlMjBFbnRlcnByaXNlJTIwQ0ElMjA1LENOPUFJQSxDTj1QdWJsaWMlMjBL
ZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXdiaSxEQz1ueHAs
REM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9y
aXR5MD8GCCsGAQUFBzAChjNodHRwOi8vbnd3LnBraS5ueHAuY29tL2NlcnRzL05YUC1FbnRlcnBy
aXNlLUNBNS5jcnQwDQYJKoZIhvcNAQELBQADggEBAEEfsA0F+xNIIHRidw1YMWKTkWBmsGRri99r
6fQ1dL6dBG2KEsPRiF9y/Uf7jadR12HglTbmWUM5xdqxCWqf4UAxQDH1OoXn2xdvaP4ApmIMI2i8
Wwa8yJT8fBdmQQn5NEfqu9zPpfQL4NHEmvUqgXMhZzsa2dGrJoX/oNe7zw2UPnUNL+KB6B7N/P3o
Pupu18TuxAMIKYnGr+cb4Xx6iecFuncI7OLu3t/AkwUYtUYO/H8tr1E8YSj52rlSPb8xAD6VHGxm
daNqC79xMXbXx7SdgzRkb8kJKBTQhNcYz1xmsGTtP5ZE9FE8m8MgRq5Bh+7q8TWzMdeA9mIQIDE0
qOwwggg4MIIHIKADAgECAhMtAApIQhnEGx1xgCPsAAEACkhCMA0GCSqGSIb3DQEBCwUAMIG2MRww
GgYDVQQDDBNOWFAgRW50ZXJwcmlzZSBDQSA1MQswCQYDVQQLDAJJVDERMA8GA1UECgwITlhQIEIu
Vi4xEjAQBgNVBAcMCUVpbmRob3ZlbjEWMBQGA1UECAwNTm9vcmQtQnJhYmFudDETMBEGCgmSJomT
8ixkARkWA3diaTETMBEGCgmSJomT8ixkARkWA254cDETMBEGCgmSJomT8ixkARkWA2NvbTELMAkG
A1UEBhMCTkwwHhcNMjMwODA5MDk0ODE0WhcNMjUwODA4MDk0ODE0WjCBmjETMBEGCgmSJomT8ixk
ARkWA2NvbTETMBEGCgmSJomT8ixkARkWA254cDETMBEGCgmSJomT8ixkARkWA3diaTEMMAoGA1UE
CxMDTlhQMQswCQYDVQQLEwJJTjEWMBQGA1UECxMNTWFuYWdlZCBVc2VyczETMBEGA1UECxMKRGV2
ZWxvcGVyczERMA8GA1UEAxMIbnhhMDY0NzUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQC4HbZ3M7z3dSiGvIB/e1S8Vk9d1Ll7qBV5X9aGUQ4ufPKfd+3PLNCVmKGnzlULLKuZGhZdGWgL
6ICnJYksySHcRhfMaaX3r7Cp/M/Y2JCqaf2baJ5wtwq5IHfGWBj4XL1E7tv6Z3UzGdnAsxis2MjV
FvdzqS5w5qgI52pkmVXpHqUn2bazRlkXnIYbhSQZL4hZf7kzJGlgJmQyWYbr51PMWyn/JHfSEVjz
GgghaLLdZU9rEm3x0rvAV/GZCTJPp/lrpHHA/SC+CFteDosHoDTHqN4mlV7zfg/sAKy4QEnMmlHq
jQXxx00DiwyjTzg/7ZvEVVvo0GUBVl8aMtGGujHFAgMBAAGjggRXMIIEUzA8BgkrBgEEAYI3FQcE
LzAtBiUrBgEEAYI3FQiFgsB+gY70VYbthTiC65lLmpJWP4Xmim6EteF+AgFkAgE7MBMGA1UdJQQM
MAoGCCsGAQUFBwMEMA4GA1UdDwEB/wQEAwIFIDAMBgNVHRMBAf8EAjAAMBsGCSsGAQQBgjcVCgQO
MAwwCgYIKwYBBQUHAwQwgZQGCSqGSIb3DQEJDwSBhjCBgzALBglghkgBZQMEASowCwYJYIZIAWUD
BAEtMAsGCWCGSAFlAwQBFjALBglghkgBZQMEARkwCwYJYIZIAWUDBAECMAsGCWCGSAFlAwQBBTAK
BggqhkiG9w0DBzAHBgUrDgMCBzAOBggqhkiG9w0DAgICAIAwDgYIKoZIhvcNAwQCAgIAMDsGA1Ud
EQQ0MDKgHwYKKwYBBAGCNxQCA6ARDA9WLlNldGhpQG54cC5jb22BD1YuU2V0aGlAbnhwLmNvbTAd
BgNVHQ4EFgQU02lKsh6BFAv1r0HH4kII7jSbHEwwHwYDVR0jBBgwFoAUWJVg7k5072Uiqr3tGakr
eo4XnQcwggFGBgNVHR8EggE9MIIBOTCCATWgggExoIIBLYaByGxkYXA6Ly8vQ049TlhQJTIwRW50
ZXJwcmlzZSUyMENBJTIwNSxDTj1OTEFNU1BLSTAwMDUsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUy
MFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9d2JpLERDPW54cCxEQz1j
b20/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1
dGlvblBvaW50hi9odHRwOi8vbnd3LnBraS5ueHAuY29tL2NybC9OWFBFbnRlcnByaXNlQ0E1LmNy
bIYvaHR0cDovL3d3dy5wa2kubnhwLmNvbS9jcmwvTlhQRW50ZXJwcmlzZUNBNS5jcmwwggEQBggr
BgEFBQcBAQSCAQIwgf8wgbsGCCsGAQUFBzAChoGubGRhcDovLy9DTj1OWFAlMjBFbnRlcnByaXNl
JTIwQ0ElMjA1LENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxD
Tj1Db25maWd1cmF0aW9uLERDPXdiaSxEQz1ueHAsREM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9v
YmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MD8GCCsGAQUFBzAChjNodHRwOi8vbnd3
LnBraS5ueHAuY29tL2NlcnRzL05YUC1FbnRlcnByaXNlLUNBNS5jZXIwUQYJKwYBBAGCNxkCBEQw
QqBABgorBgEEAYI3GQIBoDIEMFMtMS01LTIxLTE5MTUyMDcwMTMtMjYxNTA0MDM2OC0zMDc2OTI5
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
eaejxcTDWhGkTzMAAAAAAAA=

------=_NextPart_000_01AE_01D9D757.C97DC610--
