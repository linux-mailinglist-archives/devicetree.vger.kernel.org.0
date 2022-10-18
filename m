Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44186020E2
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 04:08:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230454AbiJRCIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 22:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbiJRCIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 22:08:34 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2047.outbound.protection.outlook.com [40.107.20.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6DC08BBBC
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 19:08:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VwpGAv9kW0y8XL9eops7b7r2zd1Lg4nhRvwRd2gvBRf9czsWtSztp30n1+RTykbEvPLgutA3QSsyxRxdCh18S56zntwVxx5eXxOVPgglRDiaVvaTX117gjeuRHNkSLkr03jQfT5ZYyB369brTe2M1Ggc/QzMopjoaAx7Y14yMNGIVuCRN4pefY8srGfsmF7Lw52USJCjsUsBARBAUGtDHHSWL3ICAYhr91pA+jDDiyQZ7ssT8PCl0zYnnUDu4j5xrtufTNi2cwZxQl4naf6c6WE6JXWRDaMAVnORSm89Y1p8v5YQ7S9gRB1t321+toezyL+zECJl6/7M6+TCLExg3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cb2oYFVcICa3yaSfPBQyIUmm3bErQ3vw501sXuUqkZY=;
 b=gRNvP+AaOR8h16FEfkVarlpBIkT5Dd619Ec6C2K5UlMal04v6zl4g0Z2veLUBSaFkxjj9bOFh2ydP/rB4rkz8glrk45Ps+DV4avTOqWh+9Yk7X3PmSkubJ0suyP6CMCwW2Tnt6vRPn1HP5fPjPgHcEOHK3krz6Wp3e22qU9HChZFzL/Ntoh5BChUkpnPc5/Y575U45nhe4M+vMx93yqz076YjUBkp25uKyETb4zAvzlzVYWaE1NszN/25wG2xajsQP+Fvzm0Qk+31sVjdZnL7Wy7fKfbchlA4pwBd67GvgckCixfIGd+X7w44rpYuagyZ/OVpgdi0W30xId5+nLrvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cb2oYFVcICa3yaSfPBQyIUmm3bErQ3vw501sXuUqkZY=;
 b=mFFox5/xgx5pH0wLoMHohbaZTopmETD6wpNbkEwZgDwXwWIcc+92RA1rA7xUgJ7gyRk0ixOc4YHyk3PcpnF+Q26Kd2l8022W2jL2aFU2RSy1Tx3Y/ye7Sn13B1VdYuJIeHpWDV45s8Tm5NQ5DSNiZa9kQTCl06hfMwxsWmMwVPY=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by DBBPR04MB7849.eurprd04.prod.outlook.com (2603:10a6:10:1eb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 02:07:17 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::50b4:e2c5:1f16:47a6]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::50b4:e2c5:1f16:47a6%5]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 02:07:16 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>
CC:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Thread-Topic: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Thread-Index: AQHYwPpqstnFrbFBgEie+WmZURffea4OLcWAgAUONQCAAAK1gIAAacIg
Date:   Tue, 18 Oct 2022 02:07:16 +0000
Message-ID: <PA4PR04MB96409CB34D18F850074C311E89289@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
 <40f423ce-376c-acbf-db00-ca696da44fe4@pengutronix.de>
 <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
 <a7983d24-cf0a-16ad-b202-1353da320003@pengutronix.de>
In-Reply-To: <a7983d24-cf0a-16ad-b202-1353da320003@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR04MB9640:EE_|DBBPR04MB7849:EE_
x-ms-office365-filtering-correlation-id: af1c6e3c-7b8a-408e-287e-08dab0ad7b2e
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ELJM6NQPSPZstSDLj/CGVVTnmnaysOdUJ1pV2SY9JKkDgy3R1RwzmpaWzyJ05I0xuPBet7RaFjgRArRPjX63pki58mCGdyxaRS/RKmt1Q2X3dzaG7eIQIeg6lNBKTm9k7+FLXONb245RIUIjKVfJ6a331MFOGy2GZWIlM6p+GPmjL2qQ2gRrjVnQPxz1pgf3mPftHMEU3cyMvDfAREx2L5rMRtWMk2tYiJhD1BY8/fzux+wfeOY0otNIkFPxXp7qr+hzPUHySIM4q9D/R+u+sJlKVxFAK/Nkz6GG1hg13rkGidw0jCU9WyEP4txI1Yb9T07pm4bPRiM9vqUP9VW7kbVvq/38ND50v1fmZJpQiJWoGYJDHecUxO0d6D6xXkXhJ7rRHq/2WhtaWotF1uKYj1+eSiTFjRcb0kQTV5JMY7SeZZw9+K33J2SpBI6zqkLho6Rmynawc7Uy22ELgjsMWE4HxoKcnEue+mcjpTzv1Qu8yMH2RvBUEacCPIJb8ShqaEX1rqb09wJ/TTLQuBiS8pszJW8eBD69KgI3vTSuWdVCjjZJKu/n1fuerhNQdOtkxdq+2PLm1lXV+RZ7imX936aE/wMCzWBNi5iWeLjPxvhCDSbACyrVsLUmBGZbrsfT0kLpWJfIC9WsawcmKCXIXp+yrv10rbIx2Vgvg7SOywW28vy4SCW0XMo12Yog2n2WKbY5Oe16Oe5+/oeleMmxJE5fTKrYWcqzzvwMP0xEhwm97nPB0A8CSpl1sGHzXKBhx2Fz/vS2aCCNKv4B8J1dCzZ+0wMDA++tipBh/LtXT3DcQ5PkBkqXfqABKasPRPHp
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(366004)(39860400002)(346002)(396003)(451199015)(5660300002)(44832011)(110136005)(66446008)(66556008)(66946007)(66476007)(316002)(54906003)(9686003)(7696005)(6506007)(8676002)(41300700001)(26005)(52536014)(53546011)(71200400001)(186003)(966005)(2906002)(8936002)(64756008)(478600001)(4326008)(83380400001)(38070700005)(76116006)(38100700002)(45080400002)(122000001)(55016003)(33656002)(86362001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?scZHmKQlAuyCv0KTSJJgGDBQXUeZREvzjj5Pce+UpWBqNulR1NTlfGFkZ/FP?=
 =?us-ascii?Q?DOoG2u2B1FYRB88v4Zv4HQSkU/psg7NxHHri6pZFxHRM/nkHa27arhWyV/ur?=
 =?us-ascii?Q?poHYa0Hmv5UjtGuJhj/07KWDIpjxKh9/7oW4RN+bb1mRtunHB9DTckY3IuvE?=
 =?us-ascii?Q?ko6v4Sc5RxGA5V6REEbYJx8j7MNpy+C0VtbQBpMQenAsMzSowlECWfOPudLO?=
 =?us-ascii?Q?2oqp0Ax6jmX24EYWvKvsDxol3pDTvdcPKpagxzTnfus/A1NUyGQaTr9Fk4si?=
 =?us-ascii?Q?VUNRSHBj5Buaw4o6x48oLrH8szkE6DeWbFBgb/KIt+eCyZ+6gY5NocLtpWPN?=
 =?us-ascii?Q?ChWsTJ77Ajo+ABYj+kG+D93n3ARU8HyEgKWZH8R+GWl77OUiaZn8AVFnpSLb?=
 =?us-ascii?Q?mCwohF25LuRb4lVDiAUxGzNXZ7RRUmsoUjvNY+UCn5xstSwm6LOAw5mhvQH5?=
 =?us-ascii?Q?cC3Q53P3UA31faRHoEBJOrZuN3gfGVAnGy7RFrUijgZNQ1ZbCd4zrjw5r3NS?=
 =?us-ascii?Q?H3UseXnKhN3rUf6IINnB2ERyo7ikReNTeJXSDgB4BhL+cz3bQleYEG+AQMf1?=
 =?us-ascii?Q?2j6F1nxNeBpUl6ilJz7vnojX73PUsvj6mzaN67gtMUx2sY3KufxDra95awnJ?=
 =?us-ascii?Q?QO8p6Yq5hc81TXBaCCZx36hOpg4BBi+fMHaABgGzvHUEzCRn0PCFd+bKEPkh?=
 =?us-ascii?Q?gJ4lXT4P+f24qSEq2N9PwE+OrCmNw0HoVYxjyD5HzKc70oeTEmoOL1FH75r0?=
 =?us-ascii?Q?DtPlqNKzkK68jz7eJscxpr4wWYUR2nxyZAPkLtidcXF65X7k7KEJyE3lcvnS?=
 =?us-ascii?Q?YunAyEi6jIsw/0klsz2iWni2BB0BeOQHX3tkUGHSGPQWic43Sz9Mx52uCo8U?=
 =?us-ascii?Q?TajfNJZTjpNGA7XJMRNWZykwvWWfu+hkAmVsEPpAVDX6/Hp+hT6ugyJ4AazG?=
 =?us-ascii?Q?Di1wcZOM8szZq9mT+dDzd8gGEtpPUHtbZikO6uj1HY/rf83XEYvSm3dRqL8C?=
 =?us-ascii?Q?K4pq18AOiaCymA1j0V/zE2ofmItW6B+6epwlvtp/bsohQY8KWli9SiIQNbaj?=
 =?us-ascii?Q?wRG903yvbB4VOJ4Tp8QB7UPKrrcVBrO0nDOYh6pIfHDNzSZUrx6gBOgxmAVa?=
 =?us-ascii?Q?q+CSoxE+Fg7y9eMGkTEeiXP/P6/OL1b4vMCoMocQi3zpU1jg6nEuquuOsYuS?=
 =?us-ascii?Q?STDp+EsP4ax1QLJ6tWhcZDpW08XFD8CJNn7dalWWgGQWwqS4zLVkzkQ1+nPd?=
 =?us-ascii?Q?DG8khAyggW3zUiLcDirX5vTWegtM6J0Q8mWTvzBNV7WpDlYz9JXOBFmrfZ+6?=
 =?us-ascii?Q?XmD0jFhZmWCJQYaCVt0FNwAqYH/foXDR8XWgdnxesIUgXtyTAdHO2ot45/Lj?=
 =?us-ascii?Q?bmrzWvHC6FPhW8hc2Lxgy23MQOR8gu0tJF5FRVr/yGGXLoSlUjfKXvV0mEBQ?=
 =?us-ascii?Q?v6+ODn1W5kiFHG8cl88+64VfKA5qmOhfSgGhR876JkfUqVE01Sn+NPPp6RDC?=
 =?us-ascii?Q?86F4tH65RYS2x0tcdibE0eOKvTqh5LOtaUki/KYtCj8ndOlmOTQVG/CqcW1n?=
 =?us-ascii?Q?QCmCGTIzgV6jewoi0Vo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af1c6e3c-7b8a-408e-287e-08dab0ad7b2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 02:07:16.8487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3atx5UI6rkEnefVSQllWGBTVVaYnY1UjEk6lWemEzZMizQOVVmyUiYYCod3not31
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7849
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Sent: Tuesday, October 18, 2022 3:41 AM
> To: tharvey@gateworks.com
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>; Shawn Guo
> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>; Pengutronix
> Kernel Team <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> linux-arm-kernel@lists.infradead.org; Jun Li <jun.li@nxp.com>
> Subject: Re: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
>=20
> Hello Tim,
>=20
> On 17.10.22 21:30, Tim Harvey wrote:
> > On Fri, Oct 14, 2022 at 7:18 AM Ahmad Fatoum <a.fatoum@pengutronix.de>
> wrote:
> >>
> >> Hello Alexander,
> >>
> >> On 05.09.22 09:37, Alexander Stein wrote:
> >>> +     pinctrl_usb0: usb0grp {
> >>> +             fsl,pins =3D <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC
> 0x1c0>,
> >>> +                        <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR
> 0x1c0>;
> >>> +     };
> >>> +
> >>> +     pinctrl_usbcon0: usb0congrp {
> >>> +             fsl,pins =3D <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10
> 0x1c0>;
> >>> +     };
> >>
> >> I am wondering: You can mux for MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID,
> >> why did you decide against using the hardware function here?
> >>
> >
> > Ahmad,
> >
> > The IMX8MP USB OTG_ID pins are internally not connected. I can't
> > recall where this is mentioned but due to this they can not be used to
> > select host/device mode.
>=20
> Thanks for the info. Do you know if this issue exists with the i.MX8MN as
> well? A colleague had trouble bringing up the OTG_ID HW function and I as=
sume
> it may be the same issue. I am unsure though, because the
> imx8mn-tqma8mqnl-mba8mx.dts muxes the pad as OTG_ID.

No, iMX8MN is completely different IP(USB2 only) than iMX8MP, iMX8MN
has *OTG* inside so the ID functionality should be fine, what's the
trouble you colleague had?

Li Jun
=20
>=20
> Cheers,
> Ahmad
>=20
> >
> > Best Regards,
> >
> > Tim
> >
>=20
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=3D05%7C01%7Cjun.li%40nxp.com%7Cac32a99803dc4e710
> 4d408dab0777a15%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6380163244
> 44837508%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLC
> JBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D4TFBorG%2BucyYuy
> HrwhTDxjz4GV3%2FsCaHzx7i4cdw5Zw%3D&amp;reserved=3D0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
