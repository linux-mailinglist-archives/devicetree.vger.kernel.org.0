Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E0E32A3686
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 23:27:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725910AbgKBW1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 17:27:47 -0500
Received: from pb-smtp1.pobox.com ([64.147.108.70]:63214 "EHLO
        pb-smtp1.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbgKBW1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 17:27:47 -0500
X-Greylist: delayed 317 seconds by postgrey-1.27 at vger.kernel.org; Mon, 02 Nov 2020 17:27:45 EST
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id E22BEA1F46;
        Mon,  2 Nov 2020 17:22:27 -0500 (EST)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from:to:cc
        :subject:date:message-id:in-reply-to:references:mime-version
        :content-transfer-encoding; s=sasl; bh=aX23A/a1IXG9GPuYRICeb7KJo
        6c=; b=TpPz958A8PWho9OJ+1NLEaed5EJWEmNfb/t9szq1QuIYZWVq6fJG3naP/
        AAKhRRvSiSyH4p0+6wkVzvqHUcYll+Yf4UEkbmLq2Ia9xlA81JWC7LkDqIlMsha2
        1N+Uq17yw4MvZpwVeZIUfXKNxFIB8ClsdkMqEOjuSzZBq81JCQ=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id D7D10A1F45;
        Mon,  2 Nov 2020 17:22:27 -0500 (EST)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:mime-version:content-transfer-encoding; s=2016-12.pbsmtp; bh=qbILXtyDACKPCCluEviBgtfJc3MEAco2Njdj8A1dt80=; b=i3KpBgUfcD3U6/egrRqI816ufFr3nVi8Qbkir1kJte+TrcMWqV3unjxUQtpFoHgWC18CPR44txQ3gPfmBwqE31J5TtNBR89awm0A3mvtC08GOV8pvI6kBPXxbOPKJXimoo/9b5xhZMojLlG1o4yZ534WEckzSfl3HzSmITWuCcA=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 5FA69A1F44;
        Mon,  2 Nov 2020 17:22:27 -0500 (EST)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTP id 8FCDF2DA0C8B;
        Mon,  2 Nov 2020 17:22:26 -0500 (EST)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Nicolas Pitre <npitre@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: [PATCH v3 1/2] dt-bindings: i3c: MIPI I3C Host Controller Interface
Date:   Mon,  2 Nov 2020 17:22:19 -0500
Message-Id: <20201102222220.1785859-2-nico@fluxnic.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201102222220.1785859-1-nico@fluxnic.net>
References: <20201102222220.1785859-1-nico@fluxnic.net>
MIME-Version: 1.0
X-Pobox-Relay-ID: E3AF80E2-1D59-11EB-B8B9-D152C8D8090B-78420484!pb-smtp1.pobox.com
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Pitre <npitre@baylibre.com>

The MIPI I3C HCI (Host Controller Interface) specification defines
a common software driver interface to support compliant MIPI I3C
host controller hardware implementations from multiple vendors.

All that is needed is an I/O area and an interrupt signal;. The hardware
is self-advertising wrt its implementor and implemented capabilities so
there is currently no details that the driver can't figure out on its own=
.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 .../devicetree/bindings/i3c/mipi-i3c-hci.yaml | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.ya=
ml

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Do=
cumentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
new file mode 100644
index 0000000000..1ceb165252
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/i3c/mipi-i3c-hci.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MIPI I3C HCI Device Tree Bindings
+
+maintainers:
+  - Nicolas Pitre <npitre@baylibre.com>
+
+description: |
+  MIPI I3C Host Controller Interface
+
+  The MIPI I3C HCI (Host Controller Interface) specification defines
+  a common software driver interface to support compliant MIPI I3C
+  host controller hardware implementations from multiple vendors.
+
+  The hardware is self-advertising for differences in implementation
+  capabilities, including the spec version it is based on, so there
+  isn't much to describe here (yet).
+
+  For details, please see:
+  https://www.mipi.org/specifications/i3c-hci
+
+properties:
+  compatible:
+    const: mipi-i3c-hci
+  reg:
+    maxItems: 1
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    i3c@a0000000 {
+      compatible =3D "mipi-i3c-hci";
+      reg =3D <0xa0000000 0x2000>;
+      interrupts =3D <89>;
+    };
--=20
2.26.2

