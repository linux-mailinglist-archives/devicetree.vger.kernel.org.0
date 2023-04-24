Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17FB6ED29D
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 18:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbjDXQi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 12:38:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbjDXQi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 12:38:56 -0400
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2053.outbound.protection.outlook.com [40.107.237.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39CD810DC;
        Mon, 24 Apr 2023 09:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TR7K3fANFeMxzPInE7NMj17SdDoaFm2VtHsE1To0ANZjOqO+vfoW/nKKhjuVm75K72Zr6Yo+z02zo5rlOnwwPPgUu6Wdl8KSV2dHU0V7IkDqNpoRleD7R0dDpjVKeXRRa+kVZuZwHA+12uue/BNw9XfVAXR9LU5DAoS2GH1FtOeB/IL9w3VuuAS/DXeLI2nVuE0GMqb3b7+NVn5NbjYpeTAtxl5IAjseGb77ojvAc0IAVY6RWHC6zCgxFGHgCXLqgd5KAWxJXo5qV51RazHPzuxP6Vc7MizXpjQAU0OEFROXSTvjY1FziNDnS70HyJjRZ/jf3q81hF+caX9p6hrh8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nS/ZMm0kKtmhclRTHC4OFTo7RMbgZT1WKs3Te0gVoU=;
 b=YnyriNyMBbMwYH/iodZZDgM86cjmJlPOUAlj+qv8TBG56HtcAmXHdG9pmnL+q1+SJgWXYvXgohVumfU5W97v0QNKpKD+HhM2dQKwbro3yU4koThartsOfN+zsUOF2Hub3lO6ycS2NmBezTHhPJpfFF9c44EIlwCqdqD4PQgndFXNQ+P8M0b29LXPxSnuSD3tKlEz+yib6iNNlet1DdtLnToLMlQk2O1oeAJZz+deRGUdKnvr2/uRgGpTLIv64Yx8TxWR+tcFAr3J5eFCtripNCexujyG2oP+EiHD20ccB0aAfVGqCl0eJhgCVV8zZ/wRHeF/C9HD7SfbjvUddp5LiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nS/ZMm0kKtmhclRTHC4OFTo7RMbgZT1WKs3Te0gVoU=;
 b=AHTG6q1kruUuMSwZpF45ktIRBgEjyreAQZ0FFDJ3z8WGVdHxfKg+syJj1KL7TD4H0txNU0bE8Nmmcj7nJhQYz9EV3jjC+x0qLiBMH+00K1wgOe4QAt5F6Ly8CB0hFsIXzVaCtiOC45TIytuFAQ7lCh1G7skzehz8DpcL1xcsjVg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by BL1PR12MB5127.namprd12.prod.outlook.com (2603:10b6:208:31b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 16:38:53 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::8c5f:e48:a658:7611]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::8c5f:e48:a658:7611%5]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 16:38:52 +0000
Message-ID: <77db7543-cae4-695c-7c86-6562534d4e87@amd.com>
Date:   Mon, 24 Apr 2023 18:38:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To:     devicetree-spec@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
From:   Michal Simek <michal.simek@amd.com>
Subject: dt_binding_check not reporting all errors
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0802CA0013.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::23) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|BL1PR12MB5127:EE_
X-MS-Office365-Filtering-Correlation-Id: ced6c7f3-4b05-4a0c-802a-08db44e2634e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Omp/pD8Gt0cTREyM8mc0pM0TRKQCmWVa9/Q5gDJz7DcwSgal6AtD6B2bLEDz+Sl0GWU7uK1X7afpsrPG+RT3bNBHRkoWudi1Frw1icYPa1jNniccU0UmPuLrGVAm6Bl6M+CSdlJfRsWDJ+CwJBhb3EgXJbNWtSAY0mBbdQ91T4TrWgNiEUn9oWUAg+5sgyj4DJDbm5+sp/NgSF0yMXmNxYVKa9LAoYAhzJNTi462MNytGIQ1pc/waty5S/dpJRO6dPpUnfjme39mMTMbuO13Zubxeet6+iyic2bU9drbe6Zw1URUK9QCv9o7oBzFrZrikPFjLHItkLKeNARc98/aznZgIsC9hE2EKCL1o3t5Yw7Z6xl7j5wD+HauTqeRni+lM3JGZVOBPJEfo4kmwGf4mzplE+u8PvjUQQq8ZG/2Lg+7v9rjzevyweV5XrUOQeFvdCrzh+sjbBtPwVsC0pp1+4kiDwntLXr3fiFVYKi/PAixvxoISYh+VEtYMp+0UM6UkfC3EfPxxryfxU8KZLm7fWe8bCPf0tqNES11wNwQtv+yFD9tadPjOd7GRODD2NW/I3xfrm5UCVsQSvCz/yhGxtXoW6VAuOZkOJS/cYnkY7JLE2X4DUp/bcOmQlPbliocd7fdvtxFQtI0ls2kF6N8Gg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199021)(5660300002)(44832011)(2616005)(86362001)(31696002)(83380400001)(186003)(6512007)(6506007)(26005)(38100700002)(8936002)(8676002)(478600001)(316002)(6666004)(6486002)(41300700001)(450100002)(36756003)(6916009)(66476007)(66556008)(66946007)(31686004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDVFTjQ0QitWYjdkRlo0bDg3MXJJRWttQUZoeVpCclRCTTlDWkMvNlBEbSt6?=
 =?utf-8?B?a1dQWFlvcFBHWmpmVGpvd1dzVTNWN1BwVTJwdU0vbnZCYjlDVXNXNHhFd2lV?=
 =?utf-8?B?RTJnOXUxdExNMjZHbkhGSFNxNjRZSXpyekNURkloTHM1Uk0yeEwxalhtcHR3?=
 =?utf-8?B?UXQ5Y3JKblRNeHlpMk9FbzJDWndiUjJwWXZlTmpmZW1TMmpBaVlEaWZ1KzFt?=
 =?utf-8?B?M1hiUHFPNy81MGN5cXZMWFFSWjZLV2ZNMFduVFNyL2xJRktkK2hhL0ZXUHM5?=
 =?utf-8?B?RDdRSUZzKzNzK3NuOEc1Y24vUFFuUXdDNVpQRTFRMENkUjUvQmpvTmVtcVA4?=
 =?utf-8?B?bzVFNjN0OVY5ZzJVLzVFdUJHdjE5OEJrU2JRV1VaRzQwaGV6NCt4Zm5JY3FC?=
 =?utf-8?B?VDNQd0pSZkkwZnVWMzQvcHRibndxRjRDcitYbnNYM2RoWWZ3Z01kb2w5dVZk?=
 =?utf-8?B?UnlsSnIvU01IVTlQV1d3QjlqbXBvNEVaRCs3RzRIU3FxK3JhN2poTmlKdmcx?=
 =?utf-8?B?YnBQcEZxOXFTSzcyM0dVUUJ2NHlQK3F3cmlSc0VQZit3TGhQQ290U3drYzFX?=
 =?utf-8?B?YW1IMGREUFB0UXFoK0NaLzJ1L05IRk1VTm1qUE5sMlo1aUJHUTJHd01FZENw?=
 =?utf-8?B?SXdvZGhHcEJJRkdidDZPYSs5WHhJN3NpRHQ0MUVOSUcxVWdPOEIwUERlVFUr?=
 =?utf-8?B?YXpzdXhOYWhiTjR6QkpXc2xBNGFWTTViQnFFbjdTT2IyNWdFdkQ3dFE4Q1Jv?=
 =?utf-8?B?dnNucHhRaTBzcERPdmFBOVJ6NXNKbE9mcEl2Y2dqaS8veWsxMUdCL1FpR0pv?=
 =?utf-8?B?SVRRUENGTUVjTisyUXozY1pnemdVUlFDeHhTdlF0aStnSThEZXdXM3IvaEpv?=
 =?utf-8?B?UDZHTGgwYytFRXpiRVViUm9zRG5OSUsvQktRY2w4d3RnSXVwYUNtLzVyZzJa?=
 =?utf-8?B?OEdCMzBTdjVNTlR1T25KalJXajNmWjI1OFQxdG5EaTVLYlNtWlFYV1Naa2xi?=
 =?utf-8?B?ZzZBcEVzbDg5NHhFQ2hkZnAyY3VJVDZ2OVMvM2hhWlFZbXhnakF2OVV2dG5S?=
 =?utf-8?B?dEZTaXV6U2o2Um9GMjNBZmlnS2VxQnphMUNUbFZXeFVOZW9VQUZuWHA3V1JX?=
 =?utf-8?B?QnQ3RDkwQVBXL0RpVVB0SzdaMzJ5L2x6MXc4VXVwWS8zQkh3Y2p6cjB0cysr?=
 =?utf-8?B?K3B5RzBPazdOWGhxQVR1ajk0cTVBQWRXTHFPUDRjZTZYQmE0ak5oeHVoeW9D?=
 =?utf-8?B?RnNRaVZqQ0FtSDNLYTluV2NNcU1PZ1RGMjgrVFNEREpobUFnZisvUDVqMnVE?=
 =?utf-8?B?OTJkTjNGaUVNNlg1VnQ1a2hLZDl0VXkrNU8wUHF0UEppS3dOQ3VyL1MzL1Bm?=
 =?utf-8?B?K25IdWk5eXkxUTNMN084VFBOQ1JaMS95eVJ6R1ozTTQ4MStsbEhOQThwaDRO?=
 =?utf-8?B?TUt1TUNTY1hPVFZSMVRvcE44VGhHOS9uenRBdzNsSmlHL0EyR1VQTjhTTzBO?=
 =?utf-8?B?czNFNVo0dG0yVWRUOC9VZjVyaG1pSGtIWHFLemcweWpDbnBnalk0bmExUnZm?=
 =?utf-8?B?MGVSenF3eHJJOFJwbHQrLzE0aTRSSmd3T2pXQ3E0aXVEWVVQZHVscWV1TnFy?=
 =?utf-8?B?Um55TjhneTRCVGhWVEhia2g3UjlLSXhvUThOZW9VZHNqYmN0eFdENmUxT3dB?=
 =?utf-8?B?ZmFSeEtyclJwY2hVK1lMbnZLNXl2SlczbThRajIxRnZIcjV0aitrcDlGMzEz?=
 =?utf-8?B?QW1ncjNhN05TaURqRVl5ajJXZXNkdUswS2pvaklnWmNHa0N4dUsvWHRsNWNS?=
 =?utf-8?B?OHpRY1dtcmtKYWdlVmdwYk9wNkxrT0tkQnh1UndiYVpJNk8vL084QmphaHdk?=
 =?utf-8?B?L05EcDVJQUlGbks2UmliVnV3WmVUT1dmS1BzYWt6RkRWKzhEYXJjSXArSWRz?=
 =?utf-8?B?MjV4Q0NZZGlnZmw4MnIrSUFPR3lMRWlHem4xYW0wYUFGUzJsTDFXMGkxNUE0?=
 =?utf-8?B?NmU0M0l2Q3o5TlgwV1ZFdU9WWUFKUmx4WGNoQW1YdlIyZTB6ZHVJT0RWNzNZ?=
 =?utf-8?B?dzYxM1dNakxqVXlGWkxZWDBIVERlWlBhUkgreXRFaHEyUHdNbUM2V083cUJG?=
 =?utf-8?Q?NQBf4phugHByQzsvB28qtWeUV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ced6c7f3-4b05-4a0c-802a-08db44e2634e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 16:38:52.5075
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nk7HELEYlrurvJhub0A7XuCbQRVNfVrowYG+g6Oze5TJmlbBMWKnLMtgBvhi5FGa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5127
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

last week I found that dt_binding_check is not checking all errors with 
compatible string and I have no idea why. I have used 3 systems and behavior is 
pretty much the same.
I am on the top of 6.3 kernel with
dt-validate -V
2023.5.dev3+g31cc52ae483e

And here is the behavior.
Two compatible string I see errors but if I break only one compatible string I 
can't see erros. Not sure if this is issue with dt binding document or with host 
PC setup. Definitely thank you for any hint what to check.

Thanks,
Michal


[linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
[linux](master)$ git diff
diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml 
b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
index 098b73134a1b..fbd9754ab0a3 100644
--- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
@@ -110,7 +110,7 @@ examples:
          usb@0 {
              #address-cells = <0x2>;
              #size-cells = <0x2>;
-            compatible = "xlnx,zynqmp-dwc3";
+            compatible = "xlnx,zynqmp-dwc32", "xlnx,zynqmp-dwc3";
              reg = <0x0 0xff9d0000 0x0 0x100>;
              clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
              clock-names = "bus_clk", "ref_clk";
[linux](master)$ make 
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml 
dt_binding_check
   LINT    Documentation/devicetree/bindings
   CHKDT   Documentation/devicetree/bindings/processed-schema.json
   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
   DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
   DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb
/dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb: 
usb@0: compatible:0: 'xlnx,zynqmp-dwc32' is not one of ['xlnx,zynqmp-dwc3', 
'xlnx,versal-dwc3']
	From schema: /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
/dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb: 
usb@0: compatible: ['xlnx,zynqmp-dwc32', 'xlnx,zynqmp-dwc3'] is too long
	From schema: /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml



[linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
[linux](master)$ git diff Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml 
b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
index 098b73134a1b..0b8985bf9b0b 100644
--- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
@@ -110,7 +110,7 @@ examples:
          usb@0 {
              #address-cells = <0x2>;
              #size-cells = <0x2>;
-            compatible = "xlnx,zynqmp-dwc3";
+            compatible = "xlnx,zynqmp-dwc32";
              reg = <0x0 0xff9d0000 0x0 0x100>;
              clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
              clock-names = "bus_clk", "ref_clk";
[linux](master)$ make 
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml 
dt_binding_check
   LINT    Documentation/devicetree/bindings
   CHKDT   Documentation/devicetree/bindings/processed-schema.json
   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
   DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
   DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb


[linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
[linux](master)$ git diff Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml 
b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
index 098b73134a1b..b6d0d6930a32 100644
--- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
@@ -110,7 +110,7 @@ examples:
          usb@0 {
              #address-cells = <0x2>;
              #size-cells = <0x2>;
-            compatible = "xlnx,zynqmp-dwc3";
+            compatible = "xlnx,ffdzynqmp-dwc3";
              reg = <0x0 0xff9d0000 0x0 0x100>;
              clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
              clock-names = "bus_clk", "ref_clk";
[linux](master)$ make 
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml 
dt_binding_check
   LINT    Documentation/devicetree/bindings
   CHKDT   Documentation/devicetree/bindings/processed-schema.json
   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
   DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
   DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb


