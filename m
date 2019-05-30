Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 162A43031A
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 22:01:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726308AbfE3UB4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 16:01:56 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:33387 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbfE3UB4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 16:01:56 -0400
Received: by mail-lj1-f195.google.com with SMTP id w1so7342929ljw.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 13:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:from:to:cc:references:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MUbvKOZjHQ2DZnAo5xUG18Kz5cvw1Q+mR0SxR3I7LCo=;
        b=xQBNCO4QPPfMMrzDtkIkXgFxXKk4pFSS57kWksuyppFYmw4pH7gdxyjQ8SnUUspOdf
         Zd09HLQWDTHKdYvfPxTaKz9TDTbpM8rnJAGNVnUypy76KWi94LwchsO/g6vLZtvdtim+
         IkwTlkkY+OQSyNin/QL7FhPp0+gKc2+QcmpCck3AzaiRXux19d/le9YnCrwxTuuZH4sj
         OxAXpONmJTis7TCkB8Rg7pO9uvy2w70o7jTt4xX2lfI9u/l96uli85nepUMf4eeH4CAp
         eg82IXAHCzoNpE5Y0Z0EejOM1/GRcxp5/BSf1CgrvQdlcDq7IyquwenBvN8eUsazZSTJ
         395g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=MUbvKOZjHQ2DZnAo5xUG18Kz5cvw1Q+mR0SxR3I7LCo=;
        b=s6dyDUPpM52JhNw5w1P6g6Fhl0v0zMd8aUDcvv7skWYji8sdT6iFENjYX1M9GxCKvK
         w7P9lhmiHb/tSqPE9d8Q9HGNktwVhkGeSy/kS4z+bI8HgPkjF2ExrVlhD82yUMOBYCeZ
         UnB/C01sqcW0kwdeUkKjsOwYCpWnf4NvAilojdDuGMjR7blBLgfRmpV/yIKm9FrTmgwl
         p78qC/aee0KWemMq2/gy+/GcCp8Wp5hXzJSQqKUPhaKVMy4sdFVRGhTZGRwruTsq45Rt
         aNzp9hpWFsX/r5642lINxFwFn9X8LGesc5ns9cPLCOOTQs8UvxqSKVEElHPCuJq5xGn0
         6SyQ==
X-Gm-Message-State: APjAAAUtHzewQ8nEKqD7A5hbGFAeXO/+Qla3ioWC5TvkljPf6DFN03AX
        PXBXao/YjvKmamhusd335x+TjQ==
X-Google-Smtp-Source: APXvYqwdFoyFcSwyXf5nBwYO1JkyV80QXDBlbqq5o/XaWRYTCVQMz3JkaX/mAgOW0gA2ccm/tVRLAQ==
X-Received: by 2002:a2e:9a94:: with SMTP id p20mr3409472lji.2.1559246513972;
        Thu, 30 May 2019 13:01:53 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.85.65])
        by smtp.gmail.com with ESMTPSA id r76sm152622lfr.6.2019.05.30.13.01.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 13:01:53 -0700 (PDT)
Subject: [PATCH RFC 1/2] dt-bindings: mfd: document Renesas RPC-IF bindings
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Cc:     Mason Yang <masonccyang@mxic.com.tw>, linux-spi@vger.kernel.org
References: <ad503d6e-4739-9744-64b4-fd13f44ea6fe@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <ef926f7b-fb0e-19f3-1ab4-f8a0763a0a3b@cogentembedded.com>
Date:   Thu, 30 May 2019 23:01:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <ad503d6e-4739-9744-64b4-fd13f44ea6fe@cogentembedded.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Renesas Reduced Pin Count Interface (RPC-IF) allows a SPI flash or
HyperFlash connected to the SoC to be accessed via the external address
space read mode or the manual mode.

Document the device tree bindings for the Renesas RPC-IF found in the R-Car
gen3 SoCs.

Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.

Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
 Documentation/devicetree/bindings/mfd/rpc-if.txt |   52 +++++++++++++++++++++++
 1 file changed, 52 insertions(+)

Index: mfd/Documentation/devicetree/bindings/mfd/rpc-if.txt
===================================================================
--- /dev/null
+++ mfd/Documentation/devicetree/bindings/mfd/rpc-if.txt
@@ -0,0 +1,52 @@
+Renesas Reduced Pin Count Interface (RPC-IF)
+--------------------------------------------
+
+Renesas RPC-IF allows a SPI flash or HyperFlash connected to the SoC to
+be accessed via the external address space read mode or the manual mode.
+
+Required properties:
+- compatible: should be an SoC-specific compatible value, followed by
+		"renesas,rcar-gen3-rpcif" as a fallback.
+		supported SoC-specific values are:
+		"renesas,r8a77980-rpcif" (R-Car V3H),
+		"renesas,r8a77995-rpcif" (R-Car D3).
+- reg: should list 3 register areas:
+	1st for the RPC-IF registers,
+	2nd for the direct mapping read mode,
+	3rd for the write buffer area.
+- reg-names: should contain "regs", "dirmap", and "wbuf".
+- clocks: should contain the clock phandle/specifier pair for the module clock.
+- power-domains: should contain the power domain phandle/specifier pair.
+- resets: should contain the reset controller phandle/specifier pair.
+- #address-cells: should be 1.
+- #size-cells: should be 0.
+
+The flash chip itself should be represented by a subnode of the RPC-IF node.
+The flash interface is selected based on the "compatible" property of this
+subnode:
+- if it contains "jedec,spi-nor", then SPI is used;
+- if it contains "cfi-flash", then HyperFlash is used.
+
+Example:
+
+	rpc: spi@ee200000 {
+		compatible = "renesas,r8a77995-rpcif",
+			     "renesas,rcar-gen3-rpcif";
+		reg = <0 0xee200000 0 0x200>,
+		      <0 0x08000000 0 0x4000000>,
+		      <0 0xee208000 0 0x100>;
+		reg-names = "regs", "dirmap", "wbuf";
+		clocks = <&cpg CPG_MOD 917>;
+		power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
+		resets = <&cpg 917>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		flash@0 {
+			compatible = "jedec,spi-nor";
+			reg = <0>;
+			spi-max-frequency = <40000000>;
+			spi-tx-bus-width = <1>;
+			spi-rx-bus-width = <1>;
+		};
+	};
