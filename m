Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EBF46359D0
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236662AbiKWKZ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:25:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236695AbiKWKYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:24:54 -0500
Received: from us-smtp-delivery-115.mimecast.com (us-smtp-delivery-115.mimecast.com [170.10.133.115])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C0153FB86
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maxlinear.com;
        s=selector; t=1669198159;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Mc2NS0olCt0qUzsLi0zWfYaDeL0jAmHwQjCqJZ5SsT8=;
        b=L+GVyjPqXoUVb88eR1PLWSrDEGisi7H/3q53bDnpq89e5lQotXDQ1q9XxB/f9VBcgC36gj
        +ifynGzJb3ap2gtkXeOZe8YNXcu2XHay0rEaOMzVyNBdwaexjsbLM6rrQzl3e4KjD/KVAM
        341L0QKw3RNRA70L+Vk5zTQ21znytj55rAwBavs5m2QZwgQcXEyLZjCIUetXuDJuL31mmc
        gMVHMzYdY+h/4nzahvN97tq3G6uUivZ75Wm39jUhIi3gXOV2eNc7YNxVobQQgy+KXj1Tkb
        TIhiD6Ynopk0aGqe+BmZ2HcZjTzqZKAN2Y6GE4p0c9lw4NM2LZ2nB9N+FmyMXQ==
Received: from mail.maxlinear.com (174-47-1-84.static.ctl.one [174.47.1.84])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 us-mta-60-BskRCc8PMByVuKyULDY1HA-1; Wed, 23 Nov 2022 05:09:16 -0500
X-MC-Unique: BskRCc8PMByVuKyULDY1HA-1
Received: from sgsxdev001.isng.phoenix.local (10.226.81.111) by
 mail.maxlinear.com (10.23.38.119) with Microsoft SMTP Server id 15.1.2375.24;
 Wed, 23 Nov 2022 02:09:08 -0800
From:   Rahul Tanwar <rtanwar@maxlinear.com>
To:     Rahul Tanwar <rtanwar@maxlinear.com>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ingo Molnar <mingo@redhat.com>,
        "Borislav Petkov" <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>, <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, <linux-lgm-soc@maxlinear.com>,
        <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v4 4/4] x86/of: Add support for boot time interrupt delivery mode configuration
Date:   Wed, 23 Nov 2022 18:08:50 +0800
Message-ID: <20221123100850.22969-5-rtanwar@maxlinear.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221123100850.22969-1-rtanwar@maxlinear.com>
References: <20221123100850.22969-1-rtanwar@maxlinear.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: maxlinear.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Presently, init/boot time interrupt delivery mode is enumerated
only for ACPI enabled systems by parsing MADT table or for older
systems by parsing MP table. But for OF based x86 systems, it is
assumed & hardcoded to legacy PIC mode. This causes boot time crash
for platforms which do not use 8259 compliant legacy PIC.

Add support for configuration of init time interrupt delivery mode
for x86 OF based systems by introducing a new optional boolean
property 'intel,virtual-wire-mode' for interrupt-controller node
of local APIC. This property emulates IMCRP Bit 7 of MP feature
info byte 2 of MP floating pointer structure.

Defaults to legacy PIC mode if absent. Configures it to virtual
wire compatibility mode if present.

Signed-off-by: Rahul Tanwar <rtanwar@maxlinear.com>
---
 arch/x86/kernel/devicetree.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index fcc6f1b7818f..458e43490414 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -167,7 +167,14 @@ static void __init dtb_lapic_setup(void)
 =09=09=09return;
 =09}
 =09smp_found_config =3D 1;
-=09pic_mode =3D 1;
+=09if (of_property_read_bool(dn, "intel,virtual-wire-mode")) {
+=09=09pr_info("Virtual Wire compatibility mode.\n");
+=09=09pic_mode =3D 0;
+=09} else {
+=09=09pr_info("IMCR and PIC compatibility mode.\n");
+=09=09pic_mode =3D 1;
+=09}
+
 =09register_lapic_address(lapic_addr);
 }
=20
--=20
2.17.1

