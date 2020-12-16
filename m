Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13F712DC6F6
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 20:17:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387813AbgLPTR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 14:17:28 -0500
Received: from mga17.intel.com ([192.55.52.151]:63857 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387811AbgLPTR2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 16 Dec 2020 14:17:28 -0500
IronPort-SDR: di1b7tA+c0Ot/tNsQPN8qCkrwOiaZfbh7yBgCS+EbC40E2HZ0Z4BhFyiMtC+E+bSydKfHx+OwP
 KrnsRLvwLpBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="154929338"
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; 
   d="scan'208";a="154929338"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Dec 2020 11:16:47 -0800
IronPort-SDR: /+jzKDtiyEJ7pUybbGf4wJLOsf49xiLh4zrrtXGFv1AZw3oYy1G3HtVs0651zYkPDmGkbaWnOe
 bEhO3h4ElWMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; 
   d="scan'208";a="379358880"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga007.jf.intel.com with ESMTP; 16 Dec 2020 11:16:47 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 11:16:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 11:16:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 16 Dec 2020 11:16:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 16 Dec 2020 11:16:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h4p0dRAvnpTXC/iAteqk2vh6d/82X92XnH0oF7WZ1SuvfYbJpX4cD0V1krshWkjKREOJQZf1HnT/12ZAFfeuhq1PMD80WhAkcRFMuJA4T2dQ3SnjqRgEmOaQl5+k98ZtGVuvQKj79PvNyAOLR1mg+OdLPoeAzSbUbJnuyBN3zOUPCaynhJSirHLSGvlzBTGgrWdlsLwwQYoQMwpAebUKcaoCv6WxWSJ4ufjlU+fZJndxeoaWB/JCJhKaCWXEFen+ZxJjj/AfUE8rhPS//rNrBz7y7IZIcH2ptyGlJXtKUBxjDvfB+mc7JKoCvrra72W2i8IMFtGFCrUwObGNkHsrfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBAxRmCLhUkYRpCuFcpnRT/soLnshr3hgpHzEklTJSA=;
 b=Gkj9dQd7ac6RqK6wZJ/vtQhbw+byCPsyyUlOYbj3BmeBfVi+VUBmJguOnOimg5R9WigNvhwEZ2lnvq1VbTcJ4v8m8XLgED2wrSVg596gCDdCDCbRMtwF62q+NriTBNBqeeKTpZDdwYZpOmFzKF60Di8RcLjNBpEBTccO5fQS1kd7ex19v/LrJc9J6+8eXN0q3Y84m/cZR3GXIimWZsd4sMhDEPLEU3YMgzhmOpYzNV+dPS/kuYq0b+E8tvN/IPmtEdzAO7x8AjTfHyixKTv0/I8DvT/w2u2B9JLqHMQfH96vt1YUaF8xMu425thzWHDynIHzjRGUmAaB/yRPAIfG5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBAxRmCLhUkYRpCuFcpnRT/soLnshr3hgpHzEklTJSA=;
 b=rV0zQTElx8jdi00CvZi0qZgq6vE5+NSfrdhIxH9MCIKSAvnGhiFEVJZPAzI2XcmyrBzEm0aC8ezrioTi9qBtRzX4LaBlLmKck0ilyau/GIl6RijTrtVAGX+NThtkvlwWb2W6hbaClBptA2c5b7eiwfT98/NO73ivyfcaa5AlNcI=
Received: from DM6PR11MB4250.namprd11.prod.outlook.com (2603:10b6:5:1df::18)
 by DM6PR11MB2955.namprd11.prod.outlook.com (2603:10b6:5:65::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Wed, 16 Dec
 2020 19:16:42 +0000
Received: from DM6PR11MB4250.namprd11.prod.outlook.com
 ([fe80::b90d:d053:9de6:e5ef]) by DM6PR11MB4250.namprd11.prod.outlook.com
 ([fe80::b90d:d053:9de6:e5ef%4]) with mapi id 15.20.3654.025; Wed, 16 Dec 2020
 19:16:42 +0000
From:   "Ayyathurai, Vijayakannan" <vijayakannan.ayyathurai@intel.com>
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Rob Herring <robh@kernel.org>
CC:     "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
        "tglx@linutronix.de" <tglx@linutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "mgross@linux.intel.com" <mgross@linux.intel.com>,
        "Wan Mohamad, Wan Ahmad Zainie" 
        <wan.ahmad.zainie.wan.mohamad@intel.com>,
        "Raja Subramanian, Lakshmi Bai" 
        <lakshmi.bai.raja.subramanian@intel.com>,
        "Seow, Chen Yong" <chen.yong.seow@intel.com>
Subject: RE: [PATCH v1 1/2] dt-bindings: timer: Add bindings for Intel Keem
 Bay SoC timer
Thread-Topic: [PATCH v1 1/2] dt-bindings: timer: Add bindings for Intel Keem
 Bay SoC timer
Thread-Index: AQHWw8tpQ1ZrwbSvjkC52EJBgdCulKntcliAgAAhbACADJpDYA==
Date:   Wed, 16 Dec 2020 19:16:42 +0000
Message-ID: <DM6PR11MB42501571618F3017BD147F39FBC50@DM6PR11MB4250.namprd11.prod.outlook.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <2938028520edbd0140805a22bdacd0b30c45b2df.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <20201208161247.GA2620425@robh.at.kernel.org>
 <20201208181224.GM4077@smile.fi.intel.com>
In-Reply-To: <20201208181224.GM4077@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [42.106.177.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0182e02-acd2-4fd6-e8c6-08d8a1f71f30
x-ms-traffictypediagnostic: DM6PR11MB2955:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2955E1D9951FA69B912CF23CFBC50@DM6PR11MB2955.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4XYbg9k0YpqnDsKHnyWl1vg41K/MecHkIFX0eyHmjkN9zGre4f1EU5LKLO/iCUdstMkpaadtt9Dm3nrpcie7V/lUmTsjphw+ONiSDkiRRhNDfvIAw6SliwbbFK9JJEauC37GEm8BcMhTdnrINBT6Jt1IUjE30KnNJ52rMRpgqNNIR4VuBqRToWFk2nyekaMFPWiC+OXoRZAils0vl6L+O6z+MZKuMFpeWwedfJ6mpD+a3hPwPe0+USgbA/18Wc1u7cAo2oiuxz3iP8nw89m4vO59ionXgyU5SiYYj3isyP52XOR7XBjLSc0C/MYis9whxhw8Fy3vvply8gtPX1kJZw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4250.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(86362001)(6506007)(110136005)(8936002)(316002)(26005)(55016002)(8676002)(76116006)(478600001)(83380400001)(7696005)(52536014)(186003)(5660300002)(4326008)(66556008)(9686003)(71200400001)(54906003)(64756008)(66446008)(33656002)(66946007)(2906002)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?34RkgeHSNlsVUWFpNCK+dU9phgis3finX8C0uCexKogf1W8URTYIBhGr7ZxD?=
 =?us-ascii?Q?F4Kf5kK1zrtYX3rNiowFaCZfClaXAbP9j8AQGGviXW4Qe82FyKdDHtQVkbSS?=
 =?us-ascii?Q?BuEGvilvClvG4pscLzerhd8fPFYEsxq9dbLcpKNPXzRGO++72aSTkkMsLtGC?=
 =?us-ascii?Q?hXJE69HmktvQSHDDRMNIdzyIgrZGOVmNcEBvO9KemR3s/aRzMLFQWxiGUlpb?=
 =?us-ascii?Q?RopTbJ0iW7lF+zANXiso+fK15j73nBAfOzLFHo2NIMye1CVcCMNmd8snfI1G?=
 =?us-ascii?Q?xqGRajKAIZv1i/XjSq935s/laTK0EytZ7uWmlfFIBgONGiPJvltlxFS11WK0?=
 =?us-ascii?Q?fXd+XGR+4ePAe2CbVPoFsV8vG8dejTeX5RCls3KFpbT29iK0ogRN5j8gpauF?=
 =?us-ascii?Q?CzVUrxB7HJSmY2Bu8NVWiFj8IViW2iTVeMbsKW8Qvjd93OSpSsBKNI249QWw?=
 =?us-ascii?Q?xoecGW3f1Y/2ko94g14n0YTpb3YpOFlP3Hr8UDXZLX1YHPVJyF4E7GNaxmCp?=
 =?us-ascii?Q?Fqzxv7jaRimWUSZrCSaZRKZrYakcz8Q1dx3r0E6Wfbv99hQTrKq6SLAoob60?=
 =?us-ascii?Q?/4a+iPQUQ4TVXJrLaWoEMnQWC8KFEJgHN7oKvVdmnFvkEoO9aWe/nAeWe0iF?=
 =?us-ascii?Q?amlekeWHobRmOOWexZ12ZdjyPY6nAUeOSiUMJ9xgg/TsJCuIUW+IBe7nvPfE?=
 =?us-ascii?Q?9FIj9YMvVcDnuCm9Pebj4S826rVEInPvH0+7U+Jr29+yUkNpdYF558YQbRid?=
 =?us-ascii?Q?6o06Lkwtrl19EAd2wLddO25NT6QflpH2wAe70n9kV+ZYd6XtgcpQFDBSO6rP?=
 =?us-ascii?Q?OW3Ii5mPuk9tEp2xJItgIAD9wDvdJSLIOTs4ekFHI4vbRJ6IDQIzob47zVhK?=
 =?us-ascii?Q?G/g9YunE2BdatMnNvG2PotnpvSjke/12sfPhvfliVxAPdJLYlA1zRZPkGdUB?=
 =?us-ascii?Q?iW4tuICcgFVLUh4GNf88knIl9LKjvH1mKyyuvJ0owfY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4250.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0182e02-acd2-4fd6-e8c6-08d8a1f71f30
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2020 19:16:42.4208
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hFqusLXam8ZmvJEacLBE+QFXfQVGqIeVaUYvNvQfSZ34MdGIZuVN8deesGigh6exblSOewiaosA5V6PXV5q4UV1axFkpDCqyOfrNG9R78dOfapyVqFaCnUmZrs76cokx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2955
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> On Tue, Dec 08, 2020 at 10:12:47AM -0600, Rob Herring wrote:
> > > From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
> > >
> > > Add Device Tree bindings for the Timer IP, which used as clocksource =
and
> > > clockevent in the Intel Keem Bay SoC.
>=20
> ...
>=20
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +    #define KEEM_BAY_A53_TIM
> > > +
> > > +    timer@20330010 {
> > > +        compatible =3D "intel,keembay-timer";
> > > +        reg =3D <0x20330010 0xc>,
> > > +              <0x20331000 0xc>;
> > > +        interrupts =3D <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> > > +        clocks =3D <&scmi_clk KEEM_BAY_A53_TIM>;
> > > +    };
> > > +
> > > +    counter@203300e8 {
> > > +        compatible =3D "intel,keembay-counter";
> > > +        reg =3D <0x203300e8 0xc>,
> > > +              <0x20331000 0xc>;
> >
> > You have overlapping reg regions here. Don't do that. Define the DT
> > in terms of the h/w, not how you want to split things for Linux.
> >
> > It looks like a single h/w block providing multiple functions.
>=20
> Actually a good catch.
>=20
> Perhaps it needs to have a parent device that provides three resources (o=
ne
> common and one per each of two functions) and in the driver it should
> consume
> them accordingly. Though I'm not an expert in DT, does it sound correct f=
rom
> your perspective?
>=20

May I know your feedback for the below way, which Andy suggested.
I will adapt the driver based on this in the next version.

timer@20331000 {
    compatible =3D "intel,keembay-timer";
    reg =3D <20331000 0xc>;
   =20
    gpt@20330010 {
        compatible =3D "intel,keembay-gpt";
        reg =3D <20330010 0xc>;
        interrupts =3D <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
        clocks =3D <&scmi_clk KEEM_BAY_A53_TIM>;
    };

    counter@203300e8 {
        compatible =3D "intel,keembay-counter";
        reg =3D <203300e8 0xc>;
        clocks =3D <&scmi_clk KEEM_BAY_A53_TIM>;
    };
};

Thanks,
Vijay
