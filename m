Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3548C59F78A
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 12:25:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236957AbiHXKYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 06:24:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236962AbiHXKYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 06:24:13 -0400
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2041.outbound.protection.outlook.com [40.107.105.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D82D280B7F
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 03:23:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCVDbsrHg/6XUASHhiDDEbgAU97M52MFzXjXN+VNCS9Jz+CU4innaNUFCbRpEQVqH3owySjgLfORgU/WtsDRmQwtxCp0eg7Rr0Gtv4F30BAC/TAKkKyAD94K+pzB7rw2vqnHZnVro+abOVYGrLzYdlKWDQ5Tl/Cspyi/oeZv/pzLgnIp/4wA69wEIS7JZxSn+AoQ503kXQl8wMe1rCCqszzwjzn8LzLyt4Hzv89tl31UaNb/0wur9sove/A/l8jpVJzv/n9zL+UKETskxC1UJQYGdeVmMD13IldWR1anOdK7jCUMaEuFZ6IYS48l+N08VLzGIeK6/Mz6eRnfPaog9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3hDzsWPm4M4kVv+O3yhet9Yu1lSNqZ7I+jWlKvJLJ0=;
 b=Vrc0HMzQPmGhQgE5z0WzgPAtR/tG92tXSvTQ/MYULAYug3KtpkU/irwUZQ+/wxMi1oVnVCkMFaYenp8rxpSDhj9ViuEpyVIYWkyrOhK5wqISJXt0fTzkAEPPcGvHtLV6GCMAqx0yqAyF30sy1VS8caFXH5Aj8UIcfAtXvBuyDzX8XoAKX7MGtimDcBjLxpFDFLsfDi0Bm5ejTVVZesPegf/P8HZn88Sf17ezCFq5Il5Hjseak+Qe70MO6SzvZV4bD3xiORNoXu7AiSfmm2yzDhKRZX040DjdA7nVqDMsal9YuZHWm6O/UNuMAou3cOd7ecL2hXx9OdDwkFmMLxLr0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S3hDzsWPm4M4kVv+O3yhet9Yu1lSNqZ7I+jWlKvJLJ0=;
 b=gPpWKBVKRd0eNmBlYogwrOwVweKV1dhFkQY97VDQ0W06QJvAN7JkaqKbGJGn5HFqZ0hCEBR4uZaKylzBKnQqWT+OWB7692AA3ufHc+G3RRhC6mI8Mr9TzuVS11DOiC84qYzoROst8fqQFmMRr+qZ/NbDK1N6UZOLfFhVBIJQpUw=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM6PR04MB6229.eurprd04.prod.outlook.com (2603:10a6:20b:73::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Wed, 24 Aug
 2022 10:23:55 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::1c65:f6a7:bc4:eb15]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::1c65:f6a7:bc4:eb15%6]) with mapi id 15.20.5546.022; Wed, 24 Aug 2022
 10:23:55 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Marco Felsch <m.felsch@pengutronix.de>
CC:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "marex@denx.de" <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: RE: [PATCH] arm64: dts: imx8mp: correct usb clocks
Thread-Topic: [PATCH] arm64: dts: imx8mp: correct usb clocks
Thread-Index: AQHYt5NgTN2Wv3g2Q0uWAIYIi/pTZK29w6AAgAAHn6A=
Date:   Wed, 24 Aug 2022 10:23:55 +0000
Message-ID: <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
In-Reply-To: <20220824091044.msaa4lymgyrmektl@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8853e644-7159-4c29-10df-08da85babfb5
x-ms-traffictypediagnostic: AM6PR04MB6229:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lZY/M/HQTflVKuexHMF2swYic/YFjgWqYGzJ9a5sN5GVQ9yUnhMMSScPNlS87Amxxeuf0lQ0hm2cP71jjwD8RglD5HVaztIWdi1jfDtEEAwRtxMxVppOG14KdqBYZOb+OnWTkoZBGP/FHsHhxSNekQZ1Xe/UZYGCpdfH+87oHNWlmiIgUNXNa7gW78tiTIUg6LcVH2cKlUGtroV9IjQoeZIrjAPoQLBdA0xDrHAmI6kOsGEF39sdIdqISU9UFn/l2FP2ybn9SpDcLnw50HIZ+Vv44H/txpkV++WWEU2L4StdpSToJ+qviHcWlqfGYeR15z/M3LtAS6oGZ4enbrvut+bajghWgFJSx4uMfmmNGwflc3IhGz8xKjUgEoPwa3M5GXLqRp8qq4kf8761WkL5RB8BUBkeWIez9YctpY05OMuSwgzvSAIEAonV2cdG0wt3Ae07h/hr5/merUTuGkmGb+l036BswCr2hh2IAfZ8CljZnvOc3szaI0hFEG9MKvXs6ISHQaghoh+3zfaoQZN5cFe1jbsRFlgARNky2UzXWv/zgrDmITiqAwYD9vFy58tqYqoHx7uOH4RCG5tHT1yOd4wibH9fw+d7I8pgtz/42h4sgVIbyGUkUdRCBWB1RYoxGa8Pg3jOHqWtxN00BLhr3EDfwEd11TFnJw86bUwYaYZNN7QvqHmoBFWGPNbjYzsHQBR0GMQ4FDnR4tsIn7UmTECAQ99JFCWcuz4P0Y4tWY3Rc2F9gEGC3QeM01PwacnCK3kOJzx84KXWdjBhGqIHZW67E0ZRdTxZpt2IXS/juQk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(71200400001)(478600001)(316002)(83380400001)(9686003)(26005)(6916009)(33656002)(55016003)(54906003)(186003)(38070700005)(38100700002)(122000001)(66446008)(64756008)(66946007)(66556008)(8676002)(76116006)(4326008)(66476007)(53546011)(2906002)(6506007)(7696005)(7416002)(41300700001)(86362001)(8936002)(5660300002)(52536014)(44832011)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VIaY5uAYq2Ttm7gSzQRQBiXLkSY5FIt2xO881M2gXuWdicPOU1Ph549IegYr?=
 =?us-ascii?Q?cTJnIxGF0ClYIMPDXAeunMymF+8FUMsV/Nfj8ZGDIfv9B2TGwfyoSBnx9ztE?=
 =?us-ascii?Q?bCrhLcypyesnC3gRIXyy1s96c9bItLH+iqLjXjWyBwe2M9SkXm8ZMuMNXpms?=
 =?us-ascii?Q?b8lFP0Ob8RHB8w/7mrDxflr846jfzyIF+/xI0cjJ/WAMEyMLy+edP9zx4Eny?=
 =?us-ascii?Q?B5ACOh0SAKIdwAuRBM58b4Sbr5BI/ZkkIEJiEo2cGGhTwHkAezRZjOt4I8y+?=
 =?us-ascii?Q?hek+Iucz2vmEuRdBcgoeX/bpPm9pbwz7v3ieGUiBqy9QQb5rWS3jjs8fidf4?=
 =?us-ascii?Q?Ci71TcT89T2lj2muOUUualh8hC65V3WWdcXtdt9dhu4ws+pP7qLsjoWXKad0?=
 =?us-ascii?Q?BPrWMg3rRN32/aiwxjei1yMc+nQU0MIIje0IN0/t+8qWG9QmPZZeCkHcoMdt?=
 =?us-ascii?Q?l89VDTl3gcZud2Fwe35ndV2RQN6w+ppY9BJzrKJQo7sB+ni/15R9gPWWqBoe?=
 =?us-ascii?Q?8hq2PRAxxNO3AeeO4+yYH4KejDU0mF9hqKkwreEOiIOf1fydHhXAeXOmrGHX?=
 =?us-ascii?Q?+o/IiETX1FjyVQLoYs3xf83c7+yKEm33xXbHL54iNxgfehGoSRcyk/ZRJDCm?=
 =?us-ascii?Q?6jK8q5rYxqYCk6MC0r9X86rQexnV9+x6n6XnHbCEq68qVp+5zQlYXaJTKFJM?=
 =?us-ascii?Q?W+zaJVzU044e5Ozk1eS9G89lh5MUxGtF76nDupr7Y9mJ6Y0BK8qI5MXmALpd?=
 =?us-ascii?Q?a1MkBFFH5sjld6e0ozenb31ZJkYsju6JyJtBK/onVlhoeCNpS75Zv7MGApnm?=
 =?us-ascii?Q?03vRzNl4kjy+knFgzcwC9Zi3scXofmtpeJ5zsRUgeWPqwhyYnuuu1R44PET9?=
 =?us-ascii?Q?E4pE5pfXg9OCHjZTEMR/CiIAPcW1RRy0fMO6l6ibDSKkgLk7FQsZRLmNIgQO?=
 =?us-ascii?Q?eLT9tG8odP7o2OgjJmS+ooZYZjY/7uKMVq4OJscY8JikF+ImJbns15GtxH0F?=
 =?us-ascii?Q?Ly/U5D6cr9AhLhubT8bU+DYCHd/Zxc8SDr0KqNbDxiETD9Jg/tJU+eh77ch5?=
 =?us-ascii?Q?UB6tKFTnFOrzRGJ2GWw9FchoG5xdUHk1++KtVVtiQjJvHadI1nfKF44hZRO5?=
 =?us-ascii?Q?7D+c60MvctRF179l5qGN3OjRdDh5kVS4LKxMEnEM424c1Ip3603d/6a2g3Yc?=
 =?us-ascii?Q?9aF5qR3bNUfOV5LyyAZS0eCfXDu+iBXPGnXxHVgOEFWlzwRBR1nPfJ5CQnpr?=
 =?us-ascii?Q?FsfwcAgZhyCmaxkauWlbnZmpRT5hPCnFQkzJNhozIZM5W7Y8h9KLDy3RPWBv?=
 =?us-ascii?Q?XMbd7Q85wrBGVFmWw6YajlzOc9+dReb1xjqAPXBO3BzNjdMUzdlfvXq588f3?=
 =?us-ascii?Q?Mtspj7N7YnlLt2vMLJiEE3955ibRIXwkZJwCHuIH6wqOFUEOU/eAfsbJCXBR?=
 =?us-ascii?Q?8eatOccGcG2r7tTHG6VysqtsKz0zz36uhK2/iXAjtRiaSUXiJPNWwjthvZbm?=
 =?us-ascii?Q?VGZK8cfW+vrIYS1MUu60fjEElfrAheBdnq2a3Ujdqy6b4gK0kroPga3zrRBG?=
 =?us-ascii?Q?SOhDkgr4vpnl+trFEf8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8853e644-7159-4c29-10df-08da85babfb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2022 10:23:55.2759
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3Xyg1kDP1I/UdG2j7HCWSezK7/HBjgMb39BZ3B6Gse2af88Tugmv9Dk34wNd0z1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6229
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Marco Felsch <m.felsch@pengutronix.de>
> Sent: Wednesday, August 24, 2022 5:11 PM
> To: Jun Li <jun.li@nxp.com>
> Cc: shawnguo@kernel.org; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> l.stach@pengutronix.de
> Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
>=20
> Hi Li,
>=20
> On 22-08-24, Li Jun wrote:
> > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> > usb_root_clk is no longer for suspend clock so update dts accordingly
> > to use right bus clock and suspend clock.
>=20
> Please don't send two seperate patchsets for this topic, since they can b=
e
> applied delayed. So your v2 should contain the patches from [1] as well.

Understood, I will put all in one patch set in v2.

Thanks
Li Jun
>=20
> [1] 1661328262-3867-1-git-send-email-jun.li@nxp.com
>=20
> Regards,
>   Marco
