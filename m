Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCD5E4908E4
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 13:43:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239987AbiAQMnU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 07:43:20 -0500
Received: from pb-smtp1.pobox.com ([64.147.108.70]:51846 "EHLO
        pb-smtp1.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240002AbiAQMnT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 07:43:19 -0500
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 59F8F10CFB2;
        Mon, 17 Jan 2022 07:43:18 -0500 (EST)
        (envelope-from sakib@darkstar.site)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=from:to:cc
        :subject:date:message-id:in-reply-to:references:mime-version
        :content-transfer-encoding; s=sasl; bh=f0AlLUfRzkYVt5wQ5V5E+WuOQ
        hXu94EtTB2kwhRzmaM=; b=T55NzSTbB62XGFKxxkGi17J85nvNT+iAsS9+dZwuC
        zTbwZbZNpz6/RbBmFlZrkm7Uuitb53faAb+3dROo+i9vPKskRk5bGL3zODzRs3Fz
        bZuRc1JD89WyVT01F3OIBUO1NJG9OSvtxoul8HGRP8cdSGC4LjqOFnwWyZ3/gHGE
        5E=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 429ED10CFB1;
        Mon, 17 Jan 2022 07:43:18 -0500 (EST)
        (envelope-from sakib@darkstar.site)
Received: from localhost (unknown [95.67.114.216])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 9854610CFB0;
        Mon, 17 Jan 2022 07:43:17 -0500 (EST)
        (envelope-from sakib@darkstar.site)
From:   Sergiy Kibrik <Sergiy_Kibrik@epam.com>
To:     xen-devel@lists.xenproject.org
Cc:     Sergiy Kibrik <Sergiy_Kibrik@epam.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Julien Grall <julien@xen.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: arm: xen: document Xen iommu device
Date:   Mon, 17 Jan 2022 12:32:50 +0000
Message-Id: <20220117123251.140867-2-Sergiy_Kibrik@epam.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220117123251.140867-1-Sergiy_Kibrik@epam.com>
References: <20220117123251.140867-1-Sergiy_Kibrik@epam.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: 0B6155C2-7793-11EC-864F-5E84C8D8090B-90055647!pb-smtp1.pobox.com
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In IOMMU-capable system hypervisor usually takes over IOMMU control.
Generally guest domains don't need to care about IOMMU management and tak=
e any
extra actions. Yet in some cases a knowledge about which device is protec=
ted
may be useful for privileged domain.

In compliance with iommu bindings this can be achieved with device-level
iommus property specified with dummy Xen iommu device.

Signed-off-by: Sergiy Kibrik <Sergiy_Kibrik@epam.com>
---
 Documentation/devicetree/bindings/arm/xen.txt | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/xen.txt b/Documentatio=
n/devicetree/bindings/arm/xen.txt
index db5c56db30ec..98efa95c0d1b 100644
--- a/Documentation/devicetree/bindings/arm/xen.txt
+++ b/Documentation/devicetree/bindings/arm/xen.txt
@@ -58,3 +58,29 @@ Documentation/arm/uefi.rst, which are provided by the =
regular UEFI stub. However
 they differ because they are provided by the Xen hypervisor, together wi=
th a set
 of UEFI runtime services implemented via hypercalls, see
 http://xenbits.xen.org/docs/unstable/hypercall/x86_64/include,public,pla=
tform.h.html.
+
+* XEN IOMMU device
+
+In compliance with iommu bindings Xen virtual IOMMU device node represen=
ts
+hypervisor-managed IOMMU [1]. Platform devices specified as IOMMU master=
s of
+this xen-iommu device are protected by hypervisor-managed platform IOMMU=
.
+
+Required properties:
+
+- compatible:	Should be "xen,iommu-el2-v1"
+- #iommu-cells: must be 0
+
+Example:
+
+xen-iommu {
+	compatible =3D "xen,iommu-el2-v1";
+	#iommu-cells =3D <0>;
+};
+
+video@fe001000 {
+	...
+	/* this platform device is IOMMU-protected by hypervisor */
+	iommus =3D <&xen-iommu 0x0>;
+};
+
+[1] Documentation/devicetree/bindings/iommu/iommu.txt
--=20
2.25.1

