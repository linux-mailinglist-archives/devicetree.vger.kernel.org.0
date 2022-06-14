Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 560D554B6BC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 18:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239255AbiFNQsB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 12:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351953AbiFNQrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 12:47:49 -0400
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 882F02980B
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 09:47:47 -0700 (PDT)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25EGa7gC020512;
        Tue, 14 Jun 2022 16:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=4xBwRTKKc2KGQ9GZ30muTBuaUSG1VuECBwKJCfPmdfo=;
 b=Aeko6C4b4srf5BAd2DGkw5oEs0WR3GdxZqaDiAAbonbda8/jlCxvmoLYMOmOmbGmR4Ds
 FY6waolEPEgRwjwYdmX8PPUCFFr7/n6U67knrhZ5cbfwYU8zfFRZz+aTluRupjTILRQk
 RWG35mJy2zLr4moWLTfVsb7DY76bLWFeKxiqv3EintBO/vOCKZ4tjqYXQvb7YKt7SEym
 4GCWRsnvSV5X8UihCtdayFGGpJRvS5dFJY5bZHioBn39z/PnxLnbVW6z+pEZTFARAkzy
 oc8JA49b9dPR2qLGzGxH91v2WUAbCLTLBAnU9JF+XUo3MWUCrKEiihHD/tTlblRdGaPn JA== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
        by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3gppw36wub-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:47:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQNcUeut2/HM5IcLkUEitiW3CP1EDbGW/A3V2ENBYLX9cFuul8QVbHrdCtr7jkVLJslvMO9qIwElfV70k8EoKAxOQQjlEo7DtfsHj7bpAl8C7h1Oo5uEL31PG5arp8wTBLfeNA3X7+9GtGFCOK/Ngfq4kTI41eBB54Fk5KlMgeXtlFM+Fiqf95peOg1Ee0HN6ViOSEIlT7tNA1mxq1YD6NsDfLm50dRhNS/TMXtguFClLvcjxhY5fuXMrDqr1kmzHtvrN6YfVt7YdM7MyGFxCig3dENKlTn/7HF2KQSUauvgMAoIuaWnByiqrZOGKTMV9Vq6dUbfexRIb5BFSkRZIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4xBwRTKKc2KGQ9GZ30muTBuaUSG1VuECBwKJCfPmdfo=;
 b=bOEwASUaj3QLmbhUh22Qwfpa+wbM30S/00gGS8i0XLm9jWRN79x3Gz1oZ8+DNpRbX4pd2oZdgKq5l1rVGbsGRdlb3C3xCTcSihmI31GiBYvhTNQzET7P8jq1sI3Y2Uqb3pMSlU6zwdWvmMyQiRwSqK46nKbxMPo06KdWn3+XmzqvQZQCCBg7WngW+vwrdgOMY2orztvMfpNe+MVj0MmVcIEbSw3m1vN/GBpUiuykIJNofv0QQiyGGDaJ9mrW1hWxeevO9Gw+gA7jBVBu7RAfgppyG/z+v/3VU9oIkytoKKp8Mr4oowMLguxzkJy9Xqa3CeltjJWzcDs7RU8oeakqlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in.ibm.com; dmarc=pass action=none header.from=in.ibm.com;
 dkim=pass header.d=in.ibm.com; arc=none
Received: from MWHPR15MB1150.namprd15.prod.outlook.com (2603:10b6:320:2f::8)
 by DM5PR1501MB1957.namprd15.prod.outlook.com (2603:10b6:4:a5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.22; Tue, 14 Jun
 2022 16:47:41 +0000
Received: from MWHPR15MB1150.namprd15.prod.outlook.com
 ([fe80::c5da:1dc2:98c7:a9ab]) by MWHPR15MB1150.namprd15.prod.outlook.com
 ([fe80::c5da:1dc2:98c7:a9ab%12]) with mapi id 15.20.5332.020; Tue, 14 Jun
 2022 16:47:40 +0000
From:   Nageswara R Sastry <nasastry@in.ibm.com>
To:     Stefan Berger <stefanb@linux.ibm.com>,
        "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "nayna@linux.ibm.com" <nayna@linux.ibm.com>,
        Jarkko Sakkinen <jarkko@kernel.org>,
        Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH 3/3] tpm: of: Call of_tpm_get_sml_parameters() to get base
 and size of log
Thread-Topic: [PATCH 3/3] tpm: of: Call of_tpm_get_sml_parameters() to get
 base and size of log
Thread-Index: AQHYgAmjmUfG6cfNdkqfFLD4ZOXgSK1PHJRi
Date:   Tue, 14 Jun 2022 16:47:40 +0000
Message-ID: <MWHPR15MB11505C3E3455B96699601D80EBAA9@MWHPR15MB1150.namprd15.prod.outlook.com>
References: <20220614161258.1741427-1-stefanb@linux.ibm.com>
 <20220614161258.1741427-4-stefanb@linux.ibm.com>
In-Reply-To: <20220614161258.1741427-4-stefanb@linux.ibm.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e4ebea3-12dd-4efa-a978-08da4e2598b2
x-ms-traffictypediagnostic: DM5PR1501MB1957:EE_
x-microsoft-antispam-prvs: <DM5PR1501MB19577E1CD90789064B99499EEBAA9@DM5PR1501MB1957.namprd15.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yh4Cp6Iw724UJhNuA1VprwNdUz7YHFyWC77ALn/73auMRwOMLEXLDKj9oif4Eb92ldP4oZVlnpYa15ToPGJwBxcshZeRy2qgg8cQLUsDRn9NEvHqKRBMVvWc3RPpaTMqF1TXnWHzcNr82G6hH7V75E5CXhXE6B5iY9C82WJDuOrl6a6fvPtDrvgYZcKbXT0fbyR3x2Y8W15t1kdPcWdFL5/xh+Zq+hLE0/BVAGM5WQET27V012kAXM5GPE+L6UAl6qhCfY/WsnVPhuONxyeAjGSB9o0OP+bYMUzps1K1lqRYuxYiENFPCPpgLoDLRbHK3FgclZwWAmJFR8X1MqPR3B+lfBDmPkmkceLmblPCeUBy7YjzcfqoIeTkqVHRkJfio1699V5FEzxz/SwWC5nklGkkNoGMk2rlu0ZYsGP8mxGUBPst6f8iKLl3SWqhR0QGoZFZGRRqiQJ2JF/62q4rlz8BcYxAz1mqJ1GxT8VlVjvuMmVHl8uzHUsJV0/s/HgdYi0snUMPqYzz6qiye6yraXvWUrmJhRJDYzammQOILN3kUdSWMHWDb+ycJYpPFCr9LWXRNVOubrLGJIVU0noquThvN2UAzdaYXbZmkkTmVGa+/uRoAptIMF83sP2ODdh2WWqj1iaYiBCD8+Ujfzx+QgpgsbJjFV5C8MVJtmN7+74/rLwQhLAzds5Cvu/cKE9F0OUKhL8/nnkgM+zxL8j16A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR15MB1150.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(186003)(5660300002)(38100700002)(558084003)(71200400001)(122000001)(9686003)(38070700005)(55016003)(316002)(26005)(86362001)(2906002)(66476007)(66556008)(508600001)(64756008)(66446008)(66946007)(55236004)(76116006)(33656002)(8676002)(110136005)(54906003)(7696005)(6506007)(52536014)(4326008)(91956017)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Gq4MK15XW+szb1MG54AC7D+el3iXl7Gtu9ShKx4nywcnvbtBvvWhdNmoO+?=
 =?iso-8859-1?Q?VtCyAb9Hc/fJCxnDHkrWrch4az94ZR3ZR/474tTk2dTysVyeQPtbJ0sUo0?=
 =?iso-8859-1?Q?4jfhyZJUswsChy1H2kD2GiGg8g45qX7KyPqLsnSp9s1xn1gS2kReQL+sPh?=
 =?iso-8859-1?Q?hc6scwL3SlIQrrn6MWikPBDeq9lIZ6OVkE99lbD4C6lHCUs1rDrC6aiaOk?=
 =?iso-8859-1?Q?nQosGAeafAEoyckTyQg6tEXkIge1QBlFcpYITApLjHAfGA8FPlLFSsI/eY?=
 =?iso-8859-1?Q?fGGJpTmsLPsAQCQmyF0jnV1JUpQd1hJZsifYAz8DTbLIAeGDyVu8/wrX3x?=
 =?iso-8859-1?Q?mTxxs4oZ1R9b8m+ivfhl9FxtlYos4/n03tmx8Godbl4UlVxG4JgMAx6/Xd?=
 =?iso-8859-1?Q?FLrRSk0NI1n2OPxE2Gy9ssdPitOJgNux8GKwZROn25MB+2/8iZTw+Mwtvz?=
 =?iso-8859-1?Q?+igP9M+TrLNI5FR7ZeR1dm0YLDq69sL41iWltJscjoTbvRy0p7MzusaQjo?=
 =?iso-8859-1?Q?z7Kz/AxY3AseuWHGBrYNS3GAalEFgUWYBvCSSrctuEzXfq4m2ljH1WWW0/?=
 =?iso-8859-1?Q?QocIbe60RHjsxh2IQgLW+VjSUL8tBpWzJig6uFg7GY+sF2iVK6bKPcMYAT?=
 =?iso-8859-1?Q?OJLcOV+iSsiKfEzLz+V+rgRpsEBSqkmdJMpc9xWNVWV5nnflFMpdzRPMXm?=
 =?iso-8859-1?Q?U08jTPpufwpKl2Bw19AsaEGESscib7x0bK3evEDUJ6gmHlXOOl3cATGOsu?=
 =?iso-8859-1?Q?iS0fpnw0rZSD9ZHg3rvc/Sd813Og6wKZW31QT21FKWjeD5BsDvIMBLbnZ5?=
 =?iso-8859-1?Q?IDJ8vjHljM/BnrTy0qoUNDYnlPr6iSUpPSXyPYMam3XSwkmiJZAK9YqsXz?=
 =?iso-8859-1?Q?C14a+TWHm0Sd5TLWQjhlyTinWWbFHoFpPIXlI4MOoBLdvsbCyIm/SEhMHj?=
 =?iso-8859-1?Q?SlZnq/p0hbSDGrXu452f5QzuRu2p2Lfvgbuw1ms3YjLMSVwn7wj5mXwzIC?=
 =?iso-8859-1?Q?TDjPfTd5asjFnSVwUEjAAmgj4QASiYXoa8bLbYM14F9E2sigtQ/C8uKJff?=
 =?iso-8859-1?Q?23hx46h17Bf0XXmo+wp44OPYE63bZ8/eV+711x2RAddGbhdNHisFq7Fh8l?=
 =?iso-8859-1?Q?4TeMwxIYcUXVli675iBuF2lFU3pbcXAkdhUx/fh69Plk0ORO+dYKBMc1Pm?=
 =?iso-8859-1?Q?mVvbdKHLQh69EZ6Q2+R0mQKyD6XAGAqF4Z6fZT39tuXFuhs6UdEY82vgYJ?=
 =?iso-8859-1?Q?PbhiaND8vCQgbXlVWEs7bvG8BYzSUvAY2JL1y7W6eaJpGyRhXvy2ITlVJg?=
 =?iso-8859-1?Q?L4P9gdGCP82fG+yeYVHD5K4S5+pDgOSJq5zWDruYIRwqwRV8Pd/5TkR+3y?=
 =?iso-8859-1?Q?Xr6/VL/8b123nY5hpoor0gtddckT0t9gyIPScPaW/9FlYyy31ZYQd7/jNs?=
 =?iso-8859-1?Q?eDIQ4oZdwrUo8vF5xu4pDEEVCdAF8br2DTmVAEDYY4I/xzsZ/jJemcYa4s?=
 =?iso-8859-1?Q?uecF6zqfh2pFLs/T/rT5mV3WQRFbA7XrOKRs345ZDK8olQn3CvvdcS+Zzr?=
 =?iso-8859-1?Q?qRdfvEbm7oyQAwiT/09v/6Xix8P1QMyJnE69keuTt5O2AnOiywl8I8gALf?=
 =?iso-8859-1?Q?pzdmb3N9kZUp5c8AvY0YCPzTi5vCK/BeWlHuKnEa3/DMwJ1G0IxlXgG753?=
 =?iso-8859-1?Q?G9Ayo8Cd2ELeaJYGEZxOJ+1+Jya4CQ//Fm3P9us3Hg3Km/yUEXrxdf6AwI?=
 =?iso-8859-1?Q?CoxvSeLWZWQRt8vn9Dn+kUcLjB935zr9AdDiQWHPMpqQzwDkAK96+nGW5G?=
 =?iso-8859-1?Q?kCRvV1brVQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: in.ibm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR15MB1150.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e4ebea3-12dd-4efa-a978-08da4e2598b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 16:47:40.8323
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fcf67057-50c9-4ad4-98f3-ffca64add9e9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LJK5gFS+ThwsBFPQQlKjhtFI56rw/p9W3j8CfIThgcBYXH/4lxNxL9Vy73ruMYH2NRvmWiXefy2cn9xYrdZt/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1501MB1957
X-Proofpoint-GUID: Cza5nC6ef1VvH5xO72JOtYKDFzw64c5I
X-Proofpoint-ORIG-GUID: Cza5nC6ef1VvH5xO72JOtYKDFzw64c5I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-14_06,2022-06-13_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0
 spamscore=0 clxscore=1011 mlxscore=0 impostorscore=0 mlxlogscore=903
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206140063
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=A0=0A=
> Simplify tpm_read_log_of() and call of_tpm_get_sml_parameters() to get=0A=
> the base and size of the TPM log.=0A=
=0A=
> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>=0A=
=0A=
Tested-by: Nageswara R Sastry <rnsastry@linux.ibm.com>=0A=
...=0A=
> -- =0A=
> 2.35.1=0A=
