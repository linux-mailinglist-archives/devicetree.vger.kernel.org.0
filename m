Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A72632A6DCF
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 20:28:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726626AbgKDT2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 14:28:25 -0500
Received: from pb-smtp2.pobox.com ([64.147.108.71]:61068 "EHLO
        pb-smtp2.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725889AbgKDT2Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 14:28:25 -0500
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id 18CB9A2DAA;
        Wed,  4 Nov 2020 14:28:24 -0500 (EST)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
        :cc:subject:in-reply-to:message-id:references:mime-version
        :content-type; s=sasl; bh=G+dk0mBlfkCULTNUZaRBFLqVdz4=; b=ZZ4iPS
        oIWsAm4utT8EGv4vgwBE0vIBH8xTWR11q/DF9j3WKgfzyGFjQc9gh8QIB2BjRJni
        BkFhrX+nQY4dWfLmuPJ8HpQTSrPgdeAEwCz3AKJj27JWI3q8bV1IYywOoaO6jSbC
        62ai295OBkwY7X6BkNjC59+NQD5LLUtatEUvs=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id 0D041A2DA9;
        Wed,  4 Nov 2020 14:28:24 -0500 (EST)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type; s=2016-12.pbsmtp; bh=TNrDFyivsmri7uxFpYE9s+Jf/mb+dymkKvwe4ozyex0=; b=o+YUSEP9eVgNrVApMFASY1LNtDsROLdOnNB/PwKAboWUVwa1XVIuMwTMsMKxQaHfP47kCMrIiUXuhRQgs9VGs7oYRiVaEV3bUVIznAIN/xk3itfSmuQJfEZSQh16vubYjHLPGicB3YvhiaJtvc8fdat3DNqeJd/NhlMY5jgoTAs=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 66D10A2DA8;
        Wed,  4 Nov 2020 14:28:23 -0500 (EST)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTPSA id 4B1AE2DA0AC8;
        Wed,  4 Nov 2020 14:28:22 -0500 (EST)
Date:   Wed, 4 Nov 2020 14:28:22 -0500 (EST)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Rob Herring <robh@kernel.org>
cc:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i3c: MIPI I3C Host Controller
 Interface
In-Reply-To: <20201104183459.GA3917393@bogus>
Message-ID: <nycvar.YSQ.7.78.906.2011041420420.2184@knanqh.ubzr>
References: <20201102222220.1785859-1-nico@fluxnic.net> <20201102222220.1785859-2-nico@fluxnic.net> <20201104183459.GA3917393@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Pobox-Relay-ID: E76BBFC2-1ED3-11EB-BEA4-74DE23BA3BAF-78420484!pb-smtp2.pobox.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 4 Nov 2020, Rob Herring wrote:

> On Mon, Nov 02, 2020 at 05:22:19PM -0500, Nicolas Pitre wrote:
> > From: Nicolas Pitre <npitre@baylibre.com>
> > 
> > The MIPI I3C HCI (Host Controller Interface) specification defines
> > a common software driver interface to support compliant MIPI I3C
> > host controller hardware implementations from multiple vendors.
> > 
> > All that is needed is an I/O area and an interrupt signal;. The hardware
> > is self-advertising wrt its implementor and implemented capabilities so
> > there is currently no details that the driver can't figure out on its own.
> > 
> > Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
> > ---
> >  .../devicetree/bindings/i3c/mipi-i3c-hci.yaml | 45 +++++++++++++++++++
> >  1 file changed, 45 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
> 
> With additionalProperties added,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks. Fixed patch below.

----- >8
From: Nicolas Pitre <npitre@baylibre.com>
Subject: [PATCH] dt-bindings: i3c: MIPI I3C Host Controller Interface

The MIPI I3C HCI (Host Controller Interface) specification defines
a common software driver interface to support compliant MIPI I3C
host controller hardware implementations from multiple vendors.

All that is needed is an I/O area and an interrupt signal;. The hardware
is self-advertising wrt its implementor and implemented capabilities so
there is currently no details that the driver can't figure out on its own.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
new file mode 100644
index 0000000000..07a7b10163
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -0,0 +1,47 @@
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
+additionalProperties: false
+
+examples:
+  - |
+    i3c@a0000000 {
+      compatible = "mipi-i3c-hci";
+      reg = <0xa0000000 0x2000>;
+      interrupts = <89>;
+    };
