Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 348376FD69C
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 08:16:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbjEJGQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 02:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjEJGQO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 02:16:14 -0400
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2056.outbound.protection.outlook.com [40.107.96.56])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20AFCB7
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 23:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dR+u0w+wGAXc0PZ4XrSbEXuZFhDPyv9cIdIxO8LiR3dHUltqEOZlzqgS+4lP+1LMJArJKzhsGwhPbqEjccSHthvsuKpPzB/mroFHF55RSb8my8sIgtTjiA+m7dEmQ+o3IINHsc+ehs5DfTm4iLUQ0dYHt0jr61Tke375wHoXQcppasNPAd1dBXwRUy/ZonN2YqWEzfkNAnZ8c/+QqbjqCpUu8zIuGN0Br8lbTAOqPLBahgyfiN+VuXLDhRZ3n9nta4fjFlCALkfmU4oaSkFylIDPMs6neFwnvDRnfyVNHER4Azd+pGg4v4xCYFuCtcClTzq2zaby0lVMfCY3zoxQhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AzdbxVybSrDERAAvDgeDmeuU7LhZI92S+6FjvjZkhQA=;
 b=TTjOmrvVjjsdjN5AlrgW3hCQ7aC+XxIhj+j5BUCCAbK//dqShvwHmks8xfFYKnxN6KZMVKTLXSypiNZcZzVgxxW6CX86zsDHmGjibNFGU6EIGRTPTSfaUkHT8eB6c1kQThkX/uN3au9t+cLfPIbMraTPZ3woKQxtIikcgdhfahRSXMlOD23wenOiG0Xmpckwuf75vR46vVzL+r8qQywUPJSsmdkbE5gjPd9je4aG9Vw38oujTn4L6poqzuV+urRGgDtzffEmTAc6hVPf6mTmsLtKRgUxFSMuuDPfFdwkqNMkO3e1XQk+63V+me0o+TTl733j0nD1AVHUWk26Hjwm2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AzdbxVybSrDERAAvDgeDmeuU7LhZI92S+6FjvjZkhQA=;
 b=hRLH3AkRrW8THzZcBS3+aN4CczwjIEpugqx5nZjTk1e+Me4RxgY3Vri24YeCqDOavA1JxWPI00i7/Gsi0fX6jpnrGG4/GQoy6PYHJbv59vMFzU1uuJ4ajppWqq4iysWjJGRKp/UJI1ZIF7m/1zEYgViU/p9L9MCNDxE9dMdkpHo=
Received: from BY5PR12MB4902.namprd12.prod.outlook.com (2603:10b6:a03:1dd::9)
 by SN7PR12MB6983.namprd12.prod.outlook.com (2603:10b6:806:261::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.27; Wed, 10 May
 2023 06:16:10 +0000
Received: from BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::6960:852b:6426:8d0d]) by BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::6960:852b:6426:8d0d%3]) with mapi id 15.20.6387.018; Wed, 10 May 2023
 06:16:10 +0000
From:   "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>
To:     Robin Murphy <robin.murphy@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     "git (AMD-Xilinx)" <git@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH v2 2/2] perf: Add xilinx APM support
Thread-Topic: [PATCH v2 2/2] perf: Add xilinx APM support
Thread-Index: AQHZFeFp3L2FmRJcXECPePjgSDEcHK6c6nYAgLb2a3A=
Date:   Wed, 10 May 2023 06:16:10 +0000
Message-ID: <BY5PR12MB49023DE02CC2C6A1F8A36C9681779@BY5PR12MB4902.namprd12.prod.outlook.com>
References: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
 <20221222084235.12235-3-shubhrajyoti.datta@amd.com>
 <fd12e28f-5a61-87b1-224c-1361a607e943@arm.com>
In-Reply-To: <fd12e28f-5a61-87b1-224c-1361a607e943@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=8822bab7-e1fd-4843-a843-2d8a1b9a02c1;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=0;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2023-05-10T06:11:55Z;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR12MB4902:EE_|SN7PR12MB6983:EE_
x-ms-office365-filtering-correlation-id: e8b83638-9123-45ee-5cf8-08db511e0c83
x-ld-processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sBwl06VOIQi4uH0GuL5ovd+EyspMhMBVeEydLl6aU8p51XJf99hxBpxw35hD9+A43suefC+n4+LmB4NvH0X5zeM6n4s7sXFBRgXYhfL7Hw7FBnfFH6y0fu5CzuYYO1Voigl/Ud7rMZQWuxcC7UnS2gRyB5tSplkKiD81Gdc4B8YcvXfe047hTDDoli4orYT4bOGhLscYJluO7A5MLYXF8c/VcXOtY+zCPkwqrMDeqYWhAyOiTSdbgjORs2y2/KVmMWqGGBnyBEEZdiOy0axTT39fnbx/aXUCsIttmHD17mv5n77xjJ6VBtrcoRDMhCmIQTOHCJdSgThuseQxClviFkayOLY+/XScBSpPGxIZzS1wWu9661EMnKewp0Su4KN7Ucqkrj7VO0UznJ6TVYuG8g8yv6uxN9LxQAOdibV7aV3gc4XmzckUvbCvmcPknQnR7Qvu70Lc5bcqvpUT+HFLrK+PfPKPo7QMnyxkVnSgAIELO+KCrm4+UEPq4NMaQlO4PLwN5F/M55OahN5T2FfQnpbAUJtNjpLhe9REiaqJqVCBUs3gnZevAgwgdQIVaPVim5PwMfDK0yXo+LgT4Xb+DZ5pTUqKBoh/1C5v2YNo1kQ2zXlmG+qlWVvO/lWt4H5O
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR12MB4902.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(396003)(366004)(39860400002)(346002)(451199021)(86362001)(33656002)(66446008)(66476007)(66946007)(71200400001)(54906003)(66556008)(316002)(110136005)(64756008)(478600001)(76116006)(7696005)(4326008)(41300700001)(186003)(55016003)(8936002)(52536014)(5660300002)(8676002)(2906002)(38070700005)(122000001)(38100700002)(9686003)(6506007)(53546011)(83380400001)(26005)(4001150100001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXNXeDZTMmhSS21XRzNpUE0reExoTWx1QmxDb1U3TU5GWVdjRnBiM0VZQk5G?=
 =?utf-8?B?NDNrWG1GMEZRekxoZGhCblJzbVl6TTBzOUZKc1UraXRkcWozVy9MaTdUcUMx?=
 =?utf-8?B?eUdwUW5YUlJiZm13WGNYMlN6YU1tenVtQlduYWx3MmhoRlF2U0dGei9xSm9l?=
 =?utf-8?B?bnhiNWU1Y3hWTEhCNjdqL1ppRFJ2ZTFsSERvU1F2cWttcmwrQUhiNlFzL0t4?=
 =?utf-8?B?NGtaRHRWYkZMR1FkbnNkM2IyTm1ySnZ6QjR3NnVVSUlTZGJ4c2xvbjBVKzVr?=
 =?utf-8?B?SzNGT2RBSERNOTJuN3dQdlNCYzFtNTdZZmhVWlgrYlNCTEZXMi9TNS9TdERP?=
 =?utf-8?B?eFRZK2VWWDlKcGJiT21FWnV0Uzhoc2gvU0VmekJIdVhNRVpTOUpTdTV2SXU5?=
 =?utf-8?B?V21lbHg3MWUwNXg2TTNtRkZIU2NiQXg2U3JHdnRSOWRpZFVTWmxNcngvcGJj?=
 =?utf-8?B?VXZFYTNBQ2RNVzhaaSt1NGxkR25RdWNWTWZuSmlYNVJpTE1jaFBRWm1ud2Jp?=
 =?utf-8?B?a0s2S29EWDNjRXF0VkdLSzladkVma0RtcFZURXhndEFGL3FYNDl3dVhNL1Qx?=
 =?utf-8?B?OXFyWk1uUS9TRXVCaEVabW9zRXp6d1dBUjRvc3NFUFk0eVI4QXBZN1RQRTFy?=
 =?utf-8?B?cGVqc0l6cnU3bUkrQ3ByTElRTE0vSFNoNTE2N3FwM2ZMK3Nzd0pXRm0rTTZF?=
 =?utf-8?B?Wm43bmd6S2d3S0JsSnAreGVJa2dGdkQramJ2R0cxUm40VzV5TXN3a244RWIz?=
 =?utf-8?B?UDg1WkJKU1h3YmlPVWNDOUhRdDN6TjBnMXgvMSs5Nks3bndnM2diWEZTakho?=
 =?utf-8?B?RGk5aFZRZi9id1lpNVZKaVpMVmVUZkFBVmxwMkJoN1JnYVVqM1JOSGlDSndH?=
 =?utf-8?B?dHFkOHhrK0tYYlFLWDR1bUNQQW0wZXRzT25PdVgvRVhlZ3dUd3Ywc092TGVO?=
 =?utf-8?B?S1JwdHVjbEMwcHh1anVUbjlxVVcwaStQR1lQUisxNHNhZmhyRnZMeHBxclJT?=
 =?utf-8?B?eVhqUHJPRnNybVBrMkNnUFJXNDE2ZEZya3VCOU1RajdzWElLV3Bmb3hPUWhB?=
 =?utf-8?B?RzM5WFl1cDl1bC9xV29uZ2hDYk5FV3FIL2lvcHVaaStXTXZyM0QzRlJlelBx?=
 =?utf-8?B?b2EyYUxmMmRjZS90bnhaQlV4U0hDLzdocXNJRWgvYTNaOXBnOUxZVkRraUdH?=
 =?utf-8?B?Tk9haUJEdXpLT3ptS3BPNzFjTTBrcWllWFJFUDVrZStPaFI5Sy9Hd2U4dkkw?=
 =?utf-8?B?a04vR0tKN09UOGxwZVdWRjZ5cGprSlhHbkNVc1dDalpEb2t6OFI5RUJhdXNs?=
 =?utf-8?B?aGlmSnBFNVd0L3ByS0RlWUNrNHgvcU9IdSszaXZ3SUpRcEttbDZ4ZjFOYzdj?=
 =?utf-8?B?aEYrbHZQQWtSMnY3OGhCOUZmOTY4VkpLbThtR2VqdlBaZG90ZVRJUE9GbzFI?=
 =?utf-8?B?d3BiMyszRHloSngvNHc3WmUvMlhDWVVSTXFBZUVDMFhDdHA3aFE0LytyYlRz?=
 =?utf-8?B?UG4zVWY3VjFTYTRmT0NGODAyaHh2ZjZEWmppdWgveElRWElubVhiTmJySGNk?=
 =?utf-8?B?aXB0aUVVQXE1ZGN3ZVNVT2tLZkFUTVF0bElKS1FlSDNNSzlaLzk0eUFETlZo?=
 =?utf-8?B?NzAvZ2NDSnBBajFlOXBmOUxMUENjQVgxcXZMZ25DejZwS0lHMVJYbStmNnlv?=
 =?utf-8?B?UVB1d0JnL01TalpJeWdkMUpldnVJbnMwdXdiM1Z1UEY3cEo1WUZvOVZhZXRO?=
 =?utf-8?B?bSt5OG5QVXF4YUF1QnpwTkJ1bE1UZjQwYlRTMWIwRmRtS0FUQTJtZXVITzFX?=
 =?utf-8?B?WlNEanlFY2hLVmtYQkM3K2grM0pyaURJUEY0WWEyd044T0JBT2RYR3dBNVNz?=
 =?utf-8?B?bFh3d0RyRW9ucE1jR1Fldm83M1IxRWd1ZGlmYUV2c0xDZlppR1pXclArL0N0?=
 =?utf-8?B?SGpUZ3RjMnVqVWtJSmd4VEpDRmxCOHJOWFVsSTJWaWxpVGdPUll5QVVVZSsw?=
 =?utf-8?B?RnFPVnJnSlFoMnhKR2ZwVWFhUkkwd1RkYzlkQjQ5UjlkT0JNWWszR1RJNzRC?=
 =?utf-8?B?VjVoT2svMVVTSmRhajdCV2dHNnUyMUs5RUJ0czBHb3IyVU02OW1QM2FuSDgw?=
 =?utf-8?Q?lKDI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4902.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b83638-9123-45ee-5cf8-08db511e0c83
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2023 06:16:10.3540
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +R5aIU92O+tCD/ZE8Dzxp8mQV9WrStO+zVonZDHkIdw3eRXdqWtNFp7gR3kDFw8LW4BEXDSaVGD3Xx7Rw0luzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6983
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEdlbmVyYWxdDQoNCkhpIFJvYmluLA0KDQpNeSBhcG9s
b2dpZXMgZm9yIHRoZSBsYXRlIHJlcGx5Lg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+DQo+IFNlbnQ6IFNh
dHVyZGF5LCBKYW51YXJ5IDE0LCAyMDIzIDE6NDEgQU0NCj4gVG86IERhdHRhLCBTaHViaHJhanlv
dGkgPHNodWJocmFqeW90aS5kYXR0YUBhbWQuY29tPjsgbGludXgtYXJtLQ0KPiBrZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZw0KPiBDYzogZ2l0IChBTUQtWGlsaW54KSA8Z2l0QGFtZC5jb20+OyBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gbWljaGFsLnNpbWVrQHhpbGlueC5jb207IGty
enlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZzsNCj4gcm9iaCtkdEBrZXJuZWwub3JnDQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMi8yXSBwZXJmOiBBZGQgeGlsaW54IEFQTSBzdXBwb3J0
DQo+DQo+IENhdXRpb246IFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVkIGZyb20gYW4gRXh0ZXJuYWwg
U291cmNlLiBVc2UgcHJvcGVyDQo+IGNhdXRpb24gd2hlbiBvcGVuaW5nIGF0dGFjaG1lbnRzLCBj
bGlja2luZyBsaW5rcywgb3IgcmVzcG9uZGluZy4NCj4NCj4NCj4gT24gMjAyMi0xMi0yMiAwODo0
MiwgU2h1YmhyYWp5b3RpIERhdHRhIHdyb3RlOg0KPiA+IFRoZSBwcm9ncmFtbWFibGUgQVhJIHBl
cmZvcm1hbmNlIG1vbml0b3JzIChBUE0pIGNvbGxlY3QgcmVhbC10aW1lDQo+ID4gdHJhbnNhY3Rp
b24gbWV0cmljcyBhdCBtdWx0aXBsZSBwb2ludHMgb24gdGhlIEFYSSBpbnRlcmNvbm5lY3QgdG8g
aGVscA0KPiA+IHN5c3RlbSBzb2Z0d2FyZSBwcm9maWxlIHJlYWwtdGltZSBhY3Rpdml0eS4gSW4g
b3VyIHBsYXRmb3JtIHdlIGhhdmUgaXQNCj4gPiBpbiBQTCBhbmQgYWxzbyBzb21lIG9mIHRoZSBo
YXJkZW5lZCBpbnN0YW5jZXMgaW4gUFMuDQo+ID4gQWRkIFhpbGlueCBBUE0gZHJpdmVyIHN1cHBv
cnQuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTaHViaHJhanlvdGkgRGF0dGEgPHNodWJocmFq
eW90aS5kYXR0YUBhbWQuY29tPg0KPiA+IC0tLQ0KPiA+DQo+ID4gKw0KPiA+ICtYQVBNX0VWRU5U
KHdyaXRlX2NudF85LCAgIFdSSVRFX1RSQU5TQUNUSU9OIHwgKDkgPDwgNCkpOw0KPiA+ICtYQVBN
X0VWRU5UKHJlYWRfY250XzksICBSRUFEX1RSQU5TQUNUSU9OIHwgKDkgPDwgNCkpOw0KPiA+ICtY
QVBNX0VWRU5UKHdyaXRlYnl0ZV9jbnRfOSwgICBXUklURV9CWVRFIHwgKDkgPDwgNCkpOw0KPiA+
ICtYQVBNX0VWRU5UKHJlYWRieXRlX2NudF85LCAgUkVBRF9CWVRFIHwgKDkgPDwgNCkpOw0KPiA+
ICtYQVBNX0VWRU5UKHNsdndyaWRsZV9jbnRfOSwgIFNMVl9XUl9JRExFIHwgKDkgPDwgNCkpOw0K
PiA+ICtYQVBNX0VWRU5UKG1zdHJkaWRsZV9jbnRfOSwgIE1TVF9SRF9JRExFIHwgKDkgPDwgNCkp
Ow0KPiA+ICtYQVBNX0VWRU5UKHJlYWRsYXRlbmN5X2NudF85LCAgUkVBRF9MQVRFTkNZIHwgKDkg
PDwgNCkpOw0KPiA+ICtYQVBNX0VWRU5UKHdyaXRlbGF0ZW5jeV9jbnRfOSwgICBXUklURV9MQVRF
TkNZIHwgKDkgPDwgNCkpOw0KPg0KPiBEbyB3ZSByZWFsbHkgbmVlZCB0byBleHBvc2UgYXBwYXJl
bnRseSB0aGUgc2FtZSBzZXQgb2YgZXZlbnRzIDEwIHRpbWVzDQo+IG92ZXI/IEp1ZGdpbmcgZnJv
bSB0aGUgY29kZSBiZWxvdywgSSdtIGd1ZXNzaW5nIHRoZSBteXN0ZXJ5IG51bWJlciBpcw0KPiBz
b21lIHNvcnQgb2YgY291bnRlciBpbmRleCwgd2hpY2ggYXQgYmVzdCBjb3VsZCBwcm9iYWJseSBi
ZSBhIHNlcGFyYXRlDQo+IGNvbmZpZyBmaWVsZCBvcnRob2dvbmFsIHRvIHRoZSBhY3R1YWwgZXZl
bnQgdHlwZSwgYnV0IHBvc3NpYmx5IGlzIHNvbWV0aGluZyB0aGUNCj4gZHJpdmVyIGNvdWxkIGFs
bG9jYXRlIGF1dG9tYXRpY2FsbHk/DQo+DQpUaGUgZHJpdmVyIHN1cHBvcnRzIHRoZSBzYW1lIGRy
aXZlciBmb3IgdGhlIFBMIChQcm9ncmFtYWJsZSBMb2dpYyApIHVzZWNhc2UuDQpJbiB3aGljaCBj
YXNlIHRoZSBoYXJkd2FyZSB0aGF0IGl0IG1vbml0b3JzIGRlcGVuZHMgb24gdGhlIHdoaWNoIGNv
dW50ZXIgdGhhdCBpdA0KSXMgbGlzdGVuaW5nIHRvIC4gSSBuZWVkIHRvIHJlZGVzaWduIHRoZSBz
b2x1dGlvbiAuDQoNCg0KDQo=
