Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68996605B50
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 11:37:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiJTJhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 05:37:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbiJTJhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 05:37:47 -0400
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2087.outbound.protection.outlook.com [40.107.102.87])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED0C165523
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 02:37:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RakSZ2pGZSejbDy21lQpb6uDyEzQ9jfy7D22cVSvbERKg9yfnI2otDONus/Vc6pvBJqyORHN69Vyvdu6/pVbvtH9a7iWXOZcZQEvePtTHcGOgzZgPcxHOAMiBe08WIpnJvJJWK06gCN4wbFlgMTk/TSDB0sm3vBiXxoD9J7XV0F3+wHvU+YfLDxpQ8bFPV9g35N7UAwBMo6MRL+YP9VGFSMffVQAkux+UKnjOtD6Wl/rchnmGyyIZ2tibZLXVU93R8s1stEjB6ykfRxT5w0yTG5m9hjuQJG/skCfaNKOkOHVH58tYJ21sMfK4vo1ysSKfIR2poRL6y/KVeW0nJpYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kOm9G41b/sYlEDzNgiUKtoZxKQhx/1TvNY8pXwhQ3Vw=;
 b=AekAhK7u0KSoIHDVP2EEVRty3d65iCYKje+qJ598GxmRZaOxO/3gJNtQ1fsr6763NNKlVKAva55JtYpgprHMN2xFs63d1Ov4m/kIkJS29I/2fuN4+Ouqy7oFdV+V8qnEzhb+2j12iwXc8YXA9mJGYEvZxD2aYy1n7PdkDgaTZxKdbdUuSpihyLaiMdkgLeW6FM2NyJJpXRK6MJrlfQksnX87AG3OsEiSVL60O5AZ7wnYp3VwIb16OPKz4brFe/1wJ02428GgwIomapzkucIGjwUWwYAECm6kWwm80TDyyyCX9GKykecgHiL3T/bRqmSaUHrkQ7/MUV303GavJcgn9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kOm9G41b/sYlEDzNgiUKtoZxKQhx/1TvNY8pXwhQ3Vw=;
 b=gRXjm2a4s9NF1Kb1pJqsGRFpfudMG5jSHYAH9qlBFafH/8pZsKkgg93xXVvbDIa/3J/3ivuQNT8LvEa5tVeaKHtdSddmCdiuVe0X+GJUIEkXKWALNuvaRkHTWVWLEF4qvnzyKoweHRWHRdnRhMcmlgPjoHvg2jvfBQ2nl7URuPM=
Received: from BY5PR12MB4902.namprd12.prod.outlook.com (2603:10b6:a03:1dd::9)
 by PH7PR12MB5596.namprd12.prod.outlook.com (2603:10b6:510:136::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Thu, 20 Oct
 2022 09:37:41 +0000
Received: from BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::282d:edef:88ac:662e]) by BY5PR12MB4902.namprd12.prod.outlook.com
 ([fe80::282d:edef:88ac:662e%8]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 09:37:40 +0000
From:   "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     "git (AMD-Xilinx)" <git@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>
Subject: RE: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx APM
Thread-Topic: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx APM
Thread-Index: AQHY45uhHzsZVfH/MEqlnDiMGcCnpq4Vo+wAgAFgyoA=
Date:   Thu, 20 Oct 2022 09:37:40 +0000
Message-ID: <BY5PR12MB4902C7CB6F85513BCD1BF7B0812A9@BY5PR12MB4902.namprd12.prod.outlook.com>
References: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
 <20221019091713.9285-2-shubhrajyoti.datta@amd.com>
 <f103812b-5eb5-8c19-e379-16b347ea80ce@linaro.org>
In-Reply-To: <f103812b-5eb5-8c19-e379-16b347ea80ce@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2022-10-20T09:37:37Z;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=74423da8-ab21-41d3-8c43-2f3866f6bfcc;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR12MB4902:EE_|PH7PR12MB5596:EE_
x-ms-office365-filtering-correlation-id: 83220054-d08d-4031-6f9d-08dab27ebb57
x-ld-processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SHCcmxPVA52nzCYiu/dl2kuZF+I5vCEsL/2ntrwCaXLnI14PGhFT9Fd3569A2nxLtX0JhMXHGgdPJwHivbjFFQUzULD7UJAVcWhmatqEgaaIhYDYzblsohJqi5Ntc6LR2ZwvJKr6XDwu4/T3Nxzl3Fq3aeOUjBiKLgOsjr8rPZSghUngi6pnoOsqv81WKupGdfwM9jBLHZARkupWQc0siFOGm7SP0WglND3Sj77skGZuf+bdloru0ig0NgPydKwOmlnrVBkrONW4266FGGhINFvfXpiU9zm5fI6Kjxlo4JADc1K+sRMayBCWaSUrjJ6VcYcSF4mjMwRI4ZniAcLq5OJRZQN99tS4g3gFJWn9xG0Ycm7MZI3sZ5csB9oe1DJ+ZkYi9g2y+I05DcQwqMRsjPfGdxYISyww32DzXFqhSWV3VLRzfsyfq6ArgjcEyusXduRmmMGle5N/IJ8+nirhI8R1NU+pLwN71CNbjY8x+vd5BH822hbXuRpI8rxKU2anE8p1e0Bx4sTZk7rHJ5c+DkuHNifS0o2H+jbgu1yUkwPF427VpnSw+KU2VD3CrVD4dcQjZmKwgLd/j98eeQNCtFeY/Mjv0kZX2kw7ko9Vq39Dqc2sBfukl9shYrGsDC04Q7HIEGWKSe40vG95bjL17ZtcP9nMa4ghz2Fq/7V5yyFkLDOBsDcKdYP8BavcEXSI9n/0IRTkDKE/BXMVRFYaEca4v0YsP3baLJc6cvSYvk0T9pqhnxSGokuDq3k2Kv5TkJEuDJKbEw/S3Vvh+plVDK0ZNHHKMOq+fZy5kUIAYy1WHwY1HsySbmwT2oLOhM5i12FpkYxGMbt4Dq4lMxaKBw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR12MB4902.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(366004)(346002)(396003)(376002)(451199015)(33656002)(122000001)(86362001)(2906002)(38100700002)(54906003)(5660300002)(26005)(186003)(71200400001)(38070700005)(83380400001)(110136005)(76116006)(478600001)(7696005)(9686003)(316002)(53546011)(966005)(6506007)(66556008)(66446008)(66946007)(66476007)(45080400002)(55016003)(52536014)(41300700001)(4326008)(64756008)(107886003)(8936002)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9YBFUHu6X2pVk8GD4jRgSEAtIn/1mxlMlATXjOlMi8CYUOD4QMa+UfuYcK/m?=
 =?us-ascii?Q?iu3Qhim3PoAwa4251gKkrk+8evsFJmVsdr9hkrGU5GIfWpV1TCIeuf4gCZjO?=
 =?us-ascii?Q?iohv8bBiO1U4u2jomhN+Dow914KcHfKQQyL9zRxxRoH7DPd/7dkBGbaroh7b?=
 =?us-ascii?Q?vSmQHaSzUaupZ/EIsNOb9nSVOmx/078vXLpcKSD8ba81mEpVwIbmRugV1mVU?=
 =?us-ascii?Q?+oDdI6j7Nb8Hmz/lvj5bGa8DJt/WVR/Zdy3usmgC2OPCkxQ2iNSg9pACoNMu?=
 =?us-ascii?Q?N99Sa00cc8weLmcQRybf3dWWp/77mMq5ldZ2ZFYsS2JaSqa6YGDc9YSKYaI1?=
 =?us-ascii?Q?aysXHgFAnlKiIKbaJ+oQZHQtBcih8A9RL0yF5ENfoaEdGhh0qh6z0/rmKEge?=
 =?us-ascii?Q?+iVaCsfHggpi3pJPjUKy61skwD+045vWbaOK9vCNF3O+80fA7DRQMpv2QW8n?=
 =?us-ascii?Q?raB9qHrIYUrEIs+0MsyaL0rxLEn2jbUvfVpSVIA6IM97izeXzekU+GLpOkA0?=
 =?us-ascii?Q?LW83anZYcJ8FOcpK4zSihhb1HXx9/OjQQOmcCk5DmivWpibb6NSJ9onIAWIw?=
 =?us-ascii?Q?+qD1fYv6K1IgygaVwU9E9dqYexYRVwV9MXn5oMuPtZnkP+zAo2vw+qMMlmtw?=
 =?us-ascii?Q?rFncH/HHuZP+PlqCkWCLaiiC6ZmLk1wuesoBQxwZMk9bcrfrDVBzGmG+k9mq?=
 =?us-ascii?Q?46F96542NOw+9zci3OKPTNCUE64QKv3b5RAEC/0V8wk9jWVh4zzRbu0PifGC?=
 =?us-ascii?Q?fiMPf4h78xZ8TUQz7uwMkULbfWOP6TfXAjRLS4GMRgO2lp1Gq8RI/fvrfokh?=
 =?us-ascii?Q?CE1PbyEpfVTx3/4pYNYslPUI2a08JgkyAWI51pzjITWEnBkFFgrTxmTVjZbK?=
 =?us-ascii?Q?dcxcVGSQpRdDS7aReK+TtylJDlDk8fY+MqFxi0kOjaZEbjBk3mQwUulu5nK1?=
 =?us-ascii?Q?mMwnDMEeQzXa7Dmii6VR09CSczS2NALQdOswntjQCsYkTOIBT+t0FEgdLlie?=
 =?us-ascii?Q?qqbOQe7Plz3c3UBhnU7DbeixD4E6y1ehd+AyNxGJ1/PHdRZi7UAR81q/SZae?=
 =?us-ascii?Q?B0mcRThF0mRoxhK0R61D4G1rJU8TDuTBJyoxSvTaQ8rGMX6zkstFz0XISbiV?=
 =?us-ascii?Q?vfka93bjzCr5gaSX7jIYQSrBKH1Z0NQ/RQjzp3dYh2mD9vX/qUJ58XmT0SBU?=
 =?us-ascii?Q?CpBYt0nmnCwGsIGPJj6DH0u7zIHtr++S2HZUhdDCSbB41e8kMDmUbGqojmgJ?=
 =?us-ascii?Q?/y8WTI7W6aTUVhTfv9PvlHq5kzRmXgQxbMkUFwlp4JWwPyVjbN9jy7Sz/DvH?=
 =?us-ascii?Q?g0bnxU2PgRXgtnMV06v7CBQOD+Duu2RqHZ+j72JBLsdamycc5RrpNay8L2Dc?=
 =?us-ascii?Q?/GLLYRfK9fvwsX4eXiczNwMm7XGTnhL5GA+nwuj1HC6mnzbqV/k9HvxcCFli?=
 =?us-ascii?Q?Jp1WNSRG3xcbFQC4jJmnRr8CFfwkCER96oJY+soYaZK042PPT3k0dOfet14G?=
 =?us-ascii?Q?SfDGJl18k7nX9m3VC95VSQZGoTmJ5gqxzbo5W7jlWXKYS6V18NR4wFtnDiJI?=
 =?us-ascii?Q?obK4soBGYXsMl7I5d9Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4902.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83220054-d08d-4031-6f9d-08dab27ebb57
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 09:37:40.4415
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XeZbviMdUAhAJRxE5pDX29W5labXUyTbcBbk4iXTcNWZAKZyyxxO0DjrzF/pDBrBvIgVN/QpvK8aqgKOsHDpVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5596
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[AMD Official Use Only - General]



> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Wednesday, October 19, 2022 5:53 PM
> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>; linux-arm-
> kernel@lists.infradead.org
> Cc: git (AMD-Xilinx) <git@amd.com>; devicetree@vger.kernel.org;
> will@kernel.org; mark.rutland@arm.com; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; michal.simek@xilinx.com
> Subject: Re: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx A=
PM
>=20
> Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
>=20
>=20
> On 19/10/2022 05:17, Shubhrajyoti Datta wrote:
> > The LogiCORE IP AXI Performance Monitor core enables AXI system
> > performance measurement for multiple slots (AXI4/AXI3/
> > AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for xilinx
> > APM.
>=20
> Subject:
> Drop redundant "bindings" and add missing prefix, so:
>=20
> dt-bindings: perf: Add Xilinx APM
Will update.
>=20
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> > ---
> >
> > Changes in v1:
>=20
> This should be then a v2.
Earlier one was an RFC so I had made it v1.

>=20
> >  - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
> > and xlnx,enable-event-count
> > - Update the file name
> > - use generic node name pmu
> >
> >  .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133
> > ++++++++++++++++++
> >  1 file changed, 133 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
> > b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
> > new file mode 100644
> > index 000000000000..bd3a9dbc1184
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yam
> > +++ l
> > @@ -0,0 +1,133 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause %YAML 1.2
> > +---
> > +$id:
> >
> +https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevi
> > +cetree.org%2Fschemas%2Fperf%2Fxlnx%2Caxi-perf-
> monitor.yaml%23&amp;dat
> >
> +a=3D05%7C01%7Cshubhrajyoti.datta%40amd.com%7C15905dd06b164f7de3d
> 508dab1
> >
> +ccb630%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C638017790
> 04335677
> >
> +2%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMz
> IiLCJBTiI
> >
> +6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DzOrK%2FG
> dlP87S%2FTp
> > +XqdnrNSk0PyJgWRJYU4EZHgJtqMA%3D&amp;reserved=3D0
> > +$schema:
> >
> +https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevi
> > +cetree.org%2Fmeta-
> schemas%2Fcore.yaml%23&amp;data=3D05%7C01%7Cshubhrajy
> >
> +oti.datta%40amd.com%7C15905dd06b164f7de3d508dab1ccb630%7C3dd89
> 61fe488
> >
> +4e608e11a82d994e183d%7C0%7C0%7C638017790043356772%7CUnknown
> %7CTWFpbGZ
> >
> +sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6
> Mn0%
> >
> +3D%7C3000%7C%7C%7C&amp;sdata=3DVl1TpXVHyuS6YmnSP%2BKPOO8D5ap
> 0y9jtV52Q9s
> > +%2F1pvQ%3D&amp;reserved=3D0
> > +
> > +title: Xilinx Axi Performance Monitor
> > +
> > +maintainers:
> > +  - Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: xlnx,axi-perf-monitor
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
> > +    description:
> > +      Enables the profile mode. Event counting in profile mode consist=
s of a
> > +      fixed number of accumulators for each AXI4/AXI3/AXI4-Lite slot. =
All the
> > +      events that can be counted are detected and given to the accumul=
ator
> > +      which calculates the aggregate value. There is no selection of e=
vents,
> > +      and in this mode, event counting is done only on AXI4/AXI3/AXI4-=
Lite
> > +      monitor slots.
> > +    type: boolean
> > +
> > +  xlnx,enable-trace:
> > +    description:
> > +      Enables trace mode. In trace mode, the APM provides event loggin=
g in
> a
> > +      reduced dynamic configuration. It captures the specified AXI eve=
nts,
> > +      external events and the time stamp difference between two succes=
sive
> > +      events into the streaming FIFO. The selection of events to be ca=
ptured
> > +      is set through parameter configuration. Streaming agents are not
> > +      supported in trace mode.
> > +    type: boolean
>=20
> Both enable profile and enable trace do not look like hardware properties=
,
> but rather runtime features. In what use case this enabling trace or prof=
ile
> should be a property of a hardware?
>=20
The hardware being on FPGA is configurable what capabilities it will have.
Once chosen to have say the trace it will have tracing capabilities else it=
 will not have.

> > +
> > +  xlnx,num-monitor-slots:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Number of monitor slots.
> > +    minimum: 1
> > +    maximum: 8
> > +
> > +  xlnx,enable-event-count:
> > +    description:
> > +      Enable event count.
>=20
> The same
>=20
> > +    type: boolean
> > +
> > +  xlnx,enable-event-log:
> > +    type: boolean
> > +    description:
> > +      Enable event log.
>=20
> The same
Similarly whether event logging capabilities will be there in the hardware =
is configurable.
If enabled then it have event logging capabilities.

>=20
> > +
> > +  xlnx,have-sampled-metric-cnt:
> > +    type: boolean
> > +    description:
> > +      Sampled metric counters enabled in APM.
> > +
> > +  xlnx,metric-count-width:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [32, 64]
>=20
> This is a friendly reminder during the review process.
>=20
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all reques=
ted
> changes or keep discussing them.
>=20
I tried to address the comments in=20
https://lore.kernel.org/linux-arm-kernel/BY5PR12MB4902474D74155E57BF5D7B9C8=
14F9@BY5PR12MB4902.namprd12.prod.outlook.com/

I thought I have implemented all the comments.  Let me know if I missed som=
ething.

Thanks and Regards,
Shubhrajyoti
> Thank you.
>=20
> Best regards,
> Krzysztof
