Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93EEA4B2E63
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 21:27:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353208AbiBKU1n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 15:27:43 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239383AbiBKU1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 15:27:42 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35DC5B4
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 12:27:41 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: alyssa)
        with ESMTPSA id 43ACC1F46D9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644611260;
        bh=IwJ14LoYZzda+/Av+WGvVFb98hP/XjwCxic3ZWFVHXM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=awomBp1Gon1K02Digb0TkalfIEdRoNWHhUy1MRS/taKCG7Fc7XiLfQEcaBkkJrEOf
         v9Y6DrtelFsM31hIssZdFS3+9FIRyOe1Of30MNEoyuG9FKTyuLspov5gBi1N45SEsb
         VkezQiDFHoIOosRWOz/eD9ZlSHTx+EMwuaBOpNs/ejCC5DaDzKNtfo0FHYLauRyscS
         yGIWVHYJBmpj6Ttagb/d6ATvytlh6PJFM4nD9unjNtvnvtPF0TOyal6oI5IFITNDVr
         jb2BZ3JtrcLSioMQnACmSO8EBkPe/fGZzaa61Gnz3sTjFhjEpw7HZ+E98IQnUPsSKJ
         PZk8QMyYxypUA==
From:   alyssa.rosenzweig@collabora.com
To:     dri-devel@lists.freedesktop.org
Cc:     robh@kernel.org, tomeu.vizoso@collabora.com, steven.price@arm.com,
        airlied@linux.ie, daniel@ffwll.ch,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/9] dt-bindings: Add arm,mali-valhall compatible
Date:   Fri, 11 Feb 2022 15:27:20 -0500
Message-Id: <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com>
References: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>

From the kernel's perspective, pre-CSF Valhall is more or less
compatible with Bifrost, although they differ to userspace. Add a
compatible for Valhall to the existing Bifrost bindings documentation.

Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 63a08f3f321d..48aeabd2ed68 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -23,6 +23,7 @@ properties:
           - rockchip,px30-mali
           - rockchip,rk3568-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
+      - const: arm,mali-valhall # Mali Valhall GPU model/revision is fully discoverable
 
   reg:
     maxItems: 1
-- 
2.34.1

