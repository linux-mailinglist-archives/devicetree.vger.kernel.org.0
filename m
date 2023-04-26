Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E38216EEFA4
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 09:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239464AbjDZHzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 03:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239928AbjDZHy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 03:54:59 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2089.outbound.protection.outlook.com [40.107.220.89])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D506DC;
        Wed, 26 Apr 2023 00:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pv3Sl4Sm1Pu3FY0aZ5G59zvCj/3RRZJHuxYHjA8/tqBDogojf1wO9IF0kpbSeoeeGT2y5varwv0I2x6lfxKamPEN4G7gML3zxkwt5QfrUNFKhpqgIUlRfqzhnJE7W/D3GZg2/8hWzgXbVZKaMT1zpAJTNqA74WCzA64Z+gUXAl2JvEai4YFlL45ZQXbgEZzgJrlb0+acdxDv+adXuJ+0uCJ7o93ch0bDgVyYWNQGl2xrxvxFyvVs5DpBbmHG0ng67TQgCDHxbU7H7jULGzF2qG/56VA4sI/74TBrhUWQP08StgTeXMBSJEVuX6FRBAcIqyEdyN92z+ewH06hnFESWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bK3yyCEdIS/65hiUnr7D5+98Ue/ScNBK8YNEzI9Dkmk=;
 b=mymo+8uh2B6RRyN8hA7wanJrXLoGzOzxO0c4y/vrnlUExyGfsRVN8kvlxlMwJbV97gmvrc3YHtNzzDMaRIxOn9tM6kpl8mTSFl7mIIHbccjaHCaQZA9zvO8CTkfjQjJk4B/3mGnamkkCd7G1ieMMIPHTbISzQWrDX+NgtfE7ySscHrCnQEzJHMhuoNhzIjQpkBIoCFhuTP/V6+4NrLD+M2gTiQ4oYOHf6pRM2sb7nvJ1AhucYInWMjqp5GQAVoIhLxXR4INdXgVEmqVH3GQulnQEdPdZtc+363T8mbdUCnmcUlHFmaBuDYDb2dT6z1TnpHzGbV73OuZYVhwfP4vxQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bK3yyCEdIS/65hiUnr7D5+98Ue/ScNBK8YNEzI9Dkmk=;
 b=2z5X+yXWSMgxJiIQ49pCzSebT5dVlgFL66b6dea6Te+B69kfKIWVQuU7cpMZSu165uahq9oM2jNqTNUtA5SuY1ChPPwKg8hqfgN8B15PR0LzZD76V0MCvV43vxB1lwU/5kZyhM7PdYhKZa5Y3NoSZKH86nWnGGUyCZ66MdtPdfQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by SJ1PR12MB6148.namprd12.prod.outlook.com (2603:10b6:a03:459::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Wed, 26 Apr
 2023 07:54:54 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::8c5f:e48:a658:7611]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::8c5f:e48:a658:7611%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 07:54:54 +0000
Message-ID: <f3900805-3b34-e98d-0a0b-7b8d86896530@amd.com>
Date:   Wed, 26 Apr 2023 09:54:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: dt_binding_check not reporting all errors
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree-spec@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <77db7543-cae4-695c-7c86-6562534d4e87@amd.com>
 <CAL_JsqJcJsjnao0FGzx7e-vxYnUGC6S3_GRORq1KyDQzqX-3hw@mail.gmail.com>
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <CAL_JsqJcJsjnao0FGzx7e-vxYnUGC6S3_GRORq1KyDQzqX-3hw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0172.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::6) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|SJ1PR12MB6148:EE_
X-MS-Office365-Filtering-Correlation-Id: e073f9e5-08d8-4986-91bc-08db462b8551
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3WCMiOFKnzzjw6gbnQd3uSTeYET+R2n2JALAaZ318kHIkVkQu0suVCORAF102MDVcuDewuOAAbSI+9GNBD1uksEFp9gLfTFVaohfwxzEh61vDNFaCH03gIB2jwOzPAlCuMeJljJRxlFbNrNx5itAXb3FiQdWZ+r6VmwZO6M2tgxL+GuVEbTZca+95Y8ix+NZw0fS3gO4U/IaTk+NlkcH+sI7iwY3IPeq74CcFbKwbBV3n/1GGjb4AUCq3RUrEYj5WyM3a+TKCEQNf1IlBD1Ejr1DJL2i/xa1XcVnAx4rUdAF8fN9SW1u88a8TLusSAGtCS78ptPGjpbJF0Nj1deNk+1utZl6h2jCt56or/KPNhS7UQ5V9+xzhB4UbnQaUBehw74lraFiPN8u6PF5USBwB2qb1A9WFGadXfrRSFT2FzDoKKm5RybhF3nFCUpx3s8eR5v/bcUoO+5xUxovi5yoYCwh3YKR6Vf5Vb/aVrOdBx9V34O8hBEZ9X2JusBvxI3sVZzpzSytJ5IiCO0ipVMAtCPO4iiTTbgcWQOL56mPulyon1a+HkFpZRdA6EKAmpBZuxMvFCyuGRC7G/Ok8JLTqAUp/uNKZKM3v6mNoXEWel5tx13SnSb/aBSQUFsLhTVI79Ssr0Q6T17vLvs9fX7SYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(396003)(39860400002)(366004)(376002)(451199021)(2906002)(6916009)(66946007)(66476007)(66556008)(44832011)(316002)(4326008)(8936002)(8676002)(5660300002)(41300700001)(36756003)(31696002)(86362001)(186003)(26005)(6512007)(53546011)(38100700002)(478600001)(6666004)(6486002)(83380400001)(31686004)(2616005)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlBURWdpY0kxYVlRS2NvZjNHYWFyZTNMSnVzNXloNGFmTGthYXg3RUdaeFd0?=
 =?utf-8?B?K2hjL3ZBMTZFNUR0WCtjakVmb2dzWmd0VVl1b1VIYVFBcXZNNG5vYmtTZUNH?=
 =?utf-8?B?OGdidERrWHpINEhDTDdnS3V4M09DcGJISmhkdHY0OUZ3S0pXK2Q5YkhzYTdj?=
 =?utf-8?B?ZjZ2MEIxN016ck9PUGlUV0p5SHlodDAyZ2FWM1h1YzRkOFAxOExLR1c2c3VE?=
 =?utf-8?B?enhkU1c4YXdkVERmcGs3S2FibGhzZkFwb3FQeEYrSzc0dzRCYU1kajBvKzJU?=
 =?utf-8?B?VXl0VjhUWGVHVXE5d3F6cFcxaWh4bi93anl0Q1pGNHRUVk9QdWl5MTV5Y0dy?=
 =?utf-8?B?SnZQWHVZeFJ2MWQ3RmFxS3VGMTRWMjkyVml5NTlURFZPVkhEVFZSaFg1UUVH?=
 =?utf-8?B?bUEweFo0YjJHK2NGQUlCLzNFQWs5OTdUK3lwaVZvZGVUUlJISlJ0eS9VZHpa?=
 =?utf-8?B?UUhOemRndHJiOFVFbDFxZDRyTC9QMVpxdEVRVTI0UHdGRzhkUUw4N1F4emNH?=
 =?utf-8?B?SUNVMGw0WkJjRzNnUEVhUk1ReXlUZjdYeU1xcU5QbVFqSmV2MC8yelhOOXk3?=
 =?utf-8?B?c1lzY3BBREFDRVJQTXNRU29lSHJsMVNmQUg1M3VjcGkyakt6Q2ZQZzBzbnR0?=
 =?utf-8?B?ZHdtS0k0MXBBZ2N2RW1Jb0RrVlZzZGlHUGpTMHliN1hONzFFVGU0NHE5SWtJ?=
 =?utf-8?B?VVRJZXRGN1QwbDczZUtqWDZBRklwRENIRWprbHd3NnNyVy9EMWdJSC9pVDZw?=
 =?utf-8?B?Mms3NEt6L3FuTFZEL0dKTTBoT1gydWNoL25CSUNGZy9LS01ZRTRvNUdhQ1ha?=
 =?utf-8?B?cVdMRDJlSkxCdGRaWnNlelM2YkJERG5Neml2N0NHL2grNFVPQndMVko0anUz?=
 =?utf-8?B?dXRTbTdBdkNXK1lPdlMvZGp0RWloODJTQUViaW9Ec0FnUmRZdC8zL1p2amxs?=
 =?utf-8?B?RGlGam0vbUZUekNDM01DV0gyTWQvZnBGTUl6QncxUHRwT0hpNkVNelFLUzFE?=
 =?utf-8?B?S3M2Q0VsOUVUUmdmVGFUMHBZR1dGaXdCdFk2SCtqZGtLSnV0SEl6aUNNalZC?=
 =?utf-8?B?dGpIRHUvWTRxRlJqMnpvNzloUi9OWUdVK0J1bllrSDZEeU5IVzJWa25JdTg0?=
 =?utf-8?B?MkxrRWxGam9uNjJNekFEUklxZklueTg5WEkwU29OSkhHZTBNdWJ1SjYrTDhK?=
 =?utf-8?B?b3VQbXVyRHdMTnFEbHphZitVUmVDdTBLUDNZVlpseFRSSW1rajdabEx3UWM1?=
 =?utf-8?B?Y1R1eDBiVENkdDVQSjQyWTZiZmJFZkJTZGdkU2hFYVlOZGRPT2F1eGtOeEEz?=
 =?utf-8?B?NnFETDE1TVNCQzk0bXY0VWsrMlN5VlZLcE51ZTY4YVZBTkREMm9Kclk0Sml5?=
 =?utf-8?B?V2hnTG1icFNsckE0czlqZWpacU5PQXlBSWxSUDJRRnNCeGZCYnFhN2xJZFN2?=
 =?utf-8?B?cVhPTUd0N1djbDNiMDJzbHB0ZnYxTWw3OXNVTDBzNTd6MlVWaHh4ajJnaUFV?=
 =?utf-8?B?Qm4xbVJYY0wzamFrWkhQcXExQ3A0STZnUGJJYlJGVndQVmVNTlkrQUJaanFr?=
 =?utf-8?B?a3JVYjJNcCtodkVHQVJHZHpaaE0zVkVSOGJjQXJzd1RSV0lEUjlUS2FicVlQ?=
 =?utf-8?B?aGJ4TG5qOTRSalR5ZUVwU2FCVTRNRlJCZW9CZ1FnaHBwWUZJNkhkQXM3am5C?=
 =?utf-8?B?WGQ2MjhJZ1lDb2VJRGhlelJWQVFlUFBxU3h1QkVzM2t1VDRuQVNiV2RuMXpp?=
 =?utf-8?B?Q1JrZmw5cTlHMEtCN3JuUmRXRnZzVjJyeGh2VEovN1MycXNNME1qc3RoTEhN?=
 =?utf-8?B?QUJYbVVVTUpudGZLb09EM0dFOE1xVit6Vk9aY1FDZUk4OFRHT0FOYXlKOXVz?=
 =?utf-8?B?QzhqeFUrdGpMS2k2NGJrVGYvMG9BaDkvb2xsU1RnUXk4enh0dTQ0N0FYdlNL?=
 =?utf-8?B?TUlxb1RiL2ZpUjQ3TmhpM2xJUHRPVjRudThqZkpiZ0hsc2I3TGpxcHh6R3hZ?=
 =?utf-8?B?N2RkNnhING4zcW90QTZCL0FWQk1IdnBWOWxCS1BkZHhEZFNGdllnM2doNkF4?=
 =?utf-8?B?L0ZMYlZ0NnVtNFIxRGhHVi9jM0tjMHlIV2hQR1dNYzA1YjBBWEdiQ2t0NTF1?=
 =?utf-8?Q?DjhaLvpzsCqDEg6fVGp+gukgA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e073f9e5-08d8-4986-91bc-08db462b8551
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 07:54:53.9350
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dy1w38UUwyAaN3tRQQ+i7FEtXsxsj9Bj7CDBgaLCXT+DuUp0bogvFFUMFGhcuRl6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6148
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 4/24/23 19:22, Rob Herring wrote:
> On Mon, Apr 24, 2023 at 11:38 AM Michal Simek <michal.simek@amd.com> wrote:
>>
>> Hi,
>>
>> last week I found that dt_binding_check is not checking all errors with
>> compatible string and I have no idea why. I have used 3 systems and behavior is
>> pretty much the same.
>> I am on the top of 6.3 kernel with
>> dt-validate -V
>> 2023.5.dev3+g31cc52ae483e
>>
>> And here is the behavior.
>> Two compatible string I see errors but if I break only one compatible string I
>> can't see erros. Not sure if this is issue with dt binding document or with host
>> PC setup. Definitely thank you for any hint what to check.
>>
>> Thanks,
>> Michal
>>
>>
>> [linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> [linux](master)$ git diff
>> diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> index 098b73134a1b..fbd9754ab0a3 100644
>> --- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> +++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> @@ -110,7 +110,7 @@ examples:
>>            usb@0 {
>>                #address-cells = <0x2>;
>>                #size-cells = <0x2>;
>> -            compatible = "xlnx,zynqmp-dwc3";
>> +            compatible = "xlnx,zynqmp-dwc32", "xlnx,zynqmp-dwc3";
>>                reg = <0x0 0xff9d0000 0x0 0x100>;
>>                clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
>>                clock-names = "bus_clk", "ref_clk";
>> [linux](master)$ make
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> dt_binding_check
>>     LINT    Documentation/devicetree/bindings
>>     CHKDT   Documentation/devicetree/bindings/processed-schema.json
>>     SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>     DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
>>     DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb
>> /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb:
>> usb@0: compatible:0: 'xlnx,zynqmp-dwc32' is not one of ['xlnx,zynqmp-dwc3',
>> 'xlnx,versal-dwc3']
>>          From schema: /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb:
>> usb@0: compatible: ['xlnx,zynqmp-dwc32', 'xlnx,zynqmp-dwc3'] is too long
>>          From schema: /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>>
>>
>>
>> [linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> [linux](master)$ git diff Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> index 098b73134a1b..0b8985bf9b0b 100644
>> --- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> +++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> @@ -110,7 +110,7 @@ examples:
>>            usb@0 {
>>                #address-cells = <0x2>;
>>                #size-cells = <0x2>;
>> -            compatible = "xlnx,zynqmp-dwc3";
>> +            compatible = "xlnx,zynqmp-dwc32";
>>                reg = <0x0 0xff9d0000 0x0 0x100>;
>>                clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
>>                clock-names = "bus_clk", "ref_clk";
>> [linux](master)$ make
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
>> dt_binding_check
>>     LINT    Documentation/devicetree/bindings
>>     CHKDT   Documentation/devicetree/bindings/processed-schema.json
>>     SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>     DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
>>     DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb
> 
> 'compatible' is how we decide whether to apply a schema or not (by
> default if there is no 'select' entry). If you have an unknown
> compatible, then no schema is going to be applied (except ones that
> always get applied). The way we check for unknown compatible strings
> is with the '-m' option on dt-validate. That's turned on for
> dtbs_check, but off for dt_binding_check until the remaining 20-30
> warnings are fixed. Also, I don't think that works in conjunction with
> DT_SCHEMA_FILES being set.

ok. Clear. Yes -m is not enabled for DT_SCHEMA_FILES.

Thanks,
Michal

