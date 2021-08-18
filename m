Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FB963F0230
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 13:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234927AbhHRLEe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 07:04:34 -0400
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77]:4110 "EHLO
        mx0a-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234489AbhHRLEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 07:04:33 -0400
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17I9STKl012872;
        Wed, 18 Aug 2021 07:03:58 -0400
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
        by mx0a-00128a01.pphosted.com with ESMTP id 3agb6derhe-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 18 Aug 2021 07:03:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXsBKh5h8CLL9yJOmr3NeuASUDjChHK/Z349jtkVc2DnQ0QDSU3j1yWXKznr9L5obX9T21CGIu8kvmD4Yzq37MttQDVdek9NP8CVNRhywGCxTfjS0xHaY2ORrBywr85hyUwpYLDv06C4YpC20ApTC22a31XiV+2O/6+ay7PA7pQgerdk1pEyeudvdMVqjR5aQ3kgSxZiqOSEsg4xUhjPAjGP3tcCmeHLygMNPGVZQy1qoOcWMThxw02ujntoGata9VYsKhThMxdZuFtpBQfF1IeXs508+V4XgBkqUxBq8L/6ZGrDiMaMFCXGUA8FD9K/gM0zSDibQzfUsgbtKFcNLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FnB3Pe33DzRaqjK9T1PkWlvvkK1GfQQzG1zWpbV6BuM=;
 b=eF9JfitNj+ownUpq1dx+UCgst70nMdO5yVd0bHeszV8IfseL0163nd03PXOA9AbhqxlvdtqbeJAqdXirLkwIB2iMWLFJT+g6ScDZmRcSSqOK8jHkL20yX4kH8yF5cyiNZsunJM1942daimPhyFjsPrq8RjWMIYxTOk7HTrSeXB/rNpF+xa8vT0veLGtq5g2X3VAOEsf/j641vW4LDAr+grd1zjPv9ec0ingFGTkCxMCNOUH79S26m9zoyB6pPEdP/bB8auOEG6pdMs5tSD2a5TTZ+alXPLDTP1fgOtcO2U28GaDjaBZoFqFXnfs7+RFA2+T7u3Ou4yNATJNUXTKXfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FnB3Pe33DzRaqjK9T1PkWlvvkK1GfQQzG1zWpbV6BuM=;
 b=MbbU460BpGZgmFx/sHS+UnQ3cFZM6siw+sUBJBDLYzcOs9RUVwjt+K0+o1XaQgBwFeL/3iQtZWtU57AZ58+zNZg+4gagsmST5qf+P3vJrkYNhUc4dtmP/X2PeFqiyGQNHfoeHwWnXBvyVuQh1FvBHnhaA1EM/yxpll7KOjL4AI0=
Received: from SJ0PR03MB6359.namprd03.prod.outlook.com (2603:10b6:a03:399::5)
 by SJ0PR03MB5821.namprd03.prod.outlook.com (2603:10b6:a03:2d7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Wed, 18 Aug
 2021 11:03:54 +0000
Received: from SJ0PR03MB6359.namprd03.prod.outlook.com
 ([fe80::a010:2cb7:9a3d:d930]) by SJ0PR03MB6359.namprd03.prod.outlook.com
 ([fe80::a010:2cb7:9a3d:d930%4]) with mapi id 15.20.4415.022; Wed, 18 Aug 2021
 11:03:54 +0000
From:   "Sa, Nuno" <Nuno.Sa@analog.com>
To:     Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Express that at least one patternProperties is required
Thread-Topic: Express that at least one patternProperties is required
Thread-Index: AdeUHl18GGL+qSwcQvCapaUONm5Pgw==
Date:   Wed, 18 Aug 2021 11:03:54 +0000
Message-ID: <SJ0PR03MB6359D948CF6D8C2A8FF9757099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?iso-8859-1?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcbnNhXGFwcG?=
 =?iso-8859-1?Q?RhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?iso-8859-1?Q?OWUzNWJcbXNnc1xtc2ctZjgzYTQxMWQtMDAxMy0xMWVjLThiODctZTRiOT?=
 =?iso-8859-1?Q?dhN2NjNzEwXGFtZS10ZXN0XGY4M2E0MTFlLTAwMTMtMTFlYy04Yjg3LWU0?=
 =?iso-8859-1?Q?Yjk3YTdjYzcxMGJvZHkudHh0IiBzej0iNDk5NCIgdD0iMTMyNzM3NTgyMz?=
 =?iso-8859-1?Q?I0ODEyNzMwIiBoPSJXNmFlVEV4MTMwSEFDZUd0dEtEZUprUEpxRzA9IiBp?=
 =?iso-8859-1?Q?ZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQU?=
 =?iso-8859-1?Q?FJWURBQUM2aTlDNklKVFhBVWVaeFVNK0tCNlFSNW5GUXo0b0hwQUZBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBSEFBQUFBV0F3QUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBRUFBUUFCQUFBQUJPWUdjZ0FBQUFBQUFBQUFBQUFBQUo0?=
 =?iso-8859-1?Q?QUFBQmhBR1FBYVFCZkFITUFaUUJqQUhVQWNnQmxBRjhBY0FCeUFHOEFhZ0?=
 =?iso-8859-1?Q?JsQUdNQWRBQnpBRjhBWmdCaEFHd0Fjd0JsQUY4QVpnQnZBSE1BYVFCMEFH?=
 =?iso-8859-1?Q?a0FkZ0JsQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdFQV?=
 =?iso-8859-1?Q?pBQnBBRjhBY3dCbEFHTUFkUUJ5QUdVQVh3QndBSElBYndCcUFHVUFZd0Iw?=
 =?iso-8859-1?Q?QUhNQVh3QjBBR2tBWlFCeUFERUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBUUFBQUFBQUFBQUNBQUFBQUFDZUFBQUFZUUJrQUdrQVh3?=
 =?iso-8859-1?Q?QnpBR1VBWXdCMUFISUFaUUJmQUhBQWNnQnZBR29BWlFCakFIUUFjd0JmQU?=
 =?iso-8859-1?Q?hRQWFRQmxBSElBTWdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?iso-8859-1?Q?QUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCaEFISUFhUUJoQUY4QVpBQn?=
 =?iso-8859-1?Q?BBR01BZEFCcEFHOEFiZ0JoQUhJQWVRQmZBSFFBYVFCbEFISUFNUUFBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUVBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBZ0FBQUFBQW5nQUFBR0VBY2dCcEFHRUFYd0JrQUdrQVl3QjBB?=
 =?iso-8859-1?Q?R2tBYndCdUFHRUFjZ0I1QUY4QWRBQnBBR1VBY2dBeUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?iso-8859-1?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU?=
 =?iso-8859-1?Q?FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFB?=
 =?iso-8859-1?Q?Q0FBQUFBQUE9Ii8+PC9tZXRhPg=3D=3D?=
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=analog.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6eb0c8b7-1ee1-495d-f79d-08d96237de67
x-ms-traffictypediagnostic: SJ0PR03MB5821:
x-microsoft-antispam-prvs: <SJ0PR03MB5821963FB1B8E3CD0AAED4F999FF9@SJ0PR03MB5821.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lVrHL/SkJlT0EbbjpRThHxat75BnzSpI49mT20qZlYP2N+MeGDwBc6KUe8B52H/yhvPGvBhchvi5Ui/BOUc9X8MS1V5r7n2vgz0/WxckfyfbMELXH/7jJqMGv1R0VSkaes/zh+jlxPP9RCtWGZ1FzdcBvMByWsjHm1O+z6+Tp/6k97rkCXy/GxuUnGYmg8yWYPD/sHsC7XhLunCLv0Fh9zLWSsosxiYPmg1LjOKh/uu11CxY2HuGpWtYdFP7qJeFDdAZLQPJgQxmiYWYDF8tVmQzNnbd9GXpz87HtPxKtEbJLPZ14CFrre7eludrPzk3dsYzEuAN0rmjF7vxMsgThspSIWYitrcrBo6IF1JgB2/ozcNm97BJUqbZpP7C4gOlEvLGf/jR9buqOjlR6L+9lXA2fLYcp2XfbE1q4hRGl1CmJAJfLajvqryhaiz1NLXgQErNWdt8Y1+N9vFwlL42Ha6J6WSm+RR2NLhWtMQFcGzqFhOnT28Kva+QRmHVETAWaU2SfaRUPrn/Q385vWzLnD6HWnKsDkc2u8yedsNE5sOi/LFyOe1f4+yYWTIV5CUR//GNP6hTSpVx0pyAbDVzOV9zGc7yXOvJYjuz0l8NKfFjUiRVubT5x8SAhaWYswQWuvSLvYPt9ZCOZfo7JtVfikyUa/zSk5rdfaXVlSD39eaHIkmtGNXbqSThM6+t1xffw87KmRhavn3xA3J6oWXVALBJhKfeKazSxqfrQEivp4sAF8tjCMW4nu6WKYvrl2xX2Ukdd/KXOkgKeEQ4o/8kCmxUBlenOqnWZvinob3zPRxrWuobg75fvpZUn7Plo4QxVxUqAwtbfFS2MLxVC2XRAA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6359.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(39860400002)(346002)(376002)(366004)(316002)(5660300002)(64756008)(38070700005)(2906002)(66446008)(66476007)(66556008)(52536014)(38100700002)(122000001)(26005)(66946007)(478600001)(186003)(6506007)(8676002)(966005)(71200400001)(4326008)(86362001)(9686003)(55016002)(76116006)(8936002)(7696005)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DzcwE2JRZNrG7lyfywoUDb75FohlLAA20QOHtNN5vCDBZLxMK+wR+Kz6M6?=
 =?iso-8859-1?Q?eaZRD1eU3AaSF+loHEu3yBbuy50KlZXZN1DAeX6MT6z7Ntfn5zLgeegNih?=
 =?iso-8859-1?Q?M+6cuC+NsuBE5A3cZF+g/Ub3Nt0K6OQa5fv7FcCojNz2zRDPiDi+K96xew?=
 =?iso-8859-1?Q?ziNd337sLUPwhi+RlEjoQvCUEjJemM5QqTRAAnLJwwkPiSOddK4WUxPPVb?=
 =?iso-8859-1?Q?MAPTZy0NR28bYWgqouy4Qanxi5k1kuo+iqplz8BVckVI+QNq8XcrDmgcvI?=
 =?iso-8859-1?Q?UJJEay2LIhu7YIvF/7O6yX0QqOzITNsRd/NTW3Rdp1mJuqWC5Ua8yv9VM/?=
 =?iso-8859-1?Q?NNP7WD82QO0upuSnRiU/ikv3W6sGHl7hK0RbYqx4euUMtHEOxAYBweC9Xb?=
 =?iso-8859-1?Q?V86F30wd0ZsEyUjTmjgicILgygn3fmbldSrrdH/DMD3rBAydLhmeBt8Cxk?=
 =?iso-8859-1?Q?ZlJS912YdXZ6k1/MCm7lgqbOwulg7pfnEkbswHJ25ijDxjdNbf9abPwY+n?=
 =?iso-8859-1?Q?gBn6sTYQNpsMb4UOsTKKlVCH4aZOs/7/7d6I7BB+LQkj6/d01dJGUaYZ8x?=
 =?iso-8859-1?Q?mtnGidP5QuCd1uduKfP6iLwC84XcvsSfGpr8c+yDtYYuGa+wRU9vs6Ht+q?=
 =?iso-8859-1?Q?LCYY7dJUFYKsNh/w5IZ/BWzP08tflhzlqKI2J1ldSA7x9iE6QTKXtmlkFQ?=
 =?iso-8859-1?Q?W42piCKXc2vNNuzcSD8YLBeY59jRg4F1kd5hDoMa7IMX8imBkLS5pvq7og?=
 =?iso-8859-1?Q?7I2JE9biOAZL6zKcBZW8hbT5VVnLi61gae1qW9NBUOZtNDemFMNhoswysF?=
 =?iso-8859-1?Q?MAEZR7Vm8/mNNInnpCENbCrv1nfBVI0c0B7z4vtFHTXHdLuC6MlvNnnEh5?=
 =?iso-8859-1?Q?AZqQbLNEFfEI8U09X/jb8orDotYUXppBPCX7Gn5C4nern87EgLHbApwaLs?=
 =?iso-8859-1?Q?di9kNe+cAaw61JeaP6Hf6XC6iisXYIrKmCoWzjBaXp/WJFsXYFZsdWpZsj?=
 =?iso-8859-1?Q?UIb7HzfRuNIFAFdhD38qKvim3n4JXxHfuCNLuc9Q9+XhNnKRP8LC9VVv4r?=
 =?iso-8859-1?Q?fJwKRxvnDsFozpm7bbI4JptcbNoAt70r5tTzR+h1TwxJQbipxvrYWuB6of?=
 =?iso-8859-1?Q?1gW+E5DqSO+XIL2C7N7ist3yzvsCvPX5kkrI9wEUo/YL0g8JFLtQfHhdJR?=
 =?iso-8859-1?Q?dc0eaFxb10LGea+xGmcZJGigYRCgHqumvOIDdd+7h770Rhn4Mp2AFWEU0K?=
 =?iso-8859-1?Q?qMWyhPTHRVCaQ+I5bVjKFc/QWvCZt2Fd8CYVJi6cp7ncxmW1STqaaVWVZA?=
 =?iso-8859-1?Q?sUR+IU6kcLDyiQi3hkzdUTlvIKRF9sozd/mAB4R1TTA98DYzW7FONn0OYS?=
 =?iso-8859-1?Q?W4wxhzSIHc?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6359.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb0c8b7-1ee1-495d-f79d-08d96237de67
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 11:03:54.1872
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zrr/s2XXmoXNDoBGr/ylco+3+G/JdXjOsgvdMTlcENiVzekH6nM2G8lf04f+e/widTwKXFhdNmrVkiLcpGJA2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB5821
X-Proofpoint-ORIG-GUID: 6R1wcROpgTtItf8NTTlYed7iyLO7TxK3
X-Proofpoint-GUID: 6R1wcROpgTtItf8NTTlYed7iyLO7TxK3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-18_03,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 mlxscore=0 mlxlogscore=999
 bulkscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108180069
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

I'm preparing a patch to do a slight improvement in [1] where if there are =
no channels
given in the devicetree, it does not really make sense to probe the device.=
 Now,
I want to express this in the bindings doc [2] but I'm failing to find a wa=
y to say that
at least one of the patternProperties channel has to be present. For my sha=
me,
this is the only way I could express it:

----
diff --git a/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.=
yaml b/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.yaml
index 0f79d9a01c49..27c17e07aeb0 100644
--- a/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.yaml
@@ -382,6 +382,207 @@ required:
   - reg
   - interrupts
=20
+# at least one sensor channel must be present
+anyOf:
+  - required:
+      - thermocouple@1
+  - required:
+      - thermocouple@2
+  - required:
+      - thermocouple@3
+  - required:
+      - thermocouple@4
+  - required:
+      - thermocouple@5
+  - required:
+      - thermocouple@6
+  - required:
+      - thermocouple@7
+  - required:
+      - thermocouple@8
+  - required:
+      - thermocouple@9
+  - required:
+      - thermocouple@10
+  - required:
+      - thermocouple@11
+  - required:
+      - thermocouple@12
+  - required:
+      - thermocouple@13
+  - required:
+      - thermocouple@14
+  - required:
+      - thermocouple@15
+  - required:
+      - thermocouple@16
+  - required:
+      - thermocouple@17
+  - required:
+      - thermocouple@18
+  - required:
+      - thermocouple@19
+  - required:
+      - thermocouple@20
+  - required:
+      - diode@1
+  - required:
+      - diode@2
+  - required:
+      - diode@3
+  - required:
+      - diode@4
+  - required:
+      - diode@5
+  - required:
+      - diode@6
+  - required:
+      - diode@7
+  - required:
+      - diode@8
+  - required:
+      - diode@9
+  - required:
+      - diode@10
+  - required:
+      - diode@11
+  - required:
+      - diode@12
+  - required:
+      - diode@13
+  - required:
+      - diode@14
+  - required:
+      - diode@15
+  - required:
+      - diode@16
+  - required:
+      - diode@17
+  - required:
+      - diode@18
+  - required:
+      - diode@19
+  - required:
+      - diode@20
+  - required:
+      - rtd@2
+  - required:
+      - rtd@3
+  - required:
+      - rtd@4
+  - required:
+      - rtd@5
+  - required:
+      - rtd@6
+  - required:
+      - rtd@7
+  - required:
+      - rtd@8
+  - required:
+      - rtd@9
+  - required:
+      - rtd@10
+  - required:
+      - rtd@11
+  - required:
+      - rtd@12
+  - required:
+      - rtd@13
+  - required:
+      - rtd@14
+  - required:
+      - rtd@15
+  - required:
+      - rtd@16
+  - required:
+      - rtd@17
+  - required:
+      - rtd@18
+  - required:
+      - rtd@19
+  - required:
+      - rtd@20
+  - required:
+      - thermistor@1
+  - required:
+      - thermistor@2
+  - required:
+      - thermistor@3
+  - required:
+      - thermistor@4
+  - required:
+      - thermistor@5
+  - required:
+      - thermistor@6
+  - required:
+      - thermistor@7
+  - required:
+      - thermistor@8
+  - required:
+      - thermistor@9
+  - required:
+      - thermistor@10
+  - required:
+      - thermistor@11
+  - required:
+      - thermistor@12
+  - required:
+      - thermistor@13
+  - required:
+      - thermistor@14
+  - required:
+      - thermistor@15
+  - required:
+      - thermistor@16
+  - required:
+      - thermistor@17
+  - required:
+      - thermistor@18
+  - required:
+      - thermistor@19
+  - required:
+      - thermistor@20
+  - required:
+      - adc@1
+  - required:
+      - adc@2
+  - required:
+      - adc@3
+  - required:
+      - adc@4
+  - required:
+      - adc@5
+  - required:
+      - adc@6
+  - required:
+      - adc@7
+  - required:
+      - adc@8
+  - required:
+      - adc@9
+  - required:
+      - adc@10
+  - required:
+      - adc@11
+  - required:
+      - adc@12
+  - required:
+      - adc@13
+  - required:
+      - adc@14
+  - required:
+      - adc@15
+  - required:
+      - adc@16
+  - required:
+      - adc@17
+  - required:
+      - adc@18
+  - required:
+      - adc@19
+  - required:
+      - adc@20
+
 additionalProperties: false
=20
 examples:

----

Obviously, this looks bad but I'm not sure we can actually use regex in the=
 required schema?
Is there any clever way of expressing this or is this the only way?

[1]: https://elixir.bootlin.com/linux/v5.14-rc6/source/drivers/iio/temperat=
ure/ltc2983.c#L1275
[2]: https://elixir.bootlin.com/linux/v5.14-rc6/source/Documentation/device=
tree/bindings/iio/temperature/adi,ltc2983.yaml

Thanks!
- Nuno S=E1

