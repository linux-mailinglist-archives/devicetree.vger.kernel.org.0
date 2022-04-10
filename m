Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9724FAFF5
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241920AbiDJUDm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 16:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241911AbiDJUDk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 16:03:40 -0400
X-Greylist: delayed 180 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 10 Apr 2022 13:01:29 PDT
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E28EFD03
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1649620707;
    s=strato-dkim-0002; d=gerhold.net;
    h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=7GwK/4S6nthcFz5Q6/n7ZwkJwwi0a5nJaRpVJcMD4+k=;
    b=NdXttbhrkqEmZM1ZK2x6Hk5y/QF41TCn64NdWU0GoyQexAy29tR5uUyXWiowXmvOvG
    Vur/M9QxPRL3jl7b1525jCJmCI/zX+MCOvW0pCu/DPOKdB40/vAnOuzSUoLZ3DtH7vTA
    wXk4q1VgOXi329NFeidQzM5lX+2XdYATQP8DOxvZWmpj5CXd7+b37AJoODHuDYrRfk0V
    ji2nCxJXi2k7k4elaOManKAM+BINPvhNd/puprXoEllC8mwgm5aBI7ZDkfPtgA000PZv
    +BqCfX9nzaxqiahWUAx3BDsRT9YsTlhz5uxnTz1vJZhKha5tChFXfWZBf4vKBudMqMW/
    mrAg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7UOGqRde+a0fiL/b+s="
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.42.2 AUTH)
    with ESMTPSA id u05e50y3AJwRAOq
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Sun, 10 Apr 2022 21:58:27 +0200 (CEST)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 1/2] arm64: dts: qcom: msm8916-huawei-g7: Clarify installation instructions
Date:   Sun, 10 Apr 2022 21:51:12 +0200
Message-Id: <20220410195113.13646-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220410195113.13646-1-stephan@gerhold.net>
References: <20220410195113.13646-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The comment with installation instructions in the huawei-g7 device tree
is a bit misleading and does not describe the recommended installation
steps very well. The bootloader is actually not patched; to avoid all
trouble with the vendor bootloader it is easier to bypass it completely
by jumping to a custom bootloader (e.g. based on the open-source LK
released by Qualcomm).

To avoid confusion, simplify the comment to state only the problem
and then refer to the wiki article which contains detailed suggested
installation instructions. This will also make it easier to keep it
up to date with new developments in the future.

Fixes: 55056b229189 ("arm64: dts: qcom: msm8916: Add device tree for Huawei Ascend G7")
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts b/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts
index 42d93d3fba36..8ad9eb436a0c 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts
@@ -11,15 +11,10 @@
 
 /*
  * Note: The original firmware from Huawei can only boot 32-bit kernels.
- * To boot arm64 kernels it is necessary to flash 64-bit TZ/HYP firmware
- * with EDL, e.g. taken from the DragonBoard 410c. This works because Huawei
- * forgot to set up (firmware) secure boot for some reason.
- *
- * Also note that Huawei no longer provides bootloader unlock codes.
- * This can be bypassed by patching the bootloader from a custom HYP firmware,
- * making it think the bootloader is unlocked.
- *
- * See: https://wiki.postmarketos.org/wiki/Huawei_Ascend_G7_(huawei-g7)
+ * To boot this device tree using arm64 it is necessary to flash 64-bit TZ/HYP
+ * firmware (e.g. taken from the DragonBoard 410c).
+ * See https://wiki.postmarketos.org/wiki/Huawei_Ascend_G7_(huawei-g7)
+ * for suggested installation instructions.
  */
 
 / {
-- 
2.35.1

