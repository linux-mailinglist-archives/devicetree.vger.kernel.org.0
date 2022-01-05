Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB54D484C9D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 04:01:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233182AbiAEDB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 22:01:29 -0500
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137]:37415 "EHLO
        out162-62-57-137.mail.qq.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229584AbiAEDB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 22:01:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
        s=s201512; t=1641351685;
        bh=huROdnZmfMWXAJUy/2oiqghRor8DUtTKvc0ZLSGrPAM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=m1UKjijWUFBrsgTA1u3xDZmgoofthn99QNf+h7sLuFuRSgz229LsvPU1825ICS/Mx
         duET4zG7natzk3MtXkdB5q9LghAKvOV5hy0sg1Xjh7LSFMgpeyXrxD4YNPeyCL7t/u
         7qWI/7nX+HUpA+Btp/WkYr0heWENd4DlxcH1UiMs=
Received: from fedora.. ([119.32.47.91])
        by newxmesmtplogicsvrszc8.qq.com (NewEsmtp) with SMTP
        id B750F492; Wed, 05 Jan 2022 10:45:53 +0800
X-QQ-mid: xmsmtpt1641350754te7axbw3d
Message-ID: <tencent_9A79E4BC3715D4948E6D69363916D4B26D0A@qq.com>
X-QQ-XMAILINFO: NSHyY+L3HkGiTpb//NFrQxgNe/Z8QeTd+2LxLqJDPr8berthVGTVHA2nUMHFkl
         vzxoPG7kp0Eg1yDu1Xf/ZrqAccFJu2KnPZ3nZ1wdyvl1EqR9/VP6xT8nRUdC8C1RnrPhpWo9XYw9
         TEm4/x+h7TqD1keblgsLDKRz+KEYqxsG7DiGpNBhizY8VtqIo9LvOorp3am2RSnKy70oa0gJyjuH
         gFUWNSmIRwxbagPEH8l5PcO4iCRFWft2yTJ7hLpOFOgsZRh6v0WxeIw7phpFZhO1SW+OMx7AdZxA
         +V2lCRBrw7M46uLuo+qTVXO0zlQqKIYidjJPGGaPF+stvkcSy+NJwmK9eBrVuylAMY6XC2874GbQ
         C0MLC+gKrdMDM8l3H6mFJPbvAEq65A6f91mUAsGmPP17aY+u1E1WqPKNDXRNyyWvflUQfDOpmFfK
         7Qr1XQKfqNQyR/eoKsnyKYpytUPYf3eMdMpr860JmEh6n03r+scIcN8I1/3yE4nmOZYx7jnXknwm
         deb/42XNt3LTa/iA0vddM0as14yKjBUBG6vjJvW5rg+mBdR8pIj/ZPVk85j571f25Kfzs7ass5zO
         cs6YnVWIQLE/tk3ob6vRWDyU2cQUudIK7mqJm4W6NqMv8FwhFzJZjasSHxZy5En8iF7SVzVHokRD
         qx8tvTl5aOGzjUfxF4vFN7g4qFXpbOganC7qJAVHzsCmHkNlm9gDcF9D8mXvaoTP7LsDaIeWhBgs
         P7cyrBtAO6uMRD+H27SLLJj0sTDSsfXkCoJQ6FtPu+Ft389PQVC8oihZHFNmm7WDUQKyGUAxinW5
         rcwYS746RSfwF2dJoMn6pnAD8JBkNiPr5o4kqSZ6tAiUrdNNAvswqMgKBG35Xs4iTFy6hRNAh40X
         W+iL8MNdWdjdjfBWfnH0EtC1ybL/YwCoKP5Cnqtbw3WCLbG717mqg=
From:   conleylee@foxmail.com
To:     robh@kernel.org, mripard@kernel.org, wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, conley <conleylee@foxmail.com>
Subject: [PATCH v2 2/2] sunxi.yaml: add HAOYU Electronics Marsboard A20
Date:   Wed,  5 Jan 2022 10:45:51 +0800
X-OQ-MSGID: <20220105024551.807713-2-conleylee@foxmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220105024551.807713-1-conleylee@foxmail.com>
References: <YdS1GVkRopRSoD5S@robh.at.kernel.org>
 <20220105024551.807713-1-conleylee@foxmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: conley <conleylee@foxmail.com>

Signed-off-by: conley <conleylee@foxmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 889128acf49a..4bd93ae26bd1 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -444,6 +444,11 @@ properties:
           - const: haoyu,a10-marsboard
           - const: allwinner,sun4i-a10
 
+      - description: HAOYU Electronics Marsboard A20
+        items:
+          - const: haoyu,a20-marsboard
+          - const: allwinner,sun7i-a20
+
       - description: MapleBoard MP130
         items:
           - const: mapleboard,mp130
-- 
2.31.1

