Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97C486E9443
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 14:29:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232026AbjDTM3t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 08:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234536AbjDTM3r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 08:29:47 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7365FE9
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 05:29:45 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 594AF219E9;
        Thu, 20 Apr 2023 12:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1681993784; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UuSrP+8SJkpdoPBxCBowJ+DnkR7MI35JUEvk9XwrMdA=;
        b=o7/kSD9c1Lg+Z5r5xGW2/66xE/yJcRRcEN2hxClLe+wgviUNPEs+TcsjRc1YUvwM/NWZ+L
        dKjSpA2I9IIJ+AUbq0c1+FniM/+4i2USQDxi8wu62pEF0mpiFe4bNTl/UOYOIET66UQmPG
        gku3vlLqsrCtu3nJMB6SYEkbJqmpkdI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1681993784;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UuSrP+8SJkpdoPBxCBowJ+DnkR7MI35JUEvk9XwrMdA=;
        b=oFFxbo3zApxTcUQvPc/eAmjsYhs4urrx4at7ACIo4TJebbbeRKmh3ntPlH1R2ajCKJgAMH
        2rfwvTN/B9W7c7Dw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4A508139EC;
        Thu, 20 Apr 2023 12:29:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id cFTyETgwQWSueQAAMHmgww
        (envelope-from <iivanov@suse.de>); Thu, 20 Apr 2023 12:29:44 +0000
From:   "Ivan T. Ivanov" <iivanov@suse.de>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        "Ivan T. Ivanov" <iivanov@suse.de>
Subject: [PATCH v3 1/3] dt-bindings: nvmem: rmem: Add raspberrypi,bootloader-public-key
Date:   Thu, 20 Apr 2023 15:29:22 +0300
Message-Id: <20230420122924.37997-2-iivanov@suse.de>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230420122924.37997-1-iivanov@suse.de>
References: <20230420122924.37997-1-iivanov@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On RPi4 the bootloader[1] will copy the binary public key blob
(if present) into memory location specified by this node, for
use by the OS.

[1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
---
 Documentation/devicetree/bindings/nvmem/rmem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/rmem.yaml b/Documentation/devicetree/bindings/nvmem/rmem.yaml
index a4a755dcfc43..566eff3d1061 100644
--- a/Documentation/devicetree/bindings/nvmem/rmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rmem.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - raspberrypi,bootloader-config
+          - raspberrypi,bootloader-public-key
       - const: nvmem-rmem
 
   reg:
-- 
2.35.3

