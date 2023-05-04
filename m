Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B195A6F7868
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 23:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjEDV73 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 17:59:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbjEDV72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 17:59:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9415812E84
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 14:59:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 11E0363A18
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 21:59:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 410ADC433D2;
        Thu,  4 May 2023 21:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683237566;
        bh=rVoxw/xiks4aVx9Z6iiRw/nnkobUbbuRW6qbrxEzC38=;
        h=From:To:Cc:Subject:Date:From;
        b=Gqd7RG/YDTxkA0VIO/dOhel1aKCL80PydNLVtzzp6HEED3S4l+Dpc3EYNfUNc5PDZ
         FkxFjqyi3kwPw5sqxjq0aHsxowKVyjronlAYV666Rs6rFaXRdc1NYDtwzE2wwxlwbA
         Y6wTDHusTwjTmQWDs5gSQhcy3TU25Hj8wAvy3zudlD8C9k1uqKvJETnxiiI48mSAUA
         xc6+SDcec9h5xkuToIMB5UgSW5QukOs+Y3hNK/5QnyFhfY7ZKNDUqc7H5AOKciCUbh
         X4JyB6b8uif9W6cn9IMon46Ljx959uG8+Ww6g7PoW1+kOpQ/uy7JLgsMARaAqd2yMY
         CbU9ojkyHDe1Q==
From:   Conor Dooley <conor@kernel.org>
To:     robh+dt@kernel.org
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v1] MAINTAINERS: add Conor as a dt-bindings maintainer
Date:   Thu,  4 May 2023 22:58:39 +0100
Message-Id: <20230504-renderer-alive-1c01d431b2a7@spud>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=708; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=clj9eZLfyc/3Fz+FlJn0Km6Iar+f9Gs4MRCEVmslQ+Q=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkhWj27M37opk+YXnRGOnpysq+nyhRe/i+Wz8S/dinVs Ud+7P/VUcrCIMbBICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIk0f2X4p3X3+9QJogpbon1v Wd0otvy3r+qjv1jJa4vSE1xmBmk7Khj+8L+TshE/2Xir1kpMRe3SBscnL36FOPDZz8/Yurhs4r3 /fAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Rob asked if I would be interested in helping with the dt-bindings
maintenance, and since I am a glutton for punishment I accepted.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4e9370793300..687d7a3d2e85 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15697,6 +15697,7 @@ K:	of_overlay_remove
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 M:	Rob Herring <robh+dt@kernel.org>
 M:	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
+M:	Conor Dooley <conor+dt@kernel.org>
 L:	devicetree@vger.kernel.org
 S:	Maintained
 C:	irc://irc.libera.chat/devicetree
-- 
2.39.2

