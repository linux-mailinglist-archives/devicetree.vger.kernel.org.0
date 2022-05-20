Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46A7552E2C3
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 04:58:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235271AbiETC6m convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 19 May 2022 22:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230028AbiETC6l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 22:58:41 -0400
Received: from mo-csw.securemx.jp (mo-csw1514.securemx.jp [210.130.202.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F21A5606D1
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 19:58:39 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 24K2wAZd029411; Fri, 20 May 2022 11:58:12 +0900
X-Iguazu-Qid: 34trWQQcggSSGOyELL
X-Iguazu-QSIG: v=2; s=0; t=1653015490; q=34trWQQcggSSGOyELL; m=19DN6ToRbILw4P+U0nu6MaVRLUuzEwonv2HBmPvacfc=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
        by relay.securemx.jp (mx-mr1510) id 24K2w9lc012908
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Fri, 20 May 2022 11:58:10 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tvoyn23m80x43DNFh/yRkL9ePRz8haX3ZoSA328xgBtnNNxyUljN1JY820Yoq7rcBrWfN0/Z5U6QyoS1KWs96Goxepn0g89RFdoHfKLKE5PUclBgkCafvEiRaDtIgVhfx10H9/yF9WHStTFfkN/5mdm6uaeBzFFSKtI2dMkV8lw0pQXMNfQjddTTr/S4ZGDpqkgr4/a05y24UxhZoCCsNWVXvRMPkAK0j1OHNLu9UYHI/3fitJg+IBimrp78RHm1f0j7TDkGxw1b2TZUZtsDTWr0MLduNEmWpuROz0mIFTwTqf1YCCRxtFIvZgZz7dU31xqpKruI9B+tHDpNnWD6YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LICkdWmCDbB4DcFa/n9azolRRalY63bLxGE4Z/YPBNc=;
 b=WkKYPYJ5BLo57hxwmRMQUcCJZWVJ9/V5X/FaD1fTkSGDqkz7ZO6ljgQ6uwgDkjI3fgWSUIH17Kvwk8ZCaGn70RsfpBWSKDQ7xDvzBFCXZPVFw4Ay1F3LOPCTt5dIwpaE7M6E0KVfWxco9dYyxJG7uyjdynvv1hva4w8ByN7dPX7Vw3Qb1lcFXu7P+kelctYu9P6JfgH0j/0HCtTOvV+Gmo0RLUOpW0BctJVFs+iS/ARcvA42eWiXMmZnQhjM4vP4qE6JpKvAf+EAwRfp7ixz+AKjSEWDqGCYZkssNXuVe0f3lx3BMGsgTlEfyJaISPgDAhV9xbLuyfERicYEsJO5QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toshiba.co.jp; dmarc=pass action=none
 header.from=toshiba.co.jp; dkim=pass header.d=toshiba.co.jp; arc=none
From:   <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     <robh@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <arnd@arndb.de>,
        <olof@lixom.net>, <yuji2.ishikawa@toshiba.co.jp>
Subject: RE: [PATCH 8/9] dt-bindings: watchdog: toshiba,visconti-wdt: Update
 the common clock properties
Thread-Topic: [PATCH 8/9] dt-bindings: watchdog: toshiba,visconti-wdt: Update
 the common clock properties
Thread-Index: AQHYZBCpo3jK4Aa7/0mhRoNB5afRLq0jlxqAgAOKsHA=
Date:   Fri, 20 May 2022 02:58:06 +0000
X-TSB-HOP2: ON
Message-ID: <TYWPR01MB94209102EC7668F91461871492D39@TYWPR01MB9420.jpnprd01.prod.outlook.com>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
 <20220510015229.139818-9-nobuhiro1.iwamatsu@toshiba.co.jp>
 <20220517204935.GA1612229-robh@kernel.org>
In-Reply-To: <20220517204935.GA1612229-robh@kernel.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=toshiba.co.jp;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d5d5d24-4614-4315-40fe-08da3a0c909e
x-ms-traffictypediagnostic: OSAPR01MB1907:EE_
x-microsoft-antispam-prvs: <OSAPR01MB19078149A658D3CADEB07B3A92D39@OSAPR01MB1907.jpnprd01.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J1ghmKTIg1bPw90XWKGk9xBsAgHXDx8o+VvNA9ee3nKuyHTYXTw2I5gYP45274LP/aeM3U9JkgzO6gqJqMduvms/x7YzL6prIEWBTqoHQvHfYx+nLBn3pMNqZ7C+UvDYvN1k0TMk8BcCG2KnMTNHafqC3Fxb+fi6bd2yfa75lPYMEYktpkJIfTLshBOaPgIz6w5YPMoAcRg/HsR+CO80yBH4uSxGirbKulUvqy5DUMHNG9QFerNCaE2Ql4n3L9Y13LXSexyDySH0zfHJnPi2r+CeIGJd/0l9AGxv4oNmiOsSUK7Eb71Y9RllYjDDjiDv9yr2ulty3lYYzzOJgPlvqEkD9kIeL3+INWpG+dqlr2EwIH2w3qQMe1NzXgAwi16RhsCTggd0GHqjXz8M8qDXusqac61XGnbj/8VYo32ixE1yJxewcR8H5y3Gly7BBS5C9EfwLYs23NC53ATUdK2HyaufBLZpSahmWind/+D9uRLRlOxNpIFyB9Xh6IvQuApBAVBMVchZThac3e5kjBxf6b/+F+9tXMSzyQWhDr9iYGPFHaP1+mNi3vzBqan/k7TdYFgwR3hPmmoujJHZ7RS/wenPZ3+FP76SjgKFxs/dRvXU15DuE9gfaFMZe0VLJLmGlNAvwcg/PXB3SWcltHRReGqnXqVAdOETJT7jv3qXAO9i94QPyuchR8lIcM32j8413OcNSZD9HU3y61qWfmY44Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYWPR01MB9420.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(66446008)(76116006)(64756008)(53546011)(7696005)(9686003)(26005)(6506007)(83380400001)(86362001)(186003)(52536014)(5660300002)(8936002)(66946007)(66556008)(66476007)(107886003)(316002)(2906002)(55016003)(38100700002)(122000001)(8676002)(38070700005)(508600001)(33656002)(15650500001)(4326008)(6916009)(54906003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?VXEwY3RXM1hFVUJMMVgxRFdvQ0d0SE54YmpjOHpZbVBqMzVBdFZudytP?=
 =?iso-2022-jp?B?b0hVaU1aYUR4dUdlMVlxNVVMYVU4OFpjSEdwNUFqcVpnWVhBUzRUNXQw?=
 =?iso-2022-jp?B?WlloRFV1ZHZwZys3Z2xETkRqNnBxRFp0S2RLbHRhTGJESXlDbmRETk1h?=
 =?iso-2022-jp?B?SWI1SDRqZXdPbnFGbWRLQml6b0M1djdVUUNnUFg2TjNNL3BYWTFSTkVI?=
 =?iso-2022-jp?B?dy9yRmVQZyt3cTBFK25MeXdEa2ZmRjM1MHY0dSs1bFp5bncxWW1PZGlw?=
 =?iso-2022-jp?B?dTRCNlZOYjI0ZTNHM2lzT1dSNFFsMSt1TlgzWUdPMVVGVU1MRHVpNk5J?=
 =?iso-2022-jp?B?ajRpT0Q4ODJKWHdzOHRKUVo4dHA1dThFeFNWaFIvMXN4RVQxV01uU0RF?=
 =?iso-2022-jp?B?MGJ2UDF3VlYzQ0FzTkNXT2NGdmVKMWtMTHNEcVRoTUpnb21qUjRtUWNL?=
 =?iso-2022-jp?B?RGtXenhCMVYxaE0zcERKVHNoczJ3Z3RtaGNJajlvNC96d3ArdjBZVmx1?=
 =?iso-2022-jp?B?VDluYzcyZEY1OSs2dEs1dUZhbDVuY0NJa3RPbjB5eTNtamhBQUx6SVJp?=
 =?iso-2022-jp?B?TXVvODQrVTdsV25jbVFNM3cxWUx1K09zZUhIK0wvbVRMTjI1Qzd6NStX?=
 =?iso-2022-jp?B?RlR3U0lRaXF6dzd3OW1MbDJBSjd1clBkWTBvZkJ4RzJJdlhhQlFKMjE0?=
 =?iso-2022-jp?B?STg3enY0eUlqUTdyaHFOUjE0WTBIekVQT0tuQlpBdisyZVgwQ1QwTW8r?=
 =?iso-2022-jp?B?TjZRQ0hOU296TkpRSkxIWHVJNXMvaUlSZTBvQ3dMd0pxcENDOEJvZXJP?=
 =?iso-2022-jp?B?Z0lISE93NVR2dUNPSjVnYk5mL1VxeFYyaGxmVi9xcm04MDdLRDZMRkxs?=
 =?iso-2022-jp?B?NWdtQThIajVFcU1WbkUxbFBPSzFnTDFHSzAwdkJueHAvbnJ2Nk1KcHdK?=
 =?iso-2022-jp?B?UUxIQUVLakdpa2hTRk5hTjJ4NnFQbzZ6bkxMWmxPZVk3N2R0dEFRdVBo?=
 =?iso-2022-jp?B?ZDVWZUpaY1UzRkF2Si9iMGwwRHZPaERPZUtZVnlaRG03NnVJdUFKbStt?=
 =?iso-2022-jp?B?akQvd3didUd6cXlYWW5pRXg2UDMzeFFoREc2ZXM0N1dnTFhFeitJVS96?=
 =?iso-2022-jp?B?Rm9QRnNPMmhKR1puN3NPcnBSYXVBQ1k0NndrQXFBd1F4bHp0eXBIZEwr?=
 =?iso-2022-jp?B?T0RmUElQT2FpVEc3WTdHVThCazVZR25mTjF2UVlGak9Ea2pTb1VYRWZO?=
 =?iso-2022-jp?B?eFZoTTlaNzNpSjMwNkIvMHRkdmR4aFQwOEIyRnc5RHF4Q0N1K1VwQWEx?=
 =?iso-2022-jp?B?aHRSeDdlRFVjRHlTMjkrS1BNUFRIc0EvTmk0SmJuRmpnTU9yY3Rwd1ZH?=
 =?iso-2022-jp?B?N1M5Yy9ITFBSNnlyck1iVUJZb2JiWGNZUWl5ZHNzOFFjREJjYm95dnhr?=
 =?iso-2022-jp?B?Wi9NRmFhR0hxNlpYbVc2UWdhM1J0eXRXUEhSMU1GYm5jamFBQ0RpbEFE?=
 =?iso-2022-jp?B?TURKWVpVZWVVcnovU2xoVEp6YmMwQWlDWkh0RjlaSXM1UjhDNnJIaVZH?=
 =?iso-2022-jp?B?RDZYNkFMbmRTZmR3cmJ3S3F3VDYrRjVFazY4ZUxYN2IzWDRCazBjUVU4?=
 =?iso-2022-jp?B?d1B1OWhpMXhxSFNtTkFtM01CQyt1aFluT202blJqbGhPQ2dJNThMaEtT?=
 =?iso-2022-jp?B?dVFGei81enpkT0xzWEhEVXdxQkVuS1Q2ZVFlNldoeFV3RmwwRFdMNDJy?=
 =?iso-2022-jp?B?VVJYdjVlNmwwL0p1VWlLWFM1Nm9BSCticjdwTWR3VnpOV0wrQXN4cDhH?=
 =?iso-2022-jp?B?Qk0rQmVuYnVkRU80TEptd2pLaCtqbHpNTG1vdHVGQytQdFhLT1JsS085?=
 =?iso-2022-jp?B?REh5N2ExZVd0QnNITE5YT2JxUytSL2tnN3RuaGROOVhmUEozZWY2aVRN?=
 =?iso-2022-jp?B?ejZTRnZtRmt0UTdpbkxPd0phZEJPWlVpd2pSeEV2S0IrY3gyWVNNZ2NU?=
 =?iso-2022-jp?B?TUdyRFYzSHBqTXpIdHdaZEZlSzMyejNMRzFkQm9UTnE4RGNMZ2drSXZ3?=
 =?iso-2022-jp?B?WDZlUzBwcmZEMkd3aXJjUnBoOGU0QWZWM2RJOXE1M0JaanQycC9QRHFx?=
 =?iso-2022-jp?B?SjRlNU1pcU41NkJMQndHYlFnakFZaW44bGVML3NFNXdmaGtJSlpFQ0o1?=
 =?iso-2022-jp?B?VzNjMWJLSGp0dDlnaHpDb3BZQjduOXR1dGVLREFjd2c1L2I0MkFwSWlV?=
 =?iso-2022-jp?B?T051bXR5WHg4QjZxeFZLTjlBZzB3WDgwaVdBMHZCWVhhZ0orVW1rV3J1?=
 =?iso-2022-jp?B?STZqUUxINk9zdC9BMjNZaE9wOXJUdmdRaG16bXlpc0w2c2VSc2VzY0oz?=
 =?iso-2022-jp?B?ZEdNUGp0WUh4Tm1VWlJabFlzbjZWeXhGc1BuQ21lajRGd09Oc3JWUkpM?=
 =?iso-2022-jp?B?dUpkcXBKczhoSk5zdHhKYjk3MHhPTXpGZ3htUGJ5NUtlNExvNmdsdlNq?=
 =?iso-2022-jp?B?YVVsNmpBOFNVSFpJUHIva0xnc0o0RjBqR1RlVVNESEF6bDd5RVFtMVB2?=
 =?iso-2022-jp?B?VWlZY04vOD0=?=
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYWPR01MB9420.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d5d5d24-4614-4315-40fe-08da3a0c909e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 02:58:06.6499
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f109924e-fb71-4ba0-b2cc-65dcdf6fbe4f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k2zUtaDi7YWtDYtZ/lRDxqz5HE2c7ZJtCCL6Fp4nKsQ45I6udKeCmnUEMeDA7qZjs0Myh2ZD54biFC2jxiYnFJD7kMFOqaJw84LTBtgL0zuBxVIFDWGJq1OkzhIRfr2Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB1907
X-OriginatorOrg: toshiba.co.jp
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Thanks for your review.

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Wednesday, May 18, 2022 5:50 AM
> To: iwamatsu nobuhiro(岩松 信洋 □ＳＷＣ◯ＡＣＴ)
> <nobuhiro1.iwamatsu@toshiba.co.jp>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Arnd
> Bergmann <arnd@arndb.de>; Olof Johansson <olof@lixom.net>; ishikawa
> yuji(石川 悠司 ○ＲＤＣ□ＡＩＴＣ○ＥＡ開) <yuji2.ishikawa@toshiba.co.jp>
> Subject: Re: [PATCH 8/9] dt-bindings: watchdog: toshiba,visconti-wdt:
> Update the common clock properties
> 
> On Tue, May 10, 2022 at 10:52:28AM +0900, Nobuhiro Iwamatsu wrote:
> > The clock for this driver switched to the common clock controller driver.
> > Therefore, update common clock properties for watchdog in the binding
> document.
> >
> 
> The examples are just that, examples. If this needs to exactly match your dts
> file, why isn't the dts file the example?

I will update the example as well in next version.

> 
> > Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> > ---
> >  .../bindings/watchdog/toshiba,visconti-wdt.yaml        | 10 +++-------
> >  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> But fine:
> 
> Acked-by: Rob Herring <robh@kernel.org>

Thank you.

Best regards,
  Nobuhiro

