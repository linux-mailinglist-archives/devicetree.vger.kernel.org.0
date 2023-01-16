Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8071166C08E
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 15:02:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231598AbjAPOCT convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 16 Jan 2023 09:02:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231522AbjAPOCQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 09:02:16 -0500
X-Greylist: delayed 71 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 16 Jan 2023 06:02:08 PST
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.111.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA6218B3B
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 06:02:07 -0800 (PST)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com
 (mail-gv0che01lp2042.outbound.protection.outlook.com [104.47.22.42]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-22-OnKk9DPrNr6mclpq02ZMig-1; Mon, 16 Jan 2023 15:00:54 +0100
X-MC-Unique: OnKk9DPrNr6mclpq02ZMig-1
Received: from ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1e::13)
 by ZRAP278MB0753.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:48::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Mon, 16 Jan
 2023 14:00:52 +0000
Received: from ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ab29:ca09:9701:6da9]) by ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ab29:ca09:9701:6da9%7]) with mapi id 15.20.5986.022; Mon, 16 Jan 2023
 14:00:52 +0000
From:   Andrejs Cainikovs <andrejs.cainikovs@toradex.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Gitlab device tree check
Thread-Topic: Gitlab device tree check
Thread-Index: AQHZKbG7oGx7zUcJBkiFEJ+8Kt/Pag==
Date:   Mon, 16 Jan 2023 14:00:51 +0000
Message-ID: <ZRAP278MB0254511C101A8D3AFEF9324FE2C19@ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZRAP278MB0254:EE_|ZRAP278MB0753:EE_
x-ms-office365-filtering-correlation-id: 3b39ccad-e51a-48eb-f4fc-08daf7ca1435
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: wq7juJb/EWsl8njJzpOeBaMzLWg5KPsJEFsWRK5IrljlPkR8X0utUyn0K4R2gln6Zw+DPdABjrbfofde8XkGCWN0A/capSva8bvtPNwM2LYANCocnn3+nRFC9xVDFKiJdNHc+qUE3jq3SmK+ueusl2H7DSz2sKoOWX6JSlB1ky4VG7V1DS4EYOz8b1f01Dg7RWv4tguquDkzJcbWL3VlaT3HYBgxW2NreGukKmu+CzVzDsTNLmkLEfeezqcVIRzYlPDCyyCeER6IEC+kd4zsmKfWRbpPA9cSw3ZJ0pFkodcTCCfTRz9AcBu5iZ1EHvYa5r6hvCX6pNGs4OGh6hjZbGae4r5lyPKDxmNjChIn/96V54BW5DEcxedjyHw5vmsxNW9u0OrZOG5ZYWI8sBg84K/8dyDnYvv+ec3vb+3cHR8lTHiRZlzvTcTrJFgz3Jo+pQjrI7VSUyY2XsYMHhmflCtOLnxIgvOjcK903N5qYoMRt77+ROWro/m/4feoTx7RqReDjTwSjUZdaV6aqY0oy2SW+RMKBvd9ywuJEfo5wk8b+vlpg+U5qZslNZRT9/6s94JAmc3gCECfUThRyeYVI2J2j9CDuqt6+Lt5sJXren1yeBVtbM9OG3XUfQoi4DZUl443RtVak8PSEbExPEcGp0g3z+N7+yBmCtL6Sps3ao46xkV+Dbb9M1Ayhz634B/O
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(396003)(346002)(136003)(366004)(376002)(451199015)(3480700007)(33656002)(122000001)(5660300002)(38100700002)(86362001)(38070700005)(4744005)(2906002)(52536014)(8936002)(55016003)(4326008)(76116006)(66556008)(66946007)(66446008)(66476007)(44832011)(8676002)(64756008)(6916009)(478600001)(9686003)(186003)(6506007)(26005)(316002)(54906003)(7696005)(71200400001)(41300700001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?tfeXjnCHWLZ9tICCuL6ajoQ1DalnPUHQrvbdOhtd5PaIbP2W6bwlR8tEgN?=
 =?iso-8859-1?Q?tDuSg1/HXrxaTxAptYQNO2rPZ0rovWJt6BkO1pBxEvez5ZRDtcMThF3Qyk?=
 =?iso-8859-1?Q?Oh0nDqjj7erxERzoMen9D6TAavbrG1YlL485FlKFIcnWSWpg6nKVmGZmp6?=
 =?iso-8859-1?Q?gBLtdLIcLx9yCF1hT1H/FE7qib38+Q8FL7oNmWxuOW4IhuT3nHdxrEn0CL?=
 =?iso-8859-1?Q?3WWkXdOZky3haAxQDoPquaur4/+8dRu61I/n6s7x2A6k2adYwRAKboNnWP?=
 =?iso-8859-1?Q?4jrfxBE3KSAkieIi8b8gYULaKCM6Qjxg0Tag6ueuqIQ7pUxvYbnILsMSf6?=
 =?iso-8859-1?Q?55FD2YTFc4dmY1bCebqutK7juQQpdavQh2gTnr6J69pJ7CBdZCnNPhqbkK?=
 =?iso-8859-1?Q?FkCFwM2mcZqbPrtWE9401IFsOYfaMxmTb8Pm3Dew5KWiTisUEMDR06NLIr?=
 =?iso-8859-1?Q?NQNM0tIKZGN9ov67du6WCqvcCIfg8g+9DhDDOH0MSlc0LpwyuYaWPwciNE?=
 =?iso-8859-1?Q?ZHDkNHzEWzCway3KokRn5o9d7EzgOPDu8SPWikZ76sU6Ujen9LHw+mlcZG?=
 =?iso-8859-1?Q?HbGM6uDQGCTWw4qPpfTKSMjvnDD6N1tNTeTD6i8IlAuWZuXqgfDLE3aOzJ?=
 =?iso-8859-1?Q?ww9q1CjPmGEqB8Fh7zNIz82Jdys4YHK+X0pNuH3s7sH/jOSP82o9qZutS7?=
 =?iso-8859-1?Q?vCkDqfjBosvcXg+EcZhpnYTD0ESxlDGmErTMPyXkURHFHy+jnzc+Stsvgz?=
 =?iso-8859-1?Q?GcT0el8K8KXr7VMQnKNow19i+nJH3UMM6VvYWZeEsorIiMA9ZSvzyXSWo9?=
 =?iso-8859-1?Q?Pf5/OxthfB1n/BTSeYL+dTRLfcfWZQZvMBm9UREz+h+6xxgMA6JtgjAqxo?=
 =?iso-8859-1?Q?QjvCKvkoOtrz+ZchdirrVjXAzErzGLKl1PQxE7OetrF19AF5g29gJlOkKK?=
 =?iso-8859-1?Q?6ySHIea2lkGn8EJVki6fkGTZPHquTrnn8nTLoLiJSZtZxdgx2uM+kpmZDk?=
 =?iso-8859-1?Q?kcxon5ndDex8yMxSOhvsiLOAUEDgsJ03lGdYP7NCq9g67YYqj5lyzSwqd8?=
 =?iso-8859-1?Q?C/4t1Yb+wpyHP3NgcsvOK9UDaLnxJTCa83fRxQURv6PCxS6sjjzOYma6Fm?=
 =?iso-8859-1?Q?2HCr6wAUbAF6E8XE0OCrIGxB+D8N61cj29xiD3Fg+Qb8gsotYXV1b+14qy?=
 =?iso-8859-1?Q?5q3X1eE3T1FMOKEixTFz50dupstLa6o80pKRMoZwnZYQA+XG2FjZ7ejFQD?=
 =?iso-8859-1?Q?tI+BAdDDU2Q+APEj3H8tQY1dcLUDIzWQ7Rl78lGFP+IjnEL9bnndDNpJ0J?=
 =?iso-8859-1?Q?RV4Wenhf4/QU+V0jyxR10UipvWHrX31DiQrB9cli7cBoaxtSQoqf+Mb7bL?=
 =?iso-8859-1?Q?TMkTXzqzTbygIRdCuPF0hHVpx0/8NLgVhP3UmHAvX1B2Cos2mQWo62z3a+?=
 =?iso-8859-1?Q?GBubAcDv5Jsvr0FgqAwwFbfnBEJhDPWCwtQFsJpgDL5IDYe5jrMw7m1M6b?=
 =?iso-8859-1?Q?Jvi+vKrKltdeHxb7kCALbe2jpF4vHYi4EtI6l3ig/H/QVBowysPln1sUiR?=
 =?iso-8859-1?Q?G4SqQweExC+EC/4vB1KVIKwmWyDihzv1ez81lwaimvfxr/4HGv1599ZL5D?=
 =?iso-8859-1?Q?O6UQ+MTqtEZm0ZHMInIkvfwSo46snR84jZ6PGlEl+nNotqH0ileAXF4A?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b39ccad-e51a-48eb-f4fc-08daf7ca1435
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 14:00:52.0725
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g3JMvdIxVzcee2G1Pq30xwq8l9eHNP9hZ7jQyteVmSScezJKhvMM1/vLiRP3z02xywxCq3u9uB4cUWuKtQswV0EtzdaAWLtuhyyJUD2zD1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0753
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Right now I'm working on some extra checks for our Gitlab CI, and I'm a bit puzzled about how can I implement a nicely looking script that would execute "make CHECK_DTBS=y" on every touched device tree file. dts files are not a problem, but when it comes to .dtsi, which might be included in other .dtsi, makes the logic more complex than I would like to. I'm sure some of you might have a working solution for this scenario, and would appreciate if you could share your scripts/template. :)

Best regards,
Andrejs Cainikovs.

