Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36ECB6715DE
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 09:10:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjARIKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 03:10:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230350AbjARIIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 03:08:02 -0500
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (mail-vi1eur03on2092.outbound.protection.outlook.com [40.107.103.92])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 309DA42DD6
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:39:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRolS9dZvIb7hgVzy1XXqmNAXkAXnahHFIsmF8LpMpe/RmQL84+KOVbG4o3LgDJlObyrDLtdQ8yuUpl1hR60+/0qxYUZ+JcCdfTi4Ib3A1qx922OS1WXXg/N77+gvlw+wunf6hj3OTGm83Z7RvPAB+sfDiuq2gMLMlC3mJ8zGy6Bqrrhg0LNQH3yL4xhK0Mv06nRB5mgz8vVcC4Yi0Dw9fzs1bncNzdlOPVvNW9oqkPIlVnaKMqhlJmeOVG3gjFi+u3pwKwLrpEImvg2mgoVk8ip5irZmfRv6NzxFJXt51T77/P7B60ddw4+FaX5PCVB3xBlQeafRZYx1QaQ8Wd2jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GuNunckDgsHhcMYl+z+quAVS10Mw5gaY7t7MAX9FThU=;
 b=gJB0VPguszvgfAF+WV4hbbdrc4DxmoL34q/YhdQQ+C2SfpvOWP8qrt2XBQmW2X1A9rVAVgzAF3cuvlQYYy1bZ/raRhSncboET8PUGB0Z61LVChu5WtWPKdzx/yt1h4ALD0CSQ3aQUM3qaMzM/T3K3H0e+gOFHyC0a2SRaA5e5PxLSnbL7mwZnpwft56Vri49tDuV2S0PIpudhcfZd5RkS/X63WQCbO5jP9fN4cTj++MB78mVRLpBQM+iQEDE+QBoUlqNz8+uxMLR96jrr3Tk9RIf9MU45ArKs/5Tse1A/oP2XIDyllle8YkJgOPAAEUqv8mf1uOML+f33BE2xsDbTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuNunckDgsHhcMYl+z+quAVS10Mw5gaY7t7MAX9FThU=;
 b=NRntUKYKRT7WCIpaa7/u2R3w7ypO9rNK0h1dmniTsALDChBLXTS541LfWG/z6Z114cGlAH9SMg07sRMzQoFz4d5xLD7Wyzdlu50ER6rrt0gPNeMQLWXz9+lt9nCwR7HJx8xIbtvE65BAR80hBclHxK0POIFPPJ91CTU+7e8hrHw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by AS8PR10MB7563.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:563::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Wed, 18 Jan
 2023 07:39:25 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863%9]) with mapi id 15.20.5986.023; Wed, 18 Jan 2023
 07:39:25 +0000
Message-ID: <643393bd-68fd-2527-a76d-f9443c244522@kontron.de>
Date:   Wed, 18 Jan 2023 08:39:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm: Drop sd-vsel-gpios from i.MX8M
 Mini Verdin SoM
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230118030757.254086-1-marex@denx.de>
Content-Language: en-US
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20230118030757.254086-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE0P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::13) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|AS8PR10MB7563:EE_
X-MS-Office365-Filtering-Correlation-Id: cce5e8ec-c8a5-4f4c-c33c-08daf9271f89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kwo+y1p9jjrDfb1LoNZux/2tDVahKieJJQ0jtBsHGiVamBskPM+DynGGVhnNC42EooWX8dNgtYoOU4flaGfBsifcE/fnFtYU94LZVQw5PILDYxIgNZMiDgsI4LAroerPrkiciCCJpwsxhlSbazjH6OvbfmE/pFY6C+j3qe4aLgi0wM0k6sOWsupM+Jf+9SHpy6qZdDzgcmn5MQpOhDlKSXp/n0q8aW6oJAVPb3FldGDCjBWJUkcnflpDShvifUqmgSHwRXgCFpC03KCc8aKFOipTQtAM0A5lHHpVAUhRYrHGAvotT8NFXIbiLZSnx7tCdsg66CS3HdSkPpnbJBt9ySd/EWL852sGJEqLEjbTLHY9CPHFgqnW/sj6oPFWEa+TOBvX4/4D0S4IRk4pVglSIaxCNCvaS0MDh+pgtr1cgpOXXEY9958BCp5pJ+XoAGq4D8atN7OsVkWLYD4dDXDJTV7kPkzWMvrb0jrZvQgT7VUpseXIWAcNznh9jH85RrJDofnivcH+GCAftI6F34v5aj71xIbXxa8p/91KZBCjLwcokVROwFcBsxh+OEzs5W+WiM0sVR59lQbLUbcUa8J70I1rUEA/0KkdTJoZwYtlLMn/55PUXY+9f7T9gjlZaoFKnmAs6UlLEcgkNKNFaTxff0o6oKT+Vr4qPnuP2QwSew6a/hQazQt/JOHYUUT/7IB09HRjLHzFYdIh8sc2yqNvaLmRfm85VvF2PHUyibR1KD/OBl286Ne3oajotiHVPEwl
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(451199015)(36756003)(478600001)(31696002)(54906003)(6486002)(6512007)(6506007)(44832011)(6666004)(2906002)(8936002)(4744005)(53546011)(8676002)(316002)(41300700001)(5660300002)(7416002)(66556008)(66946007)(4326008)(66476007)(2616005)(186003)(38100700002)(86362001)(83380400001)(31686004)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEpaYXJhdnZ5TTFuTkxocnBLYVBRTGJVa2p6eHRNa1VaRXNwSE56enpwa2JK?=
 =?utf-8?B?RnNjUDY2NDFUZzhTbTdyMzluV3hWNCtiZXF1TldxZ0svbUUzVUNweHVKNnVa?=
 =?utf-8?B?VjYvRThvenBJaU1ySkxWaXNtM25rSkVrcDk0d1pqWFIyZy9tTmdqc1FxNzll?=
 =?utf-8?B?WWtsR210UGZ4cEh6Sm9LT1VTNHdmWDRzRG83b1hFSjhXZ3ZuWmFBVVVxZVll?=
 =?utf-8?B?bHhoYzUwQVlKUnB4UVJnY1JrV1NJK0szQTJYeE5sd25YMWtJVjkrWDRmc3lH?=
 =?utf-8?B?dUk5eGJ2OEh1NWZ4bDdLZGxrWEJ1YllaTDhpZjFoWnVBNTBwUzVkNjM0dEwy?=
 =?utf-8?B?MFYwOTRqSS8zVEVyYzIzQ2VIZk1SOFFueUo5c0NWWkt3eWVWaDFsUW83em5T?=
 =?utf-8?B?ZGRLVkFYU0dQcUpCcUNXOElicW0vVzB6UWtZbkxCMHdtTXFCR1pzOEx1Tit5?=
 =?utf-8?B?R3FYcUVHeDMvbGdCN2kyYVMrMjZVN25oSTltM0x1aWxpeVQyTEZVQk9hUnVQ?=
 =?utf-8?B?Q0lYZ01rcHlBNzUxZTJYajdkTnBtci9qTkxJbzRubHB1d3Z6NHJCbGpoNlZL?=
 =?utf-8?B?QWVJbVFDdXhyM0orVmJOVVMxdHc2M0Nmbi9GaDdaNVB4aXZEZUVsUXB1bk0r?=
 =?utf-8?B?YmlIa1JQa3RpQjZUTjBidjZwRVJMOFNpYjVBc2V1K2NXejZidHZlM25ueUJv?=
 =?utf-8?B?M3VqRENUY1BZSWJwVkZlaVMzMlRuZ2JlZTlzWmRlLzRKUEZiTUtiRUZSS3V5?=
 =?utf-8?B?TElzSTBhUmpkRElCVVZnbTcvZDNvcWZ1QnBaODhJRnlYMVkrK2xNeUZoSTd3?=
 =?utf-8?B?N1pIaG9YSmtKOUhGZDhFaFVuTFhlOTd2Q2xCeUlxZXJzNXltMHVscmNrQzl1?=
 =?utf-8?B?YXk1aDNaSXhGYmhFTGhDQnhBNnczTk4xc1ZHQ2RUSFRGTW9HWURxMzFsNlYw?=
 =?utf-8?B?WTRRNU5HVDdOYngvSUJLdXg4ZGluVkxDQmNQZFhsckdmK29jREx5a2xCT0sv?=
 =?utf-8?B?dE5MVVNQNUQxNm5IclBFMlozZlJybi9lQ04xNjdqZ3Iyc2VGNFkxa1M0T3Nt?=
 =?utf-8?B?M250OGRzcHNKQmp6MFAxcWdZMVR2d2JGWHg5S1J4Q1FXMThtREZwQ3JkU3hn?=
 =?utf-8?B?SDZvVUtFdTRiaG11TnFNYXlnRGRIeUFsL3hmRzNKT2lqamZVZGVva1E1a0Jw?=
 =?utf-8?B?UFprOGthNjFqTlVSS1NtRGd5cmh4UmlpdFc1aWZHanY1cjFWTjlaRWw5MzZm?=
 =?utf-8?B?RVFlRlRXK2IyNUZuV1dDTTBTTTJOMUZYemVNQWRRY0Fqb1NMRVhLVlJNOW9r?=
 =?utf-8?B?SEVKMmhkUHVYemhrelozbXRrVHdua2YySW8zNStubnRCdUhpdTJubTRnQXUx?=
 =?utf-8?B?d0RCdUR4em8vYlhTQUJDL2NLUTczLzhnTFpoS1A2VTEwU0FPelUyLy95Qjlo?=
 =?utf-8?B?TkY5cHpsTmEza3ozb1ZITVFDU3hnckZ1bk53RksrbHJrWWxmUk9rU3ZBbEJz?=
 =?utf-8?B?NTJlV0xzdExjK1h1RnhlbXBUYjhGaFRjN3B5SC90OVA3akloTXdrOWF0QitO?=
 =?utf-8?B?SHFFZWxVcjZtNTIxS3NqMldiQWc1Yk9wNm9yMlM2ZmZpaXlPdmxaQmlXMEsz?=
 =?utf-8?B?N3g5RlVxU3g3d2RSSmdhK0gzczR3bWRsYXJUVjBtNU5VdjVHNnpuaE90aVEw?=
 =?utf-8?B?U3QwQU8zUUFPcjhGb2pBd2pBVkdEL0UwQmNOWCtiaXBaOHk5TmtSSWJPWGU1?=
 =?utf-8?B?bTd6a1Yvc0IrM0xKYjNJZk9RL3REK3dwdkhkaFRLTTlkR255b2RjbWUvcDFm?=
 =?utf-8?B?MVV0QnNPTHIrNTQyRzRqL0VsZlg4dnA1Lyt4ZHZTMHBtMTg5UDJDQjNhSzd5?=
 =?utf-8?B?M3gyTFdjM05XSnJ1cU82REZ4WU9FbmFOa01xdEF5REdJanhpTTNEUTVVaVFn?=
 =?utf-8?B?c2ZzU3NKYkxqc0dBQ01acTJaK2RUazJZT0piY2JHK3lhb1hXUWE2OTdRREps?=
 =?utf-8?B?dHN5NWdqZW1UajI4UE4vTG80YXR0RzNQNjRxdDhETlRGWXFyb2thcFdMbnRt?=
 =?utf-8?B?K1JLQy9IdnRxUkZpdU9jcGhBUVdSY0kyT0RHam05US9pV0dyZnByRm1KVFpi?=
 =?utf-8?B?Mmt2TjkrenRFN3dMV2pnU2RIRnJWV3FnY2hURkZnakNRK2lVVy9pbVRaTCs2?=
 =?utf-8?Q?nxUSRobIdCamCzCu3qG7wVkwJbNvWpp88JGOTNK27x6d?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: cce5e8ec-c8a5-4f4c-c33c-08daf9271f89
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 07:39:25.6227
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LSKp1jlRYoK5UyKrNC/8npvZUd5i/LJTfmhqT1XXeICIGdXMgF+eD4KLpQ2WcPKrtCfM7ANkh2S3QcK/j54D1S9isvYh2RQqQ0Gz+BC25SA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7563
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18.01.23 04:07, Marek Vasut wrote:
> The VSELECT pin is configured as MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT
> and not as a GPIO, drop the bogus sd-vsel-gpios property as the eSDHC
> block handles the VSELECT pin on its own.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
