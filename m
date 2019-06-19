Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 52D854C0FB
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 20:46:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726191AbfFSSqM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 14:46:12 -0400
Received: from mail-pf1-f174.google.com ([209.85.210.174]:39005 "EHLO
        mail-pf1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726109AbfFSSqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 14:46:12 -0400
Received: by mail-pf1-f174.google.com with SMTP id j2so121578pfe.6
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 11:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wfp+JNfOpWcussOrqkZIVASVmRCNfV7M2rs/9KC1uF4=;
        b=Q6etSWEvJMEFdoBH8SAp5/73koMIP/pwSWp4SmBb7bZ/GSZw8IBZ008EVkjZGbc7yW
         qb3QbhUL18xB4YlAJ7beCmvQ7mFnXV2kjZuKXTLr0Oj8OBoOFDdrFe4ikTyFKfNguKqH
         +kZZD9rqy+kU0kXt4fN/Pk5DJGpfpcixTT0dv6e6qolnoSZdbIERZchSONnXoHjjwqEg
         2rPvxe2+SBL7Tsxd2lVE1/fUSkFkdC+aqqY5Zpy80Li2lVvaa0+oJ6pRWAsWMFNRK/Ov
         dqAE9ifTonuvUp7u5fxNEupcOmzaeV7RGBi4T+JF5PrOfLtfv09xSOBwWyOhcthg/GxD
         7jmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wfp+JNfOpWcussOrqkZIVASVmRCNfV7M2rs/9KC1uF4=;
        b=gEQClEzOY+6Q19TphtNB38+ElN1yexEbTzW+YxYEqFA5GUDXHxgznx1DqZ+3e3SI+G
         jKFrLpZQTumwvE9TrixT5CJRtf3V1eNEDhIsTnoNfsHRTwmucuG3g5+ZSzt7tijjXfjJ
         ywCAYRE9QOolS3zpevMQw9wMz1xpCUSwpj1I+zWBsKN51EYgNXAL3d7Obwy7L9scnCTK
         aik9WHQ7UeRvd7OjUoeDdJsODSDN0lCMKfBz7EVmp/6GXTg49dMK2l2yuIyMCF2vgQ4i
         OhQEqSxpSPGQSSm7IsvvkhHjeVSLW9kDbd8G0JV1ldV/mgvIy0LhRYT2lxp2IhYxnFpf
         mhPA==
X-Gm-Message-State: APjAAAUP+3hVJHoNETN+3DKsz/nv8HcNvDBY+6v1gRH4tEnl5HGsqKyU
        /FXsPRDmUzRZyguE76knXtN/DEkDclhNjyCjXj0=
X-Google-Smtp-Source: APXvYqyy5o5OnIS43Af6d01LBalG0Vty5sR6St71JIyhRGW9irgTnmCzcoGb/4G8SZ74DP1n0GO/PgNwxj8dtKzUfJM=
X-Received: by 2002:a63:4d0f:: with SMTP id a15mr9199858pgb.101.1560969971318;
 Wed, 19 Jun 2019 11:46:11 -0700 (PDT)
MIME-Version: 1.0
From:   Zhi Li <lznuaa@gmail.com>
Date:   Wed, 19 Jun 2019 13:46:00 -0500
Message-ID: <CAHrpEqT_34eNK-EzRgs-ocDD6pfLzD=FU8n83HgSQVsimJRxPw@mail.gmail.com>
Subject: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance monitor nodes
To:     Shawn Guo <shawnguo@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ddr performance monitor

Signed-off-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---

Resent without base64 encode

Notes:
    No change from v9 to v12

    Change from v8 to v9
    * put ddr-pmu under ddr_subsystem bus

    Change from v3 to v8
    * none

    Change from v2 to v3
    * ddr_pmu0 -> ddr-pmu

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2..a33e08c 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -378,6 +378,20 @@
                };
        };

+       ddr_subsyss: bus@5c000000 {
+               compatible = "simple-bus";
+               #address-cells = <1>;
+               #size-cells = <1>;
+               ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
+
+               ddr-pmu@5c020000 {
+                       compatible = "fsl,imx8-ddr-pmu";
+                       reg = <0x5c020000 0x10000>;
+                       interrupt-parent = <&gic>;
+                       interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+               };
+       };
+
        lsio_subsys: bus@5d000000 {
                compatible = "simple-bus";
                #address-cells = <1>;
--
2.5.2
