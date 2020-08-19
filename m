Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3E724935A
	for <lists+devicetree@lfdr.de>; Wed, 19 Aug 2020 05:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726803AbgHSDRb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Aug 2020 23:17:31 -0400
Received: from pb-smtp1.pobox.com ([64.147.108.70]:60964 "EHLO
        pb-smtp1.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726751AbgHSDRb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Aug 2020 23:17:31 -0400
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 975C97E063;
        Tue, 18 Aug 2020 23:17:29 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from:to:cc
        :subject:date:message-id:in-reply-to:references:mime-version
        :content-transfer-encoding; s=sasl; bh=SiP7CI0tTp4HA0A8NQ/DRZtqb
        g8=; b=EtFjS/EL57ammDqbURKNKbegKdy+4+oRDVoYGF/oCas6s2GZckFPIG/uD
        odGKzeP9C9pvokArkRZiyKm2Wv1eZhxv+YtqhYiFPPNpX2lCGVvTl/qNoNvnDAOX
        SSUBzV08gU077E0QlNnDfc8cpzMSqohh1xW2G5TMsJnSKquJHU=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 8B92C7E061;
        Tue, 18 Aug 2020 23:17:29 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:mime-version:content-transfer-encoding; s=2016-12.pbsmtp; bh=ZPVIeXZhDotUD6ChI5NjLfr72DksiHq6CkKSRvO0FK8=; b=zwL4sb34kdW1NGxnSqYBsp05pUg4LUwzRvAXTs0QENr7gS36BHnNsr7k0QpAlpphfQ9Vw9qI/2Nl5UqqIP9CWgBxrNRb2UAtMKYYjnd8paNoSYazHrCxMRZ339UoK6G4zqORQ4LsnzkoL3wHe42qyG7DerxOD+qLlHxoS21SMFY=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 112877E060;
        Tue, 18 Aug 2020 23:17:29 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTP id 424E52DA0DED;
        Tue, 18 Aug 2020 23:17:28 -0400 (EDT)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Pitre <npitre@baylibre.com>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: [PATCH v2 1/2] dt-bindings: i3c: MIPI I3C Host Controller Interface
Date:   Tue, 18 Aug 2020 23:17:22 -0400
Message-Id: <20200819031723.1398378-2-nico@fluxnic.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200819031723.1398378-1-nico@fluxnic.net>
References: <20200819031723.1398378-1-nico@fluxnic.net>
MIME-Version: 1.0
X-Pobox-Relay-ID: 834F90E0-E1CA-11EA-9B2A-01D9BED8090B-78420484!pb-smtp1.pobox.com
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Pitre <npitre@baylibre.com>

The MIPI I3C HCI (Host Controller Interface) specification defines
a common software driver interface to support compliant MIPI I3C
host controller hardware implementations from multiple vendors.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 .../devicetree/bindings/i3c/mipi-i3c-hci.yaml | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.ya=
ml

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Do=
cumentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
new file mode 100644
index 0000000000..8fc18ea922
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -0,0 +1,41 @@
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
+    mipi_i3c_hci@a0000000 {
+      compatible =3D "mipi-i3c-hci";
+      reg =3D <0xa0000000 0x2000>;
+      interrupts =3D <89>;
+    };
--=20
2.26.2

