Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDB794E6095
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 09:45:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349029AbiCXIqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 04:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349007AbiCXIqa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 04:46:30 -0400
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D86C9BBBF
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 01:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1648111498; x=1679647498;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=/QRl/rokUdExRKDMOr0VeOOj4QxFtmyc+DKyCgb8htQ=;
  b=nboL0VE8BxdTREKQrPVz1s0TKCpZ6Pjl7rB4B8qG1KOUM4BUjrqZ7cZq
   VJGiIoLsY3l/KBfFcOwTQMdQWxTJcCzz//1VYUtikTlolhE3FBlA/PUew
   hetFa4NZrGE5cIcUaqKCcCL51SrIyS66wZSO+Z072/pBt2CY8mNxdX1t/
   fLQOUwFdaXHVD35fSlaQrgD9GcB8lrMps8WccGkFrwM/CUj2Tosl1gJY2
   SYskQVgiZqfGvxOI9ew1wzJi+RkZy6WHdLCwbN348cu3NWgJcIe2HvWUw
   bC0ut0kvrW5zIlBdta0xHp+wAs2HJXbu1O7cCJ8vjhNcWK4d3oPi/f61/
   w==;
X-IronPort-AV: E=Sophos;i="5.90,206,1643644800"; 
   d="scan'208";a="195048875"
Received: from mail-dm6nam10lp2103.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.103])
  by ob1.hgst.iphmx.com with ESMTP; 24 Mar 2022 16:44:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5gA815W/lb70+RfkMvxdSHAI/U5jDAxHh23mblSHhBR0v3KeIIc16j5K/bk/tjMPomVlT5l3vgb6lPgAbaNfszq2vDjChmjNTE+FsD0vUQSbKNXMp9uqh0wHtQNmSL6iNUwmRIKx72pXDK/tpOcXBw0G+A83zwxjhHMvCSdaGzfQyF4YLQ/+odo7C2A5mVjcwjv3pSes8rF52xc6IRuwtvoltvlW7cgunb3sOEG64UXccL9ruRiI3zcWizbZr5y6ghnDmEQECLTgGxbyZZS58dvEI+9g07LT9GhO1kJzI1rIcQLWjUMjYvuB3t22N/6a/qcJTZrzfoktHNctfADSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/QRl/rokUdExRKDMOr0VeOOj4QxFtmyc+DKyCgb8htQ=;
 b=ZI+59/1pBuO4PXPXxyqEw7Nw9LSMUD/57IMzvL753a7WmQIje8sQHFF9UY8erMyu/NK+aTv5vF6cGpIthl2uCvlt1ulmRQkwCLAJh0DON0VhFFORqkNQbPo/oSaEenNvB6Qru9CgPqfj98WP8W4GSGbBqDQ6tAPGIgD5jBjmjKCDkLsT/Y2FhM3Ln83KVIqyMqSOtiFaQUzIFJmePuWkFBp2ZqW+g1pj8oLtav8KtpsxK7HwC+atOOBf6N7MEf5wj0n3Ku0OCGnh0LWy1u9Edq7j3EFjOqRROKd9a5JLnfieKWox2HTfA+I8vaNnaZkLEN9KdpFfzeL5TDEWZ2rWdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/QRl/rokUdExRKDMOr0VeOOj4QxFtmyc+DKyCgb8htQ=;
 b=VC7L/VWxf5K6FG3ocg36+1dR4QSs8nUe9EKShnRSTW+ACOYqEZ/0U9DsX/dHYQbfA74RGmVIG5jl39mnqNszQrV5rjfL0nVoIcYI1tbMrXV8+6DHm6fSpqUV5eXlzpfRYFZI1YoQG0joYLW5hcWZ3HNzE63uv0Ur8awlu6hfPgQ=
Received: from PH0PR04MB7158.namprd04.prod.outlook.com (2603:10b6:510:8::18)
 by BN8PR04MB5651.namprd04.prod.outlook.com (2603:10b6:408:73::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Thu, 24 Mar
 2022 08:44:54 +0000
Received: from PH0PR04MB7158.namprd04.prod.outlook.com
 ([fe80::995b:363e:8d1c:49af]) by PH0PR04MB7158.namprd04.prod.outlook.com
 ([fe80::995b:363e:8d1c:49af%6]) with mapi id 15.20.5102.017; Thu, 24 Mar 2022
 08:44:54 +0000
From:   Niklas Cassel <Niklas.Cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
CC:     "damien.lemoal@opensource.wdc.com" <damien.lemoal@opensource.wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
Thread-Topic: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
Thread-Index: AQHYMvBeFV3VWYd5AEiJlbzlm2Re1KzOUPuA
Date:   Thu, 24 Mar 2022 08:44:54 +0000
Message-ID: <Yjwvhfo/mQ6z/VSv@x1-carbon>
References: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
In-Reply-To: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7f6bc2f-d074-46fb-152d-08da0d7291be
x-ms-traffictypediagnostic: BN8PR04MB5651:EE_
x-microsoft-antispam-prvs: <BN8PR04MB56519ECC6F64916F3E0B46F9F2199@BN8PR04MB5651.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pL+D4r3zTUkLq+QYj8XZ8pa7GMEWGHwGu+7mhrHkj4SG7RuODsbtYggU9CtkoxdqJRd2rGpYvLhbxUnyLXB8ihs+tuYLJEq8nkAvVRUU9phQn0B9XPreuQIOlIici80r5WiC8qWJRdeFbKH4efFQN2tKy+VCBk/jqHDp0l7l9uZKCG0R207HRTHenQDJYRFeGAb3V+KWfmScoh1WG0p1Pbu4ZBGfaMRMV7t59fYjcPuQ0WJ5yhB4ZLK15XyzhHx7nP2nGvr9HI/glu1Qe+2iZHAoQNCN9+8B8s+dZ4dQcvZMrA4hLmSwkn4+eK9W3hJWC+tjaA5r7gUpOuR7Sc0IP9dJiycoVEQYWzlnLCgWzA4XlkJ5GYUEfqaxTHepO/7t/KrlemCEkcHwauV+uejIBn1DeJsyOITt85kt2pT0PbjJnE89hzcFHRGRMZilLsQ+a+bV1iRA9RkBjlgTMDkdeEsQ9bwSP6Mwis5EQ7e2bY/9iOPqKT9A8EW0R4zxMdr2y/Dbm8CNMWBCSs0AFgYqKcxZTNjHHw1JTsTDTw673x0D1k/SwKSUGfiC3oeJEKQWZCIqlIDCVqxiD8ZUGagBdMuD8uSracO/4GyJGPsPKd6UiA2/WYYWUSx0SB/ATimRMUiWg3uOxhxBSLdvwp+iHIiye+0VqQP8nV8EK+hEIhrh9w1wsjEUygWc08Rx2aZcWhdVGZtZKpzsWha3K2cQmXnMdI0gVOFN9mMsAft6F/+C2TCKTzfgOD4NLurYdGbqdK8KxbTMWSt9XyeE5/ZEQKBpMdixWN9W0RVCxsM/tiZ7i0GdfLVpEqe6+GM/xy3+
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7158.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(4636009)(366004)(66556008)(6506007)(64756008)(66446008)(66476007)(38070700005)(5660300002)(38100700002)(83380400001)(110136005)(54906003)(4744005)(91956017)(6512007)(122000001)(316002)(86362001)(82960400001)(2906002)(33716001)(8676002)(26005)(186003)(66946007)(76116006)(9686003)(8936002)(4326008)(966005)(6486002)(508600001)(71200400001)(15398625002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uQ6TH2pnTQ/smKhHME6OlRBPLKxgCQqNAlLMw4slLWh8gdwx/fSe05ldKSCl?=
 =?us-ascii?Q?ZjF3/VXonykIm+4mre5D+fDGynpVQCPEOLcb1LBrY/fKPnj+WwUy9XgRtThr?=
 =?us-ascii?Q?wVxI2ur0qXVuFU2EVO0+2X7adEVw5wbvDKQMN892G2jRdF7Zusx0uI9YzIyq?=
 =?us-ascii?Q?vDmyOM4/Syf4HQrnhJbx/d2sB82+1NdcR7suZ0VE30dtkd/blh3L7O/kL4kj?=
 =?us-ascii?Q?0Wai1cqI3sLNIsTOoGjdFc/j76OyeJYJB/IA+hyR9gija0eiSE7DfgRhcbbE?=
 =?us-ascii?Q?f1JHTSAPDwJhjvPqCmT3jAnNk7QZzbrrJW1DwF6kuWSztkvzYesvL8rDYvCf?=
 =?us-ascii?Q?qPO+zMy+qJ6LAMoWzxuGjeEU6AqqFDINiyFWmtPF/QhwYD33hE6DQYZa/PUF?=
 =?us-ascii?Q?stpQQ9PNP72qZ6hAboekqU4RPzPFF2+ZpcJYjiPffY71NXeBWXupiiPiYLHz?=
 =?us-ascii?Q?dZyWQpqRyqZVe3i+oXlYQKLDUqQaEcLI0miltNv7JCBT8tu/vNthE786vJW+?=
 =?us-ascii?Q?xEEBsI12ya6diEAmo1Xywao9PP/dNlxqu2TOfbuyBv57t4j7YXsW6/991nOd?=
 =?us-ascii?Q?td7ezXRXAOadAXSGmvEXf/fXTzrIqfpFehArQgTJAhbMePFxP3ZZj5rsvCxT?=
 =?us-ascii?Q?bRkN2SGn6BqftTWmcvdfGTfmKtQPa2VBNFUyW+VmkLZfOCDhviYwIGYF7af6?=
 =?us-ascii?Q?P5rZOExk8hFvxJITBS29OyCCQOVSIm58vPBka5MV2gpdgN7V9OKqoZlZvi+H?=
 =?us-ascii?Q?r4cuchHPO0GVPMdvye0DZZ499A7bowsfHwAgqS6ZAbyBXvMmnzthxbJddkVl?=
 =?us-ascii?Q?r1FBRuuOTtbMwY0LM89gTjKr4I/r7ExpajdjdvoCTqjbbsILXLrX3IKTXAPe?=
 =?us-ascii?Q?m+1S35loUu/blAffjNMYUlo7eBp22dHmMTDvD5GwtWGDSqw0YZ/uLiCRL9gU?=
 =?us-ascii?Q?Ho3/Dkq0506kallDmJney7h4j3Wu4O6igToACRzJtm0hOANigDQKTAIC/0xD?=
 =?us-ascii?Q?NGqAfgqpKs6qxbhm3cpElX+HWHJBvDe0ACWdxOK0g9GmoazUOIGi/KJsxdfe?=
 =?us-ascii?Q?itCbABG+DLX7jWTMgyw8cp03KNV0WsNgT1JD41J61ebF9EmDT3beKQdxQ4y+?=
 =?us-ascii?Q?Fvc0I6hvuGny7SeTwDTQJfpqpXeGrItdXIXdZN86dSyCt0cjI7sKaGuR3SSg?=
 =?us-ascii?Q?o7jf8M5Fs1mXlzNpF7/FhfeH3zXrqDzvdmT7pZWDNEr4r1/MGkKxFxi3OljP?=
 =?us-ascii?Q?gmTBJcsS03v5zsRvvoYEejni5aL8VmYQ1CACyeSPGRTzRjIIeAvY4Y2siQ9v?=
 =?us-ascii?Q?dbudZ3je0NWBezGZ8lXLbnDGR/AQoX1CmEzaAb8K+AFvtp9BTQ0LlXUyzO3I?=
 =?us-ascii?Q?0ALx/eYqHU/XtFr8cSGtocMo4hyY8v4/MtecK5yQisJIfwJzBiANRzcjmlwF?=
 =?us-ascii?Q?ku/7AmPyBK+JRhg1ikNfZOJgC7UdyuaQ3j81FK94/iTLIWEGA6gJHQPpV2+u?=
 =?us-ascii?Q?NJZAyEdVfxn2/+HY56CNwKisOhStMYBfiLbqlbSZoDs/yiTfpD5PS+z+bVFR?=
 =?us-ascii?Q?pL1aF/2eYT+3/nhOnYtY5WWlCX4vmbv6fFRcmUVfeAQtmAHt00kAuKtgJ+9R?=
 =?us-ascii?Q?p/iBvBYjPFoHWiPjyUWXAcmLDu5zRZ1m5WrlABmP6VpUrkc6iB0egEayd6+i?=
 =?us-ascii?Q?n1g5gNFhkFjXQ2GkWpMRBIf/FMwBDsHpowByo8I7UJrEz4p/uRwpsosglU+c?=
 =?us-ascii?Q?y8OGTOM6MM+qSkv8WQv6m4xW3Nms4ww=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8BBCC1A4AC4B4D4D94E5E819272DBA94@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7158.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f6bc2f-d074-46fb-152d-08da0d7291be
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 08:44:54.7839
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2JoF94C9tuyvuUPYVjQ5kpj/Jd9O1I0A1EtU4crSi+Cxn+WnBWVdGGfvxYnujJfnLQ657xUs7gIjNY7a10PgJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5651
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 08, 2022 at 02:28:05PM +0100, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
>=20
> According to the K210 Standalone SDK Programming guide:
> https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalon=
e_programming_guide_20190311144158_en.pdf
>=20
> Section 15.4.3.3:
> SPI0 and SPI1 supports: standard, dual, quad and octal transfers.
> SPI3 supports: standard, dual and quad transfers (octal is not supported)=
.
>=20
> In order to support quad transfers (Quad SPI), SPI3 must have four IO wir=
es
> connected to the SPI flash.
>=20
> Update the device tree to specify the correct bus width.
>=20
> Tested on maix bit, maix dock and maixduino, which all have the same
> SPI flash (gd25lq128d) connected to SPI3. maix go is untested, but it
> would not make sense for this k210 board to be designed differently.
>=20
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---

Hello Palmer,

any chance of this getting picked up?


Kind regards,
Niklas=
