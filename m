Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2D416CB83A
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 09:37:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjC1Hgs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 03:36:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbjC1Hgn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 03:36:43 -0400
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2057.outbound.protection.outlook.com [40.107.96.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7042A4229
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CNpTRtX9kjfaBh/APNNkVREDFMztL7WB/y7mt8G64YfsDugdfn/7bjR7PPhxhvQoWPPAju5j4NIYHdmPQWYEAhdij7xLYe2rvopH16AGOAluEAPzSLqja4LTo0TsDj2Gmbb1dynxlg7oFh+t8d6QjKHl3Kp9xkjkhRK75EI3x0gfsfPPxTKsRtBvm+YoCm1wvoXxZPLd3riCzxH4HfNWHoGqaXayplvPLdwThpFV9J0CEEcvHMqZIShwvQtxb/86seZ34CxPhjoppTvaOzF8QIbF++4T0GOgJuVoEJk6EHb9Gdwo4Jfn3O5f5yl34+sVKPZ7RllR7V0V2Epb3AhhzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kg7TY3ahQqL88EAXu0u8zrMkhYREXYFjjVp3xMnE7uQ=;
 b=SD0Ts+4toJQaI7UoyultpR5meqdV1NU59sfwIsBG09jWR3D51FLcpscaMoNttBtA66q0DVodDHpaochq4iT0mF0YqwfCeT7mR0e8+7nqwh7CHD3omFMBjwMee2nAnVrljejFobXXUgSagOrGzPYeh+LB6yVO71DDm96J9E7jnAALvm2KGBzWv0GtnLC+kSw1SCgnPRMO7CUpDPg4HUujKNEo6LwWjecF5WiNNYzp1RSIXrBSZ790cGZu4t8r5jFjxlqj3WhKbzAKt/xjfLq03T3UyUOcKoCwjq8SonG61ety8daRWY2SwKxPyxmusILwD7/wFu7iR11hGhXiTEeQiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kg7TY3ahQqL88EAXu0u8zrMkhYREXYFjjVp3xMnE7uQ=;
 b=lrI7LIbQO4NCaAyoi+CtdMaNmUwp5J6FI4gsEN/A3GGGBUB+Co3MwFyRhvzMPTwA9VAHmYzH+o/lmavyJ7ENq3h1EkMhIFTww8wtdANndHnKzoYromJBmaq2HRREb9CTwG8lonGrXIV05f2aZjrZL6z1TR7swM0FVoJIcCQcRwM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by SJ0PR12MB5664.namprd12.prod.outlook.com (2603:10b6:a03:42b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Tue, 28 Mar
 2023 07:35:18 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603%6]) with mapi id 15.20.6178.041; Tue, 28 Mar 2023
 07:35:18 +0000
Message-ID: <6aed6e71-20e8-ad91-da82-145eeb80c49a@amd.com>
Date:   Tue, 28 Mar 2023 09:35:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/2] arm64: zynqmp: Update MALI 400 interrupt and clock
 names
Content-Language: en-US
To:     Parth Gajjar <parth.gajjar@amd.com>, robh@kernel.org,
        mripard@kernel.org, heiko@sntech.de
Cc:     git-dev@xilinx.com, varunkumar.allagadapa@amd.com,
        vishal.sagar@amd.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230321070619.29440-1-parth.gajjar@amd.com>
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <20230321070619.29440-1-parth.gajjar@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0501CA0042.eurprd05.prod.outlook.com
 (2603:10a6:800:60::28) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|SJ0PR12MB5664:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ed4525a-9f23-4786-f5a9-08db2f5efa4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O2E2NSd99jZQle+jfcxfjl5ghjXkJ9Ruc3bcat3t2p01elEYZAGo2Me2GCoDSYNeuOp1UrUQD9ZGQEEnrraJ5oyOkoZDRFYC4YRInAzOAxcB3KAti3Tceg5WL6fqzLS0mWdBKroMoLqiOSEmVJUDGjkXxtpsiqhX6sdnDfcP88NWmbJTXF6BeNtqEnESI1+TDI2LgnTjUeLRUsBYjPoZJd9hhjFpezmDYzAOcR23ltZtwUf4JFlwl+KZZ71KIJWiuqVcqZdAcMmOB9NU6Hb7cfVFHVhFqDX+JB2nWtuDU/Q7ZunqedM80eWM9v6tsffq4smXqhi3FRlAy8e7IgXrREy+Dy7VpwX44ij0TmXgAAy/ALWN+QvXIHwNgZOt19tGqA3qyWrdrgF1yKAPhoO0HNKF/E/pW0yE1YhPjrX3MEBVnfTrPbhoeGfKKhV0G/vgPdLS+U2rXf7t3xZNqBlRDKqPo7H/5acyCka7dafRHvHO1DjD8VVq7cswAN9YIQk61vwpkhMOglP/zDkeQ1N89TloTlM0AxL97KyQfX2umYg+0gwNkp86DRCX2J4dbewrvgPIqckw542+2KQisKSXZrC2AQjPVVlMO4XYOWEXDlDubgGkS8aIWvlTRMXTnLWu0az4b+RUksABiXEk1OlWlQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199021)(86362001)(31696002)(44832011)(36756003)(2906002)(31686004)(26005)(6666004)(2616005)(6486002)(478600001)(66476007)(316002)(4326008)(6512007)(66556008)(66946007)(8676002)(186003)(8936002)(53546011)(6506007)(5660300002)(38100700002)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGszcGlRMS9OSCtER28zODArZTJ3WHBKQWdvbFJUN2RiS2tQeE91S3BPZWxW?=
 =?utf-8?B?SHIzSGxqSVc0L0czbVlKbXRHOHJlb080Y21oWWFoMUJJeDFkQ2RPcU4yWHBa?=
 =?utf-8?B?ZjFOK3JNYkFtb1ppUUcwRkxVS0drc1lXMXd1YytOYVBKL3l0bmdHbmR0akxC?=
 =?utf-8?B?c1AyQnVRMHFqbHF3ZG94cENYUnNPNi8wUmptZ2djLzlza2pxSTBjd0o3bjFB?=
 =?utf-8?B?QVZiT1l1Rll6c2xLeU5hZm9HaitPNWhoVXVYSUhtb0lCTGREcjNKWUp3RWVq?=
 =?utf-8?B?VS84dzN3K0F6YmwzdlQvc1NmalJzNWZDYml4Q0ZlS3dBZXV6WkFaSnZraWFB?=
 =?utf-8?B?T2tzQUY2TnBLbzk5YmJGM0JyRHdPZGlvTjJRSE5RVGV0SDU4K0lJaE9KR2sv?=
 =?utf-8?B?NzBDK1V0ODUycU16TmhMRmFOdTdIU3ZEUGVxUk5iREZRODl3K1EyTS90RmxT?=
 =?utf-8?B?Ti8rd25oSVVHYXd1ZjdQRndDc1JkcVpKckFBcXdWbndQYncxR2JwL0RIVFNS?=
 =?utf-8?B?MTl6czBqcUE3UVpHcmxOTjVKUVVYMW9wc3orK0RyRlZpWHZzbExGdEZSK0pE?=
 =?utf-8?B?ZVZhREJHWmV1OWRpaTBqK0d3NXRONXozdFlsTE5yb1pQZkJOMHlxVHlkbERz?=
 =?utf-8?B?QkU0UlVQMEpKRDdhYXZybzMzYk9hK0xpaGVjckNsRkpaS0dlN2tNS3YvOWFK?=
 =?utf-8?B?elFMRFd0V2VQOWcrV2RRL3RWcEJneStYRktndG95L1MwTy8vTGk3ZWV2Tkk5?=
 =?utf-8?B?VWxzU2VhdHlOc0tFOC9CSXArMXc4YnQzRDNLamp1U2FoZEFCaFRlZ2l0Ymsx?=
 =?utf-8?B?SFFRTS9rWmRySXVuU0MwemN4c3o0NTRHM0FKc0Y2MlNNSDF2c3l4aHN4Z0w0?=
 =?utf-8?B?aUplT0JRSmlyWU1uKzZuWEJCME15ZWRFVS92UzZNbzlGMFlsbGVKU3NXV2Fu?=
 =?utf-8?B?YWZCWFk2WHVCaTVlTUEramxkUFhtTFFVeE1BcGttanF2WWxFanU3eEUxYnYz?=
 =?utf-8?B?cm8rc0xNSWRaM0Y5TTVPd3lUSUxJY1RDQWVndGpaSkJiQ1BIeFhIbnI3QUlz?=
 =?utf-8?B?Q1F0WW82MG5WbzQxT2l5WklPZzRON3NDZHRab0JiaHByTVlHY0FWUmdjS3hi?=
 =?utf-8?B?OXhTYzRRRll6bndPTGVzODJGQ0FPWEpSRE90KzllMEhqYXcrNGZ6VFhjRGJi?=
 =?utf-8?B?TGFtWEVQNWk3V29zNFUzUTF1YitCNlJWVlpSanlMK2J0bGdLemswaU9jc1RL?=
 =?utf-8?B?TnlhbWhjUDFGWm1ObkxaazVuM0Z2aHpudjlxT3RwVk5POVhGR2h3dC82Mklv?=
 =?utf-8?B?M0Q4ZHYxUGI1YmpYZWthSkU5RTVwc21DSHJOMDM5NkVicEZkMUUzOERnaTVF?=
 =?utf-8?B?L2ZUV0Fhb295SGxZR21uT2hBaHFyazJ4VkdaRHRFdUtDbFhLWU1ZK1NIOFVk?=
 =?utf-8?B?dnhodW83VUxQUFA3Y0tkSEhibGp6cTRzeVVBVy9uQWQyVjhiYUk1ek9QNVVx?=
 =?utf-8?B?VU5OckFETHhaZHpSSWpSelJYR0tORVoxK3N1VkVtRkl6eWNzOEszWkpBc3M1?=
 =?utf-8?B?UFdkWXltRWEwWWRZQVQzcW4za1lmeUthanlIUE9XL0NzcjFyTW11UWJLRHZG?=
 =?utf-8?B?MFEwWWZBazhhdFVseC9HWVc5b1ZvZENvckRUVExESGVoellRallYQzV3ZS9H?=
 =?utf-8?B?ZGRBT0gwZG5UVFFwRUZOdnNkRC82MTg5VWlJbEVSTzVLTUZxUzZhVVRwMjNk?=
 =?utf-8?B?Q2JjeTc2RUVGNmxWZkhVRWpOVi8ycmcweEpaOFdwaC9KQ2JGWS9TY1lQN0Uv?=
 =?utf-8?B?L2phVWh0cEV0bmkvMTE5M0YvbUE0TGVPM1htdElTK3c4aEVOZTNxSTNRclEw?=
 =?utf-8?B?M1VGcGthR0VSKzNva0N1dWRPbS80Z0pFeStlenE0bHZaWk9tWER2TUVHaXpU?=
 =?utf-8?B?OW11eHJPV1IyQVBRTmY3TEtxKzJuR21WK2lCT3JENHdFSTZVTWRCVnJMZkRN?=
 =?utf-8?B?VmVLemtESEJaM1BPdHZHVDh6RmcrcFE3ay9qdy80a0ZTWTB6L3ZvUVdOcFM5?=
 =?utf-8?B?ZVl3WnNqaGZDOUlSb0FkcXY1NWd1RVNQY1I4Qm13T0NxWUdaRjMzQkd4RGdj?=
 =?utf-8?Q?JroJYYav2BgGoUexs/PqSHVSF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ed4525a-9f23-4786-f5a9-08db2f5efa4c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2023 07:35:17.7710
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n1oaBKkndVhb/nV4DM77LRau2fZ1luJZFhnFO0MpsCahVorNPiWDmBpSxPuHNmaq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5664
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/21/23 08:06, Parth Gajjar wrote:
> Motivation for the commit is to utilize the upstream community
> device tree so that the either modified ARM Mali 400 driver
> or upstream lima driver can be used.
> Added gpu node for zynqmp.
> Enabled gpu node for xilinx boards.
> 
> v2 change:
> - Added gpu node for zynqmp
> - Enabled gpu node for xilinx boards
> 
> Parth Gajjar (2):
>    dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible
>    arm64: zynqmp: Add mali-400 gpu node for zynqmp
> 
>   .../devicetree/bindings/gpu/arm,mali-utgard.yaml     |  1 +
>   arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi       |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts    |  4 ++++
>   .../boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts      |  3 +++
>   .../boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts      |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts    |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts    |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts    |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts    |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts    |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts    |  4 ++++
>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi               | 12 ++++++++++++
>   12 files changed, 52 insertions(+)
> 

Applied.
M
