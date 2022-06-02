Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AC4F53B1C7
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 04:50:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233182AbiFBCTi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 22:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232838AbiFBCTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 22:19:37 -0400
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE7E129A621
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 19:19:34 -0700 (PDT)
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
        by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220602021931epoutp01f89fc6b7be3be1b730cb28f36324a513~0rEQo1Iw72205522055epoutp01y
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 02:19:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220602021931epoutp01f89fc6b7be3be1b730cb28f36324a513~0rEQo1Iw72205522055epoutp01y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1654136371;
        bh=5UbZAZ4/vw4V4fY9/fRNGPqRaCZN1GAs3RApsOMRXZA=;
        h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
        b=JIeo9IN6tQgGRF0dszAIoGcMgkC+/ALhCFDMc7SRQfZzXt4TfFH/6eRzazAuU5dyr
         NZVoW9LbknmrwJvFbwxIjQF3VsvkKa6LurSY6K/Ayxd8D+KOZKjWXISfu6pmyXALYJ
         1QF87K+R5VaEgIjS9h9dzhtodtqGWF7MTStJo70k=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
        epcas2p3.samsung.com (KnoxPortal) with ESMTP id
        20220602021931epcas2p3844019fbe9cafa10dfb14dddafafbcca~0rEP8PU4J2755627556epcas2p3o;
        Thu,  2 Jun 2022 02:19:31 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.97]) by
        epsnrtp3.localdomain (Postfix) with ESMTP id 4LD8pn1SS8z4x9QF; Thu,  2 Jun
        2022 02:19:29 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
        epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
        3C.08.09764.F2E18926; Thu,  2 Jun 2022 11:19:27 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
        20220602021927epcas2p4e3cedc5b88489657a6d1b8f0c1ef1799~0rEMIYFmJ0247802478epcas2p45;
        Thu,  2 Jun 2022 02:19:26 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
        epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220602021926epsmtrp19327f6d536cbfae9d23ec659dd054a24~0rEL-TMq52964629646epsmtrp1M;
        Thu,  2 Jun 2022 02:19:26 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-e9-62981e2fa473
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
        epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
        05.8A.11276.E2E18926; Thu,  2 Jun 2022 11:19:26 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip2.samsung.com
        (KnoxPortal) with ESMTPA id
        20220602021926epsmtip2dada802b8d2c98ba78e2762e6e64390b~0rELzXjeu1754317543epsmtip2h;
        Thu,  2 Jun 2022 02:19:26 +0000 (GMT)
From:   "Chanho Park" <chanho61.park@samsung.com>
To:     "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>,
        "'Kishon Vijay Abraham I'" <kishon@ti.com>,
        "'Vinod Koul'" <vkoul@kernel.org>,
        "'Alim Akhtar'" <alim.akhtar@samsung.com>,
        "'Rob Herring'" <robh+dt@kernel.org>,
        "'Krzysztof Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc:     <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <5fc17d02-d28c-2ad2-8a8f-dfeaf6712d6f@linaro.org>
Subject: RE: [PATCH 3/4] arm64: dts: exynosautov9: add secondary ufs devices
Date:   Thu, 2 Jun 2022 11:19:26 +0900
Message-ID: <000201d87627$2ebeadc0$8c3c0940$@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFkEPmYnHf0xjkGXTTWfn5L9kzmHgHnKlaoAXr+f0UB+sAuR635RKTA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOJsWRmVeSWpSXmKPExsWy7bCmha6+3Iwkg/UfpSwezNvGZjH/yDlW
        iwtPe9gs+l48ZLbY+3oru8Wmx9dYLSas+sZi0br3CLvFzjsnmB04PTat6mTzuHNtD5vH5iX1
        Hn1bVjF6HL+xncnj8ya5ALaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8
        xNxUWyUXnwBdt8wcoKOUFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQXmBXrFibnF
        pXnpenmpJVaGBgZGpkCFCdkZN+/MYio4ylXxq2k1SwNjB0cXIyeHhICJRN+hTWxdjFwcQgI7
        GCVeNH5hhHA+MUocnP2KBcL5xihx8uVjVpiW9y/b2SESexklTu+bxwzhvGCUuN62nBmkik1A
        X+JlxzZWkISIwHwmiaedV5lAEswC2RKvWhexg9icAnYS55sPsoHYwgI+Ek1Pp4OtYBFQkbiz
        ug3M5hWwlPi0YgEThC0ocXLmExaIOdoSyxa+ZoY4SUHi59NlYPUiAm4SJ//vZIeoEZGY3dkG
        dp2EwEIOiXVrp7BBNLhILD38hQXCFpZ4dXwLO4QtJfGyvw3KLpZYOusTE0RzA6PE5W2/oJqN
        JWY9awcGEwfQBk2J9bv0QUwJAWWJI7egbuOT6Dj8lx0izCvR0SYE0agucWD7dKitshLdcz6z
        TmBUmoXks1lIPpuF5INZCLsWMLKsYhRLLSjOTU8tNiowgkd3cn7uJkZwitVy28E45e0HvUOM
        TByMhxglOJiVRHhLdk1NEuJNSaysSi3Kjy8qzUktPsRoCgzricxSosn5wCSfVxJvaGJpYGJm
        ZmhuZGpgriTO65WyIVFIID2xJDU7NbUgtQimj4mDU6qBySnx6S+DOestZnZ1hdckqoo37yrW
        +DPnc/b9TW3pc8zMza91frlbvbCCsY+jP0a81oMv+uKsmTcPy9zee+BNm4ZK9/9b1v8PZElI
        PXzyh+9xUszLUCOfb/6zmY2tRIULA949zfF58TiCJfzMj7qPa4z9RE/cNoxRs8wrdLi3YQt3
        w2eHrihpdZ7pk3uuqrz/nZ385dziuezKv6bffHCoav362zN99jLn6M7nnb1oQsSrJcFPNpxU
        tex+kad63+GceP6BbYYb9zTta3mdonVB5+H0dwu7fK+8NLgryt75ZJdRMve+S1cSnT1rLv3h
        suFcN6vsgnjOgzd3Ur64Tnqu8NFiF1/OFb+/bYu/3f9n8U6JpTgj0VCLuag4EQCIqo3FOgQA
        AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWy7bCSvK6e3Iwkg6mTDS0ezNvGZjH/yDlW
        iwtPe9gs+l48ZLbY+3oru8Wmx9dYLSas+sZi0br3CLvFzjsnmB04PTat6mTzuHNtD5vH5iX1
        Hn1bVjF6HL+xncnj8ya5ALYoLpuU1JzMstQifbsEroyJS/+wFHRwVVz+Np+5gfEkexcjJ4eE
        gInE+5ftQDYXh5DAbkaJ3l1LWSESshLP3u2AKhKWuN9yhBWi6BmjxKxvV1hAEmwC+hIvO7aB
        JUQEFjNJ9J84ywaSYBbIlfjx9gvU2K+MEm9ntjKBJDgF7CTONx8EKxIW8JFoejodbB2LgIrE
        ndVtYDavgKXEpxULmCBsQYmTM5+wQAzVlnh68ymcvWzha2aI8xQkfj5dBtYrIuAmcfL/TnaI
        GhGJ2Z1tzBMYhWchGTULyahZSEbNQtKygJFlFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+
        7iZGcLxpae5g3L7qg94hRiYOxkOMEhzMSiK8JbumJgnxpiRWVqUW5ccXleakFh9ilOZgURLn
        vdB1Ml5IID2xJDU7NbUgtQgmy8TBKdXAtNtJ9r5/79vw+wvz511YEZT0yErtp9miCzzT9neo
        Gj2ep8aS6yqVnXCO7fKHfBOFVfunF34x5bvbYPRbSVXseYGnYY6jSHHNnZb9B5xMvy2RcLh2
        QEbIL9Pzm1n/EY2H53rFRWs5TaIu7f5jxRfeKnqV5wvHhnfMrTt25CV90dgof9EiiYMpfple
        RaJ0w62U+FnrZlbzrw6tKgyVcb4rfIRhX0ff9y9ia4zbONZPtQi40Oez9d+BW+6nYtfffiQg
        3RPx9N8sn1yphozw4vWiIdqyfUtsfig0S50W1NR75S/y8tfqSI4JzEJFWoozFCemSzzwcLsp
        c+LETrs707kdtha0zi5QXT2fce2VTfeUWIozEg21mIuKEwGAb1EzJgMAAA==
X-CMS-MailID: 20220602021927epcas2p4e3cedc5b88489657a6d1b8f0c1ef1799
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c
References: <20220531121913.48722-1-chanho61.park@samsung.com>
        <CGME20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c@epcas2p4.samsung.com>
        <20220531121913.48722-4-chanho61.park@samsung.com>
        <5fc17d02-d28c-2ad2-8a8f-dfeaf6712d6f@linaro.org>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > +		ufs_1_phy: ufs0-phy=4017f04000 =7B
>=20
> Node name: =22phy=22 (or ufs-phy). The previous node also could be correc=
ted.

phy=4017f04000 looks better. I'll change this and make an additional patch =
to correct previous ufs0 nodes.

>=20
> > +			compatible =3D =22samsung,exynosautov9-ufs-phy=22;
> > +			reg =3D <0x17f04000 0xc00>;
> > +			reg-names =3D =22phy-pma=22;
> > +			samsung,pmu-syscon =3D <&pmu_system_controller 0x72c>;
> > +			=23phy-cells =3D <0>;
> > +			clocks =3D <&xtcxo>;
> > +			clock-names =3D =22ref_clk=22;
> > +			status =3D =22disabled=22;
> > +		=7D;
> > +
> >  		ufs_0: ufs0=4017e00000 =7B
> >  			compatible =3D=22samsung,exynosautov9-ufs=22;
> >
> > =40=40 -400,6 +411,27 =40=40 ufs_0: ufs0=4017e00000 =7B
> >  			samsung,sysreg =3D <&syscon_fsys2 0x710>;
> >  			status =3D =22disabled=22;
> >  		=7D;
> > +
> > +		ufs_1: ufs0=4017f00000 =7B
> > +			compatible =3D=22samsung,exynosautov9-ufs=22;
> > +
> > +			reg =3D <0x17f00000 0x100>,  /* 0: HCI standard */
> > +				<0x17f01100 0x410>,  /* 1: Vendor-specific */
> > +				<0x17f80000 0x8000>,  /* 2: UNIPRO */
> > +				<0x17de0000 0x2200>;  /* 3: UFS protector */
>=20
> Align these please with first <> entry.

I'll apply this on the next patchset and fix the same on ufs0 node as well.

Best Regards,
Chanho Park

