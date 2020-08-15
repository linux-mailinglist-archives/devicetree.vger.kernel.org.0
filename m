Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D656E2454B6
	for <lists+devicetree@lfdr.de>; Sun, 16 Aug 2020 00:40:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728994AbgHOWko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Aug 2020 18:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728660AbgHOWkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Aug 2020 18:40:42 -0400
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a01:238:4321:8900:456f:ecd6:43e:202c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1DBC0045AA
        for <devicetree@vger.kernel.org>; Sat, 15 Aug 2020 12:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
        References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
        Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=oQyOEPHw/uNu9ZLTFXekoz2n57dypFJZ56uvrqcRB/E=; b=fI2vCFF9Nl76oYBwA+j4JZYaZn
        IMfEyaUu2DPjvoDQCqhLpzAKfn6j6Unbv03s33L5zzZCGG6EjmkXNq986BV/USXBfzjAzFlojBUL9
        URJ/AeGPGD2jQ5epjk/tFsayqjaWLQ1f85YmqSEcjkaF01mt+jFI/dGu27DUrsA910l0=;
Received: from p5dcc3368.dip0.t-ipconnect.de ([93.204.51.104] helo=aktux)
        by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <andreas@kemnade.info>)
        id 1k71wp-0000Fu-SA; Sat, 15 Aug 2020 21:34:36 +0200
Received: from andi by aktux with local (Exim 4.92)
        (envelope-from <andreas@kemnade.info>)
        id 1k71wp-0005dF-GO; Sat, 15 Aug 2020 21:34:35 +0200
From:   Andreas Kemnade <andreas@kemnade.info>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        andreas@kemnade.info, Anson.Huang@nxp.com,
        marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
        michael@walle.cc, rjones@gateworks.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
        letux-kernel@openphoenux.org
Subject: [PATCH 1/2] dt-bindings: arm: fsl: add compatible string for Tolino Shine 2 HD
Date:   Sat, 15 Aug 2020 21:33:35 +0200
Message-Id: <20200815193336.21598-2-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200815193336.21598-1-andreas@kemnade.info>
References: <20200815193336.21598-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -1.0 (-)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a compatible string for the Tolino Shine 2 HD eBook reader.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 05906e291e38..a3fb61868a16 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -211,6 +211,7 @@ properties:
         items:
           - enum:
               - fsl,imx6sl-evk            # i.MX6 SoloLite EVK Board
+              - kobo,tolino-shine2hd
               - kobo,tolino-shine3
           - const: fsl,imx6sl
 
-- 
2.20.1

