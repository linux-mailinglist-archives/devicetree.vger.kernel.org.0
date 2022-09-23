Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB4AE5E768B
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiIWJNF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:13:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbiIWJNE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:13:04 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on20617.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e8a::617])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CF9511DFF0
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:13:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+zhl6REx+WuoUu7+bUjPhN4ST2jlWmZMv/G9WHE0/MA7SQ0M9tAy9xZ7hKdTGq9k4JsPs7T2GdP9qkIygJOEl5oIHuid7lG8TNxLLwgS2K/jBzKpJgzy3mub4rIJ8jQnpy2j3kDMLnW/a7Ne111pZSU9FfrZQVMSo0cpp5CWVr76dnASlxnSugV4ugJdQypcXdC0Kkz3u8oCDLmcK3zSEAqJtkZ2pg91PPTzKv1dwa6cX+JgtqBjdH5avhZxCgnMn9p8xgxUOb//3+7r7o6lWX3LtPRVnyMOK0xTflU/sI+5TMA5ULt5x8etz4Q9B5rezwKO3C3eSmhc3EYqGyDLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7V5Ha/Z1DowoOYpfM2cEJRrGNnsTJCYWpKm5opFih2I=;
 b=auEr1E7b6Voj/GkBmsWUAlGEziaRnwk/j4nWBokWPdgheiW2dFJJXEVT+XD0QLp49m9zaKxOL+h2MwWXHWlF2y7iok6npCQ3s4de1YSRgoFoispJqZnOvdojsjuKbDFfrX4jUIKQy9/lCFYa1tQcK9tYdiTXJf12c49PI5fDp4dMEtVhbzLF6WTl6/qvcPIQ+xbFYIrJWjwyVdNGOqYY2sAGeEvzhM41cefr3DjRjU3aCal3hUyrW9olPlqF96qq8gyP6XhWpL4QQ103Ah0eqkcTLOuhjvcbmxDYUuPrOH2onTH4sMJePty6YJPt2dmP3gOONFOJnafO9c29xWa4yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7V5Ha/Z1DowoOYpfM2cEJRrGNnsTJCYWpKm5opFih2I=;
 b=KWIGS5mpDklAryzCqXgt1UnxINn4c9thzJe32Y2neIGUMRiECrbIlgHArRM3h4/I/R++uR0+LhNo4/jl3U0l6+lT1kBrUbp1nx0FbIjB/iB79t62/W/f9JRe5SvYxsSMfsJBjXS8EL6IunmzF8VWk7FbgDVzhstdyYmN6QW25HeS8Vuhrw2zIjh1HjgZ4vgmfbmj+B3kM5WBe4hBUkGF9SFld4vJcLGO6zUmUDobJ6mdMhljplyK18zVX/Ir+/MjTK9yzci5gSt+uvtjJjs5y2atSI7ZrWIMMvN/a3x+kO549FJWL4WpXAbw/ZYoZi+5gk5Qd5OEynYeEIjtEsy8LA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CO6PR12MB5444.namprd12.prod.outlook.com (2603:10b6:5:35e::8) by
 IA0PR12MB7508.namprd12.prod.outlook.com (2603:10b6:208:440::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.18; Fri, 23 Sep 2022 09:13:00 +0000
Received: from CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::b07f:53b1:426e:a29d]) by CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::b07f:53b1:426e:a29d%5]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 09:13:00 +0000
Message-ID: <1b64e987-2926-abc9-6520-477ca5afce05@nvidia.com>
Date:   Fri, 23 Sep 2022 10:12:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Thierry Reding <treding@nvidia.com>
From:   Jon Hunter <jonathanh@nvidia.com>
Subject: RFC: devicetree github sources
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0265.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::17) To CO6PR12MB5444.namprd12.prod.outlook.com
 (2603:10b6:5:35e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5444:EE_|IA0PR12MB7508:EE_
X-MS-Office365-Filtering-Correlation-Id: 89d78de6-8562-44a0-61d8-08da9d43d007
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aJQPx5NAih+FITO2ZjT9KswQUawWR46mrdRS0d1ANlUxZaNftH1Y5RlUL5xdGLe0l4af1JgZuCx3CPET7TalKdxfR7ivLbdZzOlTmDX0T/kBGlW7e5nURRX6njfvLpqpQCazHZ6KY+uVdLKOVCgr6S9oKsDNDNcVN3tc+MeC0xkZunDBWEDi6ophIBMzzKdGRuVH3R7ediabvlaf1mSeNwLyUjIaXYWx0Gu70+sz/Gp/VBoLdT+bS08ILrJFGCFj8tuPZwdeE7+eJZKJ1Q4ACFJ1CLY0YD7LaUjSC0eqWsgQOFsxJjDiR+t+Cm7UgBDgjX7qnSBK4WaMrWZEPXPVweLpxXBSHJWU5+OiIMIhviFX2o9nBblYnCEOAkk5F2ZJc4Bfa806hLTTetQsvtYbAKLUshkyrdH+rdvYD2iiTvWycaMCZI3XsRySASXX2z5gOrODuXp7CRJ47S96roauSICswc8t1vD0rKsh8KShSgWk6wqgqFnvrPmcOOfkRQDjhmARtoeCsPaA+BI91n3ca5kc/pjJ/KoIvXX72BE3frec7v1tR5GfG7hkI3j/boFZymP1UKE0qUfJQguHD8iPx988LY6IACmMXUz2sEAmLV5ukYxMtqpVRCjVZ6LnChBRZlkv2+HAWbyor43U4EJHGzFlBrdI7nO2fEOZ+ZYiKJdTaoWbnq6lUPno88c9Mq0EftRA9MvB67/I8FlTQf+LSn/ESXCVdxHtCo3cNWKeIMl1nUhF6Whp4UR0rxiebFjfEkeCEJN/7RmHo1rVZ4fNT8UpKR8GG0fg7powyX1twRVF9bFMdA5ojgfR5i39zfJrlLB0Zfnh1i+lXMeTXCoeYzdxvUR/aXQ7ezx29vyx0XDyneuSNi8q8scGye5+hNzm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR12MB5444.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199015)(6916009)(8936002)(83380400001)(478600001)(66556008)(966005)(6486002)(5660300002)(316002)(2906002)(6506007)(66946007)(6512007)(558084003)(2616005)(4326008)(7116003)(36756003)(8676002)(66476007)(41300700001)(107886003)(6666004)(31696002)(31686004)(86362001)(38100700002)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHZWSFJ3NlNKcy9VUTJ5VUZ6c2c5S1RNbjREZUpQU01SSndWSTl3R3NLSWhi?=
 =?utf-8?B?QzZhSWw5NG5tRVJ0dXFERUwyYU0xdTVXcHIrQ3crZEpZZGZKd2o4T0RHdzY2?=
 =?utf-8?B?V1Z3THBHWGdtTnUvcWJMK09uNG5JNjR6NWRYRmF6TWFkc0h2bHFnb0VEeFZq?=
 =?utf-8?B?VnFBQVRYRFJ2dHJ5UWJyay9Obzg5SlpkUDN2Ym00UVNydUVLV2tyS2QwMEVv?=
 =?utf-8?B?ejdkTFZCSUh6RU54cXZrNmJxT203TTg2UGpBNG9jSXNCM1NsK2JxQWZaSEJw?=
 =?utf-8?B?V0pIVlRlbUVPc2wrTTMrM1NJaWluTUtVZlFpM1lyQ0xTZUhYQU5GY3dwOGZY?=
 =?utf-8?B?b1dzRW9nTTNHMU5WclBXNGJId1lTMkQzejFUY1M2WDlBL2tLaGxGQVZOQkRF?=
 =?utf-8?B?NFhsL3JqdWtidHZNNjZKdkRRY2wxM3J2aUZnSThsNFBJNUw2ems2dkpkZ201?=
 =?utf-8?B?cmNxaEtSTnVWdy9HeVFUMlRyRnZtQmN1S3JmNWxOYWVZK0NYZ2xqTllFVmVB?=
 =?utf-8?B?RTlIVFBDNVNrK29PaHJjVzZKWHlvK2FvMnYwcy9iZXBrY3FYVDM2QldUbEFo?=
 =?utf-8?B?T24xZmZTQ1RlUTRueTRqZ3JYajJnU3UxWjZ1dS9FMlFqelNSVVAyZTJaYi9w?=
 =?utf-8?B?SDllQ1Y0aU1Lak9YZ2dGMGducVd2a0Y5RUhPU0R0YlhCaWNIaTBiWU5FcjRC?=
 =?utf-8?B?WnFZLzRybjBlZmdXVTlnRFBLc2FwbURFcUlvR3puTWRXbG5uc3hiM1A2N1h5?=
 =?utf-8?B?c3FwTUM3MGJDeHVHSncyUDhTUWZ0czM0YUZWMk9XMWdRMWJPSU5aWWMyOUwx?=
 =?utf-8?B?QlNOOUFCenJTeko2cTl1WDRadnFOdXplTk5GRE5WQ1NSVkFOTEpVZHJ2cHox?=
 =?utf-8?B?S1pScXFCeWdBQzVubWdnTGVoZytrRGpLbGhrQ0N2VHlmLzBZdmFXc2U0NnNV?=
 =?utf-8?B?eFkxSmlrc3JpbHpramhITTdVdnFneUdvTkF5WGRaVUFaYmRlRXRQMGFFQzU5?=
 =?utf-8?B?cnJUZlUvcC80Si9ucS9oeGdwR0g2dXAxbkwxZWpSQXJKSnpHajJneE90a2Uz?=
 =?utf-8?B?WmF1aGJHR3NyM3VCSzJEdTBJbE1ncmppMktIWGJqODArc2ZwcHBKVWgxc3VX?=
 =?utf-8?B?THdEL21Vc3NvYjV2aHh3eEdmQzNzTDkyUkFYVUpFWXhxd0JObUhOaWgzN2Jl?=
 =?utf-8?B?MkV1Z0pPaEFJTE1YcGRmaGFJbENocTFmRUNMZEtiWWFtMFBKR3BUWndFWml4?=
 =?utf-8?B?ckFqN3lxRXJHN2FRbUk5QWRHdXdhSFBrT05VR1ErWGZtdjRINTM2K3VNMzhn?=
 =?utf-8?B?TG51WGNaZXVyVTcyZW4ycjFtVEdEaXExV0krTHpxT21JSWtTMlZQcVh0Q3NN?=
 =?utf-8?B?Zkx0NlduSzhNYnVmTm5FZ3hROXA4UE1YcUZUYjd2SnpFZTREdkRMbkxQTklZ?=
 =?utf-8?B?OUJ6b2JCMzNZakg1VFpmcHpvWWdiRkZHUjNjVzU5NlhLVCs3cmRjY05MbnB5?=
 =?utf-8?B?SUwxcnpVam9ZT0ZmZit4SlBCVzNoaTA5MFJjTUxUVDB6K05RZ2NQV1lYR3A3?=
 =?utf-8?B?Y3U1VkFMaHZaOG91VUs4aThwR2doZk5kLzJaMVJlRU9ZaWY4RzhEV1JoeFdz?=
 =?utf-8?B?K1RwemhaRjBaY0taYldFWlpJNWcvNmUyTVQ2d3JpYmxOT2pRSjJBODZJNGcx?=
 =?utf-8?B?VDJOWHhSOFo4ZlZPOGp1SlNncVhaVmljaG5UcC9aYVBKNGVYRVc5bm44RGk0?=
 =?utf-8?B?M0lCSUxpUExrRDc3Vm9obkhYU1VvVmdUVFJiN0ZsRTZ6NGd3cUYrVzVnTFFi?=
 =?utf-8?B?WmFKcTFCUUlHb2swSFo5THV3TGJVVFRjeW5rWUpQbURoVTJ1YTliS2NhcEQ2?=
 =?utf-8?B?ME9GMU9jVFo3NnM1ZEduY3lnUW52bm9OeDd0VGJITnJRd0dVWDNKTkUyOHpl?=
 =?utf-8?B?YTAvenYvbVZpcnQyYmxtTEJzVERDY0RhZnM3YTBRVWVDYVI5ekZwUkxGWjd3?=
 =?utf-8?B?bVZ4YTRxRGkvSU91enZ1dEdJZHI2NFZQOVFQYmhSK2RIbW1SdGdSNzc0a3M1?=
 =?utf-8?B?OUV5cDZITFhLT2lLZTBqM2Fvc012NnJLcWl0YUJBYmF2VnN5WEhPeXh1UThR?=
 =?utf-8?B?dVBscENLeXRuODlLSUtiM2wwSFNEa0VrVnNxdzczSFo3S1puZXU2c2Exa0dC?=
 =?utf-8?B?dm93MVo0d05NNFcyK1N2azM5V0xjb3lKeUQ1Uys0K2ZNNGtidkp2ampoK2k0?=
 =?utf-8?B?Nm1vODlyVFVScERzVk5BQjNPWUZBPT0=?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89d78de6-8562-44a0-61d8-08da9d43d007
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5444.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 09:13:00.7517
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /3Tqh7PpORT3LsMjU0glIBMeDp9+C3KeNSzNkOrJOk35IjBbjwjp5KkHUqF3YUP3h+ZJE0C4QWn1IB4qlRw2DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7508
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        SPF_HELO_PASS,SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

The below github project says "It is synced regularly with mainline 
Linux", however, does not appear to be updated for two years. Is this 
still being maintained and if so any plans to update it?

https://github.com/devicetree-org/devicetree-source

Thanks
Jon
