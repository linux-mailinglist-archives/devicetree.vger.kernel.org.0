Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4F553B1D2
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 04:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233271AbiFBC0o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 22:26:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232838AbiFBC0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 22:26:43 -0400
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CB0982175
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 19:26:41 -0700 (PDT)
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
        by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220602022639epoutp0170f96812e20bb0bb8d1cc5da983c9c71~0rKeuwCGe2856828568epoutp01d
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 02:26:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220602022639epoutp0170f96812e20bb0bb8d1cc5da983c9c71~0rKeuwCGe2856828568epoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1654136799;
        bh=JmNflMHvC0gjq9eUUOznOuoK8xZI/6ykjtQ3IjZvnrE=;
        h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
        b=nPo25aeMZ6bLN+NJUn3XKibfOD6+FXIgSASFN9dm2PLEFePiY8xvutIfi09qNpc/u
         mxgN7buhS5SIXrS6Ww0OGhp66/ulgWJsRxTOkp+DrsQvTpU8sH6YP10W1u64eu5hJQ
         BLHYbKIuKiR8RhkLhGPjL4bEw3FR0sodaMIMpXs0=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTP id
        20220602022638epcas2p4329194d41573292952f082b58af8ed0a~0rKeHfIwx0360603606epcas2p4V;
        Thu,  2 Jun 2022 02:26:38 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.91]) by
        epsnrtp2.localdomain (Postfix) with ESMTP id 4LD8z15l3mz4x9Q9; Thu,  2 Jun
        2022 02:26:37 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
        epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
        03.A5.09694.DDF18926; Thu,  2 Jun 2022 11:26:37 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
        epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
        20220602022637epcas2p14b5e3f69156a217bea556ce44a78ae69~0rKdCmFpP1104911049epcas2p1J;
        Thu,  2 Jun 2022 02:26:37 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
        epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220602022637epsmtrp19edc6851557d51352f081b6201d52c5b~0rKdB0k0y0179701797epsmtrp1V;
        Thu,  2 Jun 2022 02:26:37 +0000 (GMT)
X-AuditID: b6c32a48-495ff700000025de-af-62981fdd793f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
        epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
        10.4B.11276.DDF18926; Thu,  2 Jun 2022 11:26:37 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
        (KnoxPortal) with ESMTPA id
        20220602022637epsmtip1e156e56ad5f1fd60d86c434b9a576e57~0rKc0OSmd0551205512epsmtip1L;
        Thu,  2 Jun 2022 02:26:37 +0000 (GMT)
From:   "Chanho Park" <chanho61.park@samsung.com>
To:     "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>,
        "'Kishon Vijay Abraham I'" <kishon@ti.com>,
        "'Vinod Koul'" <vkoul@kernel.org>,
        "'Alim Akhtar'" <alim.akhtar@samsung.com>,
        "'Rob Herring'" <robh+dt@kernel.org>,
        "'Krzysztof Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc:     <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <45ef694a-472c-23d8-1514-f57efe5a35a1@linaro.org>
Subject: RE: [PATCH 2/4] phy: samsung: ufs: support secondary ufs phy
Date:   Thu, 2 Jun 2022 11:26:37 +0900
Message-ID: <004501d87628$2f65a6b0$8e30f410$@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFkEPmYnHf0xjkGXTTWfn5L9kzmHgKG74n8AmlcE0cBsL5TUq3vJLyA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGJsWRmVeSWpSXmKPExsWy7bCmme5d+RlJBgtm6Fk8mLeNzWL+kXOs
        Fhee9rBZ9L14yGyx9/VWdotNj6+xWkxY9Y3FonXvEXaLnXdOMDtwemxa1cnmcefaHjaPzUvq
        Pfq2rGL0OH5jO5PH501yAWxR2TYZqYkpqUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5
        ibmptkouPgG6bpk5QEcpKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgrMC/SKE3OL
        S/PS9fJSS6wMDQyMTIEKE7Iz7n39w16wj7Viz4VNjA2M61m6GDk5JARMJC4/XMPcxcjFISSw
        g1Hi261zTBDOJ0aJqZ8fsUI43xglnnV/ZYNp2f3tHVTLXkaJXR86WSCcF4wSF7Z1MoJUsQno
        S7zs2AbWLiIwn0niaedVJpAEs0C2xKvWRexdjBwcnAJ2Ek1r4kDCwgKuEk/vXQDrZRFQkZhz
        djEziM0rYCnxcMJbVghbUOLkzCcsEGO0JZYtfM0McZGCxM+ny8BqRATcJJYencEIUSMiMbuz
        DexSCYG1HBJPZ02DanCRWNd/mx3CFpZ4dXwLlC0l8bK/Dcoullg66xMTRHMDo8Tlbb+g/jeW
        mPWsnRHkAWYBTYn1u/RBTAkBZYkjt6Bu45PoOPyXHSLMK9HRJgTRqC5xYPt0aLjLSnTP+cw6
        gVFpFpLPZiH5bBaSD2Yh7FrAyLKKUSy1oDg3PbXYqMAEHtvJ+bmbGMEJVstjB+Pstx/0DjEy
        cTAeYpTgYFYS4S3ZNTVJiDclsbIqtSg/vqg0J7X4EKMpMKwnMkuJJucDU3xeSbyhiaWBiZmZ
        obmRqYG5kjivV8qGRCGB9MSS1OzU1ILUIpg+Jg5OqQamA4uMBc8w2UXM/5deYS4T2PPvQJ0v
        6/3TL/vfX9d4w+q6O+y4YLfPibVKZgc51LbVP8/ZV9rcVHnurDmr2z3+PTl5jt/e6eRsrNq1
        ZfvhS9Hvk41jBEMzuWXYN1dlpFiuOHBASFh/AqeDxyGFF//WLUnddtpb+h5nt/u2c2vNHdQc
        tto3LluoeWnFLfUsO6sinQPSE75Z9tosE1DW2nHsTIrJQ59bT0SnFve/+f3a7TpzRhx78oUl
        /u+UV098L+e1XH3dZKdq1y8vO1vmsU2JCjxz+GS5k9QSjglGobYFwpVXv187E73Wb5+I9adI
        tyLllQlmdfWn2Jp2e9o8l81z2l01p6LTdpKFj/SnBbeUWIozEg21mIuKEwGoWHrkOQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsWy7bCSnO5d+RlJBl8uSVg8mLeNzWL+kXOs
        Fhee9rBZ9L14yGyx9/VWdotNj6+xWkxY9Y3FonXvEXaLnXdOMDtwemxa1cnmcefaHjaPzUvq
        Pfq2rGL0OH5jO5PH501yAWxRXDYpqTmZZalF+nYJXBkfFq1iL9jJWjF95TX2BsYVLF2MnBwS
        AiYSu7+9Y+5i5OIQEtjNKLHo9ytmiISsxLN3O9ghbGGJ+y1HWEFsIYFnjBKbD4qC2GwC+hIv
        O7axgjSLCCxmkug/cZYNJMEskCvx4+0XdoiGr4wSR1badDFycHAK2Ek0rYkDCQsLuEo8vXeB
        EcRmEVCRmHN2MdheXgFLiYcT3rJC2IISJ2c+YYEYqS3x9OZTOHvZwtdQdypI/Hy6DKxeRMBN
        YunRGYwQNSISszvbmCcwCs9CMmoWklGzkIyahaRlASPLKkbJ1ILi3PTcYsMCw7zUcr3ixNzi
        0rx0veT83E2M4EjT0tzBuH3VB71DjEwcjIcYJTiYlUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7E
        KM3BoiTOe6HrZLyQQHpiSWp2ampBahFMlomDU6qB6aTkUcm8ukt39vMU70juOTjXtnr2nymb
        nK59tD7CoR5eKXPweGOg0o+Kjin/JaWFDup/kP2bfEK9asOqnSlqeZlrumbHywSG6d+boCAk
        MvGJ11YR3YrEw1KmFtwWXzdPkCz19vGJjmvvfPs/6/XGyaF3cthbWvPu/H18nJ3l8rT68Msb
        Qpcueu3twSZ57Enu3wUB+UxzmU8tM+c7NvfDis9qc6w5u2Y3SngZH9wsfe+okPXBlb+2ddxo
        v6+9XXnlsf5vV5ad9N9w7rCB9C1Gxhm/5sp6Bs9xKudYvVA53YyXM7pFtPNYabL15IyTB/sD
        /+yaM2+JWvSVx51qzw1THU6d0J6UWXLj2Mb+pfmrZimxFGckGmoxFxUnAgAl1zZHIwMAAA==
X-CMS-MailID: 20220602022637epcas2p14b5e3f69156a217bea556ce44a78ae69
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c
References: <20220531121913.48722-1-chanho61.park@samsung.com>
        <CGME20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c@epcas2p3.samsung.com>
        <20220531121913.48722-3-chanho61.park@samsung.com>
        <45ef694a-472c-23d8-1514-f57efe5a35a1@linaro.org>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > +	u32 isol_offset;
> >  	int err =3D 0;
> >
> >  	match =3D of_match_node(samsung_ufs_phy_match, dev->of_node); =40=40
> > -328,7 +329,11 =40=40 static int samsung_ufs_phy_probe(struct
> platform_device *pdev)
> >  	phy->dev =3D dev;
> >  	phy->drvdata =3D drvdata;
> >  	phy->cfg =3D (struct samsung_ufs_phy_cfg **)drvdata->cfg;
> > -	phy->isol =3D &drvdata->isol;
> > +	phy->isol =3D (struct pmu_isol *)&drvdata->isol;
>=20
> No casts are needed for proper code. If you need it - code is not proper.

To change a value of phy->isol, I need to allocate its own isol data and co=
pying whole data from drvdata instead of using drvdata->isol pointer.

Best Regards,
Chanho Park

