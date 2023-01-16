Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7499466BC31
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 11:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230338AbjAPKvh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 05:51:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbjAPKv3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 05:51:29 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2125.outbound.protection.outlook.com [40.107.15.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F4FE125B1
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 02:51:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXOivt3ClTTygQyr8OXBsTaBQ0YNhmV81BwMjxt+oHybsMNvZnH8RqfFhFoBghKC/qaKCF9jzz9lcqaaUpZJaIBddRPN7tNFwdenLCqOAW8Uuy9H8XI/nIqnWonD03X5atFdRXocogPfTDbapLv4zhcK8h4dO2vogRw/bSk9mYDoAMF+ogpMCV/O31XSRJzEDIJrHwa3UJ5848X3CBYGURdEt47cfHjgKmUPE2d1DB7DDOEG7u8A34tONIaDU0zfsjpCOD6FCOSIeyKNzQx3VBS5GQRnRgC6HVDWvgjcwKW7nxOBryQqRDVSijh83NsSFvR035I7YzG3GH7eHzb7mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNRcTKgXEOBpx2qkKdoi5RqjYhcU/9Mci9txslU2Uno=;
 b=LzEhQBH+dNePrQFi61+gQMAFJpUZXv+0mhuNYNU6AdUoRDLlVIVT/bcwmcTa8lZ44qz0oyZOJf3DERcYcGr4G+xHPL2eP6oD5j6Z+RjQyrrB31Aa/566VhN+wBMcDt209WD88qvf+tsub9LkQ3ixXbSmoxW+0aKggXPX+LGZCknI08LqT4PYxREHP8ejgka9GF6P+yZvT7Ih5fieejpBs8SilMJztYin4+lcV12W+6Vy3RNbkrsR3gwXRhxVbUnOLNx1oi5WNfvime81QSsLg7Xeu75R9EFprTsx/5VePzmj86m1O4a1MDN1O0VOqA2Z4EtSKK+X1wmid+ljvOnnoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FNRcTKgXEOBpx2qkKdoi5RqjYhcU/9Mci9txslU2Uno=;
 b=kwQX2LrmKbGXt3IgiNwK0QIl5+AUwul1JI8MExbEO9fc0//ILbyFR6nGarWx+jLENat4T16MvjLk1HbQf0jnyGMRgpsc1nkNfJJNhtGOPfc9PeIhh1y16KAK3SnQ9kceDHWUZmJ2YGb9nhXPR8aY2sRo0KCer0TDtSh5kgSIbl8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by DB9PR10MB5907.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:39a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Mon, 16 Jan
 2023 10:51:24 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863%9]) with mapi id 15.20.5986.018; Mon, 16 Jan 2023
 10:51:24 +0000
Message-ID: <3b945215-83ae-cd3c-e863-97f71cc32622@kontron.de>
Date:   Mon, 16 Jan 2023 11:51:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20221218051800.495932-1-marex@denx.de>
 <20221218051800.495932-2-marex@denx.de>
 <7b77825d-cbdb-0150-c30b-aa97fa39fe27@pengutronix.de>
 <748a94f5-6977-9985-a547-ef3897db4bb4@denx.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <748a94f5-6977-9985-a547-ef3897db4bb4@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0156.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::6) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|DB9PR10MB5907:EE_
X-MS-Office365-Filtering-Correlation-Id: 541d0fc9-89c8-443b-f665-08daf7af9ca2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XX82/DVwIfvA+RjEDaSq1iDLESVoWKrC5qpx612wusxCo+XUYQQMbLnyy1l5OQM2DXQviD+tlMZjPo8DjQBEpyhcC5CU5nl9mdvwmLDRRMj3ficaR4WRfNvSXO1NyrLBUGTL+t0uXjkF+j0ZCdvgYa3s+khRglm8GHa5+FhRrG0W1JFDP+5C7xvDbB6fDyvtTFRN6x4t9jMuQo/ZoKXu6xCNnzK4r+dBNUmc5ZrpcgHoGVAfgK2VUR7RM9IElFMds7zJ5gsgCYtfXqGBnE5qgm/CBlnpJX86Z7Fu6/LUAFoNZ5iSO6xp22CvqkML8Dr7lWuhTcrmCUen8zXD2t2VFoaHnT9OWb8ULg7Py3+7i3MAPkbrfAIuzO/+FuRp87DdOLSXqwofUXEp6Uj0j4axeUffvxGB9p4pjSVKF7OgLoN5PNQS9huJfoP3D/SNpH2XaQwRy4N0r77KLbo8BPEznuY6YEyB5m7DWAAYHsShx7cH1rUGHrttDlz+nXHsZA5+aYhV2EV0kC0S1xI9lnVCD9uLQAqURgtxTv0Z2T0D5La7lPdWKvX/CecX/Ifx4tqTNc6yen1A8eEjlskaE0r/ad1M9SnujVQN2jFUVE3EGsrfKDQdzKi5yZciaQyCDnFKHHcWWSpz1kPwfgLtSMSJjGAcReP0a8/+WCgzZAhNWOQIG0haonTxka68rkQRwTGOm4dTv0kAR6BNSy9aoFwjgA0RGVG8vG9CdYKroBhjKhdb9yziNCN6KPKlsaIbXQVH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(346002)(39860400002)(136003)(376002)(451199015)(31686004)(6506007)(38100700002)(7416002)(5660300002)(53546011)(478600001)(66946007)(66476007)(8676002)(4326008)(66556008)(6486002)(6512007)(54906003)(2906002)(186003)(26005)(36756003)(44832011)(8936002)(31696002)(86362001)(110136005)(316002)(83380400001)(2616005)(41300700001)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHRGQ3JjNWxNTzkyQlhVRVNMQ3grS3RZbGk5a21oRWZRWUFXemlYdXg4L0Ey?=
 =?utf-8?B?aDRPWXhUMi9EOTc1STdFVnZlUTd2aExsZlY5dThjQjJZdlMxS2k2YlBnRHhr?=
 =?utf-8?B?aWZoRjczQTVVeUpiS1FEVGVEVk9mQU5hMXBjQmVTb3pkQmlDSG05UHFUZGZm?=
 =?utf-8?B?dFdXV2VQdllYSmhxYnMxc2dSUXdwbURoM0ZIcmVYOWJWQjBlelRGMWNzeWVD?=
 =?utf-8?B?RjVqVGUzRm5zakFZZmx4WUQyd2lMelFOcTB3Qm1YaHlRMGdESGt4cHBVTXEx?=
 =?utf-8?B?cVpHcWlLZHB3aXpQc2hwYkZnSCs2ZTIyL1BVYnBrRFhSVzhONHNPRVVNSExw?=
 =?utf-8?B?YVY1V1hKQU9WYWVtUjVqUEM4bXJ6S0RiRlppcXNnREZzRmdMb1ExVGc1NXpm?=
 =?utf-8?B?RE5aT0RUd0Nmd2FnWUNSVXVQTWFIMjgrY0J3ZmpSSDN2eFFGMVBpY0tiYzRl?=
 =?utf-8?B?M0tnQWFjT2ttcjVRNUhLMjc5YU1GN2ptNWtlaGs1VlQ0dVlnODFQWi94YWp6?=
 =?utf-8?B?dzQ1eGlnckpmUVVXMjFUU2N5c0JWSHF1aWZlc0xTQzBLNHNLcWRRMndnbU55?=
 =?utf-8?B?WEYybkxyRVVHdEw1dS83K2VjWlhQTFJCMCthNTl1c29KTHhvcW0xbXRjOTZB?=
 =?utf-8?B?citGY3F0Y0ZuMmx0Tzk1MW1rcUFBNUZIU3ZEWENHdFZSZHhJVFFINk5zQTFa?=
 =?utf-8?B?Um10WnNSemJrU1RpZFlQVmxmZFhNMUR5M1pUeWdCNmVhSDBJdEx5L0svZFpo?=
 =?utf-8?B?a3lMN1ExNEhJV1gyWWFPS0VnVnZFcWRQUWNqZUFPV1daRU9zY09BRGRIWUVY?=
 =?utf-8?B?dmZpRGNKd1VFeFV6OXJyN0JveDZmT2Y2M2ErdVc3NEd5ams3UGN3L2lib3Fv?=
 =?utf-8?B?QWh4a2JiVzNTMWp0UEoyUTlqTXdBeFVCY2pKeFJCelFRS2FHU2VqUGgrNDNy?=
 =?utf-8?B?bm1pcWNrL0wzNXdsdkI0NmRtMGZNV09SelNGcHJ3QlFucVlNOHU3V0dvMEpX?=
 =?utf-8?B?RmFlOFFmdmxqUThJQ3VEelBMNnl3STUwNVJ1K1FJSkpVNysxWGtKTzYxSGVH?=
 =?utf-8?B?K3o2YWxYNUc2bmFmUmthT1BleVVUT3krNS9vd08vSTVqY2cwM2tpUXIxek9G?=
 =?utf-8?B?TmhQZ21lM2UyTUhEK0ZiYmlVMGVCM3QvOC8vL1FkTThuRWt6Sm9wWnhJUEZR?=
 =?utf-8?B?dmxNWVArQVVNZWVFa0RlSFJqbkFMNzhFMWpkeTQwSUZodWtXdXJFeVNIUlhX?=
 =?utf-8?B?aWZ4QkdDQUduWjdTcFFEd05Cd0k5ckgxc05Pak5lbkFVcWFPNXZTQVF3czNY?=
 =?utf-8?B?MGo3LzVxU3pQdnRxcUl0SUhyT25SQkpZYnJvd1FCSmVPdXZxaUtDV2RlOWpO?=
 =?utf-8?B?OFZvR0pjcUZiMXhwVjVZSldRS2VqQXRZSTJlSUZQMjUxRmJwZm5IOSt6WGhq?=
 =?utf-8?B?WURqd0NBMHNzQnZCWlBMT1NUSDRQLzNPOWJNbG1BSVRIYzRBcVl6RTVjdnRw?=
 =?utf-8?B?ek4xelNwalJ5bmxlM1EvSUZZWmtYSEhadG14a21DK1prMm5pYlowZ3lYYWo1?=
 =?utf-8?B?Zm14V3lkYjVEVTAxNTVBWmFMV3BUVmVHcGxLa0p0ZUpENXZYQjBhREM3SHA0?=
 =?utf-8?B?SDU1K3krbWJLaWdoaGZmYmNIRjVHbDA3Z2xMVDFoT0txa3hWMXovY3hJd212?=
 =?utf-8?B?dFhIOUFmUkVjOC9yUWZUaTk4UG5yM2hEUlE0NWxLY0N0UDV0RHFuTTlaYkUz?=
 =?utf-8?B?TVZLMG9SUlk0U3hEeVo5S2xLREFPK3lQWTNha3VPSlZ3Y0U3WjFhUlZJR2o5?=
 =?utf-8?B?T0JiV0pzeklqZ05NWk5lbkF2MGhMOWM0TnNmbVp5UFpmUkdmYU9TYzV2RDlL?=
 =?utf-8?B?ZjlLVVNlWXRTQjN1Zys4TXo1Zi9QaDB3MUxXTFljRFBkUFFncDd2a2hwL3Mw?=
 =?utf-8?B?SEM3K0VRaTFMQnNXYURlMlpGRFV5UXRhaTJKZnFFODBpbVhlWnluMVl5TmlQ?=
 =?utf-8?B?TTJya0VpL0wrSmJaSnhNUTRKbUZzSmJaUnBKQzV3a3ZjTEdrWXQ1UXN1Q2l3?=
 =?utf-8?B?OUFqTEd2OTBORzRNTUZTOThDTGpMeWtMREZPNldJOWhGOENyZHRrNHJOOFVu?=
 =?utf-8?B?RGVQUWZiUURReE5wMDBvU1dVem9Jd1lUN3FieVMrZFBaN001c0NYOXVGK1RQ?=
 =?utf-8?B?enc9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 541d0fc9-89c8-443b-f665-08daf7af9ca2
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 10:51:24.7015
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1sTtukU/BMAX5uclXvoJQ+hOXT9fZS4D06qgUopxr74cAyz4r5ltnQQ7qdlyEXE8yxuxeeHsFITVmK2aSy+jjMlWDZHQs0PZF3Ikcr4nWss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB5907
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16.01.23 11:39, Marek Vasut wrote:
> On 1/11/23 08:38, Ahmad Fatoum wrote:
>> Hello Marek,
> 
> Hi,
> 
> [...]
> 
>> Could you share your get_maintainers.pl invocation? I'd like to
>> adjust the reviewer entry in MAINTAINERS, so such patches get
>> into our kernel@pengutronix.de inbox as well.
> 
> Plain get_maintainer -f path/to/dts
> 
>> Some more comments below.
>>
>>> +    pmic: pmic@25 {
>>> +        compatible = "nxp,pca9450c";
>>> +        reg = <0x25>;
>>> +        pinctrl-names = "default";
>>> +        pinctrl-0 = <&pinctrl_pmic>;
>>> +        interrupt-parent = <&gpio1>;
>>> +        interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>>> +        sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>
>> Here you assume GPIO1_IO04 is muxed as GPIO.
>>
>>> +    pinctrl_usdhc2: usdhc2-grp {
>>> +        fsl,pins = <
>>> +            MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT        0xc1
>>
>> Here you mux it for USDHC2_VSELECT though. Is this intended?
> 
> That's a good question, other DTs do the same thing, I suspect the
> sd-vsel-gpios could be dropped,

The sd-vsel-gpios is only needed when the hardware has an arbitrary GPIO
connected to the SD_VSEL signal of the PCA9450. IMHO, if SD_VSEL is
connected to the VSELECT signal it would be better to drop sd-vsel-gpios.

> but as long as it is not outright
> harmful, it can be used for backward compatibility to support less
> complete OSes which may not handle the eSDHC VSELECT bit , so I figured
> it is good to keep both options.

Would be interesting what OSes you have in mind? The eSDHC
driver/hardware should always handle the VSELECT signal, no?
