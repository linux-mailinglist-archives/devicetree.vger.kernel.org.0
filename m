Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99E1354B6A0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 18:48:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237731AbiFNQq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 12:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344586AbiFNQqp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 12:46:45 -0400
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58897289B5
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 09:46:45 -0700 (PDT)
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25EGaBWq002413;
        Tue, 14 Jun 2022 16:46:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=Ey1P6HHBBlNsCVumpOXIIooadBV18MdxmF5+EGDFdhM=;
 b=HuM6jmHE+M8D5QgoceUsLOqm2In01c9ZA/FW9UBZEajgVNYQoR5Wkc2XXNYemlLHuvzB
 wpSPMZIgKIfTB+r76LkyBnV7V9LobPz2uXTCq3x/Vq2Gor8VXssXQUTDK0dvZhsRz+nR
 mtUcbWO5wdXYENZIabEzeYWgn7b2xX1dStCgaypilVPtO+isR1t2d/JeFdGsShIojlxz
 1vxv3kc41OB38GsX5iFbDTITz80Nv8ElLZKPzSZBu1m83IqggZOAl7MPMaodK9SVmFX1
 C5GFW5Ni4cHm35xkGlRgaa0QA++kHCxRBVsxKeaM7tGEpsUhTgGJDsDrl94QOveUl+fn BQ== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3gpq776e2j-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:46:41 +0000
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
        by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 25EGapag003938;
        Tue, 14 Jun 2022 16:46:40 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
        by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3gpq776e1v-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:46:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TcS8ZLv9DzUKFHRaGLXbCnUigTL5/HfZhpJfz9b8gbT3XFc91Eo+csXjW0CytPaLFYlC928GLJiD4uYj9N5RONEMH7VnzldnH1sXExWuhv4pW+rt78pguxGa6x1MmXGBeJZyKGH7632oiqhy4KufOrxbNp3yHf2/93834Ldp9Emd/2EGC/ke4qskgX7CrJRbqs8QUo1pt/Ao5Do4cZfFq8c3fw3lN+CXn8hlkHd+2jRKxZoV6wMp9rBTVJXU+pKdP1PJi4i9DwFDTfCycSIcUgJO635VLlQ2orQjduJXDQnQ/QIkq0HYYa/HPuszFnmr1MFYuWWJJETMAymC/VYk/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ey1P6HHBBlNsCVumpOXIIooadBV18MdxmF5+EGDFdhM=;
 b=JmSQAx4tVeiYTa7J4U/DVAyBCAgsGlddIg0KedMm3iTtkyi77X+tzeUqkF+0woYJck/Q4PKsbmukjfrLFKaLExUyZi7ZNMwtyZytuTgqJPDhZJ8i4DPQm2CgielZFdl6T3L3ziJ5THTyll8joVL6jKdEC0VCzJsFrOapNbYwD+BG2wb+i+9HOOKAWiTMiBHCG0aWeSndhSUgu4VIpB58JbHLOi2PCSWf/orUJqmClSlGFRn2rf47nLrcqqaZZeM1GKx/koG4uRypT6zsCP6JVUHlMtUSVnj6IeaibIEX5qTLor/e4aQv2oMDAvXklbw2O3+6rvlGL4d1S1Fgg47BNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in.ibm.com; dmarc=pass action=none header.from=in.ibm.com;
 dkim=pass header.d=in.ibm.com; arc=none
Received: from MWHPR15MB1150.namprd15.prod.outlook.com (2603:10b6:320:2f::8)
 by DM5PR1501MB1957.namprd15.prod.outlook.com (2603:10b6:4:a5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.22; Tue, 14 Jun
 2022 16:46:38 +0000
Received: from MWHPR15MB1150.namprd15.prod.outlook.com
 ([fe80::c5da:1dc2:98c7:a9ab]) by MWHPR15MB1150.namprd15.prod.outlook.com
 ([fe80::c5da:1dc2:98c7:a9ab%12]) with mapi id 15.20.5332.020; Tue, 14 Jun
 2022 16:46:38 +0000
From:   Nageswara R Sastry <nasastry@in.ibm.com>
To:     Stefan Berger <stefanb@linux.ibm.com>,
        "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "nayna@linux.ibm.com" <nayna@linux.ibm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Biederman <ebiederm@xmission.com>
Subject: Re: [PATCH 2/3] tpm/kexec: Duplicate TPM measurement log in of-tree
 for kexec
Thread-Topic: [PATCH 2/3] tpm/kexec: Duplicate TPM measurement log in of-tree
 for kexec
Thread-Index: AQHYgAmkmEEo+7zdYEqeEjA55y16J61PG+I+
Date:   Tue, 14 Jun 2022 16:46:38 +0000
Message-ID: <MWHPR15MB1150C0B62285E3F7A1C5B736EBAA9@MWHPR15MB1150.namprd15.prod.outlook.com>
References: <20220614161258.1741427-1-stefanb@linux.ibm.com>
 <20220614161258.1741427-3-stefanb@linux.ibm.com>
In-Reply-To: <20220614161258.1741427-3-stefanb@linux.ibm.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6334b32c-abe6-43a2-5942-08da4e257377
x-ms-traffictypediagnostic: DM5PR1501MB1957:EE_
x-microsoft-antispam-prvs: <DM5PR1501MB195742C64BAC8F3FAAB187F0EBAA9@DM5PR1501MB1957.namprd15.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wJycz+1jKwBLmLhgc5Nzt6+5Tx6rEPxni6PwqeiO60bZX7GXNT6OAeQxk+67uRrIvcyioqoTOXQOqvX/mxaQ15SWBDw1G5v8LfSbhR9pDOLNfph1n2/zjOkw+QLALNPxIG/3M50Ruu685crLALJqCnejnRIgctM0aj7k7y/yRNlxv9+WIXM981U93PLTsl3koPW3USw+9vQeiR0FtSIUxY7ywa+ctey3apKeThJQVrT5UYDygumsPyhpH/D349m/R1lrYnX3BhQzAhTdXdv11L5QLiAw8XAH7F7tKa9LIVEUuuc/slPjiEpbFC8GCxcsGnxfhj06DtbHRNOA+hMZXC/vK1XEX8jeGRZrXFmrqjuL46+LOmuXwL/D9jsUBDbArImzGcBKhjUQojmC7cvMm4VNctGZjakgi0NkikT4HObZkIDGOeHnBjk3A3L0HxxrAA3YPq3bzJL0hswcynyLlRHVohNxb6TOU/PsphyGNdFmpIGV3FgUI7VyXfXwyeKHIa7S7VTL6Ph8jwlf15Eh37NH/OLtlPfybQ6hAQPW0l5Gb0D4x5iScTFfI19Irq3wRJFl36g6Mpf70scrd2Nkny7TBQl8QGosknGH82VD3XbGxbuVTG3ySPzcw1S1MyDFJeObg08W6lFyZUOcArCMkt95TlareSiEF9fi3GbY2VEg+57xL/wv0Dq4/HvgCgxDyT1cl6KK1gNsZX/KniicQw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR15MB1150.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(186003)(5660300002)(38100700002)(71200400001)(122000001)(9686003)(38070700005)(55016003)(316002)(26005)(86362001)(2906002)(66476007)(83380400001)(66556008)(508600001)(64756008)(66446008)(66946007)(55236004)(76116006)(33656002)(8676002)(110136005)(4744005)(54906003)(7696005)(6506007)(52536014)(4326008)(91956017)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Ftr0zmYawFoK/VwfB4KfFOiCwa7r3YmVu5uTJPYVXwOvccrCQQp/601mbB?=
 =?iso-8859-1?Q?Il/syZBlzWrsO8oTMV71PJI93mz8xXN4lO4fKB2WxvNAWAo9nlJXitG4Yw?=
 =?iso-8859-1?Q?XtpVcQSf8rCMiS7lXC5agnRon4yHupFNxmJHZ9sCGY+VUT/d//0FM4SPei?=
 =?iso-8859-1?Q?FuV7mi6c/xY9QnitSucIfJlb5rHjtDz/LRJSk33rDLo1lpRB0cJIflsrhg?=
 =?iso-8859-1?Q?biD3MvpX2uVgR6tAIh2p6IXfHfbWCrKj5etcnlZt3w0JXO06bUnYqrTNYG?=
 =?iso-8859-1?Q?/i4+XjBCDFPQ9lhm6HksX4kwZiROnLMhiytwL6HgASoJPPSCwIBAzkTL99?=
 =?iso-8859-1?Q?iedWAznF5YpzU77XlHvT+DuNN9uD0qnXubxKhgRTFtyU+rUbJgR3m4qcyl?=
 =?iso-8859-1?Q?5GE7IUz4Nzm21glRy4mCGFM5TMe6yVWWTZWu5wBjDwnHHVQvVklLI7LyQD?=
 =?iso-8859-1?Q?F18jj4hSz6e6OK4zuRa2bPHlLHGwi+JI8/FfxnotNO+yU1V2sUugAQ5Vrq?=
 =?iso-8859-1?Q?b2v2He7e74cPMgoZbhvNINW5Ke2zgd7MEMwFMns1/0eARdnnffAPvoio5s?=
 =?iso-8859-1?Q?6aIMMa3HhfemIW5MmtA0RTW0nfoMiGpquOb/HF+dFj0VHbYpu0FWGgQMPN?=
 =?iso-8859-1?Q?T5Cjb+2TYMBdzUKshHpXeEr2A+YcV4wQBWpszYIF+FQqBjG3MhjDsU7Plt?=
 =?iso-8859-1?Q?OMdn41orCcXdcyaCdC0WJcWXKydroF4ivZaJEvC5ar2hrS3I5rgnpqBWPu?=
 =?iso-8859-1?Q?7a9n0EpdMtRz+eAysMJhG5t8hou/Y2FQqDg9z5GlAg76T1lTX46oxzemMe?=
 =?iso-8859-1?Q?XXHy2EG9a6K3imhbIhw4NO8Y6OQo4KUuhTd9IR6Ty9BBQzs/4t62om7Tpb?=
 =?iso-8859-1?Q?MB3vHOKVjkjV71lcNo9X0VHmAwyz2Dm7i40x+0uaUkE4nLMqptjGB5ChzH?=
 =?iso-8859-1?Q?0oxNLqqsjGaVczIs0VxtDAeUueP4hXVMOe7GqtAWSyNy6jJkU0fHXbiyl5?=
 =?iso-8859-1?Q?d+QdWQN7RXYv8yUtCBJBJ362OgPB94RU6Sg40UBosGY1MTy3wvctg50Vvp?=
 =?iso-8859-1?Q?lnJngBHP7mRWCKnAklLq5Np4gP5umclMZqnrOyTC+zJYDhRcCcL8HPWsn+?=
 =?iso-8859-1?Q?I1pJaHPf2Z5Cqi0plVFkenoD0f0a/6EEGRJC4p+afpKz14qcUZPFOlQqnW?=
 =?iso-8859-1?Q?tFiffCocLXER5egkOv+WGUIgZnNwuXVRvolrLDShYM4iOhWkIhgPnxdu35?=
 =?iso-8859-1?Q?UfQXA19j18uBIuczkTge9iwgvyKPGky6Ty04Fa2VwZNx20vFtdqYs+H1Go?=
 =?iso-8859-1?Q?G7X6WPdmD591fy6hDGyz/HpOJBxAH7szqK9nUOL/iEpcmfKbpuDk5QnK+T?=
 =?iso-8859-1?Q?cFqSy/pERNlvlvXqDYDbFpYwsfA4J7Q0iNSDisWvsu1g2SSEFjP01xv55C?=
 =?iso-8859-1?Q?K7cT+YpzoIHcfWfuaZwwJPX9wf0BAspAQaxnQgArDrCfLtsdurKP2qFHAo?=
 =?iso-8859-1?Q?HDTM6uakT7ySQ9cA6MKVDQqbOVnGu/Srsr7DEXM6rvVRwWBZkalcAb56pA?=
 =?iso-8859-1?Q?ahOvNY3vVTK9snlON4SLejw4l52PWAkKfyOcrhmH8L2Dzt9rasAi9Z8ve7?=
 =?iso-8859-1?Q?8gTEncEj8HwGCRRYP3JLhGN8+Z4JKBbiq5tYn2BeunZ7GZ4rCm89Ah2vsC?=
 =?iso-8859-1?Q?GqFr8juY2PY96NzcZQZIXdXua66XPsjldn1M4q0dVimOV2jMrVhv8uXiR7?=
 =?iso-8859-1?Q?8gWZ3tMBfNG53QRSkEBpiUhAtSPwY0t+IDcaherL+bcaE1cRzibD1Yyg56?=
 =?iso-8859-1?Q?n1CXjMzxmg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: in.ibm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR15MB1150.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6334b32c-abe6-43a2-5942-08da4e257377
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 16:46:38.3835
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fcf67057-50c9-4ad4-98f3-ffca64add9e9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: au5wtf4fwuLNGB1RZl0uICdmPgoguUY613DnRk4lMdv/fMeTStDyUiUSV1PGrntNvz+cufm0dE9wzuyKRH3TqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1501MB1957
X-Proofpoint-ORIG-GUID: cWu7qnLEAVKsxZ8mbIZWGyM5M4qeI5nO
X-Proofpoint-GUID: Tv_uFGro4G67HyK_IG9PnewXBCyN7O4U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-14_06,2022-06-13_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 adultscore=0 clxscore=1011 spamscore=0 bulkscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2204290000 definitions=main-2206140063
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=0A=
> The memory area of the TPM measurement log is currently not properly=0A=
> duplicated for carrying it across kexec when an Open Firmware=0A=
> Devicetree is used. Therefore, the contents of the log get corrupted.=0A=
> Fix this for the kexec_file_load() syscall by allocating a buffer and=0A=
> copying the contents of the existing log into it. The new buffer is=0A=
> preserved across the kexec and a pointer to it is available when the new=
=0A=
> kernel is started. To achieve this, store the allocated buffer's address=
=0A=
> in the flattened device tree (fdt) under the name linux,tpm-kexec-buffer=
=0A=
> and search for this entry early in the kernel startup before the TPM=0A=
> subsystem starts up. Adjust the pointer in the of-tree stored under=0A=
> linux,sml-base to point to this buffer holding the preserved log. The=0A=
> TPM driver can then read the base address from this entry when making=0A=
> the log available.=0A=
=0A=
> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>=0A=
=0A=
Tested-by: Nageswara R Sastry <rnsastry@linux.ibm.com>=0A=
...=0A=
> -- =0A=
> 2.35.1=0A=
