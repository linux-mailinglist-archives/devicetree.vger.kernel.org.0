Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACF4F8A29B
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 17:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbfHLPsH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 11:48:07 -0400
Received: from esa3.microchip.iphmx.com ([68.232.153.233]:31542 "EHLO
        esa3.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725901AbfHLPsH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 11:48:07 -0400
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
  Nicolas.Ferre@microchip.com designates 198.175.253.82 as
  permitted sender) identity=mailfrom;
  client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
  envelope-from="Nicolas.Ferre@microchip.com";
  x-sender="Nicolas.Ferre@microchip.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 mx a:ushub1.microchip.com
  a:smtpout.microchip.com a:mx1.microchip.iphmx.com
  a:mx2.microchip.iphmx.com include:servers.mcsv.net
  include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@email.microchip.com) identity=helo;
  client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
  envelope-from="Nicolas.Ferre@microchip.com";
  x-sender="postmaster@email.microchip.com";
  x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com; spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com; spf=None smtp.helo=postmaster@email.microchip.com; dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com; dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: MsRXZmS3U5PnfQkXBJp6oH5DW7cwA2yuhKth5X7+Fi9oFMq5JVVlXvF/PkLAwe67zz4JrSFgQR
 oKX9bEsYnE6N7VqRRNHfN/CAUPYjPMGTYorXdcVyvZm23vcqnFm1yPLFRD7JmjwLXxp40FJqjm
 jA/D9RD+Cwt7n+EfMmL/woHdrBie0kbNc624aaqjmcT5jLxAPeK0DzyUV0EX3Q1oydxkGw6RyW
 77KL5VN9ESNU/qn4yNjurKU2PHuciUc1gzz61wHUIBI9/2wBQmYO9bOdflW6UGYZAAOSDjOXVx
 ChQ=
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; 
   d="scan'208";a="44847984"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Aug 2019 08:47:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Aug 2019 08:47:55 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 12 Aug 2019 08:47:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XHCa/82ayRFfJg8qZrZcYlixX5d+O+vMumulbNASSRUQxvG1XKH+7wCXTlzr6n+tfZMF9IyOI8sqKLyLc+QDg9TmbkF1KVA7oUqVUeU+jaBsmQGVYCnMjRqNYgwJB1fRbM7iTGKp++vksdjetrB8dSsMhLhMr0waqa9Bc+QEoswZe4kwIqJAnxZgMxGJ0y7wzXZV2mtBY8Ksk3F3pOzuChwg16igy00WXgGM/yCwDHhRYjMy83cCAJX3hZnFRU1BiOOuwCnilw6HnTKDcMkWIAin+PsT9MHbHexucIJITlKZnYLCTIO2N7r4efEKLfG0Q925NYyjIIAo/u11ES+29Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1FdHOCIIBZQ8y8Ywr52DBhZV73RsQB6K7s9RrzOqF0=;
 b=UnnbH433UqgB7D/d+xs1WYxU8aK8CxSx5UI8nA+dZYaJmt0VYC1A5eu8jyrR5SfeekEMrijSJEiXS7NwTvLte1ugq1lLKEyCZjxEznI3QUyGJHJxPOBeeuQXZOtzgXWCT6MTifqJB8DgNanHmLzjLBowsXQIQSdegbZrNZpKj11WwT2Fyj/quf9rGcM/ZdHRBrlBcmrn4jb2LrSQIu4k/VFCP6qFK3qdTzpY5muzyNCfjuNdYo6vTIUvTGjW6PtfnOu42uKi12j3Ko2QS8kFseo5+ExZ7OO2RGuaezmFzewIv4VkkvH6VqWuX/5CNzPIRgaJ4efR4tubHeMo78hGYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1FdHOCIIBZQ8y8Ywr52DBhZV73RsQB6K7s9RrzOqF0=;
 b=gSrhK901PcJ6+Z6ipY6pmI+1xqS5xEcy7Y/Z6sdL6/Bcrs96cEKMBJxZ8+F/cvtQSp00haM+lTkNrVXWn08I+y7w6jWqyoZt7Gfpptv1YJccbl8yNVJnqLSugCJO/5aLnSLI0S8ZjAYeP8wlArLQkjdp/ziWTcsEx7NxsCOSH7Q=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1309.namprd11.prod.outlook.com (10.169.232.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 15:47:54 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134%12]) with mapi id 15.20.2157.022; Mon, 12 Aug
 2019 15:47:54 +0000
From:   <Nicolas.Ferre@microchip.com>
To:     <uwe@kleine-koenig.org>, <alexandre.belloni@bootlin.com>,
        <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
        <robh+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] at91/dt: ariettag25: style cleanup
Thread-Topic: [PATCH] at91/dt: ariettag25: style cleanup
Thread-Index: AQHVUSVJt4UuY56PH0edZ68F98FjsA==
Date:   Mon, 12 Aug 2019 15:47:54 +0000
Message-ID: <4f58b080-dd20-19eb-c3b6-76746009ecc8@microchip.com>
References: <20190731220045.3992-1-uwe@kleine-koenig.org>
 <20190801082622.hma5ejifj6i2a2jv@M43218.corp.atmel.com>
In-Reply-To: <20190801082622.hma5ejifj6i2a2jv@M43218.corp.atmel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0207.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::27) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31666ec4-9814-4af4-1a89-08d71f3c7037
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR11MB1309;
x-ms-traffictypediagnostic: MWHPR11MB1309:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR11MB1309D1C6D52A51BF4084556DE0D30@MWHPR11MB1309.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(346002)(136003)(366004)(396003)(376002)(199004)(189003)(6436002)(6246003)(102836004)(52116002)(8676002)(25786009)(110136005)(476003)(2616005)(5660300002)(446003)(99286004)(76176011)(14454004)(53546011)(386003)(6486002)(6506007)(2906002)(478600001)(316002)(11346002)(31686004)(66446008)(64756008)(66556008)(66476007)(66946007)(486006)(26005)(6512007)(66066001)(6306002)(186003)(36756003)(31696002)(86362001)(966005)(71200400001)(71190400001)(53936002)(305945005)(2501003)(6116002)(3846002)(229853002)(256004)(8936002)(81166006)(7736002)(81156014);DIR:OUT;SFP:1101;SCL:1;SRVR:MWHPR11MB1309;H:MWHPR11MB1662.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WNj3NOrcBVe0+kpgXJ+kXhFUlHtLuVvZTY6gXf2bhvnVOsK7BXOZ+mim/sNzwyjkGBb+Un+2sggMHwKbGqcVtRpE110oYo7DMYcpZXj9xWW5kiodvoPFZwsvc7UefFi3dKNEC79pfzR6KS95L8Le31omFvboyQ4pfBwyFb9uYn1a6JkNxTb4SgaKOhlVhwg91MsnIZ9NI8lUJUtEwYhea0qrXlMF74bDsI/UZRCBVUSn4q07ZUJ7Vx39R3RePUa/IRkDr9LcVFBir4OXIJyw6X7Ija9/HPRvrMRu5Qe78gqxsaKjRVmQJrQeww/+G+YMLD8VtQ+c/RL7ucJL7JQ2GXgyFG3WObAIzy//eSiP8QwjtR/3qees7g2Ic9vVCxaKLdLQ1Hmq9JRzDeFgH/d2mKJb6XPLGrlgJ8SElCfLzcc=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <527BAD675E30B540AE31C062686B708E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31666ec4-9814-4af4-1a89-08d71f3c7037
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 15:47:54.0411
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yMH4yMG3SrV0dgXr5xZ+aKgNq7hjaj7Cpc5LkvK8P+VWsD2Bd2nTiSOoFMVb9k6CN2hjvLfIIEmDc8UZZuq/RWDOfW16F4EeD8n+lLMVgeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1309
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/08/2019 at 10:26, Ludovic Desroches wrote:
> On Thu, Aug 01, 2019 at 12:00:45AM +0200, Uwe Kleine-K=F6nig wrote:
>>
>> - newline between properties and sub-nodes
>> - use tags from included dtsi instead of duplicating the hierarchy
>> - status should be the last property
>> - drop duplicated alias
>>
>> There are no differences in the generated .dtb
>>
>> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
>=20
>> ---
>> Hello,
>>
>> these are the style rules I was teached when modifying imx dts files.
>> Do they apply to at91, too?
>=20
> Hello Uwe,
>=20
> It's okay for me, we had no guidelines at the beginning, that explain
> some inconsistency among our dt files. We tend to follow these rules
> excepted the use of labels.
>=20
> I would like to be sure that Nicolas and Alexandre are on the same
> wavelength than me.

After I had been reluctant to use them (another syntax to learn in=20
addition to learning DT, remember, back in the days...), I'm now okay to=20
use labels as they are so convenient and widely used.

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks Uwe! Best regards,
   Nicolas


>>   arch/arm/boot/dts/at91-ariettag25.dts | 87 +++++++++++++--------------
>>   1 file changed, 43 insertions(+), 44 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/at91-ariettag25.dts b/arch/arm/boot/dts/a=
t91-ariettag25.dts
>> index 7a34c4dc05d2..8f9f5a22cbf6 100644
>> --- a/arch/arm/boot/dts/at91-ariettag25.dts
>> +++ b/arch/arm/boot/dts/at91-ariettag25.dts
>> @@ -6,14 +6,11 @@
>>    */
>>   /dts-v1/;
>>   #include "at91sam9g25.dtsi"
>> +
>>   / {
>>   	model =3D "Acme Systems Arietta G25";
>>   	compatible =3D "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9=
";
>>  =20
>> -	aliases {
>> -		serial0 =3D &dbgu;
>> -	};
>> -
>>   	chosen {
>>   		stdout-path =3D "serial0:115200n8";
>>   	};
>> @@ -34,55 +31,16 @@
>>  =20
>>   	ahb {
>>   		apb {
>> -			mmc0: mmc@f0008000 {
>> -				pinctrl-0 =3D <
>> -				  &pinctrl_mmc0_slot0_clk_cmd_dat0
>> -				  &pinctrl_mmc0_slot0_dat1_3>;
>> -				status =3D "okay";
>> -
>> -				slot@0 {
>> -					reg =3D <0>;
>> -					bus-width =3D <4>;
>> -				};
>> -			};
>> -
>> -			tcb0: timer@f8008000 {
>> -				timer@0 {
>> -					compatible =3D "atmel,tcb-timer";
>> -					reg =3D <0>;
>> -				};
>> -
>> -				timer@1 {
>> -					compatible =3D "atmel,tcb-timer";
>> -					reg =3D <1>;
>> -				};
>> -			};
>> -
>> -			usb2: gadget@f803c000 {
>> -				status =3D "okay";
>> -			};
>> -
>> -			dbgu: serial@fffff200 {
>> -				status =3D "okay";
>> -			};
>> -
>>   			rtc@fffffeb0 {
>>   				status =3D "okay";
>>   			};
>>   		};
>>  =20
>> -		usb0: ohci@600000 {
>> -			status =3D "okay";
>> -			num-ports =3D <3>;
>> -		};
>> -
>> -		usb1: ehci@700000 {
>> -			status =3D "okay";
>> -		};
>>   	};
>>  =20
>>   	leds {
>>   		compatible =3D "gpio-leds";
>> +
>>   		arietta_led {
>>   			label =3D "arietta_led";
>>   			gpios =3D <&pioB 8 GPIO_ACTIVE_HIGH>; /* PB8 */
>> @@ -90,3 +48,44 @@
>>   		};
>>   	};
>>   };
>> +
>> +&dbgu {
>> +	status =3D "okay";
>> +};
>> +
>> +&mmc0 {
>> +	pinctrl-0 =3D <
>> +		&pinctrl_mmc0_slot0_clk_cmd_dat0
>> +		&pinctrl_mmc0_slot0_dat1_3>;
>> +	status =3D "okay";
>> +
>> +	slot@0 {
>> +		reg =3D <0>;
>> +		bus-width =3D <4>;
>> +	};
>> +};
>> +
>> +&tcb0 {
>> +	timer@0 {
>> +		compatible =3D "atmel,tcb-timer";
>> +		reg =3D <0>;
>> +	};
>> +
>> +	timer@1 {
>> +		compatible =3D "atmel,tcb-timer";
>> +		reg =3D <1>;
>> +	};
>> +};
>> +
>> +&usb0 {
>> +	num-ports =3D <3>;
>> +	status =3D "okay";
>> +};
>> +
>> +&usb1 {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb2 {
>> +	status =3D "okay";
>> +};
>> --=20
>> 2.20.1
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>=20


--=20
Nicolas Ferre
