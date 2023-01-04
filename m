Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8E8F65D7C9
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 17:02:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbjADQCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 11:02:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbjADQCq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 11:02:46 -0500
X-Greylist: delayed 472 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 04 Jan 2023 08:02:45 PST
Received: from mail.tkos.co.il (wiki.tkos.co.il [84.110.109.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A5D1B9
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 08:02:45 -0800 (PST)
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.tkos.co.il (Postfix) with ESMTPS id 780C4440677;
        Wed,  4 Jan 2023 17:51:23 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1672847483;
        bh=8I0MqionQ8NUfgtIFGLhKvgsrDwBjWLGK0GeDdo5rTo=;
        h=From:To:Cc:Subject:Date:From;
        b=COO5OuzsguP0lwhhyN422hREee0CcUzjYtS4gL7GoK6ii5dg6v3KBWXPe0IPq5WpP
         Zo6iUKWhOiejbYFX1eGnS/vsE7I5uzEoz4IE9Q51zOI6otEQHbX2yvQRr/hRVVQP6M
         zFBf3jJqW4/QODw7imuP1mnftDKIhGc4H4JLIWvcSfF+iVLzP2yo1Q3ONmbkMajp6g
         W6xJtw7m3AHe8ngHWO4XfIHmoP6sWL/sFndKxNxE3fJymerE7fmQO1h0/30k1acDL8
         rCVGsBEYNWX1sw8QflLxNbyjhMwQWH1S/5x4TqvkFmaFzKeBYsP5ca7K7VL9jIbG19
         nU1ew0sK8aTKg==
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, Alex Shi <alexs@kernel.org>,
        Yanteng Si <siyanteng@loongson.cn>,
        Baruch Siach <baruch@tkos.co.il>
Subject: [PATCH] docs: dt: fix documented Primecell compatible string
Date:   Wed,  4 Jan 2023 17:54:41 +0200
Message-Id: <8ced22f59980fdfdae869acb91119dadd34987c0.1672847681.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Only arm,primecell is documented as compatible string for Primecell
peripherals. Current code agrees with that.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 Documentation/devicetree/usage-model.rst                    | 2 +-
 Documentation/translations/zh_CN/devicetree/usage-model.rst | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/usage-model.rst b/Documentation/devicetree/usage-model.rst
index b6a287955ee5..0717426856b2 100644
--- a/Documentation/devicetree/usage-model.rst
+++ b/Documentation/devicetree/usage-model.rst
@@ -415,6 +415,6 @@ When using the DT, this creates problems for of_platform_populate()
 because it must decide whether to register each node as either a
 platform_device or an amba_device.  This unfortunately complicates the
 device creation model a little bit, but the solution turns out not to
-be too invasive.  If a node is compatible with "arm,amba-primecell", then
+be too invasive.  If a node is compatible with "arm,primecell", then
 of_platform_populate() will register it as an amba_device instead of a
 platform_device.
diff --git a/Documentation/translations/zh_CN/devicetree/usage-model.rst b/Documentation/translations/zh_CN/devicetree/usage-model.rst
index c6aee82c7e6e..19ba4ae0cd81 100644
--- a/Documentation/translations/zh_CN/devicetree/usage-model.rst
+++ b/Documentation/translations/zh_CN/devicetree/usage-model.rst
@@ -325,6 +325,6 @@ Primecell设备。然而，棘手的一点是，AMBA总线上的所有设备并
 
 当使用DT时，这给of_platform_populate()带来了问题，因为它必须决定是否将
 每个节点注册为platform_device或amba_device。不幸的是，这使设备创建模型
-变得有点复杂，但解决方案原来并不是太具有侵略性。如果一个节点与“arm,amba-primecell”
+变得有点复杂，但解决方案原来并不是太具有侵略性。如果一个节点与“arm,primecell”
 兼容，那么of_platform_populate()将把它注册为amba_device而不是
 platform_device。
-- 
2.39.0

