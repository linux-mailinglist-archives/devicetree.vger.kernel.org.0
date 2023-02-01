Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55F1D6869C4
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:16:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232550AbjBAPQC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:16:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231829AbjBAPPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:15:37 -0500
X-Greylist: delayed 477 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 01 Feb 2023 07:15:19 PST
Received: from out-239.mta1.migadu.com (out-239.mta1.migadu.com [95.215.58.239])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B995C2E827
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:15:19 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1675264016;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=kppmiPTfgnj4okjavd9BVsxLZJM5JHLMjUAH0LspDzg=;
        b=taW/+fWGO/j/pQP17VaAgeW7zYLkrjOBDdI2uG1PTR+BN3AwjA9esQQSsFChWWRiagttU9
        YsFIEzzHgjtL3iXMIiPoy6d4iuxaOvw+KxFexxzJ/S/Ibpj5L+5JI6i6PlIqTBClYs+4H7
        o1p7DdDDu02d33UJR+m6sK2dpPSevN0=
From:   richard.leitner@linux.dev
Date:   Wed, 01 Feb 2023 16:06:29 +0100
Subject: [PATCH v2 1/2] dt-bindings: display: simple: add support for
 InnoLux G070ACE-L01
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230201-innolux-g070ace-v2-1-ebac7aaf004f@skidata.com>
References: <20230201-innolux-g070ace-v2-0-ebac7aaf004f@skidata.com>
In-Reply-To: <20230201-innolux-g070ace-v2-0-ebac7aaf004f@skidata.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Richard Leitner <richard.leitner@skidata.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1068;
 i=richard.leitner@skidata.com; h=from:subject:message-id;
 bh=fqF4zg2XmNte5lzmjwrh1xMmtE7LpHYQGuZp1W2bxDE=;
 b=owGbwMvMwCX2R2KahkXN7wuMp9WSGJJvNfCd3hXL4rN5tpl50ZIKrj/Xb4az9Xl8O/7mO/tXniAv
 yTKXjlIWBjEuBlkxRRZ7Y65299yy95WKOrkwc1iZQIYwcHEKwESOfmX4p2NwNXz5IqE7XV77Zk6cvm
 2X1jaDxDLN+xf3sxQLThCqP8DwP2rlqvhHFufnLe08n7dF/ezvyVsX/9hdzGOntHpP5K7PYvwA
X-Developer-Key: i=richard.leitner@skidata.com; a=openpgp;
 fpr=3F330A87476D76EF79212C6DFC189628387CFBD0
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Richard Leitner <richard.leitner@skidata.com>

Add Innolux G070ACE-L01 7" WVGA (800x480) TFT LCD panel compatible
string.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 18241f4051d2..fd3e5ad769dc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -174,6 +174,8 @@ properties:
       - innolux,at043tn24
         # Innolux AT070TN92 7.0" WQVGA TFT LCD panel
       - innolux,at070tn92
+        # Innolux G070ACE-L01 7" WVGA (800x480) TFT LCD panel
+      - innolux,g070ace-l01
         # Innolux G070Y2-L01 7" WVGA (800x480) TFT LCD panel
       - innolux,g070y2-l01
         # Innolux G070Y2-T02 7" WVGA (800x480) TFT LCD TTL panel

-- 
2.39.1

