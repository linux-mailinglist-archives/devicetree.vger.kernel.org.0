Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30ADE66BD59
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:57:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbjAPL5e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:57:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbjAPL5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:57:00 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2098.outbound.protection.outlook.com [40.107.6.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2366E1CF73
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:56:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4soXo7Zk8VKudwBIezQrA+FJHn11HTZBfNYgiJcuk75ohF5UWSw0lbxURHuGK/w9fwDb1qBWH+ozmIsoOPQQ0MKJxG/W2ap/uofgj212wyelslY7OsjGv7Az5BhIdULKltGstYJRVdOGcZTVsg146kP1GbL9CSXtiZzesVbfpNWKqN1KSTwC9tzb0v1MRXBK+ifa2fBXFWhLHTK24E7etidkBbfHr+4uAHU2RbzrbkZ6khzfNfUUHt9iolpKb3J5Pu0Kb29ctDxUoiTJFw6x0Ey12YMnNCK8wVySw1NDtFB5neVzfUZj1Sg+XAtj0mkx5QplWhov+DscwwEtdY9LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZxyIjE+E1tNSpgn/K/2Z2nRkWfjW9C79IiZLddUOA8=;
 b=UM6Ij2j8w4OBUwI4QnmWsQFSSKtRMp2r6KY9+Z0FYIhfdwrfZ6kalJ10exGeRPHUhj0TQ+uSJMqreDjvlQYVMIGRazogY8OrNtOWg2FXpOJPAxiHAweoczNGgaVdEc1mBhJT7Fy6sgGVxPC49m/bX5pQVONoW32Y7XeL1kPABFC5hu3Zr2e0Zk0cLcI9f2UQDsTVDRcuw7705rAWirc/poiMaLOHOcv4/3mqXnFNe6hDz/63sSq5LyF2kWQ2XRKPoU7TH3UUvA+MsQjKwgphg5DmJH0DEYypcmTwBkmFdyWxzKJb7UypF/4ENaD4Fy1YV8h6DXYQMjQyXJ3m1OH1lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZxyIjE+E1tNSpgn/K/2Z2nRkWfjW9C79IiZLddUOA8=;
 b=C2gz/PhZa+vgRjzr8wiDQ7gTNDgm6tCjqfQvu4NOAoAiUOUj74yjrUL0i5kts7AIYFY4modkvqZ513fRhiWmbP6Rnh+OVy6sGlDGcJhQCDyvnK3L2XTSgcFRu5mGUN1pw7i0UqUDyNKENIao61heFr3c7pyqRYEfPPSoQtde4K8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by GV2PR10MB6525.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:c3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Mon, 16 Jan
 2023 11:56:56 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863%9]) with mapi id 15.20.5986.018; Mon, 16 Jan 2023
 11:56:56 +0000
Message-ID: <b6d14fc5-7762-c186-1302-589fcd6f6f03@kontron.de>
Date:   Mon, 16 Jan 2023 12:56:54 +0100
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
 <3b945215-83ae-cd3c-e863-97f71cc32622@kontron.de>
 <0ef9774e-4d0a-e71e-ede1-c0252bab3170@denx.de>
 <42cf3742-e33d-a1fb-205b-6ed7f07d2b91@kontron.de>
 <1166a1e3-14ea-f858-1073-59e55571fa86@denx.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <1166a1e3-14ea-f858-1073-59e55571fa86@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0013.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::23) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|GV2PR10MB6525:EE_
X-MS-Office365-Filtering-Correlation-Id: 73af1dc9-672e-4b29-7aa5-08daf7b8c409
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pr1xtk3ogvyDbcsUFhzBE0X7TC6LC20SnAi7i/oCKxUUFyGFRTDUbrVMGvLpsFGuJUsJi7mgd1PC3nJsymKVitXs1GAQkhO40SDscpDycwB0/GqEmCGIfyGeJG/x96P+YnOALLEGfGlPeXeFq6KJg79QmmxtWeMUDGpiyyVBBv0lVVk4WbUBteARw3y29Vur5akxTixXjoZx4vmiYcXZAjHL1MSJXTtLzP/7FY77SnxUm6+jXbuRPtc9f2mHPMw4W3qUdbELYmDGLhXmeD8rztLRJdN+S8T+XKjn5E3nZtx8U13xnQ/29x+RIhyYymfPFUPJpCQ5zUvHL0p8LtlOmKUYBflCvCtgkb3P2XNlMfKO7SMXrxj20HSA45nozryF6DNkEdAkyLODMgw8FIYhmKFGNY70p8CFkUByN9UMNHBo84b3t0YxYHF3s/NS7asd+n92SX3fMvhFS8L/C2BKjaW9Zic4BUDqvcL7ldsxsV5eL9PAXTF9Z3/9q3LfxgqlG4oZgGKgVroyotjM9rOc51t2m4ek6MK0frlC/mYierhZjUDKp3y/7D7gV8i+aVXn+4g2twNJ9aO34FZL+B/T02A28th6Vuz3/GeqgiJsWz/JQZsn7hJFG1gxoXStZmAmMeb4Rdo8pBSkEN9Hq3+a8DiLLsSWejTOwsy1SwCPTUcqoce89DUVxv62228gYgpjyJv9dGZPXe13VmZMgMYJjoCDc37w+1S7HF4/8i1nDuJSFfbAKFbsUfzugLxvpz54
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(451199015)(5660300002)(7416002)(316002)(2616005)(53546011)(6506007)(2906002)(36756003)(31696002)(38100700002)(478600001)(86362001)(6486002)(54906003)(110136005)(6512007)(44832011)(186003)(83380400001)(8936002)(26005)(31686004)(8676002)(66946007)(66476007)(4326008)(66556008)(41300700001)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wmg0Q2dBMlRnZ05OWGJmbFFjTHY1WjN4S1FoZlIvUE5NVXU0UHRUTlcyV1FQ?=
 =?utf-8?B?ME1kMFlpUld2ZGFiMnJGVGQrMDU0RjZHL0QrUHdJMVhTYXZOUGo5Wi90UEpL?=
 =?utf-8?B?Qk1IZlJRT2x5UUxaajdMbXpCK0dITmh6anZZWlpHLzA3bVBYQ3VDRmVwZ25S?=
 =?utf-8?B?VEdtakNQV05QaE5xN2VjdCtaVW5kYitHc0pQbHpOUFJBK2RXUzhCNElWK2dM?=
 =?utf-8?B?dURYNzJ1bjRKRlU2TVBxY3BieHNaZDdOWkhoYTJrbTl4U1ZHcTNGY29DTHIx?=
 =?utf-8?B?K1NkUkJRc1BCY1lQZEpzWFNtbEN2SCtTUnB3Sm95aGtKUlYvOHpMZFdZQzhB?=
 =?utf-8?B?eU9pejZITjM2dWxtUGR5T3k0UzZzRjh0ZGt2RkZFaGFjYm9WaFpHZEZSVEdZ?=
 =?utf-8?B?bitidHFZODNKcitFMVIwNmhoL0pDYUdBUXlGRjBBTWR1S3NMM2E2SWwycGZQ?=
 =?utf-8?B?YnlXbkR0NmZNTzl5aUlpUjQrb01DSnpuU1NGOXQySUJEc3VFYVZteVVnVFNJ?=
 =?utf-8?B?QWhLWkdGQnZmQm11dTNhMS9EaWMrcm9RTm44YjZpWDhaWnlSN1NEcDNnUU9R?=
 =?utf-8?B?NzFEeldWVmI1dGJPdWlMbWxzWXN4azlQVTJacndUcmJkVXlFWitmbmgrNlhx?=
 =?utf-8?B?OXF6TGhFVzkwaDYvRG44c0QyVEQwU1ZVT1RuVGxOR1ZYZGNhZEdsNUxPd1l6?=
 =?utf-8?B?WkR4Y1gyZVZsUlZtYndoWE9DYkhSSGJiaTZWN1VFL0Ixb3dNRzJadEE5MTdY?=
 =?utf-8?B?a3hvUEM3KzVwVWlLanlLNDFrK3c0NWZ0RlhWdjZmdlpFTVFBU0lVNE90Q0Nq?=
 =?utf-8?B?K1p4cXZUb0xwcXpnMlI1clY3NURicHZBMEp1ZWlsZkJ2SXZqS1BMTFlLbVVI?=
 =?utf-8?B?VFhHNGdPYlFrSkdNRnF2OEhKdGp0UFJjaEt2NXJ2Umdna2gvYTJYTElNSE02?=
 =?utf-8?B?TFZSWWpwQ3VRZ1NBdm5ENURXcFNFSGoyb3dNZFJlMVc5U2hjbFZ4VTkvUU5x?=
 =?utf-8?B?MTUrRHg2WVNpYkprMDQyZTA0OC8rM01RRW95Vi9BQ2x4QjN2SGtEWmNIeWdv?=
 =?utf-8?B?eStOaG1QYkh2WUJoUzFOYVpuSmc3TDdMT1lqMEFvL0lndUtOUFl3WGY2aUpl?=
 =?utf-8?B?aW5xSTdmL3JqTitLbjE3cWhpektaUTlQWDBkb3c4ZjlWTW9MaHMrdmVBSTFL?=
 =?utf-8?B?T2ZkeUZhMkkrTm9BVDE5ZHFLMnEvdnZsRWZZcHg5U3ZYNHV2RjV6UDBUaUIy?=
 =?utf-8?B?bFJqUjhLQWFuRFFObEh1ajNBUkRaWU9VdVNQSGhsK0drRE43WGFmR0hpd2s4?=
 =?utf-8?B?MWNhbktIR2FkUjJicy9FQkU1MEFVbjZkT3Y1R1I1UUxzd1FmZDIwWWhrYzhK?=
 =?utf-8?B?QlE3RUpYdS9pdm5kY016VUVSOHgyZUlSMW9Ea2ozVThSbjlxQVRqR2lQT014?=
 =?utf-8?B?MElSUWZYSi9XcGV6Q1lORTJDWlJjSGYza0FFaW5kVWNwV0FjYU41ZURGVUZG?=
 =?utf-8?B?Vk5VTmRzMVlINzBuME9aelZFcGpET2xMRmFMZU9QYlhLVkE2L0Y2cW84UzVM?=
 =?utf-8?B?cm1tS2dmZm9oMGpTMUpqWHZwUmszak1SbDkyUU5NUVlOYlpUQ1MweGs0QWpT?=
 =?utf-8?B?UDI1Q2I2QlgzOHRKaXVMV3BhSVdYWnFOOFVNZThPVEZyTTFCVDQzUjdjdnNw?=
 =?utf-8?B?R3R6Mi8zUm4wQzRTUS90TUFWTEdOREJnd1ZMdWxQMEk0MDEvbDBUTjlwbVBF?=
 =?utf-8?B?RWg0anIvQWlleVV6V3JNcEQrakhzZldlMG9HNHdYUUpEbi9pOStnbGFpZ1Zl?=
 =?utf-8?B?Y3JERE9SN2J5ajB3U2RIQ3BteUhFUHo0SEZ0UkUybUZKbGZ2QUxpZkIwQzZC?=
 =?utf-8?B?SWx5dFIySEhiRWR2eFlFUTEyc3Y0TWxCUmxkWjJDQjkwRE9UK2xJN3dlSDFB?=
 =?utf-8?B?d0hyUWhNWkZ5dnJvZHE0MVNITXpSTmdPQ2FObllXbmVrQ2VjTlYwY0JaQWZD?=
 =?utf-8?B?V1lJSnpUaWlreEw2a2wvTjUvYURJa0dpMkZyY1ZrRmZKRlJXOTQwc05CaVIr?=
 =?utf-8?B?YkVqYzZzcEZPWVlwbkpnWUI1ZXhhUmFsZkQ0Nyt2MXZURUVubUpWa3VJY2Vv?=
 =?utf-8?B?WitTRjJ6bjgvZEpHb1FvQlRLOEorNHl4Y3E1RWdaRkx6RSt4V3hsaXZNSkZl?=
 =?utf-8?B?d2c9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 73af1dc9-672e-4b29-7aa5-08daf7b8c409
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 11:56:56.2594
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wpWc+Wqo+Kq0tRNCx/hxmiA1687YZOCyu6rkKK7rVUP8i/ZJiFx79alX656zH/ewT3pnrXn3ShAkT6p4FCGEKasu3lt2atAYz3aaetHcIFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB6525
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16.01.23 12:47, Marek Vasut wrote:
> On 1/16/23 12:34, Frieder Schrempf wrote:
> 
> Hi,
> 
>>> Current practice does not match this statement however, notice how they
>>> are all gpio 1 4 :
>>>
>>> $ git grep sd-vsel-gpios
>>> Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml:
>>> sd-vsel-gpios:
>>> arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi: sd-vsel-gpios =
>>> <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>> arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts:
>>> sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>> arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi: sd-vsel-gpios =
>>> <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>> arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi: sd-vsel-gpios =
>>> <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>
>> Yes, but these are probably all copy-pasted from somewhere. Maybe from
>> my original Kontron DT (before [1]) where I was actually using
>> sd-vsel-gpios.
>> But these DTs all mux the VSELECT signal to the GPIO1_IO04 pad, so
>> sd-vsel-gpios is useless.
> 
> Maybe we should just scrub them all then ?

Yes, sounds good!
