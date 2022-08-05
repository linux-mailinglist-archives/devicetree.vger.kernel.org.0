Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F4E658AF3A
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 19:55:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240799AbiHERzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 13:55:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241467AbiHERzI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 13:55:08 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B27B28E23
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 10:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1659722107; x=1691258107;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=MzuU92UJa5nub8eP4lCEvrdiFdBVL7Yy6IepG5sNMko=;
  b=mhuLhA6vJpKlT6Rdc4miahlJwbXMa5sYOJtocQvQ+CEkUfGhFj8pQ3Xe
   fImmO8vsjAtszBOb8YvQ8PcycMiZ/dnPewZgr4y6k0hY89+HBULSGLvoT
   FV09wMUtildk/dlA+cckUh5KAaGkZu6MFs3v+lC/rqtFsJ1AqRdXHA0lt
   i/keM0Qrr0PwWV4Q8pXADATQwZy765JnC23+kkrRKPnD9fLPzYWk2F0fn
   /sIqBIFcLraQZKHjmUnt/ZCzBRPpXv9P4EXOCSC90MF4O62jsjW88sUAH
   7j3m+holmJrFKGyLI7r9keZALbl0kDVZkEmAE6sbqw+UMubkuqQwOPLat
   w==;
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; 
   d="scan'208";a="171185926"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 05 Aug 2022 10:55:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 5 Aug 2022 10:54:59 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17 via Frontend
 Transport; Fri, 5 Aug 2022 10:54:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AoRjQfCw4i7lnmk7xdkw2HKXj4tMh8a/Rc5Sc9dx4VyEAXlllyH6iVdNJFi6Yv0Fi9QJZQh5X+BJRoKsdKp+uzN356tNnRZ9xO6dd/JnpSPMYkWZdGVi5HhLSXMmO9FGBwiAckv1uLt5r+XSbuOdYXBTJK7bPN+Jwv82CjIJXdEDiZotj9WqVTjBN0/ypxi19c1VhG07+1agYxULS5XA5D3eC2rgxI0V5KH7NVSZF8q5KxBhj+Nb6+VIAaLuRngR28Man5payqsRTmetgeOs3mLXuCZQwI7eVfcG3TBpws2Te4t4laHK5RtGpmPnh3kQI/5cl0PGiBS9foDS3ACtUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MzuU92UJa5nub8eP4lCEvrdiFdBVL7Yy6IepG5sNMko=;
 b=hupu7VAR2P71vQRn1N9UDaK+I0lptlheRIkCiSQUA9RS5cLVTM4vqb3koDVIpOexrf0X0k3O4L4fp2fng0hJ/xyBAEp/27eDdjnchX/LI0N/yd24XFDr+mNqrZ+T4lHtbeUQk5Q3NVcJmSmkKEk2xANhce5wi1TJAx5H45v1c+QZeZsb7OGUP1CxEBKKJ9eokVfAnbFguHDwPvVgT91R8FOlFCSrPmqJN+iqesHDU72QdSpkx/IqG8GimmsYh/PAUVUFfLp6bWHnxnYR7BHkazh6rK3m5d7BlwbZ7+LgJxN4f2X7hWV37D3UEnwe5ngHi3DSvIPBz3nfPB4Abip7Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MzuU92UJa5nub8eP4lCEvrdiFdBVL7Yy6IepG5sNMko=;
 b=ph6NpJrMmYj8Q2Kngrws+KJTp/LZ2k8pOnd+E/o+Hvy8FbmeDTxW6TkeC6AlkIWsZLK8FXSmGHXcKHDO9NmbnKIKYeYkkcOdqlcPNbYpY/90vumuXgu0t2FWeR/QSGCHoSmAkkEPjZ9+yrvKCL0M4R8T6tv5oEnxZ5Jiwnd2hLs=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 by DM6PR11MB4721.namprd11.prod.outlook.com (2603:10b6:5:2a3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Fri, 5 Aug
 2022 17:54:54 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::ac89:75cd:26e0:51c3]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::ac89:75cd:26e0:51c3%8]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 17:54:54 +0000
From:   <Conor.Dooley@microchip.com>
To:     <robh@kernel.org>, <palmer@dabbelt.com>,
        <paul.walmsley@sifive.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
Subject: Re: DT schema warnings on Risc-V virt machine
Thread-Topic: DT schema warnings on Risc-V virt machine
Thread-Index: AQHYp1uUaUBjfKD6EUeU1KJXpPDQJa2daT4AgAMw+IA=
Date:   Fri, 5 Aug 2022 17:54:54 +0000
Message-ID: <6de5ee22-9fc4-208e-b26f-d09754a27a81@microchip.com>
References: <20220803170552.GA2250266-robh@kernel.org>
 <673492ba-caad-bbaa-4952-0ad1dac6eda5@conchuod.ie>
In-Reply-To: <673492ba-caad-bbaa-4952-0ad1dac6eda5@conchuod.ie>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f2059e3-55fc-43ea-2fa4-08da770b9a44
x-ms-traffictypediagnostic: DM6PR11MB4721:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OX99Fu/cmQJPybFM59Vvwo7W67eY+EZWtus3674sgMcfBSgIbJfzNnbvtmanzotW1hZOsdaPyH7MbtWaZin+iJDlU1Hsn648M0r+1Lud9StC16E43GdIzaUrP/PaoTRbmEVvOECkKvgCmOR0SDhzob4yF1lRAXODvZmjB/sJ2AMpWM6vdktJhxuHb+NsPhKB2o5pVG9Z1TkPd8tnMkxxBkYyL6ge3NfkrUgkJaNzrobllfPoGeQLk4m8loK12JB9reWb+6JVe2cb/K7dWs1XTBHdLGlrLIDN9VPCRsanON2USKynfAhNl9yd1mcZGgNkJzM/SDbjY8hW9G26MxqXRVgbjD9K66ssGzHblUfZm5JmudH+2bnvWaL9NXaXUg2cqYZ6FvQijyGmJsLGZQxdQOu37c2jVSSOlaRuZb/XVFCILB9xIfF1MLcOGpfTX793b1L1bnZpT2E+Q490ayzVwtA+mtcG92+2yWcovKym/YPtpydvdkQT/Yf1ZgjwRBbWj9kRj/v5xGMrLrS+aYfdCirI2jArfdt9fz4fF/EXN0JQqgoiCYipKTwIqxW0FzwA9cLdLhi5jyhClGrTGnVWbaJ2C8Hv2duhrQuAW4i93QLvJm3Zi/ClSm+yjencyREQAeabZCKPS5CmR5CQN+bYtwxjSYxH5cmcp1zzOvuxwZGUnE+PkJklzTH/MLDW7HYc5cqVQpx9dj/vfUpTpfibXBF62Xfdkzz3F0MdyBjUhxhxVFqsBEihoNEdPMW0YOI9s1DOW3PjNfh2OWwaaw63NWIuITIA+7hjTRsdjmr6yQc/mJLEQ0maCTwSZnYIVVTAFz+K0qm6MEx8YSwto2S/5zLv17Rqfp1a+E+CGAFdfcprVa15VBAR0K5z0UVKsvMwHOw1oe94BmYsf2vpNYij/+cE0K/N4+uWT5jOS9ua1KJMvG1toqxj/mxVOLhaZDJZ
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(346002)(39860400002)(366004)(396003)(376002)(5660300002)(31686004)(2906002)(66556008)(91956017)(316002)(64756008)(66476007)(76116006)(66946007)(66446008)(8676002)(36756003)(110136005)(8936002)(6486002)(478600001)(71200400001)(966005)(38070700005)(53546011)(6512007)(41300700001)(86362001)(31696002)(6506007)(26005)(186003)(38100700002)(122000001)(2616005)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUpFdXluV2VBTUQ2QXlOdkxPMWJUbGx0Q3RodWprVUxhbm9JcUpEWUNZV3Fl?=
 =?utf-8?B?MGZjUVUvN0JybUIweXJzNWNoN3BzeWVoMFp4cFZldTR4L0x4MWNCMVNWVFpj?=
 =?utf-8?B?ckd6dmRCNjlZbjVtelpYOUxsNzZSSmJtRG9PdmdmSzRDVkNGaWtKYVlKNzJi?=
 =?utf-8?B?WERUZ2dlbCs3QXRWelVxNG5ONjBUbjFtczgxanIzRXp6bDZJd0FkL1NrK20w?=
 =?utf-8?B?Q2VGVzQ5NXhOdFBMaDkvYUdGcXJ3cHpQUGI5Y3JMUHNWaDdPdnJDV1FYc2NS?=
 =?utf-8?B?YllzMzJmdlJ3d3dNcWg4UUFlR1Y3TnBtZVV0bXlQOUpzM0tBcnNCd3ZTMWxs?=
 =?utf-8?B?aUVEZ0ZSVmVXTXVwOHppWmsxNlEvdEJRMXlVSDdEUWJybWh4TDI1S2tBUU1t?=
 =?utf-8?B?MzkyUkJ1d0lrSWd2Y1ZVaVY5YlFYTVgycGRQeiszTEZWc1RuMHpsUG10Z3VH?=
 =?utf-8?B?dnAwK0hQZjQzdkFzSmJNa3h0V2I0VEFoY2dHZzlYZ1Q0V25UcGJacytUZ3NC?=
 =?utf-8?B?VDFHeC9WSUpjMXkrZXYvUHBHeW9md1NzeVVVOHVKZG1lRmJqQVJxMkRQSk1q?=
 =?utf-8?B?bVNRRTN3Nzh1RTUwaXZSTGM4cFRDaGFBMURzT3l5SUZPcm01aG9oUTFGdXAr?=
 =?utf-8?B?TnlTbFpBZWptMlROMXNLQ3lzMCt6L1BUOVpTc2lhaUc3OHVHYmpUNkNrSi9Q?=
 =?utf-8?B?Y05nUjVWd0Z4Y3dlNDN1bWFTSWROZFRBdllXK3VjU0hGdGNmbWRXalZ2QXBw?=
 =?utf-8?B?OWZEZXVaYmJXRFBMQVZlYW5pdmw2Tnk2Q2ZSQlFoTGU2Qm9JY0FVQUxTT2pZ?=
 =?utf-8?B?RWJYQmhBQTlxajl6M1JjQk5BTWRSeXlCV24wSm16MjJudXpydGlDcjBVeHhS?=
 =?utf-8?B?azNhSU51Q1JUdDFzRVFKemF2L2JTYVVsVkhKaGR1S2FIUlZYaVltUEd4am5s?=
 =?utf-8?B?YkUrZ21ZWW5WM20xM0VHNUdtWXlXZG5CV2dua2VXSlg3T2pWN3B2eFFGdU8y?=
 =?utf-8?B?RjZGVGZ5K1JsMDVuZGtNSTNENG5NQUYxOWN1ZzNPcjBDazJ6d0xDWTVHTUVO?=
 =?utf-8?B?MUFWeWl0YlpkRnNseExHWW8ybjYrUkRHZmhtY3dJMjRlQTJ6c0pUR2pYNSt1?=
 =?utf-8?B?Z3hpZlRZeUpDM0hEbUtOZnQwWWVJSXZBdGRmdjhPSUdrTVBwZXFKS3RTK2V0?=
 =?utf-8?B?QUF1dHg1QVpsSnlIelYxNHVRZytDWnlQQ3p1TGRwYUNFVVI3eFRoTnF0WHRP?=
 =?utf-8?B?R0Z4WmpGSHExU0tUWGFzbDNUUDFHakNyemJmS3lPdVVId0x0QlYvcGV5am9V?=
 =?utf-8?B?M2N1WVZXUFRzeU5sRHdINFVyaEhIVXRpOGxpR3JBZXNMdEZBelJtTS9Fc0xG?=
 =?utf-8?B?NWFJbkJrclNPd1BYcXpTN0FIV1BVRC9EZ1VHYmVHUzhPU0d6WjExbmJBUlZM?=
 =?utf-8?B?UVcxcWVwdjE3VUtpQzd4Tk9jeTZRdDk5MWxBZnF4TDc3STdlOFZIOXdDMXk1?=
 =?utf-8?B?SE5ObkdKVk13S3dQQjlESGFKVUNlaU1iUGE5U3NrRGcxUHJBdWlIVFlTTDh4?=
 =?utf-8?B?S3hHQTFhcUl0OVlJYnI1bjdoMWNQWlhrb21KZUt1K1F2WkI1ZVlBaS8weEVv?=
 =?utf-8?B?K3hZM1NJcTJzOUtadnJxbk1KajBQeEwxa2VxeWlmcndPMzd3MFRCL21yY0Iv?=
 =?utf-8?B?R0JVOEkvOVNLK2VKZ2tyT3Q5M0VYc2hxTjZ0UTQvb08xV1pYdG5Gc25SQVox?=
 =?utf-8?B?cVplcVo0VXI1ZXNoOFpKZktZcEVTZVFHL3JCZHNTbTJBOUd3Vi9zTHgvTDZz?=
 =?utf-8?B?TUJSRmpZY0M2bk1tVjE1YVNTSENOcWtVVzBzTzdrdU5qODNhdXVJeE5SdU9o?=
 =?utf-8?B?cVZLcmJNZEQ5NlJ5MDhVQTFxNnVHdm5GbTlSZzhYTWVHOXdLTktQdnlzdGdI?=
 =?utf-8?B?K0Zma1c5aGY0d0oyekg4YitYaU1pWE5USGpVMjg3MWYyeGpVTFBjV3kvRW5V?=
 =?utf-8?B?Zmh2c0E5c3VEYzNIOUV4OXhJNVROdW1aeDBKMVl2eHJMZC8wQjdyb0YyK0wx?=
 =?utf-8?B?YTJONlF6b3lRODVodms2RmdDbTdwRGM0MTVjVDRKVVo2a3V6eDcrb0dMd3g4?=
 =?utf-8?B?UDFjcDAwd2FCZTN5Znk1YjZGUFVEaGZLSXZkTnBKdXBaYUc1SjBvamN4Mlc1?=
 =?utf-8?B?K3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BBF47FAF01544247ABC05874F0DDD076@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f2059e3-55fc-43ea-2fa4-08da770b9a44
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2022 17:54:54.2695
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: biGaUd8ds9W6EGQncoOBjp7XCU/L1ym50g8nNSIEU9pCiAOUXMONA2AscVQprs+gvGU0QdbyDNF1IpsMaVrWUNYah8bpEakm0IkT/S5/SeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4721
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMDMvMDgvMjAyMiAxODoxMCwgQ29ub3IgRG9vbGV5IHdyb3RlOg0KPiBFWFRFUk5BTCBFTUFJ
TDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93
IHRoZSBjb250ZW50IGlzIHNhZmUNCj4gDQo+IE9uIDAzLzA4LzIwMjIgMTg6MDUsIFJvYiBIZXJy
aW5nIHdyb3RlOg0KPj4gSGV5IGZvbGtzLA0KPj4NCj4+IEZZSSwgSSByYW4gRFQgdmFsaWRhdGlv
biBvbiB0aGUgUmlzYy1WICd2aXJ0JyBtYWNoaW5lIGFuZCB0aGVzZSBhcmUgdGhlDQo+PiB3YXJu
aW5nczoNCj4gDQo+IC9zaWdoDQo+IFRoZXJlIHdhcyBJIHRoaW5raW5nIEkgd2FzIGFsbW9zdCBk
b25lIHdpdGggZHQgd2FybmluZ3MhDQo+IEkgZ3Vlc3MgSSdsbCB0YWtlIGEgbG9vayBSb2IsIHRo
YW5rcyBmb3IgdGhlIHJlcG9ydC4NCg0KRldJVywgcGF0Y2hlcyBzZW50IGZvciBRRU1VOg0KaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcmlzY3YvMjAyMjA4MDUxNTU0MDUuMTUwNDA4MS0x
LW1haWxAY29uY2h1b2QuaWUvVC8jdA0KDQphbmQga2VybmVsOg0KaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcmlzY3YvMjAyMjA4MDUxNjI4NDQuMTU1NDI0Ny0xLW1haWxAY29uY2h1b2Qu
aWUvVC8jdA0KDQpDb25vci4NCg0KDQo+IENvbm9yLg0KPiANCj4+DQo+PiAvaG9tZS9yb2Ivcmlz
Y3YtdmlydC5kdGI6IGNwdUAwOiByaXNjdixpc2E6MDogJ3J2NjRpbWFmZGNzdWgnIGlzIG5vdCBv
bmUgb2YgWydydjY0aW1hYycsICdydjY0aW1hZmRjJ10NCj4+ICAgICAgICAgRnJvbSBzY2hlbWE6
IC9ob21lL3JvYi9wcm9qL2dpdC9saW51eC1kdC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcmlzY3YvY3B1cy55YW1sDQo+PiAvaG9tZS9yb2IvcmlzY3YtdmlydC5kdGI6IHNvYzog
cG93ZXJvZmY6IHsndmFsdWUnOiBbWzIxODQ1XV0sICdvZmZzZXQnOiBbWzBdXSwgJ3JlZ21hcCc6
IFtbNF1dLCAnY29tcGF0aWJsZSc6IFsnc3lzY29uLXBvd2Vyb2ZmJ119IHNob3VsZCBub3QgYmUg
dmFsaWQgdW5kZXIgeyd0eXBlJzogJ29iamVjdCd9DQo+PiAgICAgICAgIEZyb20gc2NoZW1hOiAv
aG9tZS9yb2IvcHJvai9naXQvZHQtc2NoZW1hL2R0c2NoZW1hL3NjaGVtYXMvc2ltcGxlLWJ1cy55
YW1sDQo+PiAvaG9tZS9yb2IvcmlzY3YtdmlydC5kdGI6IHNvYzogcmVib290OiB7J3ZhbHVlJzog
W1szMDU4M11dLCAnb2Zmc2V0JzogW1swXV0sICdyZWdtYXAnOiBbWzRdXSwgJ2NvbXBhdGlibGUn
OiBbJ3N5c2Nvbi1yZWJvb3QnXX0gc2hvdWxkIG5vdCBiZSB2YWxpZCB1bmRlciB7J3R5cGUnOiAn
b2JqZWN0J30NCj4+ICAgICAgICAgRnJvbSBzY2hlbWE6IC9ob21lL3JvYi9wcm9qL2dpdC9kdC1z
Y2hlbWEvZHRzY2hlbWEvc2NoZW1hcy9zaW1wbGUtYnVzLnlhbWwNCj4+IC9ob21lL3JvYi9yaXNj
di12aXJ0LmR0YjogdWFydEAxMDAwMDAwMDogJG5vZGVuYW1lOjA6ICd1YXJ0QDEwMDAwMDAwJyBk
b2VzIG5vdCBtYXRjaCAnXnNlcmlhbChALiopPyQnDQo+PiAgICAgICAgIEZyb20gc2NoZW1hOiAv
aG9tZS9yb2IvcHJvai9naXQvbGludXgtZHQvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3NlcmlhbC84MjUwLnlhbWwNCj4+IC9ob21lL3JvYi9yaXNjdi12aXJ0LmR0YjogcGxpY0Bj
MDAwMDAwOiBjb21wYXRpYmxlOiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11c3Qg
YmUgZml4ZWQ6DQo+PiAgICAgICAgICdzaWZpdmUscGxpYy0xLjAuMCcgaXMgbm90IG9uZSBvZiBb
J3NpZml2ZSxmdTU0MC1jMDAwLXBsaWMnLCAnc3RhcmZpdmUsamg3MTAwLXBsaWMnLCAnY2FuYWFu
LGsyMTAtcGxpYyddDQo+PiAgICAgICAgICdzaWZpdmUscGxpYy0xLjAuMCcgaXMgbm90IG9uZSBv
ZiBbJ2FsbHdpbm5lcixzdW4yMGktZDEtcGxpYyddDQo+PiAgICAgICAgICdzaWZpdmUscGxpYy0x
LjAuMCcgd2FzIGV4cGVjdGVkDQo+PiAgICAgICAgICd0aGVhZCxjOTAwLXBsaWMnIHdhcyBleHBl
Y3RlZA0KPj4gICAgICAgICBGcm9tIHNjaGVtYTogL2hvbWUvcm9iL3Byb2ovZ2l0L2xpbnV4LWR0
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9z
aWZpdmUscGxpYy0xLjAuMC55YW1sDQo+PiAvaG9tZS9yb2IvcmlzY3YtdmlydC5kdGI6IHBsaWNA
YzAwMDAwMDogJyNhZGRyZXNzLWNlbGxzJyBpcyBhIHJlcXVpcmVkIHByb3BlcnR5DQo+PiAgICAg
ICAgIEZyb20gc2NoZW1hOiAvaG9tZS9yb2IvcHJvai9naXQvbGludXgtZHQvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3NpZml2ZSxwbGljLTEu
MC4wLnlhbWwNCj4+IC9ob21lL3JvYi9yaXNjdi12aXJ0LmR0YjogY2xpbnRAMjAwMDAwMDogY29t
cGF0aWJsZTowOiAnc2lmaXZlLGNsaW50MCcgaXMgbm90IG9uZSBvZiBbJ3NpZml2ZSxmdTU0MC1j
MDAwLWNsaW50JywgJ3N0YXJmaXZlLGpoNzEwMC1jbGludCcsICdjYW5hYW4sazIxMC1jbGludCdd
DQo+PiAgICAgICAgIEZyb20gc2NoZW1hOiAvaG9tZS9yb2IvcHJvai9naXQvbGludXgtZHQvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3NpZml2ZSxjbGludC55YW1sDQo+
PiAvaG9tZS9yb2IvcmlzY3YtdmlydC5kdGI6IGNsaW50QDIwMDAwMDA6IGNvbXBhdGlibGU6MTog
J3NpZml2ZSxjbGludDAnIHdhcyBleHBlY3RlZA0KPj4gICAgICAgICBGcm9tIHNjaGVtYTogL2hv
bWUvcm9iL3Byb2ovZ2l0L2xpbnV4LWR0L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy90aW1lci9zaWZpdmUsY2xpbnQueWFtbA0KPj4NCj4+DQo+PiBBbHNvIGZyb20gdGhlICdzcGlr
ZScgbWFjaGluZToNCj4+DQo+PiAvaG9tZS9yb2IvcmlzY3Ytc3Bpa2UuZHRiOiBjcHVAMDogcmlz
Y3YsaXNhOjA6ICdydjY0aW1hZmRjc3VoJyBpcyBub3Qgb25lIG9mIFsncnY2NGltYWMnLCAncnY2
NGltYWZkYyddDQo+PiAgICAgICAgIEZyb20gc2NoZW1hOiAvaG9tZS9yb2IvcHJvai9naXQvbGlu
dXgtZHQvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jpc2N2L2NwdXMueWFtbA0K
Pj4gL2hvbWUvcm9iL3Jpc2N2LXNwaWtlLmR0YjogY2xpbnRAMjAwMDAwMDogY29tcGF0aWJsZTow
OiAnc2lmaXZlLGNsaW50MCcgaXMgbm90IG9uZSBvZiBbJ3NpZml2ZSxmdTU0MC1jMDAwLWNsaW50
JywgJ3N0YXJmaXZlLGpoNzEwMC1jbGludCcsICdjYW5hYW4sazIxMC1jbGludCddDQo+PiAgICAg
ICAgIEZyb20gc2NoZW1hOiAvaG9tZS9yb2IvcHJvai9naXQvbGludXgtZHQvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3NpZml2ZSxjbGludC55YW1sDQo+PiAvaG9tZS9y
b2IvcmlzY3Ytc3Bpa2UuZHRiOiBjbGludEAyMDAwMDAwOiBjb21wYXRpYmxlOjE6ICdzaWZpdmUs
Y2xpbnQwJyB3YXMgZXhwZWN0ZWQNCj4+ICAgICAgICAgRnJvbSBzY2hlbWE6IC9ob21lL3JvYi9w
cm9qL2dpdC9saW51eC1kdC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIv
c2lmaXZlLGNsaW50LnlhbWwNCj4+DQo+Pg0KPj4gVGhlcmUgY291bGQgYWxzbyBiZSBvdGhlciB3
YXJuaW5ncyBmcm9tIG5vbi1kZWZhdWx0IGNvbmZpZ3VyYXRpb25zLg0KPj4NCj4+IFRvIHJlcHJv
ZHVjZSwgZHVtcCB0aGUgZHRiIGFuZCBydW46DQo+Pg0KPj4gZHQtdmFsaWRhdGUgLXAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Byb2Nlc3NlZC1zY2hlbWEuanNvbiByaXNjdi1z
cGlrZS5kdGINCj4+DQo+PiAocHJvY2Vzc2VkLXNjaGVtYS5qc29uIGlzIGZyb20ga2VybmVsIHZh
bGlkYXRpb24gcnVuKQ0KPj4NCj4+IFJvYg0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gbGludXgtcmlzY3YgbWFpbGluZyBsaXN0DQo+IGxp
bnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdg0K
