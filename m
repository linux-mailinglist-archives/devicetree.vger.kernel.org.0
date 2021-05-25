Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF4C39097A
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 21:13:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232245AbhEYTOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 15:14:49 -0400
Received: from mail-db8eur05on2070.outbound.protection.outlook.com ([40.107.20.70]:16865
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230029AbhEYTOt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 May 2021 15:14:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5xQqKzxP79zasLtJmWFp1entKdgzYvJ00Wc+jxBW3tc0JK0GzcXW6ZcbCcPfEcxfueEY33WIm1dSNXDy24SboHrX86AOg1zIHHkUZAYfBCRD80A0daIwoqC8VLDs4giEMtQCPngM/nNBpUti1Q8Q2PmDyUGS8xtV5M/oS1GbykzXNfksNQCLYlPgzKWVVYjZOz0ox3mzFrh01+apMEenxMpJT+OuQjso8WB4J7KZ1DBa251T6oQtbd+LPsJkuWxXV4LFGK9Ys91b2iv1x5Myv3wEuut0gKAIwPX//TEwAYSppnJOVU7t3bta8H6tDGG7dn/sFmPcmiFA5lEuitMOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NPDOhN6d7zZ8GxiDG4c58u0u/4rz/0uLxLJnlkb9HyY=;
 b=gLB8+u6au84MpxSFn6GqHTHow86JoN3PBuMUo8wF22kXPtjIzkgj7c4u2WkTeItcIXcN2hraSUJO6MQYgjg1Xp/03WtPn6Sh3XnItSGj7x1g/Wx4SOz5RCeCdOX4q07jXsNGcl7BZMpxuNH6Dfj3afgr+0F4GlWWOUOatMlfQELQN2vz6+Ngq5toTH/ies3bDxHOnKey3My5wFd9pvND27W9rOHATpsKwPLiCDATaTWUi4ARWkI1bRbRAp0uFj7LLGMYRbjg8aBjD7V+Lp7QfLS8QqQLWN2m6liuZTHYFsemE7l+ZaXjGPWMP7BqWANu00TN0MRZ0ecFzFYmGYRcJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NPDOhN6d7zZ8GxiDG4c58u0u/4rz/0uLxLJnlkb9HyY=;
 b=IPTrA9S0wrgBDGUBJvRyTI2llmY75wGrK00FszHnlRO6CzIStoO4XaKQGFLByf0m4nnsiGt/LgOTemmUFDernpHtDebsRuvZ2kp8qKsqoeP9g+7PiBv9KFdLyCRSQLbeCyuVAGu0zcO1rcfNMccixpK7/KRyWRieL/k4Q4yHCLA=
Authentication-Results: geanix.com; dkim=none (message not signed)
 header.d=none;geanix.com; dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8781.eurprd04.prod.outlook.com (2603:10a6:102:20c::22)
 by PAXPR04MB8718.eurprd04.prod.outlook.com (2603:10a6:102:21d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.25; Tue, 25 May
 2021 19:13:17 +0000
Received: from PAXPR04MB8781.eurprd04.prod.outlook.com
 ([fe80::4190:134f:674f:9ee3]) by PAXPR04MB8781.eurprd04.prod.outlook.com
 ([fe80::4190:134f:674f:9ee3%7]) with mapi id 15.20.4150.027; Tue, 25 May 2021
 19:13:17 +0000
Date:   Tue, 25 May 2021 14:13:08 -0500
From:   Han Xu <han.xu@nxp.com>
To:     Sean Nyekjaer <sean@geanix.com>
Cc:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] mtd: nand: raw: gpmi: new bch geometry settings
Message-ID: <20210525191308.jlxqvy7khptbuj4z@umbrella>
References: <20210522205136.19465-1-han.xu@nxp.com>
 <13c975bc-b37b-8708-9ac7-acdc62ef7108@geanix.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13c975bc-b37b-8708-9ac7-acdc62ef7108@geanix.com>
User-Agent: NeoMutt/20171215
X-Originating-IP: [70.112.23.252]
X-ClientProxiedBy: SN1PR12CA0105.namprd12.prod.outlook.com
 (2603:10b6:802:21::40) To PAXPR04MB8781.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (70.112.23.252) by SN1PR12CA0105.namprd12.prod.outlook.com (2603:10b6:802:21::40) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend Transport; Tue, 25 May 2021 19:13:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8b6e40bf-34fc-40a5-5217-08d91fb126d6
X-MS-TrafficTypeDiagnostic: PAXPR04MB8718:
X-Microsoft-Antispam-PRVS: <PAXPR04MB8718C60CB5D46A77B77B970A97259@PAXPR04MB8718.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wNP8ds2i3pULPQ4C8ycmf55CnVeM0Mi7NIH6I21bfQQZ/D5Me5Qrf5hpHsK07UB+6VzdY7cbRRqOPHbKu8sXkS6ePZU8X/GNfcbY28Z5Dtlvbs7DeIpMNFOgkg/pkhJpHTMB9RRE3/BMSUEraNUE9nXjb0DQLt4GeLqfBQU5VTT8wLDo87j3MfVyFxf2QvO26+maqpxJRHyPR7vdly/V6i6XJb/WYhptVCy+gFnpla/3FfnbuB6q8G8sjy+Pbmycb54xymC8itX4l5VKTdx9dQIwr5hiT0CVhCQAapqcVc/DXRkJAq1Po6S4phfcMwEm2ecBwbGrYIwC/0vUzvPHNDV+86iOD/0Y9o/Wyr6CHYBfAs1itLBiwk4MiyTIY/+Jx1oGB605gUCYHUlmHQPy2GU7xAY4uQ+2jhypjGXbdDrzg18h6htJVX4sRhPYHFikonbjCJtyIUSOlRZCG9v3o5eF/AdmFGWCKkwUfWtxlRlhDE0v5Ivt/UDMIAEZ8FomUFOx5A/Oe7E4ANmut05JDQyuivi9Y3uevx6yQVtP9DVybhUkpGiBHDFIyFn0o+KUoY7d8PchLA4deLakZthDChysK9WjsjYlgG/XPbMlXLJG1ftlDUhCXzWUyX6LVbfgzaQkQf6zmL22TP+Wf/oS7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8781.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(7916004)(366004)(4326008)(6666004)(26005)(66946007)(66476007)(44832011)(66556008)(8936002)(1076003)(6916009)(38350700002)(38100700002)(52116002)(86362001)(186003)(5660300002)(16526019)(8676002)(33716001)(2906002)(956004)(83380400001)(6486002)(6496006)(498600001)(9686003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?yFi6pdigfAnCotxDmRapi1lBniZHqTU1ADtuSWgerDn6Ea4UtbJLpLlk3O0m?=
 =?us-ascii?Q?YopeeX0oe1/VJP1TDCnaioEZ+JGYvs4jGtmpt88z/wbV8KPEyuqs5iCwGAPu?=
 =?us-ascii?Q?M/RYSCGL5Cm3rvRnX0eTF8slfmqSdsF0UHfJ+wtbDTYY6B6+y3LiAadZBsc7?=
 =?us-ascii?Q?QnpkvSZPLecmHzSRZIP5AdU2Gyr3vq+JExsEeO0T24XZrMpQulFG3jmKFb8p?=
 =?us-ascii?Q?Piv12v2PNFuy0jsB9JcaWEsAz0cc1NxyKNctUTE/06N6NdxQ3DSttAWjj5Bq?=
 =?us-ascii?Q?rJNwRM8P2HlyiTXzbuH8feZCXLlU/c8K/V4ajeHDDl2ZvaRCEv8MJnOvSey4?=
 =?us-ascii?Q?t69KWz2tHGh8fvsnOtko7rKhYHyblVVN92ye37XPKTxSqSb6ElxibtcQEgtn?=
 =?us-ascii?Q?8GjYBJO6P28M+Ti0YqGiP+GqqiG61IdmvKGe7hbkJWCRkaV760Pq2VwpQicu?=
 =?us-ascii?Q?xrHVxSQAOK70h0qplqkOAqh7dzrH6IWdEqGadBHyUZOXKB4P7H/yleaFqVD5?=
 =?us-ascii?Q?8EecJZXZAyV37fyFLT72BB37XFFNyJmQyU67ilpiwQP4ExSnA5UwHjRnQjgO?=
 =?us-ascii?Q?33hg0FDOeTclQAEdDb5gJjTwCBYrmaLtyn+nUYAPlyo0tlRUWSut61VhZYP7?=
 =?us-ascii?Q?9CoSkPnVPrrflOT2wkskret4ntDu+36r/YlshgtqLXjSHXcZ/xuEzvCtnHGS?=
 =?us-ascii?Q?CkokhHOiOsRr+oAIEMIYTZ5bumdtZCHyC+CIQTr6y7xAtN0c3xuqHnOtK4P6?=
 =?us-ascii?Q?T8740ydI+XX2ZVJfU6g3IotjscCVYR1QOq/otIs9SFcmEij7gRjiFfVLg3Ao?=
 =?us-ascii?Q?oNlCEFP+6TaP8tkLvRS8efNlzeNslE0z2hf5LGYk/XdAUXHRIVNY81jyuD+E?=
 =?us-ascii?Q?RWZ3JEHYMqh1PmM0IRReihgcjDVKq3AS1Sef/P25bJRYaa49h1PbLZIDK1aw?=
 =?us-ascii?Q?Y+NZTrqfmgn9cauIY9nT0wvKuM/r0C4Qpocvn5MpNihLseoKW+nIEKlTqyjh?=
 =?us-ascii?Q?XP0jIrB0QaqUDeNHU3rYCvoga/GUeKzuDC0GzBLzOEJEMM+cDJeVdqNlYcOS?=
 =?us-ascii?Q?BGeZXDrd5d0LSy/zgCFUq0I1OwtmVDTsHrD+JQyeTjnk+4rP0C8f5VmvIE9z?=
 =?us-ascii?Q?gmInFEtPovMJXPMwCZ2JRYdsUT4ML2Amu6Hq2J8Dj4AubdH4D2HdHlZqBULl?=
 =?us-ascii?Q?Qh8SDY4tfp1QGEMupvwanXWO+cKN4FCI0W/HjbjAvVhL11zSjGNaEu387H6l?=
 =?us-ascii?Q?r3pC1QkkPd/kn6ETRq2QnQchq/ujOKJpLTSptBg1kGnBoATNX3hudmQs6/Zr?=
 =?us-ascii?Q?MiFMm2mgKQypGE8rv6z9UP3w?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b6e40bf-34fc-40a5-5217-08d91fb126d6
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8781.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2021 19:13:17.3725
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oI8bOcxK6WFAJYGnawNUzNY+DQ3FYZWp8BkWBoLr8UtqrLxgWI8tUMW3Z9lOSSs0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8718
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/05/23 07:44PM, Sean Nyekjaer wrote:
> On 22/05/2021 22.51, Han Xu wrote:
> > The code change updates the gpmi driver bch geometry settings, the NAND
> > chips required minimum ecc strength and step size will be the default
> > value. It also proposes a new way to set bch geometry for large oob NAND
> > and provides an option to keep the legacy bch geometry setting for
> > backward compatibility.
> 
> This will break all existing devicetree's. (this happened to us with the same style already merged u-boot patch)
> 
> > 
> > - For the legacy bch geometry settings
> > The driver uses legacy bch geometry settings if explicitly enabled it in
> > DT with fsl, legacy-bch-geometry flag, or the NAND chips are too old
> > that do NOT provide any required ecc info.
> 
> NAND's are providing the minimum required ecc, the now legacy method
> actually gives more ecc bits and quite cheap when using hw ecc.
> 
> > 
> > The legacy_set_geometry() sets the data chunk size(step_size) larger
> > than oob size to make sure BBM locates in data chunk, then set the
> > maximum ecc stength oob can hold. It always use unbalanced ECC layout,
> > which ecc0 will cover both meta and data0 chunk.
> > 
> > This algorithm can NOT provide strong enough ecc for some NAND chips,
> > such as some 8K+744 MLC NAND. We still leave it here just for backward
> > compatibility and als for some quite old version NAND chips support. It
> > should be en/disabled in both u-boot and kernel at the same time.
> > 
> > - For the large oob bch geometry settings
> > This type of setting will be used for NAND chips, which oob size is
> > larger than 1024B OR NAND required step size is small than oob size,
> > the general idea is,
> > 
> >     1.Try all ECC strength from the minimum value required by NAND chip
> >       to the maximum one that works, any ECC makes the BBM locate in
> >       data chunk can be eligible.
> > 
> >     2.If none of them works, using separate ECC for meta, which will add
> >       one extra ecc with the same ECC strength as other data chunks.
> >       This extra ECC can guarantee BBM located in data chunk, also we
> >       need to check if oob can afford it.
> > 
> > - For all other common cases
> > set the bch geometry by chip required strength and step size, which uses
> > the minimum ecc strength chip required.
> > 
> > Signed-off-by: Han Xu <han.xu@nxp.com>
> 
> One further point, u-boot older than v2020.04 will not be aligned with the way ecc bits is
> calculated with this patch applied(without the legacy option set).
> 
> It's quite a mess :/
> I would recommend to use the legacy mode as default, and add the new style as "modern" option.
> (Also in u-boot)
> 
> /Sean


Hi Sean,

I know this change brings mess but the legacy way is wrong. The way it determine
the data chunk size is arbitrary, take any 8K + 448 (not 744, typo in previous
comments) Micron NAND chips as example, the legacy way can only provide 16bit
ecc since data chunk size is set to 512B, but 24b/1K is required by NAND chips.
According to the A/B X/Y ecc requirement, this is not acceptable. The new
implementation might get weak ecc than legacy way in some cases but it
is safety guaranteed.

This reminds me the gpmi raw access mode changes in kernel 3.19, it also changes
the driver behaviors and makes totally different output compared with older
versions. I know changes bring mess but we have to accept it at some point
rather than keep compromising to the wrong way.

The change has been in NXP kernel fork for a while, so quite a few customers are
using this bch geometry settings. I hope it can be upstreamed, any other things
I can do may mitigate the imapact?
