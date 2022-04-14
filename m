Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93848501881
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 18:28:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231392AbiDNQPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 12:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349713AbiDNP5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 11:57:00 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C132725
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 08:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1649950750; x=1681486750;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=c8uO06IuD0FMfn4luvsbTzylQS/SO5xAd7cFymIby7w=;
  b=B5LsOm2Kf9ZGRwfhQN7nPiumPZ0ABBgRN2+lVJU0EX2YpfqRKo3o5J+2
   R3phV615XI0n2vWILWJhikb+myUCJPdaaJdSdIfEnBttdtjcL2ppt9apr
   AqpguGveBCIHi1MKLIGEobna8RMSnLUrsDReP0B2xLmeuzQ2hEMUc0UAF
   sg3o6i4UZ3clbI0UBQG6mxRrJHLhOpl05pSH/6pKP0QX/NaMJLi0B7oEC
   iDYZtn1qTfNdTrHX7mJ592UpabkShJKMRRVS+bWH0sF6V5vrnu3krzwna
   XAJxfwOG0dPN9qFZMmMj+dxp2diu1MVsBwzkkdIhY632ySDqh+N05wXDN
   Q==;
X-IronPort-AV: E=Sophos;i="5.90,260,1643644800"; 
   d="scan'208";a="302112625"
Received: from mail-dm6nam11lp2175.outbound.protection.outlook.com (HELO NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.175])
  by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2022 23:39:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZofeVqQlAYdu/GvW5HGKi5n5zS3Wioqihpf8VlqwNoPF1HAdcTlggwXAfe3L6phOsOfvmUAMaQLHGBbJ2JnppkkImdsNH4DBtZ5ji0RDij0NLSrMuDNKRHJteqoQzdD/82iu0fCbozwdIqzQAJdWCMp+OM1MASNX5fWnHGzudXc7OHNt6WN/kJeGSDdsHnEKgo8x3425KE5kmRa33GHEVAW251+ZTWZWkoKJqi1uxv7z+o5fHD60YkokKwLWsySXJyT+ZQurBMyVXJPHEQC1VoISrQ+DsN+lIRFK61r9y12lNnbk0KSBu3gRQgjUM48TP6sFpuIzWd45WuAns0y/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TgqQ52p/pn9LY6QlqORoQ/xE6DquyatoOFjkPzmeMqM=;
 b=nsGn4d3OGOnqx9luHMIMiMc+bTD7T5a9nIm1ZoQxAjdG+iHIbZafLkgbdpAqLFhw/1YTGeKGCbek3uvnXjHbqC2nHGp5p37GOyWePOT1js1/04fQztz2hx+F1rSJxlQwxSexuvQqrT0Qi80YaQmpZL5XL5to6mhirJGW+4AHayzwlsVlPmSW7Rb7zJrLqufaFVpjRtykx4ejR5yz8TWOqJTWQ111Kxk1IC6U9g0xqN9TzqzJXCzodxcn00iif+NIHuUaWA38mTVL4uZhXOjI+GAjXxNmWgWRTdIv5dUTqjaSylVRSZ3owOBRciBbT1qBCdKZkYxTrbAo7uoGe5B8NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TgqQ52p/pn9LY6QlqORoQ/xE6DquyatoOFjkPzmeMqM=;
 b=Yo1Da4okcCHWOV5ujjLlLQe6ro2d2T6vTpBNTrubmDcNnpX1C8o6+hfAE3ZIjFKPu5S3/tssFd8JGIkjbB2h9v+G1kSnR/otXCOy1T+lINe/rr2aFeee6IU0L5LjyZ1iQTtKodtvGP4jvnlZboq4DJepxHOBr92F/0AoXGWMvtU=
Received: from PH0PR04MB7158.namprd04.prod.outlook.com (2603:10b6:510:8::18)
 by BYAPR04MB3848.namprd04.prod.outlook.com (2603:10b6:a02:af::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.30; Thu, 14 Apr
 2022 15:39:05 +0000
Received: from PH0PR04MB7158.namprd04.prod.outlook.com
 ([fe80::995b:363e:8d1c:49af]) by PH0PR04MB7158.namprd04.prod.outlook.com
 ([fe80::995b:363e:8d1c:49af%8]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 15:39:05 +0000
From:   Niklas Cassel <Niklas.Cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: riscv: Add mmu-type riscv,sv57
Thread-Topic: [PATCH] dt-bindings: riscv: Add mmu-type riscv,sv57
Thread-Index: AQHYUBKsJa8ZSeWsXEG/67ME4AITdazvi2OA
Date:   Thu, 14 Apr 2022 15:39:05 +0000
Message-ID: <YlhAFzwARnesLuTS@x1-carbon>
References: <20220414151639.1359969-1-niklas.cassel@wdc.com>
In-Reply-To: <20220414151639.1359969-1-niklas.cassel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c342281d-f172-4807-2b91-08da1e2ce872
x-ms-traffictypediagnostic: BYAPR04MB3848:EE_
x-microsoft-antispam-prvs: <BYAPR04MB3848AA6DD04AA91B7F713FE9F2EF9@BYAPR04MB3848.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CtkcsLk9kcafIcmLfcEc8KuxG2Kdzn2QCqsqpWY3bYymDGASZn81vs5S6Ff8hfL0Jm0wnucPmg/3bZK0iGuSLHSIVNyh9WWozJbvC+QabY5qUJoZpUOwAL5oSoZSveKyZIKXo6g5E3O9boSJvUDUjuCswlumu80rqZmYPXM7eRhEMGGkuGiA09mN5m5e/so7jHRrJ22CodIXpEBtpj8YgW6/OrUGtEaMUf2RqbuBOxoUW8VO4C+Bv89vDXb1Dp64l+1PDi9CNq9fTyGGcPQ8RAx0fhvDzajuCMoUkWiVETJoA/fNn30NLuxp9638Lc43ejhlwCT9X2/ep8h0jf9Ndp+LlnZoibeLq7pniICd7OIzbV++b13BqC8/GPLyGrkvedx9BHPah6GHRzcGGeOW7obXAMdoXPHBSX0amx7eGlaqiYfQQe8KU0stCfxxNdKACdxf3SsqOld0p1NYSMbY6URTPSikyTl+8+hI/9KVFf84cppYaaSLRUO+iqwiAX0M+ZQ1xpOwy+NbLA2P616rplNDVZamK5zTdfEcblKp3A3ofxKsMrTq9gtsDvbfWgTukaXDnL/QXtgz44pUj96dFX85o6/bBbiJqrJSBWQEhjZflDr7M/5IzyTZnNIH+5RIF3kR03/VhoVQVTPz3aMV8knqALGSFQNyhO5rBaqZnruWJbXI+Q0o8l2XHUU+hco2SDxqy3Cav4TtjLaB5qDboQagweJ6u/KeP+bWz+1r7WC030EKh5994BV4plMximx7h2QKjDj0eOMe7M5CAvxRhAYXhTm8Kq45U2l3CetPsnQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7158.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(83380400001)(6512007)(71200400001)(33716001)(9686003)(38100700002)(38070700005)(4326008)(26005)(5660300002)(86362001)(6506007)(2906002)(122000001)(966005)(8936002)(6486002)(82960400001)(8676002)(316002)(186003)(54906003)(110136005)(66556008)(66476007)(64756008)(76116006)(91956017)(66946007)(66446008)(508600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eAe/JkfIFYkQN9qHzr21lS0y6jc9JiVy9dIfB2iAd47BBK476byYp0lbdJKn?=
 =?us-ascii?Q?rbEMaCnsZKRoHrOV+t19vBAUsJYZxD/bpyI8Csrt99pFoC3TJ61FU3dfdzXB?=
 =?us-ascii?Q?gOQOEy5oO8h8koP3dxXkSAxJLr06or4CUMM1zplHofow1FOXp+IGhFFUI+oE?=
 =?us-ascii?Q?Tvz0rPA3jmj7G4YkNXkbqpzNEPcDpEsLU3m8a09jb/IVdZ17ZK8rsxJQz5Vo?=
 =?us-ascii?Q?yfQiPAMI9Q+EUbtYNckUg+WR6DFF+8lzguXivfhLKruxaYl8EtokVdp3JlRF?=
 =?us-ascii?Q?2WHML52h6y31p/V8K9SxEgF2xBYtyckh4IxCFxOiCnYM62Wynzf0gKJX75Mo?=
 =?us-ascii?Q?hT/qG4bMTCl/qfW+Whzcd6RiPNmkpi1YuFPYK0QuopdwaHZB/Y62tSQ4uU0R?=
 =?us-ascii?Q?eFIT8c4TxnJaY7XCh2WQ3aPXUp98l3hiwYnSZIZ3m0iNW0M8ZsF6zmug958A?=
 =?us-ascii?Q?/R1pBRin7xVANZz4pcohUK7D6JAg+e/F4wvaBVFYUQ4lxfB6uB/KvFNMU8FX?=
 =?us-ascii?Q?qqF3wdG4H52up6FiVhYdhBZ02BaTMqjOdACZPsm797i122Zsf3Jo5eVMrXN6?=
 =?us-ascii?Q?oPXly8UVBDXDuV/EYIMySFYJH0hcxiTS2WhumRKBi5e0tiqZ5NW0voajwqge?=
 =?us-ascii?Q?gNv3Dlv0yw3POXsePoZZiKLfC/fn62phEkHB0xCt8C0jLmar4xQHAeXfcUx7?=
 =?us-ascii?Q?X+OfhnCTqtWD20fJsuwFwCBTar+osh1s5xHC9WbgyMhJwCfD7u+aOOz2wm4n?=
 =?us-ascii?Q?OQVayPy/FuEg4m/Yy6rVecA1acEFDXYX4C1IkzpZ70JaGhoFtATqNrU/9f96?=
 =?us-ascii?Q?m0Emu0YyvoCRuMdpWsu5sY/itbc9aIhqOpmGHpA4HaR/qT3YwI5845L+9NdV?=
 =?us-ascii?Q?LJDwwzmJtE4cNYYjoK4q26za+pvBXLveikr0RWMo0GUPH9sf0r7OeBIF2Ma2?=
 =?us-ascii?Q?KPKSGwAh7Uj33ElhxLtElVMFTkA/Um1KRbEoAGwjjDbpPeEBV3QiG/D+UwZ1?=
 =?us-ascii?Q?OoGanM03R1bdp7LJ/Lt/XhyaLvEfiYCqR42ux3wKwdTZDzvH6QFdlTCtcQ0H?=
 =?us-ascii?Q?Y+8ux9WEXYSMro4ZTGYTkONOy9bVP7i6Re476FX3mO0mjXibej03w4d2Fiuf?=
 =?us-ascii?Q?piOi+UjEyHUlILrAHavV3vSkxHrcQOfblvy2KbZIDzA7DqZg+u+H0BLXk7eu?=
 =?us-ascii?Q?aVJWBspLLcHPNM+VFfPuO0bh8uAeMho9O8O+HPpmghSRdqilw8+nCXyQvevq?=
 =?us-ascii?Q?1Yl87+XAAVubS5aMSWwMO3Wzr1wtkJRTufGl2GpeB8s6utWwffEHXjYeKVa/?=
 =?us-ascii?Q?mA0eMDCY97JJJmOTxK4EazVjQiT+PPnHn8XdbWxWaxkpA8EdNHMNdWWjCTLX?=
 =?us-ascii?Q?XN4wsysm8tpLiSJEBBC/KD4GQ+pRvHN22dWgZ19FB70B5fakyq1jKJvix8Ji?=
 =?us-ascii?Q?1Js45LZz5oXZa7U6SPMhwhtb69tksuEPgm6duGhtzNIhvRADSpEy3ne88Wdo?=
 =?us-ascii?Q?CpITtUnTeoqo6P6aXsMzzsvMNhb/2GX/GgGuhdvC3qPztA6KhFCkdS7fTbLK?=
 =?us-ascii?Q?6+sff3LYLdvV7m52/fDW6DQsUu/GPzdIbOokA2SowKrEOrUSt/M5yDKmN3CE?=
 =?us-ascii?Q?FzoNK9LEg/NonhKLa8cfO572oDIR6L+uOZXjjtriCsm9UpOqelSgssCA4Fc6?=
 =?us-ascii?Q?XrsywxpyHVEZVOBD36v6GqNTw/wuAEwSFDrXN3is6rFOhRjLGgVKCgL766N1?=
 =?us-ascii?Q?E2ezZW1NhPV2CdVqD95VTK4tfaM2bmU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BA4B902E81D95945A041A64E61B86C37@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7158.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c342281d-f172-4807-2b91-08da1e2ce872
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 15:39:05.1818
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TrPd/V8YSCPWOLbJ1eWUB5q9eJTPDzzr1Cm8C6CBIbrrslEYfIlHo3vuBiR8u8P3W0K+cBkNu/XF9Z6dqpNB7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3848
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 14, 2022 at 05:16:38PM +0200, Niklas Cassel wrote:
> sv57 is defined in the RISC-V Privileged Specification document.
>=20
> Additionally, commit 011f09d12052 ("riscv: mm: Set sv57 on defaultly")
> changed the default MMU mode to sv57, if supported by current hardware.
>=20
> Add riscv,sv57 to the list of valid mmu-type values.
>=20
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index d632ac76532e..3100fa233ca4 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -61,6 +61,7 @@ properties:
>        - riscv,sv32
>        - riscv,sv39
>        - riscv,sv48
> +      - riscv,sv57
>        - riscv,none
> =20
>    riscv,isa:
> --=20
> 2.35.1
>=20

Hello Palmer,

I got a bounce on your old email address.

My git-send-email scripts, for getting the list of CC, uses:
./scripts/get_maintainer.pl --nom --norolestats --nogit --nogit-fallback <p=
atch>


You might want to either:

a) Update your email in the DT bindings:

$ git grep palmer@sifive
Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml:  - Palme=
r Debbelt <palmer@sifive.com>
Documentation/devicetree/bindings/riscv/cpus.yaml:  - Palmer Dabbelt <palme=
r@sifive.com>
Documentation/devicetree/bindings/riscv/sifive.yaml:  - Palmer Dabbelt <pal=
mer@sifive.com>
Documentation/devicetree/bindings/serial/sifive-serial.yaml:  - Palmer Dabb=
elt <palmer@sifive.com>
Documentation/devicetree/bindings/spi/spi-sifive.yaml:  - Palmer Dabbelt <p=
almer@sifive.com>

or

b) Tell get_maintainer.pl to redirect your old address to your new address
by adding an entry in the .mailmap file:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/.ma=
ilmap


Kind regards,
Niklas=
