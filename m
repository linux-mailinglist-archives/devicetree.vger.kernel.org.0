Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 157C62443FD
	for <lists+devicetree@lfdr.de>; Fri, 14 Aug 2020 05:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726732AbgHNDtX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Aug 2020 23:49:23 -0400
Received: from pb-smtp2.pobox.com ([64.147.108.71]:50649 "EHLO
        pb-smtp2.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726700AbgHNDtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Aug 2020 23:49:20 -0400
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id E83147DE7C;
        Thu, 13 Aug 2020 23:49:17 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from:to:cc
        :subject:date:message-id:in-reply-to:references:mime-version
        :content-transfer-encoding; s=sasl; bh=HLZqWAG94rdap3KJwLywc33sS
        Lg=; b=aRFVRFxnRD7VO2wfYRShmzulepTY2lnhXb1A0GRYxYQlQVVQIcNn4UnL7
        gGQ0lmP2Jxg6iRBcyXwCYc8+pLFp23D1yTbBN5cLilQ2xEvKK++KtN6F8p1F2hPU
        nvs/9ycSIK67HVsvT9dRVuww2VJZp8axRbEny7EN9U+Jizl7Bo=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id E0A9C7DE7A;
        Thu, 13 Aug 2020 23:49:17 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:mime-version:content-transfer-encoding; s=2016-12.pbsmtp; bh=nWa5DOGJXdfGY07BW0uH03Jmqn1R9rcKDPqYKkt3aj4=; b=PHE3F7O6+WjWL7sovkJyvxs0qxh14GDOkZ+cDcele20X6IZQwAQaWdW3KWpe/CBPC6oLIylXFK4/qjtGrNyq6Qyzwm3O0lpA4niTDxXHLfvAwRhywg/D3rNv/r7zvvwiHVtNYaALrsgme5peWqqpOJJutV7mBnzUMwgUdL0odFU=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 634357DE76;
        Thu, 13 Aug 2020 23:49:17 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTP id 7A3102DA0E8C;
        Thu, 13 Aug 2020 23:49:16 -0400 (EDT)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Pitre <npitre@baylibre.com>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: [PATCH 1/2] dt-bindings: i3c: MIPI I3C Host Controller Interface
Date:   Thu, 13 Aug 2020 23:48:53 -0400
Message-Id: <20200814034854.460830-2-nico@fluxnic.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200814034854.460830-1-nico@fluxnic.net>
References: <20200814034854.460830-1-nico@fluxnic.net>
MIME-Version: 1.0
X-Pobox-Relay-ID: 20B3B6F6-DDE1-11EA-A4B8-2F5D23BA3BAF-78420484!pb-smtp2.pobox.com
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
 .../devicetree/bindings/i3c/mipi-i3c-hci.txt      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.tx=
t

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.txt b/Doc=
umentation/devicetree/bindings/i3c/mipi-i3c-hci.txt
new file mode 100644
index 0000000000..8de7d7ac6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.txt
@@ -0,0 +1,15 @@
+MIPI I3C Host Controller Interface
+----------------------------------
+
+Required properties:
+- compatible : "mipi-i3c-hci"
+- reg : Should contain 1 register range (address and length)
+- interrupts : HCI interrupt
+
+Example:
+
+	mipi_i3c_hci@0xa0000000 {
+		compatible =3D "mipi-i3c-hci";
+		reg =3D <0xa0000000 0x2000>;
+		interrupts =3D <89>;
+	};
--=20
2.26.2

