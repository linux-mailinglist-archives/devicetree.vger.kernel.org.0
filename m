Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE9EC50BB76
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 17:15:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1449322AbiDVPRh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 11:17:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1449326AbiDVPRg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 11:17:36 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2062.outbound.protection.outlook.com [40.107.220.62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D59D5D66C
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 08:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNK0WTEMUGNsGz5mklijR1g9jnamxkK65uBa3mtAtx9pCwquJM4IgmJrYk8QDV9oOg8w/JD4zJ2+AcHYJNvjEmSRE3H5x+KanfSJYFxHrgt7YNs4zVtQVCmwlluwGk+iHFEOzpmX7g9waaOqI0Tw3qjysOR9PqXbM+449BQDvCtgs/n4mXaVYVhtoGkKXGY1oL+6CEpoqdB5c8WuNz63aJ42Bt+sT1L0cLuGlnOYISVBUYau4JRp9bbdb4HO/2jpH/MzTklBueUMnkU6ZHVR/sYx6VYBk0Z3aN5MtzkN1JQdPqBnEB3xBke7DgaZNf6MhELKZyKF/zPiQ0X21yoaCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h6CKxMwhs8qMU0HMlARyaN7VsEcWrbYSfMhqcCJUcuc=;
 b=LCea2zjMxWgT+IU2PtU/TRCl16bXEw1JqaDX46dQZ9j8llP7RYjFhWQRtz9em+XVKDWp37zndWv6mcuMZ4eDYybSV4S3rFne61MLvwBWkJpHMDZDA6MIlDnEsGo2X1PWOon17dky5KD/h01cu+9FpIwo3cHPCEoZGbR6ibO12HI033KvMTlJtoClnZ0agjUC8CB97biMqCVogo7xqOEy1zwT/NRZZ1l4rZomPGyAnNsMC6W3DzJso7GBabVWut9GE3AdEE3mpTxTau2WSTB8PoaGMoAT8vKCcUKxQU2zRjUgaJSiI72C+Xb2yQwk3eSgGuLYgv30W2LmCggIt7+3+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6CKxMwhs8qMU0HMlARyaN7VsEcWrbYSfMhqcCJUcuc=;
 b=eR/FkUvjZccXwz5FfotBgt5hHgkzFAJVcRhxWTpBF6+F9G4DJlvpTfhdcUD5AjiFoIqCB8Dxjl2FpKQZg6lq70mz9ow+pMlXfzJY+CqGUQPG3/7Jh2NH4YeuvSoOFGqOkYABTnxC1RhLhyX9rlkzJrLFyNC9J/eXnN1QaKm4f+8=
Received: from SA1PR02MB8560.namprd02.prod.outlook.com (2603:10b6:806:1fb::24)
 by CY4PR02MB2343.namprd02.prod.outlook.com (2603:10b6:903:b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Fri, 22 Apr
 2022 15:14:39 +0000
Received: from SA1PR02MB8560.namprd02.prod.outlook.com
 ([fe80::f8bc:753c:d997:24de]) by SA1PR02MB8560.namprd02.prod.outlook.com
 ([fe80::f8bc:753c:d997:24de%3]) with mapi id 15.20.5186.015; Fri, 22 Apr 2022
 15:14:39 +0000
From:   Radhey Shyam Pandey <radheys@xilinx.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: arm,gic.example.dtb: interrupt-controller@2c001000: interrupts: [[1],
 [9], [3844]] is too long
Thread-Topic: arm,gic.example.dtb: interrupt-controller@2c001000: interrupts:
 [[1], [9], [3844]] is too long
Thread-Index: AdhWWj1ROOpBCoyDQGKRkzHtNC9Aog==
Date:   Fri, 22 Apr 2022 15:14:39 +0000
Message-ID: <SA1PR02MB8560F2FE751CE17B3AE7149EC7F79@SA1PR02MB8560.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=xilinx.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7673152a-fc2d-4677-b47b-08da2472d1f6
x-ms-traffictypediagnostic: CY4PR02MB2343:EE_
x-microsoft-antispam-prvs: <CY4PR02MB234351CC3A295A8A73628B58C7F79@CY4PR02MB2343.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wi2sE1g9383wf/pNRsAdnrtZiRIJHf6BzWSy0LgvEJi4PJj6/IywfqPuOyiyQOUuIYg9VcqcCIJLCGUX/s1ZcYsEUMkdLT2kCWljsy2PD8fYkZ8vf+oEDknytQISnzO4uwQADbZ7knax8Clp7lFKrGL4hK5BSgmAE2L9TE4yzPeErtr9SENNBjpq8x74ad5yCa6AK3UrpWTjAORrzgL7KbNl0fDxXSy7QHE1LSsQ6Kl8g+J0un27cq+kOM1XD/01N3z/hG6Y35zxFHiAQA/LWGLjdrs5S4zcevD7NY6CfRrbqt+B2K9HqfeYxpdf37kPh/5HDc/iYtTNl//E6R2UXj8dAoP9fGIFteHcMzF76W6Meofeoel8cJ16BiZ45nteowRQ0hL3dbi2qiD/Lw1YdA6w5cp0tc6+eRryzZzIT3AHFh4XqH1Hjtr07X5gvioaDBErnUEZb6NmZ+4pRiv1XSejemyrf27P3bIhWczAyyXyThb0MgMwblEqPdF0xfbEFREdCp1K/5ICBY2vVyDO3iaWC7gEWKmBufT+7NH+rh511t7zWzBWo9mq7gptENaW8D4WVTj527Tgw3FFRYHUltfdVEvR+TvEgHQiQIKHnVwOFo9So534Q0KkcuVOgUBEanBfCaNYnNigkZ9pxdPemiTygrx+xYKEXqa3dE6HFszG5j2wWGLKUhTguXOOSGsazH++7S3Y4uept5/dYluOEcPKv5ExRTqTIhtlNWfMQJsbVX0GJjlIjHIbve53qAKRGfc9OftPts3gMD2Cih0Vs6H+wA3jmIYoDKmbLpTSAvM33bepojg8KW3o92+lDx1z
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR02MB8560.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(122000001)(6506007)(508600001)(186003)(316002)(8936002)(55016003)(71200400001)(38100700002)(5660300002)(52536014)(966005)(4326008)(26005)(66476007)(9686003)(8676002)(64756008)(7696005)(86362001)(38070700005)(66946007)(76116006)(66556008)(66446008)(2906002)(33656002)(220923002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?psvuAr4D3eR1i3UQjEoosKmyFVyQRT88c6b4ArryL0SBnyDKI+SKsHrIcuzG?=
 =?us-ascii?Q?GoX59NEFpWd7M9Z2gJcF9Bp7+U5s1duHFUw2CYPVUsj6dJnZZdqzUeeNzluq?=
 =?us-ascii?Q?Ne/BFHX10BuJMxqBLgIbrxtPat+VdvD5W02zjPNmH01x8ng5NzJyKUUOfwvS?=
 =?us-ascii?Q?/SMFmk1s7c6yOXsJ248Mjw4wX8A8JUS5oF+l0UYTDh0M7msU9lr2Y/qhL+ah?=
 =?us-ascii?Q?CIcR4C9vGyN0xO5YacMRrdpr8O3wDzK8zLdz5sfMn8ptiBP/s1cW1w3YviJH?=
 =?us-ascii?Q?6lHZjkD0KJWvYo1vYJEkkB0hTnPQ3ZKYUZeZ1lZd19PpgQW5ntFLSXlod3mF?=
 =?us-ascii?Q?vijxtPsz5k3wXyCVljsX3w9HvhQSrFpq2Tvk/2PXKzgx1nmTIaJ+xETikIhS?=
 =?us-ascii?Q?UNXPslqJ+7Z/zmH6TvjGO1cKhFT4lKjNJ6kzXPOBtbCvdzxH5gpQGrgxU+yN?=
 =?us-ascii?Q?7rxlfwqaZYd13V/P88msBzfcsr/HIIjXrjUBRMhM0HXoZqQ9ieartOr4g8or?=
 =?us-ascii?Q?BZvTkjtR9L+rfphTvlnDhh5YFSUVN8Dw2v/is4ivfW0Wgu2dQO6bm6s1lzG7?=
 =?us-ascii?Q?1LvRiQCdDjPJPP4JMeN61gH+OEdL7qL/s18r3kWHji+gF6W284hkeSJeWKT1?=
 =?us-ascii?Q?TXMwSqCBZjylowAJzVZwrM6u1vX5yjdr4vN2vCnEtkCKk7UQVuh8irIiFrF3?=
 =?us-ascii?Q?3KGyWYWhF1bp8WdSKoC797YwS84v9gHLZSm7oEC7pkCLzF8qBw+NUse0eO5P?=
 =?us-ascii?Q?eXFs2jYF7u6/Xnr4LfBE5CSniE781Akc/QJtW+f11ZXwmYuYm7yGDNtDdQ6y?=
 =?us-ascii?Q?NdxtrvmqvkqSCpUCDFzo2hmahP3yQRpnobxiV5HMzNV+Mwi8ZbWup+XhTgu8?=
 =?us-ascii?Q?s4EDcBaBIqQR7VaxYZKvronfaSAJ8doASjAz+OgfL1dJHr6NcBoAQBbfOTue?=
 =?us-ascii?Q?exNkumm+dmh9e1+Ctc03bJOKIq52Vm9oWp2O6/nXtCABZh2dJ0qGKuIKeGeN?=
 =?us-ascii?Q?deRrVbumHXiI51FwvPKkBrkaYcAFqDqKrd/CHVQG8bd+1ytwoOvH4aca23LW?=
 =?us-ascii?Q?x1ko1AjaPExIevbv7CChiBpFG9j+NNCOW1KXVlmXNRNApPlMvdSjmeVv0w1i?=
 =?us-ascii?Q?IbXHVgtsu8TijY07ALB4U4B1RKB/hnNYEnegSMitbyKbeUzY6BsVqDBSpEoa?=
 =?us-ascii?Q?pQEYuguIAZSkg2PJeb6EnmBIjdt5dMYbFsIMADqlUSeexCibut9Veeo8WgWi?=
 =?us-ascii?Q?5AlcmCfbwm11DRiP9wmwjoxEATXge6LGG3GMOpU9upYq/LabtPk6RYENFQ0e?=
 =?us-ascii?Q?84d24OzkLOPdjEGoNz25S52S8z1Ld8izQc4uK8LWn/709aR9GFjpVCILhNs2?=
 =?us-ascii?Q?IZBRROXlwjBSdy1MlfvbnGuLNnB2w/uz1qFb6QinC94yW6U0IkBJJK/S5wmJ?=
 =?us-ascii?Q?xmC+Si6PhiSyy6T2BycOzOQiEHuXn1Pw89lUCwdnEYoGMRF+wFiOXfPfFZRk?=
 =?us-ascii?Q?hz9zmbOyza/g9QaMOG06b4pUbXnKnmy60sr589R7MMpxfWXx4uD4xmipfltx?=
 =?us-ascii?Q?O7QXC7WU1gFvux9id7BSq68vj87E/OBA0o/ln7n8fWtJ2rxQYyajhEXWOyGg?=
 =?us-ascii?Q?FQg9X1geoTNO283tIisYV630Edw1UMJgMRCEUlVtvhXckXCY39RHuUq/0/2b?=
 =?us-ascii?Q?0E9FCsWlu3dEKy58eUSYYqW3z1Gz1+Bdlbu4ub3tUKPtpAbt3GDmFJ7uIePd?=
 =?us-ascii?Q?Q6EPEFDmqA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR02MB8560.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7673152a-fc2d-4677-b47b-08da2472d1f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2022 15:14:39.3199
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y6up7/sGLQGwmkgdYau9V51FyOaejJqup9KcfPpUeLpbjS/G47WaAg/ZFu9SGqVTFyX1dtOQx3jtD7m3ebpEVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2343
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I am using upstream linux commit (d569e86915b7) and
running dt_binding_check on existing[1] YAML bindings.

Seeing warn "interrupts: [[1], [9], [3844]] is too long".
Is it a known issue /broken due to any recent commit?=20
Or could be something missing in my environment.

[1]:
Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
Documentation/devicetree/bindings/gpio/nvidia,tegra20-gpio.yaml
Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml

% pip3 show dtschema
Name: dtschema
Version: 2022.3.3.dev4+ga24d97d43491
Summary: DeviceTree validation schema and tools
Home-page: https://github.com/devicetree-org/dt-schema
Author: Rob Herring
Author-email: robh@kernel.org
License: BSD
Location: /home/radheys/.local/lib/python3.7/site-packages
Requires: jsonschema, pylibfdt, rfc3987, ruamel.yaml
Required-by:

make DT_CHECKER_FLAGS=3D-m dt_binding_check DT_SCHEMA_FILES
=3DDocumentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/interrupt-controller/arm,gic.ex=
ample.dts
  DTC     Documentation/devicetree/bindings/interrupt-controller/arm,gic.ex=
ample.dtb
  CHECK   Documentation/devicetree/bindings/interrupt-controller/arm,gic.ex=
ample.dtb
upstreaming/linux/Documentation/devicetree/bindings/interrupt-controller/
arm,gic.example.dtb: interrupt-controller@2c001000: interrupts: [[1], [9], =
[3844]] is
too long

Thanks,
Radhey
