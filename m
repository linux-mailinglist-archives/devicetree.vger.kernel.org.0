Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9A4B4CD04E
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:42:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232266AbiCDInS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233838AbiCDImr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:42:47 -0500
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2064.outbound.protection.outlook.com [40.107.92.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0753D193EA
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b8+mrje98xaYa2jFP+lG3tREO+mIm/s98CaCQ6jiiFIuBKeHc3rFaU9Kj7bAfF3iN1NmB/RG+9/aI1vAOCCLUc9+u/eWWIy/slVkP520VFtaYsdHlCtsrfWuF65vK2JgIE93eV1QbqX+mid5Kb5D4ctW6hWi74mX1+EmFdJMOkIcr8u3wULhu8x7x5pWLss69KATCZ3/Nx/1Pu/b1z+ObHqut7WooZnmY0k4Kt1P8ILeZgsJpodfyCkX/gKUNWbE76Rz4SQC0Uj71lGrP+Mbt+KQrUhJeLQpFT/NTkDC0WF/X0kCTJyOtIaSwmJdjp3w1JsMpg0s3OesVqL9QklejQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PjLv/8adJ+z6w1ldd3nmb+TBDpf10+u9j+FWN/xW9a4=;
 b=Iq3s2iFJ03y19JCNrMng9uR61hGlmgI1oI7GPktbB6pA4dkIP0ysz6fXb2oP8SnnAHCPKzr+72FXMMNDAmfSrPF5cF9oHx/Ey91vNRO+9XYUgIx8DotmdXq09lLpglH3LTeO/vBR6EjxMbi4g1cIOpCSlV+zNq14oPwbhSGG42TH8uGLR91aSz0Gfw3LKkI4iECKhexOtHgzfTU2mLyflux2d6JTJzzKzbUQYJRMNlMWwWbGjV5lyH/G8A4mojvd8VsCdLCDzjSD8OwHx7Sn0imCEFfH/4rqnPFmgvvhNKWIw5dhuKpn+VFXzuKYrr4SWylmLHfkJfHFZBQVort91Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PjLv/8adJ+z6w1ldd3nmb+TBDpf10+u9j+FWN/xW9a4=;
 b=KprDzdvwmDunUQd0IMw6K9K0NCMqCyrnaviB1Z5YmBlAnlEy/YWSli9wTdt/loLKCy9dw/RFq1kHIE2N9BV+p+5IHuQS1NWkrKnigKqM6Dmu4LEjA+ivBLsW6cKQZhOQCCsqfujWpbxuyfkcH19FJucvyWD0muMFGyeC1OWAyx0Ay3H+fEj29vxs7tZamEWRsdZrbcy9fNicsMqi4lxupGjaSFmGGblvqmVylOrJvhoepn5QcXEObua8vpgaYOp5VSb/7yIk4vlxNXmEXfvEhuijRDGf25F9v2xvrmn37CTdlqXDXbIlpM/N92adsTUVQ3NncbgFUFwJhNNY72TsYg==
Received: from DM6PR12MB4059.namprd12.prod.outlook.com (2603:10b6:5:215::14)
 by BN6PR12MB1476.namprd12.prod.outlook.com (2603:10b6:405:11::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 4 Mar
 2022 08:41:56 +0000
Received: from DM6PR12MB4059.namprd12.prod.outlook.com
 ([fe80::d5b7:9b16:d67f:1fd6]) by DM6PR12MB4059.namprd12.prod.outlook.com
 ([fe80::d5b7:9b16:d67f:1fd6%6]) with mapi id 15.20.5038.017; Fri, 4 Mar 2022
 08:41:56 +0000
From:   Laxman Dewangan <ldewangan@nvidia.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Georgi Vlaev <g-vlaev@ti.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "broonie@kernel.org" <broonie@kernel.org>, "nm@ti.com" <nm@ti.com>,
        "vigneshr@ti.com" <vigneshr@ti.com>
Subject: RE: [PATCH v2] dt-bindings: regulator: Convert TPS62360 binding to
 json-schema
Thread-Topic: [PATCH v2] dt-bindings: regulator: Convert TPS62360 binding to
 json-schema
Thread-Index: AQHYL58RZDt9Ajs0JkihHwoHWzFFiqyu35WAgAAH70A=
Date:   Fri, 4 Mar 2022 08:41:55 +0000
Message-ID: <DM6PR12MB4059B70938090EE7BF6AEBB1D5059@DM6PR12MB4059.namprd12.prod.outlook.com>
References: <54caddff-a944-93c2-aaed-ffe80e83018e@canonical.com>
 <20220304080811.45132-1-g-vlaev@ti.com>
 <898d5cd5-efd6-831e-5a47-ef4e59482624@canonical.com>
In-Reply-To: <898d5cd5-efd6-831e-5a47-ef4e59482624@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 844f56e0-f7d9-4e2f-1478-08d9fdbad6f6
x-ms-traffictypediagnostic: BN6PR12MB1476:EE_
x-microsoft-antispam-prvs: <BN6PR12MB1476AE6B2FD2826600C3994BD5059@BN6PR12MB1476.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cw32kva28XFZBUOlixQzqjvjWsi/D3R+JukITkF7UTwPzHQXCkg2zAh1HUH0ptWTZdep+OYB6p3j0iewzQsc1Lm1axYG0+ICSFNSVbjaJhza2sim3QSoWGWB2YpcO3nmaVgmxkX9vQOa6K1lhtmgkystHTaZfa3a58itn+quEd/qbFO8dyyJeo3Ky4aqphUn3mQ4KmrEf0/iLzuvM5ZgnUbZwN/jEpum2R9vdR6xiwkE8delOGxZB3bOZWjtNNNSctz8D6eAqZX0SFhfvx1wgUQWYFCD8ie73XsU3FEpbDQS92ZEPti84pJerUzyza12Y76A6RJTtqTh7NPakrSJd4QJVdPLTlgRzatNT7BUc94b91k22B30nTkFHU5bU0waLORy93ErjzmYW8XazEncXzEFqafvHSUGacbn7PmIfVUGQTdzVppeRjg1K4Kdu71RqhNXn3mSJ7aVK+q8xTDIrwtSrAamVGMoYwJD+vovXTbU9t7RdGnYPUV2BIoT5vS4HnzDTO9EpXptayty+x0lUMd60M6lodjT42vBXZy5VX2C1Le41pAaqDRFweS3PzxPlBwIaK1FD3xk2KtOaDhDAqC/s6jGhuhD8EIn3hyqJclpx/i+qoMQTQ8sICY1OsTOuRNkanDBwZipJ3Vl3OZkxvaBi4Im+XlGs6aCIdsNmltxC8zZZMuY7oFR1IDSdRLEYMPgXXgpxrwkVNqb2Mk2Xw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB4059.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8676002)(110136005)(66476007)(316002)(66556008)(52536014)(4326008)(86362001)(66946007)(7696005)(6506007)(76116006)(54906003)(66446008)(8936002)(33656002)(45080400002)(71200400001)(55016003)(558084003)(64756008)(55236004)(2906002)(38070700005)(5660300002)(9686003)(122000001)(38100700002)(26005)(186003)(508600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RT/25yxqqTyFgFF5DVaHAhS3GpMLMqXr3BqGEfQscXSBS75RlQrmjVUd01MO?=
 =?us-ascii?Q?G/OscEEJeutw/Og5iKvhWVgoeMmIVjns4AV+hZbIKvTUssDxUC08v1B5L+Ea?=
 =?us-ascii?Q?jdXWBMBgafF90unWbHE0kL8TQRDXbfXieS5wYwmkXiG7W7ukVMiX1vLgFFy+?=
 =?us-ascii?Q?5vGRCKZ5Fa6mxDf//l7fDbZORMB1hTb67xSmDZEREa2t7zH+MPPAUwer3jZ9?=
 =?us-ascii?Q?YSdsi2PViI/M6fqqLZ0qR5t6ba1JeHenC3c/vinwiMeqg53+/LeWuPnj80hL?=
 =?us-ascii?Q?HTTAEBi5ckMnGaXoXTEnhhT4XXxxmi4R62KW/0AigBmCVMv0+3/Ch/HMoRRZ?=
 =?us-ascii?Q?e3kfH2SLY0RMA9Iov19QFImKe4whloK/diurgsOQxY/u2ml+m+dwnncGY0WQ?=
 =?us-ascii?Q?L9p/8N8bGUY6kVoieNClJQgLJNZqSBoq4js7TuHqFfR/cZ1Z51rPlxzdMvLf?=
 =?us-ascii?Q?qoRpjtklzpCOVBKeWf/0n0N+Vchvo+HUhsYHHy/7TLygothzIaoPxwWrAHZN?=
 =?us-ascii?Q?fuOkDVKDIt6UaKNlmc0tOa9zH9lluzGasdv6c2ElR+ZuomDibxcayai00SI4?=
 =?us-ascii?Q?qTUAo3rjEEybTv5sQlBEiCyGjt96bNeYIXQfoaTmZudxKx0KBrZ2yN+uo7eq?=
 =?us-ascii?Q?31ZpfzAdUOXyNZpyNHSm+6YqTFr1QAPpWW3Xcre827wtWnGkEawxdgm5/JjH?=
 =?us-ascii?Q?VRJ+OV27RUnOyATTh3CS27GdvOay4fvNiQyCeYd7IaR8cFlBw9MagFvklgNo?=
 =?us-ascii?Q?UlE3vBeg/vJ0LsJZWxpjkERYaTexFssn0N83oPT2PQyXKaSHjnkQfRz/1j+H?=
 =?us-ascii?Q?aS9WozTkSqwlxvRGg38nuFa3cqL1TG9QTF8MPQc2RGFMb0Kj38mIkdqjW2Vr?=
 =?us-ascii?Q?5Rv6a0LkMZ8wPckglHTG2KeaKEkttkccZIAZJ2kmpbXM00l3j0GdaqlFaMU/?=
 =?us-ascii?Q?ofr3tRGvgCzTuXr1N9XQaBJo1Mab7Nn9poH9mZtknXRkjZNBu9egc5HofhQj?=
 =?us-ascii?Q?xYrGv//MvpzjYbAk1y24QD29DqLB14j6vfCWsw6gL/wmTjuFWqFvJSfZxcxr?=
 =?us-ascii?Q?otCB9e2/FkzogGW5f9U5FvdUxgksN0tptpskpaLDEGhTKyQBkn+Svn0hMP2I?=
 =?us-ascii?Q?366sXcW/+EkB5JMGT3CWVHQynozrR+I991NJcx/Gzglkt1PGCHmeyGkjQVMT?=
 =?us-ascii?Q?gvxg4vi6pbpu/PNduVzY8MYkUnXf6mAQ+EIzWZRseOvzs32wN1+Rb53x6ioB?=
 =?us-ascii?Q?H9KUYnzf+AABn0rAPH1Jw/WpOgO8EI7s2uaK/6qT4Sdspd/8rcvz/6rC62Q1?=
 =?us-ascii?Q?B2qGay83vvPEknjxMDVI8tfNZb7/mSxn+sGMyqzCI3F4DEXRRVwhWGc4bvCo?=
 =?us-ascii?Q?hEh3aFGh73GqfHZK6UNwMwl+pjAxmhbUf0wnZGc0GapN2ZmXlgVTxIoKnx99?=
 =?us-ascii?Q?4sFEf9JIOmpK/zT8SvwD+2rPHtjl7VjMTOcBP8BTwfC1+XYXp+0aaic8wzbP?=
 =?us-ascii?Q?7oEY1qfcbsjcPD2AGDm1gV8s3KdB31RybVakiuN2P3308QE0xiRmEJykgGbU?=
 =?us-ascii?Q?SSdm8Hdbcw9yvhOcNdXiO5Io0HBwlvTVo6hSDY68JBMTE9WsGyKPEH2ic67q?=
 =?us-ascii?Q?IOVf80hctp8ysmj8IRY96zU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4059.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 844f56e0-f7d9-4e2f-1478-08d9fdbad6f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2022 08:41:56.1195
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dVGxVnVSOl85RihRpksJT4I+BMQExYjzTfyVYmY4nnyEciwPO0jm3C8wEiC5VrC2Jttnyt5MlCV5k8kOokNIRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1476
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>=20

> +title: Texas Instruments TPS6236x Voltage Regulators
> +
> +maintainers:
> +  - Laxman Dewangan <ldewangan@nvidia.com>

LGTM,

Reviewed-by: Laxman Dewangan <ldewangan@nvidia.com>


[Apologizing if mail get messed up due to outlook]
