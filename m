Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 377CD53B1B5
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 04:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233162AbiFBCRh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 22:17:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232838AbiFBCRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 22:17:35 -0400
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A86A26AC96
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 19:17:33 -0700 (PDT)
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
        by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220602021731epoutp04b7bfe3534080e617cb5b52fefe068cb5~0rCgEqH5v1978319783epoutp04l
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 02:17:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220602021731epoutp04b7bfe3534080e617cb5b52fefe068cb5~0rCgEqH5v1978319783epoutp04l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1654136251;
        bh=Sbo2+zRPhqKyXZajYbCnUZHDedCuzlDbCzKPKOdB748=;
        h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
        b=NE2OSViqjLsxUYVXR1v/SXhxugwEdT4Jk0cm/ZaR1xS9HDAouNwcVLEsl6QmUgn+W
         RX8Jyjno7rsHvarpFNUhtcxRSjlJyWRk4KO1hNJZwcFZjXZhDgiBI7jKzwjTH0wD/2
         FTJmuu5mX7C2hbVxzsrVporeasW1KWm1pOCSAkoE=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTP id
        20220602021730epcas2p453d85d4020ef80006773680cd2196c62~0rCfcVp893212032120epcas2p48;
        Thu,  2 Jun 2022 02:17:30 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.100]) by
        epsnrtp1.localdomain (Postfix) with ESMTP id 4LD8mS3w3Lz4x9Q2; Thu,  2 Jun
        2022 02:17:28 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
        epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
        42.BE.09694.7BD18926; Thu,  2 Jun 2022 11:17:27 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
        epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
        20220602021727epcas2p3c9550c44db347dcc8760740812703dd7~0rCcYlrXt0533205332epcas2p3f;
        Thu,  2 Jun 2022 02:17:27 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
        epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220602021727epsmtrp137b5aed35baf0d69950b068f8c2768f2~0rCcXyaDK2861428614epsmtrp1C;
        Thu,  2 Jun 2022 02:17:27 +0000 (GMT)
X-AuditID: b6c32a48-495ff700000025de-6c-62981db79dac
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
        epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
        52.34.08924.6BD18926; Thu,  2 Jun 2022 11:17:26 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
        (KnoxPortal) with ESMTPA id
        20220602021726epsmtip1b2379e2eabb71d6bd55e7528cc332fe8~0rCcJzccM0162301623epsmtip1u;
        Thu,  2 Jun 2022 02:17:26 +0000 (GMT)
From:   "Chanho Park" <chanho61.park@samsung.com>
To:     "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>,
        "'Kishon Vijay Abraham I'" <kishon@ti.com>,
        "'Vinod Koul'" <vkoul@kernel.org>,
        "'Alim Akhtar'" <alim.akhtar@samsung.com>,
        "'Rob Herring'" <robh+dt@kernel.org>,
        "'Krzysztof Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc:     <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <9947e5b7-8843-1952-be93-abe67723127f@linaro.org>
Subject: RE: [PATCH 1/4] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Date:   Thu, 2 Jun 2022 11:17:26 +0900
Message-ID: <000101d87626$e74a4a30$b5dede90$@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFkEPmYnHf0xjkGXTTWfn5L9kzmHgJ3moQKAaTjEJwCzQejh63s3oZw
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCJsWRmVeSWpSXmKPExsWy7bCmme522RlJBuu2yFs8mLeNzWL+kXOs
        Fhee9rBZ9L14yGyx9/VWdotNj6+xWkxY9Y3FonXvEXaLnXdOMDtwemxa1cnmcefaHjaPzUvq
        Pfq2rGL0OH5jO5PH501yAWxR2TYZqYkpqUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5
        ibmptkouPgG6bpk5QEcpKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgrMC/SKE3OL
        S/PS9fJSS6wMDQyMTIEKE7Iztk0yKNjCUXF47mG2Bsb/rF2MnBwSAiYSBztPsXUxcnEICexg
        lNjed4EdwvnEKHF6ZRMLhPOZUWL618PsMC0vlzQzQSR2MUrcmvATbJaQwAtGiaaOMhCbTUBf
        4mXHNlaQIhGB+UwSTzuvMoEkmAWyJV61LgKbxClgJ7Hs6ywgm4NDWCBO4s0hfpAwi4CKxNYj
        88FKeAUsJZ5O+c0EYQtKnJz5hAVijLbEsoWvmSEOUpD4+XQZ2A0iAm4SM2b/ZoWoEZGY3dnG
        DHKDhMBSDollU5uZIBpcJLb1/YUGgLDEq+NboD6TknjZ3wZlF0ssnfWJCaK5gVHi8rZfbBAJ
        Y4lZz9oZQY5mFtCUWL9LH8SUEFCWOHIL6jY+iY7Df9khwrwSHW1CEI3qEge2T2eBsGUluud8
        Zp3AqDQLyWezkHw2C8kHsxB2LWBkWcUollpQnJueWmxUYAKP6+T83E2M4OSq5bGDcfbbD3qH
        GJk4GA8xSnAwK4nwluyamiTEm5JYWZValB9fVJqTWnyI0RQY1hOZpUST84HpPa8k3tDE0sDE
        zMzQ3MjUwFxJnNcrZUOikEB6YklqdmpqQWoRTB8TB6dUA9Oxr/KXnsbzN19Yrf9ehoNTQnfa
        LuU4vj2/Nf2v7RP4pegh939XuNGKNY/m6mn9CGnnum0WIq51h19DUnqbkUX1lMneqZt8qiat
        NXkyf9P7guel5otUqnyXrxaZNf+75PndjNvkXmc//LF4aUAh+7Wf7OEf5m++FiV7K8326aZF
        l/4ZnZh3cN1rQeenaZe3rfZgeFzz+PLDegWmPaVSvKvjWkU2vbe7GLiYRf6JrdzXo0Vekp9r
        3R89Szq3+NS0DYH9E5Ptig5JGi3s+P02ce6lzbmCYtKC7I5SirJLj992LWZ7Nznra5PprWes
        4eGro5wVZnyrOfKGY7NzqIyR7aVNL/r+uWgtU+oOOrEn6tFlJZbijERDLeai4kQAyr2FJjcE
        AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWy7bCSnO422RlJBm2XLCwezNvGZjH/yDlW
        iwtPe9gs+l48ZLbY+3oru8Wmx9dYLSas+sZi0br3CLvFzjsnmB04PTat6mTzuHNtD5vH5iX1
        Hn1bVjF6HL+xncnj8ya5ALYoLpuU1JzMstQifbsEroxFK6+wF8zlqHjyehJbA+Mz1i5GTg4J
        AROJl0uamboYuTiEBHYwSsxc1s8MkZCVePZuBzuELSxxv+UIK0TRM0aJJ98msoAk2AT0JV52
        bANLiAgsZpLoP3GWDSTBLJAr8ePtF3aIjq+MEke/fGQESXAK2Eks+zoLbKywQIzEsWt/mEBs
        FgEVia1H5oPFeQUsJZ5O+c0EYQtKnJz5hAViqLbE05tP4exlC19Dnaog8fPpMrB/RATcJGbM
        /s0KUSMiMbuzjXkCo/AsJKNmIRk1C8moWUhaFjCyrGKUTC0ozk3PLTYsMMpLLdcrTswtLs1L
        10vOz93ECI43La0djHtWfdA7xMjEwXiIUYKDWUmEt2TX1CQh3pTEyqrUovz4otKc1OJDjNIc
        LErivBe6TsYLCaQnlqRmp6YWpBbBZJk4OKUamOTTp+5culNfq2Qxj3KzxF+1F4fPJKWb9HoL
        Tz/N9tA9JPZCV8lUeQk5qRqPxbp/Ddo4Hv4Kvacuuzryo07JRx4txnxrO9bDV6rsk93PbdGy
        8NV/EOHEItwoxvj3FOuh32fcUlid3d7mzbvqu1ND7hj3//0+JZnpehyWem9lFs7RP3afUUNn
        zqQj8mpff+VdVah+/k1S3Hh++16vBSlzf97sjdnP37CnIrqI6d71/I1qHYVv494aKPZxXfpY
        d5O71LRh64oJRZk3PcNVy7JtFNZKvNN/+fmdm1tM7nJ/1reJnpeCNphFOjBy3qmPEbW3zZoY
        GzfxcZZwaoqS3qo/BYy+CVq/Lp1JW1NouFyJpTgj0VCLuag4EQATVGW/JgMAAA==
X-CMS-MailID: 20220602021727epcas2p3c9550c44db347dcc8760740812703dd7
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p15861df56f7253265c591a88244520446
References: <20220531121913.48722-1-chanho61.park@samsung.com>
        <CGME20220531121922epcas2p15861df56f7253265c591a88244520446@epcas2p1.samsung.com>
        <20220531121913.48722-2-chanho61.park@samsung.com>
        <9947e5b7-8843-1952-be93-abe67723127f@linaro.org>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > +    items:
> > +      - items:
> > +        - description: phandle for PMU system controller interface, us=
ed
> to
> > +                       control pmu registers bits for ufs m-phy
>=20
> Wrong indentation.

This will be fixed on the next patchset.

>=20
> > +        - description: offset of pmu control register for ufs m-phy
> > +    description:
> > +      can be phandle/offset pair. The offset can be optional.
>=20
> You made offset required, not optional.  You need minItems:1 on the level
> of second =22items=22.

Thanks. I didn't know how I make such that.. I'll apply this to next patchs=
et.

>=20
> >
> >  required:
> >    - =22=23phy-cells=22
> > =40=40 -63,7 +68,7 =40=40 examples:
> >          compatible =3D =22samsung,exynos7-ufs-phy=22;
> >          reg =3D <0x15571800 0x240>;
> >          reg-names =3D =22phy-pma=22;
> > -        samsung,pmu-syscon =3D <&pmu_system_controller>;
> > +        samsung,pmu-syscon =3D <&pmu_system_controller 0x720>;

This will be dropped as well.

Best Regards,
Chanho Park

