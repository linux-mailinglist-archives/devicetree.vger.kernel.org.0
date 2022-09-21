Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 347E15BFEF3
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 15:30:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbiIUNaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 09:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbiIUNav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 09:30:51 -0400
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2044.outbound.protection.outlook.com [40.107.102.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 616F58A1F9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 06:30:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwcXuL1auxMsSyPkGYIceuBay4X2ADHKCwTqrmYGk15qSrnBlsSKBVksfQ/2Nv5VyNBpvTKla0fNxNCgiE3C8w4Nnzam3uol4Aw/849G1v06qRnJPBBkpi2DP+XHnfldK37PR4ViDIsedDPiU+r92s2rWIqrI2+75KZNkzNbieB3DdUZmv9TZeM4WMnK8z2/dQQdNE2vil6jR7btcJVBpTuMYUrhdEnHrwCrgE5AgowGg1qBB+LFf34Hy7zN2Z3dkZfblDqF2pGFvsY2stnN69iCR+WUipKDOqizSX4yZXDAMLXeJ93wK5gsJMkesJmMwDwHNkHqjommfZSk8VcYyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBS2U24AS4eovomlMMh/naRyrrMyx5iT8qK94HUbM6s=;
 b=BToJV8lYSz3IHZnXWO6NDX+0RiyyG1N4+E3CoNnG4SPSf0Lv6e/QcqveQ+mhve2PnwVkj9gEGo0IkKgqA+KIyGJmvlQygG5oqweFU2yEO0+mA2cr+c1Jb2Hb9QPeHXabn92rEmUH2R9h5LCrtLpgJGoHfMquvaLo9QZCaYx0T7N4Z8FsA7jQ7Xa7NWGk94GZfrLd9kkGvkSCtDVLu/yCmfe7dM5vYZJxEzCfbmXUAX6nxBxssv8UgC3b6/hcnE1hYSP9JfoW1S2LLxjui+peHMyT5JHDdBLKb4jGpKY/BvarymYGgYLWXyfs5S1NFJlKmtJw5UKDkN7ItYTEOLCfdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nBS2U24AS4eovomlMMh/naRyrrMyx5iT8qK94HUbM6s=;
 b=u3Zk/nwKfID8g5gDWXdPt/n/1y9q4504NIngJyWtsPquGlSwzopQp05CW7OlaHXid9K/5k/aJOn7vtNgLbyKTbtt6VDOJ20sDyI0xPpDFwkpPjcVLA6PP/KcFHo93z3QQSgsQeEK30py0MPuEsoSG1rflevDj4x6+eg6ueaMdTs=
Received: from BY5PR12MB4902.namprd12.prod.outlook.com (2603:10b6:a03:1dd::9)
 by LV2PR12MB5846.namprd12.prod.outlook.com (2603:10b6:408:175::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Wed, 21 Sep
 2022 13:30:44 +0000
Received: from BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::2ddc:85fc:e44e:93e2]) by BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::2ddc:85fc:e44e:93e2%5]) with mapi id 15.20.5632.018; Wed, 21 Sep 2022
 13:30:44 +0000
From:   "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     "git (AMD-Xilinx)" <git@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "will@kernel.org" <will@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
Subject: RE: [RFC PATCH 1/2] dt-bindings: Add the binding doc for xilinx APM
Thread-Topic: [RFC PATCH 1/2] dt-bindings: Add the binding doc for xilinx APM
Thread-Index: AQHYzZjwKLlwV/kGVEG+IW0E/+Jmi63p4PVQ
Date:   Wed, 21 Sep 2022 13:30:43 +0000
Message-ID: <BY5PR12MB4902474D74155E57BF5D7B9C814F9@BY5PR12MB4902.namprd12.prod.outlook.com>
References: <20220921080623.22077-1-shubhrajyoti.datta@amd.com>
 <20220921080623.22077-2-shubhrajyoti.datta@amd.com>
 <08a55e06-498d-07e5-174a-ef3ca0f1a190@linaro.org>
In-Reply-To: <08a55e06-498d-07e5-174a-ef3ca0f1a190@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2022-09-21T13:30:41Z;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=44a01b9f-ef49-4656-9e05-1461749c49cb;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR12MB4902:EE_|LV2PR12MB5846:EE_
x-ms-office365-filtering-correlation-id: 50859c72-52bd-4a6e-b9fe-08da9bd57c2d
x-ld-processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6/+ODRw7AEJmHa9Qa3V3mO3jnPiyE8nkcSlCT9s3ipLiPGSd+9B+yWQd2H7fi7bxCvXYbTZ8rvZHDqvsntl9qJ8+9iY/M7NY3H+0hE2jh+FBRek0Cm9yotSk/iwPKTjw4JXQrbDIErGAnBRgsBy6HuGBaqFEcNjpvCwIl+ikCxfFU4ybOiJVwc86kERxLYJ06+BMCs40E2Xr58h0wO818jJvdRWchJxgjPMTUcaqNbmUTunEEtGqmGuGkBkoV9p+BgkvTogAWejCej48/GQDPWLqq97HOQOXiHl2zQzIqLzcWmfNygINAd++Zd6je3fEYaPZWGFHwczYUL2Am9I03EExORcIbmpl4h0EYQzjQ8Sn5IetQaO/cZEY7McLqguCZvcFn7IZEzn4G2lwlVjfTtdjrQBIYFI0V30gjWZX75xwKlAtn3NQXFwXqHbY/SYzAEdoB09LLRFthrgtoDzrN94coAbGjZVrX/wJsCdGm0Fio/NG3qmGNUVQ3yqPX67IQ1jl2Bs+DN4C9ESvvF+S/4mUqOCTu/lGUm/2JxMZJqaTJlE7iue4ZYc9c13QmcVTuZypEwxCsN2RD7uc4KgslHRE4dlkG7XsmMGcaj33VYCNKkpPWjQnWqDfRjrav6xTCevZWSHEVT+gnS2Jlifl388il35pj5ONlJlGIx75864BBYSsn9oWR7sC/MtkINhTk0x0V+OdVO4dz7ApSNrjkVkor7DD0hOxYaW8UDMbaCDiqDk3FtN53MPBM71E2jJ33Ex38wkkJq6XdFtpGCKu04fNhtz/u26azhYBsA4wzV4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR12MB4902.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199015)(316002)(38070700005)(110136005)(2906002)(86362001)(54906003)(83380400001)(7696005)(53546011)(6506007)(41300700001)(122000001)(38100700002)(33656002)(186003)(55016003)(71200400001)(478600001)(9686003)(26005)(45080400002)(5660300002)(76116006)(66476007)(66556008)(66446008)(64756008)(4326008)(66946007)(8936002)(8676002)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a8nNM2T7eDw6cZdkqkZQkaIoyXoxOBbJ87WTv4rjg40GOG9sQ9EHvRsjjM70?=
 =?us-ascii?Q?6wy4UJ4Sv9GDQTT9Z8VEDvSE1Bns/sDaZNz4csfPUv5zfZlswVNrb5iXcnP8?=
 =?us-ascii?Q?DCrUfi8Q38kp9TvRm+Ftw1Iaj6REU1HMf4dSxzfebPfLqNM/LLN9Pxep3dmb?=
 =?us-ascii?Q?4j79Pl1M/IchDngEZdD6x53aXsX5+WqGJ+nNDYb/eqv9rhalfmz03CLARASQ?=
 =?us-ascii?Q?nddyIVTt2+PxpaBnTe9KhciIFAFmhW4UuOJCwUVZ07JrGPWS1jXMwW8Rp0+v?=
 =?us-ascii?Q?pnzy2HUmkt2x9bhMXn03n/2cI4oQVmYETcefZTjNkq5mcb5qGP5RSZXaaiiG?=
 =?us-ascii?Q?z72tSB5TzhjrXgbybJEXW7TuIEYuhkRAPStpfZ07f9sUWzWC1DjRgHvMiGAA?=
 =?us-ascii?Q?BLhZAdJsPt806LAyJ2Y9RksWVIZ/q449Mw61lWao+D0YkdpakmertPUt7ThO?=
 =?us-ascii?Q?1H31KNWvhl2KdjJA00oB+400q0Iaea6leqsjaE6/CInqztke4RDvghaMB7FX?=
 =?us-ascii?Q?1uGJOp2xtxbRPFTUMCQDbMYZwbzODtNl9uzyAgggSqF33xcEKX01ryGG6lzQ?=
 =?us-ascii?Q?CotmTQe49H4jEgG9wy20hxUGbf/dtdAJZKnwrM1Dwc2xM4whLAOusSW9e/6P?=
 =?us-ascii?Q?Iviqdi8IwRQBJQjwwyUwFMVHQVBwn6Ff4/S73HcSOzFlYN9+TFhu78dPoFe0?=
 =?us-ascii?Q?V2RVNKV2sKnpq+/phGufB3vuLlq7ZLYpRmAXFSclnzGUyocBKS9t4PiBQQWx?=
 =?us-ascii?Q?MvcjiSnbbsmyotPjXh9x9od4T6Ozf40u5mYAcsZUza+PtfKaWQ96Te+t1b0k?=
 =?us-ascii?Q?DndxBB7Rkl+lFOHZcF6/rw2dkGY0QsjJdHtoap171hD6dWmx7EkrnKd/CtNq?=
 =?us-ascii?Q?fYjva4hz7k4xFZlRLS+phizAcubUHOIXA57/JNi+r2s3ZW93pLkM7Kz1bM5J?=
 =?us-ascii?Q?eg1tAsXEy9QN0ZkhNDRE+vjJafe2feu39Wj4M5n3SlcL9HT6uUp9h2pbnuS4?=
 =?us-ascii?Q?t4u03OuKKUIucCdIOjiwxwLmOzj1jKpnikqfJi2fHaSOP7LeH0uur9bIcGgA?=
 =?us-ascii?Q?UC2SL9dEx8JP4Jwfm5GZBarge5tbadpTRdfvvv9rXNEJwhO0Hdk8B8BCOl9I?=
 =?us-ascii?Q?BWG8zVpTOPihtRy4CvD6vPwlxueG7xdIYrTsmxHYucn9TktW+WjSYKpdcV5C?=
 =?us-ascii?Q?e9tXVPFzaESlALfl5i3OlL0wfmguAKB+4aQRXup1MPWw9qdxpNOw5ebq1H4a?=
 =?us-ascii?Q?/sV2nN2ErJoIUl5Fpkl8whcHDMav+BuVIkn30dVFHOOpbjdrd3JaAvNm1T7D?=
 =?us-ascii?Q?gpSVTVxEICJOu16vacUz6Z4F+W2koa2Xc+q+j7ynq9Emt1te9elo2jgjofDR?=
 =?us-ascii?Q?LM0CR8WZpRPktbOFdSF3DajFgZEExd1wwR4AS6nd0db+fJXzfJSpUjOHPMjK?=
 =?us-ascii?Q?mfWB60kzZ/cJaGeoW+6+KicQpSxXaDLMqBbL92fmTdJF0C8BgagyTexcsGtY?=
 =?us-ascii?Q?EkSrILjfnY7IHdO6JbwhiWSUI2k6wwQ13N3eZQAMJeh7ZpknarrrVpHeu9Bg?=
 =?us-ascii?Q?zSVRM/pGPuqJZYxYkfk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4902.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50859c72-52bd-4a6e-b9fe-08da9bd57c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 13:30:43.9901
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Yq4n16UZ3dIrEIfHgcmBIfGH0QSC3rdSxHkiV0oqNWT+oySxhdbYJqsqXM0IOSV6Tqw3J9Agk+Bc13pRXKAmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5846
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[AMD Official Use Only - General]



> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Wednesday, September 21, 2022 2:33 PM
> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>; linux-arm-
> kernel@lists.infradead.org
> Cc: git (AMD-Xilinx) <git@amd.com>; devicetree@vger.kernel.org;
> michal.simek@xilinx.com; mark.rutland@arm.com; will@kernel.org;
> robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org
> Subject: Re: [RFC PATCH 1/2] dt-bindings: Add the binding doc for xilinx =
APM
>=20
> Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
>=20
>=20
> On 21/09/2022 10:06, Shubhrajyoti Datta wrote:
> > The LogiCORE(tm) IP AXI Performance Monitor core enables AXI system
> > performance measurement for multiple slots (AXI4/AXI3/AXI4-Stream/
> > AXI4-Lite) activity. Add the devicetree binding for xilinx APM.
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> > ---
> >  .../bindings/perf/xlnx-axi-perf-monitor.yaml  | 137
> > ++++++++++++++++++
> >  1 file changed, 137 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
> > b/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
> > new file mode 100644
> > index 000000000000..0b8ba96aa867
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/perf/xlnx-axi-perf-
> monitor.yam
> > +++ l
>=20
> Filename based on compatible (the same as compatible).
>=20
> > @@ -0,0 +1,137 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause %YAML 1.2
> > +---
> > +$id:
> >
> +https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevi
> > +cetree.org%2Fschemas%2Fperf%2Fxilinx-
> apm.yaml%23&amp;data=3D05%7C01%7Cs
> >
> +hubhrajyoti.datta%40amd.com%7Cd56ba4a2db68463526ae08da9bb0115b%
> 7C3dd8
> >
> +961fe4884e608e11a82d994e183d%7C0%7C0%7C637993477764913369%7CUn
> known%7
> >
> +CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haW
> wiLCJX
> >
> +VCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DwSUA%2B3vm%2FlClUxr2
> wqrZwHIvXUWQ
> > +wPlqE8qzEJolS38%3D&amp;reserved=3D0
> > +$schema:
> >
> +https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevi
> > +cetree.org%2Fmeta-
> schemas%2Fcore.yaml%23&amp;data=3D05%7C01%7Cshubhrajy
> >
> +oti.datta%40amd.com%7Cd56ba4a2db68463526ae08da9bb0115b%7C3dd89
> 61fe488
> >
> +4e608e11a82d994e183d%7C0%7C0%7C637993477764913369%7CUnknown%
> 7CTWFpbGZ
> >
> +sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6
> Mn0%
> >
> +3D%7C3000%7C%7C%7C&amp;sdata=3DC%2B2tuHCF6%2FtKg0uL3WtA9Fgp0y
> tr2z5Xglr4
> > +YZAvmjo%3D&amp;reserved=3D0
> > +
> > +title: Xilinx Axi Performance Monitor device tree bindings
>=20
> Drop "device tree bindings".
Will fix in next version.

>=20
> > +
> > +maintainers:
> > +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > +
> > +properties:
> > +  compatible:
> > +    items:
>=20
> You have one item, so no "items".

Will update=20
>=20
> > +      - enum:
> > +          - xlnx,axi-perf-monitor
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  xlnx,enable-profile:
> > +    allOf:
>=20
> No need for allOf.

Will update.

>=20
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [0, 1]
>=20
> This is boolean.
>=20
> > +    description:
> > +      Enables the profile mode.
>=20
> Explain what is "profile mode".
>=20
> > +    maxItems: 1
> > +
> > +  xlnx,enable-trace:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [0, 1]
>=20
> Ditto
>=20
> > +    description:
> > +      Enables trace mode.
>=20
> Ditto
>=20
> > +    maxItems: 1
> > +
> > +  xlnx,num-monitor-slots:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 1
> > +      - maximum: 8
>=20
> No allOf.
>=20
Will update.

>=20
> All of such comments apply everywhere.
>=20
> > +    description:
> > +      Number of monitor slots.
> > +
> > +  xlnx,enable-event-count:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [0, 1]
>=20
> Boolean
Will update
>=20
> > +    description:
> > +      Enable event count.
> > +
> > +  xlnx,enable-event-log:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [0, 1]
>=20
> Boolean

Will change.
>=20
>=20
> > +    description:
> > +      Enable event log.
> > +
> > +  xlnx,have-sampled-metric-cnt:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Sampled metric counters enabled in APM.
>=20
> Description says: boolean
>=20
> > +
> > +  xlnx,metric-count-width:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [32, 64]
> > +    description:
> > +      Metric Counter width.
> > +
> > +  xlnx,metric-count-scale:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [1, 2, 4, 8]
> > +    description:
> > +      Metric Counter scale factor.
> > +
> > +  xlnx,num-of-counters:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Number of counters in APM.
> > +
> > +  xlnx,metrics-sample-count-width:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [32, 64]
> > +    description:
> > +      Sampled metric counter width.
> > +
> > +  xlnx,global-count-width:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [32, 64]
> > +    description:
> > +      Global Clock counter width.
> > +
> > +  xlnx,id-filter-32bit:
> > +    description: APM is in 32-bit mode.
> > +    type: boolean
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - interrupts
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    apm@44a00000 {
>=20
> Generic node names: pmu

Will update
>=20
