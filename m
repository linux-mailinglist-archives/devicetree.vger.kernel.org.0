Return-Path: <devicetree+bounces-932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6427A402E
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 06:51:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8099F1C20859
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 04:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7E2246AC;
	Mon, 18 Sep 2023 04:51:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAEA1FD5
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 04:51:42 +0000 (UTC)
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1371121
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 21:51:40 -0700 (PDT)
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20230918045136epoutp019f33ec452f305ebbaf538663169e6c0c~F5REGf9rU0169901699epoutp01E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 04:51:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20230918045136epoutp019f33ec452f305ebbaf538663169e6c0c~F5REGf9rU0169901699epoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1695012696;
	bh=4FgVh3QxMa/Oikq/jXVD32FeK6Wx2JOARgZJ7Ni1RI4=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ZnK4yGcXT5dFy/B9rbTeCBi/i6VCHpNiR4JcNFnSKZK7KGkXlWIowdAJTickqjyxA
	 KE5VMAQSXX9gj8dXtUW+kT3cGXLIxvjPvzRi0AtLefhqxJz+vvFtjZgAoakYIU310I
	 Gm/Cy/5oyWwCHieepLhRa+SvrawU9jcBwm396+7A=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTP id
	20230918045135epcas1p25bee43ead6f894264e78fc4145651b9d~F5RDnUjZQ0670906709epcas1p2J;
	Mon, 18 Sep 2023 04:51:35 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.38.231]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4Rpsny3thxz4x9Px; Mon, 18 Sep
	2023 04:51:34 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
	epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	19.E3.09646.657D7056; Mon, 18 Sep 2023 13:51:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
	20230918045133epcas1p42fa41cb80a1250b9db28f398b31d041c~F5RCIf5p03009130091epcas1p4D;
	Mon, 18 Sep 2023 04:51:33 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20230918045133epsmtrp14a4e100ea519bd5d6c5c025eed515910~F5RCFcE4G1930419304epsmtrp1W;
	Mon, 18 Sep 2023 04:51:33 +0000 (GMT)
X-AuditID: b6c32a37-b23ff700000025ae-b9-6507d756af12
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	B6.A4.08742.557D7056; Mon, 18 Sep 2023 13:51:33 +0900 (KST)
Received: from mediaserver.. (unknown [10.113.111.131]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230918045133epsmtip1e90f1f5e8eaf366cc5538f719f0474e0~F5RByW3bD1750717507epsmtip1j;
	Mon, 18 Sep 2023 04:51:33 +0000 (GMT)
From: Kwanghoon Son <k.son@samsung.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jszhang@kernel.org,
	guoren@kernel.org, wefu@redhat.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, inki.dae@samsung.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/3] Introduce reset driver for T-HEAD th1520 SoC
Date: Mon, 18 Sep 2023 04:51:22 +0000
Message-Id: <20230918045125.4000083-1-k.son@samsung.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGJsWRmVeSWpSXmKPExsWy7bCmgW7YdfZUg+NPxS22/p7FbrFm7zkm
	i/lHzrFavNjbyGIx6f4EFovmY+vZLPpePGS2uLxrDpvFts8tbBZ3751gsXh5uYfZom0Wv0Xr
	3iPsFi37p7A48Hm8efmSxeNwxxd2j02rOtk87lzbw+axeUm9R/9fA4/3+66yefRtWcXocan5
	OrvH501yAVxR2TYZqYkpqUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5ibmptkouPgG6
	bpk5QPcrKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgpMC/SKE3OLS/PS9fJSS6wM
	DQyMTIEKE7IzJu1bw1owmbdi5revbA2Mi7i6GDk5JARMJI6cfcECYgsJ7GCUWHVEsYuRC8j+
	xChxef1JRojEN0aJzh+VMA3dff1MEEV7GSXufHjMCOG8YZT49KALrINNQF1iSdtadpCEiMB/
	Rok3f1qZQBLMAvESJ66dYwaxhQVcJC7tOgHWwCKgKvGlcTrYHbwCFhI7zxxghlgnL7H/4Flm
	iLigxMmZT1gg5shLNG+dzQyyQEJgJYfE1Pt9TBANLhKTrj+FsoUlXh3fwg5hS0m87G+DsrMl
	jn7cywZhl0hcn7WIFcI2lti/dDJQLwfQAk2J9bv0IcKKEjt/z2WE2Msn8e5rDytIiYQAr0RH
	mxCEKS9xq7McolpU4szTj1DDPSSurT3IBlIiJBArMWeRxARG+VlIfpmF5JdZCGsXMDKvYhRL
	LSjOTU8tNiwwhkdpcn7uJkZwAtYy38E47e0HvUOMTByMhxglOJiVRHhnGrKlCvGmJFZWpRbl
	xxeV5qQWH2I0BYbuRGYp0eR8YA7IK4k3NLE0MDEzMjaxMDQzVBLnvfWsN0VIID2xJDU7NbUg
	tQimj4mDU6qBSaqmjWGmVMO6PUaFwfyOYe8SSypaJNKmK8oKt6mff5tUuyXmjULYnq/8lXeu
	MH1YezP9isdMwTr5O+GCE/7n9W4z4lFYmiPe80xBePvt7EP3uKSsL1zQWGkQpfH4/WphV7cw
	q93CXKe1dbfmzAoKfJjSxv7vZVHSe7VV2smrd65U+1sdcux0fONMXvvw33uL/+i07C1IumJm
	nmpod32Pfbfm/sCvL+yOSoUaX+7bcYsxLb/VSFjpaLuF5uoYf/lFjXdrt+rOrnUSXprM8Lpe
	Uu+duLpcyvOgr0fPT9QqW69qViYhcFY07gl/wwPWs2kBP9SM+D2mca1nblr+l0Fu4fuXQl3r
	1fr2hmhpfFJiKc5INNRiLipOBAAyF+joSQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBLMWRmVeSWpSXmKPExsWy7bCSnG7odfZUgzmthhZbf89it1iz9xyT
	xfwj51gtXuxtZLGYdH8Ci0XzsfVsFn0vHjJbXN41h81i2+cWNou7906wWLy83MNs0TaL36J1
	7xF2i5b9U1gc+DzevHzJ4nG44wu7x6ZVnWwed67tYfPYvKTeo/+vgcf7fVfZPPq2rGL0uNR8
	nd3j8ya5AK4oLpuU1JzMstQifbsEroxJ+9awFkzmrZj57StbA+Miri5GTg4JAROJ7r5+pi5G
	Lg4hgd2MEreOXWGFSIhKdFxuZOxi5ACyhSUOHy6GqHnFKLHi9io2kBo2AXWJJW1r2UESIgK9
	TBIfPi5hAkkwCyRKbPn6mhnEFhZwkbi06wQjiM0ioCrxpXE6C4jNK2AhsfPMAWaIZfIS+w+e
	ZYaIC0qcnPmEBWKOvETz1tnMExj5ZiFJzUKSWsDItIpRMrWgODc9t9iwwDAvtVyvODG3uDQv
	XS85P3cTIzgytDR3MG5f9UHvECMTB+MhRgkOZiUR3pmGbKlCvCmJlVWpRfnxRaU5qcWHGKU5
	WJTEecVf9KYICaQnlqRmp6YWpBbBZJk4OKUamA7sMBSsPm6npP/FevGjuucx8234rgfEibm8
	2W+awBxd1M7X8aTj/dPXRyY+XjdhWY3+jUsTuepLD3EmB5Xs0lt79ZKp4NZzr2OWXFJL7rad
	y6b/L/KmYGboz92lP3nZbat9M1aemHHzYvaFpV8cztSXtxhIex+vftjfVtF6pmDhCplD8Udl
	4msuZCz04vtxsDon7PHOWfY+qcv/F6VnPd111X82l9BmbfEv+79dvjz9woOzn2R/+HmLbeoq
	PlYX2TBf+cW5pu98bWIVQb9frUsVlI1Km/X7NZ/tbX+PJy4/565J4XlgL30u/8IXnj9VbKf4
	zzXNMvUIFvGw5i3VWJnLP/VD2T5N0V7vJaIP5iuxFGckGmoxFxUnAgCqHlk4+wIAAA==
X-CMS-MailID: 20230918045133epcas1p42fa41cb80a1250b9db28f398b31d041c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20230918045133epcas1p42fa41cb80a1250b9db28f398b31d041c
References: <CGME20230918045133epcas1p42fa41cb80a1250b9db28f398b31d041c@epcas1p4.samsung.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patchset adds initial support for reset driver.
Register information is from vendor kernel [1].
I sent an e-mail to get permission the original author,
but there was no answer. So I upload patch since it has GPL license.

This patch also can be tested with watchdog simply with 

watchdog0: watchdog@ffefc30000 {
        compatible = "snps,dw-wdt";
        reg = <0xff 0xefc30000 0x0 0x1000>;
        interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
        clocks = <&osc>;
        resets = <&rst TH1520_RESET_WDT0>;
};

[1] https://github.com/revyos/thead-kernel

Changelog:
v2:
https://lore.kernel.org/linux-riscv/20230912024914.3769440-1-k.son@samsung.com/
- wrong patch version
- yaml file indent
- missing vendor prefix
- drop okay

rfc:
https://lore.kernel.org/linux-riscv/20230904042559.2322997-1-k.son@samsung.com/
- dt_binding_check
- enable reset controller default

Kwanghoon Son (3):
  dt-bindings: reset: Document th1520 reset control
  reset: Add th1520 reset driver support
  riscv: dts: Add th1520 reset device tree

 .../bindings/reset/thead,th1520-reset.yaml    |  44 +++++++
 arch/riscv/boot/dts/thead/th1520.dtsi         |   7 ++
 drivers/reset/Kconfig                         |  10 ++
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-th1520.c                  | 109 ++++++++++++++++++
 .../dt-bindings/reset/thead,th1520-reset.h    |   9 ++
 6 files changed, 180 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
 create mode 100644 drivers/reset/reset-th1520.c
 create mode 100644 include/dt-bindings/reset/thead,th1520-reset.h

-- 
2.34.1


