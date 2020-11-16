Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4BB92B411B
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 11:30:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728705AbgKPK3P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 05:29:15 -0500
Received: from de-smtp-delivery-52.mimecast.com ([62.140.7.52]:58832 "EHLO
        de-smtp-delivery-52.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726885AbgKPK3P (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Nov 2020 05:29:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=mimecast20200619;
        t=1605522551;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
        bh=yDu6Ad+yb7tRsQcs9qMObDj6mPKODnR542vx7fuQEk0=;
        b=XnXqCm+ZBR9qq90AlXbHlGUsi3TnKL1GTAeyktQisQEtVlvKAgCXzzA0v4aPR8Ztt78vu3
        Uv46d1KL0vXIDlqi34FVFOJK6NjbTB8tS+Y5S28T+NHTYsbuFVPCxeAXDMYoGrqPFg/4kF
        OqqSdc+k/fQkSHkC2tOX5nw7FSjVcZo=
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2059.outbound.protection.outlook.com [104.47.14.59]) (Using
 TLS) by relay.mimecast.com with ESMTP id de-mta-2--Cik0c9eOCqOMlwZEB0t8A-1;
 Mon, 16 Nov 2020 11:29:09 +0100
X-MC-Unique: -Cik0c9eOCqOMlwZEB0t8A-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MWxRqcp5s67f+piTVQw2v5tW//Nm4f/fspJtTEr5NnzZ/2MJ0HomWa8/NKc/2oyyvDU7jDyD8pvzv4LJOrIXthUfOkpW29Bk77IDkkunEXCp18ARgLiU+MGGYK9rwtRj5Ss8Wgkp0Fkv2Zow+8JodMMFHaBWoxUqpNqBPMy7mourNtBPaIH5iqnFXtksoteUOKi50eZaS9pmw6mzi/nx0weU05gxtlWf+fXerJ3WYsWFeBxPvlhUz1qM4jE5npsMOlOX84WpqEjpHRZIjaUoIVaOLQzag7NmkwWBpnXg0xhTq1rxYX3W0zG/sUWr5qhj2HHCiaJC6HPRpeQ1cH1oYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xv+mlTMWNInX+0nS4G8trH1UG441uG62/cTnogBt1+s=;
 b=mTdOPe6SSr+aF2uD+SfDZyZ4A0AMCLFTAy1nigfYJOzyZxC+IVZQ33+PVcUZk0nSOBuvRJLTOymXgsd51seb2PjdopksrI2YttiTcGlWRx6T4Ftdrdbl9zlmr9bNsVZY80IBpCWjcMPpgZ6VpCvuHk1qfK0qhz6374F9AZ5b82p61Dw2GICeIa/CnPJPM+Om4vNpN15dhJNUgYYoQ5xZ0TyAOwJ23eJXiFAYztBXvPr/b1G8q/6WtEvtccs7D61QopgRLmjwLKjLmImV5JqqNO+IOW0TSAHtUpfdGWlsRirdC3G99N0J6LB9LOq3Mad4mESbWQ2u3zQtg3wLeX6Vqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: khadas.com; dkim=none (message not signed)
 header.d=none;khadas.com; dmarc=none action=none header.from=suse.com;
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com (2603:10a6:102:f1::19)
 by PA4PR04MB7696.eurprd04.prod.outlook.com (2603:10a6:102:f1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Mon, 16 Nov
 2020 10:29:07 +0000
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7]) by PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7%6]) with mapi id 15.20.3564.028; Mon, 16 Nov 2020
 10:29:07 +0000
Subject: Re: [PATCH RFC] arm64: dts: Use separate dtb for Khadas vim3 usb3 and
 pcie controller
To:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        gouwa@khadas.com, nick@khadas.com, art@khadas.com
References: <20201115033917.83302-1-wqu@suse.com>
 <25b4bbb5-07e8-4d82-a4cf-43f4d64c8983@baylibre.com>
From:   Qu Wenruo <wqu@suse.com>
Autocrypt: addr=wqu@suse.com; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0GFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPokBTQQTAQgAOAIbAwULCQgHAgYVCAkKCwIE
 FgIDAQIeAQIXgBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJdnDWhAAoJEMI9kfOhJf6oZgoH
 90uqoGyUh5UWtiT9zjUcvlMTCpd/QSgwagDuY+tEdVPaKlcnTNAvZKWSit8VuocjrOFbTLwb
 vZ43n5f/l/1QtwMgQei/RMY2XhW+totimzlHVuxVaIDwkF+zc+pUI6lDPnULZHS3mWhbVr9N
 vZAAYVV7GesyyFpZiNm7GLvLmtEdYbc9OnIAOZb3eKfY3mWEs0eU0MxikcZSOYy3EWY3JES7
 J9pFgBrCn4hF83tPH2sphh1GUFii+AUGBMY/dC6VgMKbCugg+u/dTZEcBXxD17m+UcbucB/k
 F2oxqZBEQrb5SogdIq7Y9dZdlf1m3GRRJTX7eWefZw10HhFhs1mwx7kBDQRZ1YGvAQgAqlPr
 YeBLMv3PAZ75YhQIwH6c4SNcB++hQ9TCT5gIQNw51+SQzkXIGgmzxMIS49cZcE4KXk/kHw5h
 ieQeQZa60BWVRNXwoRI4ib8okgDuMkD5Kz1WEyO149+BZ7HD4/yK0VFJGuvDJR8T7RZwB69u
 VSLjkuNZZmCmDcDzS0c/SJOg5nkxt1iTtgUETb1wNKV6yR9XzRkrEW/qShChyrS9fNN8e9c0
 MQsC4fsyz9Ylx1TOY/IF/c6rqYoEEfwnpdlz0uOM1nA1vK+wdKtXluCa79MdfaeD/dt76Kp/
 o6CAKLLcjU1Iwnkq1HSrYfY3HZWpvV9g84gPwxwxX0uXquHxLwARAQABiQE8BBgBCAAmAhsM
 FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2cNa4FCQlqTn8ACgkQwj2R86El/qhXBAf/eXLP
 HDNTkHRPxoDnwhscIHJDHlsszke25AFltJQ1adoaYCbsQVv4Mn5rQZ1Gon54IMdxBN3r/B08
 rGVPatIfkycMCShr+rFHPKnExhQ7Wr555fq+sQ1GOwOhr1xLEqAhBMp28u9m8hnkqL36v+AF
 hjTwRtS+tRMZfoG6n72xAj984l56G9NPfs/SOKl6HR0mCDXwJGZAOdtyRmqddi53SXi5N4H1
 jWX1xFshp7nIkRm6hEpISEWr/KKLbAiKKbP0ql5tP5PinJeIBlDv4g/0+aGoGg4dELTnfEVk
 jMC8cJ/LiIaR/OEOF9S2nSeTQoBmusTz+aqkbogvvYGam6uDYw==
Message-ID: <46cb5cb0-bac4-5bd2-7adc-b350074b7ca7@suse.com>
Date:   Mon, 16 Nov 2020 18:28:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <25b4bbb5-07e8-4d82-a4cf-43f4d64c8983@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: SJ0PR03CA0043.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::18) To PA4PR04MB7533.eurprd04.prod.outlook.com
 (2603:10a6:102:f1::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by SJ0PR03CA0043.namprd03.prod.outlook.com (2603:10b6:a03:33e::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25 via Frontend Transport; Mon, 16 Nov 2020 10:28:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: edfee30d-8cfb-4018-3c82-08d88a1a72cd
X-MS-TrafficTypeDiagnostic: PA4PR04MB7696:
X-Microsoft-Antispam-PRVS: <PA4PR04MB76967EB6884BBF0EA7F008F8D6E30@PA4PR04MB7696.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DjuDn1m+gM9LWKe6yriss0JxjH5uYuOtTCmp90B4JpX3Qcu1CBmeOslKPpZhUu+t0eutKMMnMxpvzeosFSi5XYGipofSQsUXtCZ6ixw2kQKTqzlUV0SQQc69lObW3HUzCrx4nly7itGzDhMep2jZYGilDNWr1jsl3NIGUhD1JHyBCbwEECnZXb6Ab9B1iczO3lPSBYjiWKAdTNp2NAN+ETThVzEAX7A0WseKkgMAZrb3igN80n1kQc8B3c6WitMIcMDkpRNYStPEYV0fVP1f7YSZMTt06I0c4U9qB7vtikleA9XR6qkfOQzCNp6CqiltbWCcm2SizpaSWLhrWbFIRgytj+H5Y/NxURy68SRAGnRct8Rb+XSvDC6ql7rJjUaiRexluJugdECEvWsLB2+QxkolVd066+tx7xKNsTvlhdHNKXnV1+hB7lSRGsnGluBD1nq3mX6KjUj1kRyqQxJSfFc6JRd9OJiq6aHFBB7+REE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7533.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39860400002)(136003)(396003)(346002)(376002)(5660300002)(66556008)(31686004)(36756003)(31696002)(956004)(6486002)(966005)(2616005)(478600001)(6706004)(8936002)(2906002)(6666004)(16526019)(66946007)(52116002)(53546011)(186003)(66476007)(26005)(86362001)(16576012)(316002)(8676002)(83380400001)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 5tFwJB6jbLNe+IwzNTnq8bDezLFlqpNxOZKqdzjfjSkLvnGp58I+fjHL5OoyWOrO/sW7xbaA/38uJBEZWkbufanpTZTM2ITzqPp9q8mpof5Tc1tEI6SQmrC19KPDmcvcensfoQFRo635r3j3RAimdPkynR973nkZ/i0K5dx5ifD0Zv7DyuLsRABto60oIRbx7FFXp+WoNIJu18RwYCEw97fenthnWvA/qPL6jDNVHCYjbQiBxo6hSmMPTDilT872V/WBY27u1Dsb7LVn/fgqhTBTwqC7hwhpLfK2RgZfjtb56Akum4/aQfUt4YSVHZmdNRHJWaIx1z/w9Xm+GeG8PeptqMQeb6/mQjL2pec+mrwvhgphcwVwd8g4mYBQC64A8aQL1pQpcrsh+XMtLnr0K816u2CJ8zCy38XCDtHQ58mZKUp+WkJRSPAqRzNQKZ+NcaHjdTaiwl6kMLnNJAyIKgwGqS6WhDJWR4pEtkTQbLVQ0S6kznkuHrg1EHmlb8C+YBVGlp/eimfVS86jpmAAs0m25o+pDb3/1m9BMLHG1tqA/rxEFfxRzx4ANe/cJwQKj8/sQ7R7CaUIWm9c4Fw7JXJ5lNaO6+fa70OM560eN0KbMlX+4T0SfWJ+ZCITYg0gYhlOffi47+1mY7wdwkJV35UoDFNb72eNfv2z1AmvpVdu38w3VIS7AFVXDn6e0Df4LebxmKeBfDXHGFqB/vFnjfxFizaIU6YvA5TezFIJUHb4K4ENHU9prIxtM0XcpknYeYKVoaOdoGBr5U465pvC/6PXwuobM2uZ+o9PjjdV8/Fd43dFwdCZlhBmNW+v9c9NHI7uoz6wXwodwoc7yZ4sOKvuDBvJ9jJGMvVfuZCEjxJJA8PVNeH3G8SkmW+9FELsPsNL2AQUtSTca/irahEk3Q==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edfee30d-8cfb-4018-3c82-08d88a1a72cd
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7533.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2020 10:29:07.5220
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qTwW7XAzcq2LB9dOvjDcEhuZwfXXIFhVYEP1lbU6xqJs5X4pnf0Lu+fqYjjzdZJZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7696
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2020/11/16 =E4=B8=8B=E5=8D=884:33, Neil Armstrong wrote:
> Hi,
>=20
> On 15/11/2020 04:39, Qu Wenruo wrote:
>> Although the plan is to make the bootloader (U-boot) to load overlay for
>> the device, but currently the board doesn't have the upstream support
>> yet.
>=20
> No need for that, automatic PCIe enable is now support on upstream U-Boot
> for VIM3 & VIM3L:
> https://github.com/u-boot/u-boot/commit/adbff64af7b7cee3e0007b75df2644090=
edaafcb

Great.

BTW, the upstream U-boot is supposed to replace the factory Uboot
compeletely, or just to be chainloaded from SDcard?

Thanks,
Qu
>=20
> Neil
>=20
>>
>> This means even upstream kernel supports all the needed drivers, we stil=
l
>> can't initialize the pcie controller.
>>
>> As a workaround, make seperate device trees for pcie controller and usb3
>> controller.
>>
>> Now user still need to go into the factory bootloader to switch the mux,
>> but they can easily boot the kernel with PCIE support by just swithcing
>> to the pcie device tree.
>>
>> And since we didn't modify the original dtb, the future upstream uboot
>> can still use overlay to switch mode using the same dtb file.
>> The added new pcie dtb will just be a workaround.
>>
>> Tested on my VIM3 pro board, now I can boot the root fs on the NVME
>> drive, with upstream kernel with the new pcie dtb.
>>
>> Signed-off-by: Qu Wenruo <wqu@suse.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/Makefile          |  1 +
>>  .../meson-g12b-a311d-khadas-vim3-pcie.dts     | 39 +++++++++++++++++++
>>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 23 +----------
>>  3 files changed, 41 insertions(+), 22 deletions(-)
>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-=
vim3-pcie.dts
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/=
amlogic/Makefile
>> index ced03946314f..a0b8d30539e2 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12a-x96-max.dtb
>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-gtking.dtb
>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-gtking-pro.dtb
>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-a311d-khadas-vim3.dtb
>> +dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-a311d-khadas-vim3-pcie.dtb
>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-s922x-khadas-vim3.dtb
>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2.dtb
>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2-plus.dtb
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pc=
ie.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
>> new file mode 100644
>> index 000000000000..93641a32eeec
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
>> @@ -0,0 +1,39 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 BayLibre, SAS
>> + * Author: Neil Armstrong <narmstrong@baylibre.com>
>> + * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "meson-g12b-a311d.dtsi"
>> +#include "meson-khadas-vim3.dtsi"
>> +#include "meson-g12b-khadas-vim3.dtsi"
>> +
>> +/ {
>> +	compatible =3D "khadas,vim3", "amlogic,a311d", "amlogic,g12b";
>> +};
>> +
>> +/*
>> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
>> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
>> + * an USB3.0 Type A connector and a M.2 Key M slot.
>> + * The PHY driving these differential lines is shared between
>> + * the USB3.0 controller and the PCIe Controller, thus only
>> + * a single controller can use it.
>> + *
>> + * This is the PCIE device tree.
>> + *
>> + * Until upstream uboot can boot the board and modify the nodes before =
booting
>> + * It's much easier to just choose this device tree file to use PCIE co=
ntroller.
>> + */
>> +
>> +&pcie {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb {
>> +	phys =3D <&usb2_phy0>, <&usb2_phy1>;
>> +	phy-names =3D "usb2-phy0", "usb2-phy1";
>> +};
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dt=
s b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
>> index 124a80901084..9c111d76baec 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
>> @@ -16,26 +16,5 @@ / {
>>  };
>> =20
>>  /*
>> - * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
>> - * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
>> - * an USB3.0 Type A connector and a M.2 Key M slot.
>> - * The PHY driving these differential lines is shared between
>> - * the USB3.0 controller and the PCIe Controller, thus only
>> - * a single controller can use it.
>> - * If the MCU is configured to mux the PCIe/USB3.0 differential lines
>> - * to the M.2 Key M slot, uncomment the following block to disable
>> - * USB3.0 from the USB Complex and enable the PCIe controller.
>> - * The End User is not expected to uncomment the following except for
>> - * testing purposes, but instead rely on the firmware/bootloader to
>> - * update these nodes accordingly if PCIe mode is selected by the MCU.
>> - */
>> -/*
>> -&pcie {
>> -	status =3D "okay";
>> -};
>> -
>> -&usb {
>> -	phys =3D <&usb2_phy0>, <&usb2_phy1>;
>> -	phy-names =3D "usb2-phy0", "usb2-phy1";
>> -};
>> + * Vim3 default to USB3.0 instead of PCIE controller.
>>   */
>>
>=20

