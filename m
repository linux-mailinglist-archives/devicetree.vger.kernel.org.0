Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42D1E583A66
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 10:34:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233818AbiG1IeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 04:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234821AbiG1IeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 04:34:14 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE6CB624AD
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 01:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658997253; x=1690533253;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=63j+JxklQhoafEELLcsV2AyTAZIe+j5pludjZC0an74=;
  b=MXfwmOfoSAC4YrmTFhnAZ140EKoHalAW5dKlFXB8AVXQIh8kg8ciQsam
   h3dwVddlO0rInfJFeDcYnVQdtepsPKeQ+Ki/iRu8Sd+fCRJA977NcCZ3v
   M3slniI2UvHieT9g3/CYywhLoXNLwbuYFqUSTvc2/ZXbAZWAVOnBGRByF
   v6rGMgU7jii0EC6z+bWbQeF1vRy7HjjrG48HYdQKxNjc1pVqiZEixXIrg
   RXJ3b16AQNVANqogk0czhlI0xk1/miYuAx6sy88I/oJ5mSnywoRK0DaCZ
   Y0VecN0LvFEvJGc96ItPz6aJYoJmGHPotrOZiOi4ghjUdGglio3QWeQ/i
   g==;
X-IronPort-AV: E=Sophos;i="5.93,196,1654552800"; 
   d="scan'208";a="25313041"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 28 Jul 2022 10:34:11 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 28 Jul 2022 10:34:11 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 28 Jul 2022 10:34:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658997251; x=1690533251;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=63j+JxklQhoafEELLcsV2AyTAZIe+j5pludjZC0an74=;
  b=ENMLUKfroyQHnSi/HrhQXYwBxyCPJaQNSvwh/OaPv4czJ6UiiRyncF0g
   63P0kCTevwBdQtNcnT7PpvLdv7Y2jGMWw3mN4aGopnwS0i5h02x3KSyO6
   qzD052rL7yT2o4hNoM+0Rd2eN172oG+C8D7wiwJMsIL2cKmkrox/eh8Gd
   BBedDiPk1UwFrIJ/mEgffDmkKzX9ime4OlS4Ps4KMCJEt0qOPz3SkptOd
   9uWwJQxoUt4yJj4mFsIEaTQaB2PbhtgkcnKnJGNrAmBK5ajJKqpO7hwF1
   vp+6sJF0ytbfibfYbkKeqkprkWqjEGKZPnpoJUxXxcB4TCJIlP9ikum9W
   w==;
X-IronPort-AV: E=Sophos;i="5.93,196,1654552800"; 
   d="scan'208";a="25313040"
Subject: Re: Re: Align fsl,pins with dtschema
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 28 Jul 2022 10:34:10 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B7C76280056;
        Thu, 28 Jul 2022 10:34:10 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Peng Fan <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        Fabio Estevam <festevam@denx.de>,
        Lucas Stach <l.stach@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-imx@nxp.com, abelvesa@kernel.org, Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date:   Thu, 28 Jul 2022 10:34:08 +0200
Message-ID: <1920944.usQuhbGJ8B@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <26aa352e-d39c-1784-e5c3-9e90d25d8ab5@linaro.org>
References: <1c6c9750-571c-bfd9-8804-4f16d691c480@oss.nxp.com> <26aa352e-d39c-1784-e5c3-9e90d25d8ab5@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 26. Juli 2022, 11:35:52 CEST schrieb Krzysztof Kozlowski:
> On 23/07/2022 14:15, Peng Fan wrote:
> > All,
> > 
> > I am thinking whether we need to modify the fsl,pins as below. Because
> > fsl,pins use uint32-matrix, so just wanna know we should do this update.
> > 
> > Anyway there is NO dtbs check warning. If we update fsl,pins, there are
> > bunches of dts files need update. Do you think we need to update or not?
> > 
> >          pinctrl_ov5640: ov5640grp {
> > 
> > -               fsl,pins = <
> > -                       MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7              
> > 0x19 -                       MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6           
> >    0x19 -                      
> > MX8MM_IOMUXC_GPIO1_IO14_CCMSRCGPCMIX_CLKO1      0x59 -               >;
> > +               fsl,pins =
> > +                       <MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7
> > 0x19>,
> > +                       <MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6
> > 0x19>,
> > +                       <MX8MM_IOMUXC_GPIO1_IO14_CCMSRCGPCMIX_CLKO1
> > 0x59>;
> > 
> >          };
> 
> I believe yes, but as Rob replied, the dtschema has trouble matching the
> different fsl,pins, if I understood correctly.

I remember getting a lot of warnings, most probably using old dt-schema before 
[1] and [2].
[1] only mentions problems detecting matrix "where neither dimension is 
fixed".
Having that said, adding a small uint32-matrix example to dt-schema tests 
raises errors when used incorrectly. Take the following diff:
---8<---
diff --git a/test/device.dts b/test/device.dts
index 47aa31c..a0988c6 100644
--- a/test/device.dts
+++ b/test/device.dts
@@ -51,5 +51,6 @@
                vendor,int-array-prop = <5>, <6>, <7>, <8>;
                vendor,int-array-size-only-prop = <2>, <3>, <4>;
                vendor,int64-array-prop = /bits/ 64 <0x10000000 0x1>;
+               vendor,uint32-matrix-prop = <1 2 3>, <4 5 6>, <7>;
        };
 };
\ No newline at end of file
diff --git a/test/schemas/good-example.yaml b/test/schemas/good-example.yaml
index b8493a9..dc72046 100644
--- a/test/schemas/good-example.yaml
+++ b/test/schemas/good-example.yaml
@@ -177,6 +177,17 @@ properties:
           - description: the 2nd cell data
     description: Vendor specific array of phandles property
 
+  vendor,uint32-matrix-prop:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    description: Vendor specific 32-bit integer matrix property
+    items:
+      items:
+        - description: |
+            1st item
+        - description: |
+            2nd item
+        - description: |
+            3rd item
 
 required:
   - compatible
---8<---

test-dt-validate.py does detect this misuse:
> Failed validating 'minItems' in schema['properties']['vendor,uint32-matrix-
prop']['items']:
>     {'maxItems': 3, 'minItems': 3, 'type': 'array'}
> 
> On instance['vendor,uint32-matrix-prop'][2]:
>     [7]
This seems pretty good to me.

But apparently this is not true for fsl,pins in board .dts. Given the 
following diff, converting to an actual matrix and adding a excessive number 
(Note the 5 at the end), this raises no error. So I suspect this is treated as 
an array rather than a matrix.

---8<---
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -505,10 +505,9 @@ MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19       0x40
        };
 
        pinctrl_uart2: uart2grp {
-               fsl,pins = <
-                       MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX    0x140
-                       MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX    0x140
-               >;
+               fsl,pins =
+                       <MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX   0x140>,
+                       <MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX   0x140 5>;
        };
 
        pinctrl_usb1_vbus: usb1grp {
---8<---

This is how I tested:
$ git describe
v5.19-rc8
$ dt-validate --version
2022.8.dev24+g59f2e31
$ make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/
fsl,imx8mp-pinctrl.yaml
make[1]: Entering directory '/mnt/ssd/repo/linux/build_arm64'
  DTC     arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
  CHECK   arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
make[1]: Leaving directory '/mnt/ssd/repo/linux/build_arm64'

Best regards,
Alexander

[1] https://lore.kernel.org/all/20220310160513.1708182-3-robh@kernel.org/
[2] https://github.com/devicetree-org/dt-schema/commit/
5646cd473017d702844fda382c7b88994e080ee8



