Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C37396E9445
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 14:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230231AbjDTM3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 08:29:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231587AbjDTM3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 08:29:48 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F2FF5FEC
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 05:29:45 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 7ED311FDBA;
        Thu, 20 Apr 2023 12:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1681993784; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ear+cnYjNr0Xxid0IYuEKGOWEhCYOcJOGEYisWpZTKo=;
        b=lTQBsRPImul/dzDjRLdSIxIYhzoWqMD5MjvoLJZ686GUZGGYZ5lpA+OHvB7fV9XSv0EI8u
        WgJnSTeTbXdjHVWoqF8/vIZO73ek//GuUgRAzpoB6z+nB1OznLRyusZb6EFq1e5yrfPNDO
        mJ2+EYDfBZ7fjaoC59ayXrItpFphips=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1681993784;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ear+cnYjNr0Xxid0IYuEKGOWEhCYOcJOGEYisWpZTKo=;
        b=DPndw74uEj69h/W8wXdFqD9/L0dXdLnsFhBJbZfXHS8VDiSMOxgKoXEXtTLn5qh1NCYiK+
        Xt/zBCSNKpRBUdBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6E8BC139EC;
        Thu, 20 Apr 2023 12:29:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id aOPVGjgwQWSueQAAMHmgww
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
        Phil Elwell <phil@raspberrypi.com>,
        "Ivan T . Ivanov" <iivanov@suse.de>
Subject: [PATCH v3 3/3] nvmem: rmem: Use NVMEM_DEVID_AUTO
Date:   Thu, 20 Apr 2023 15:29:24 +0300
Message-Id: <20230420122924.37997-4-iivanov@suse.de>
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

From: Phil Elwell <phil@raspberrypi.com>

It is reasonable to declare multiple nvmem blocks. Unless a unique 'id'
is passed in for each block there may be name clashes.

Avoid this by using the magic token NVMEM_DEVID_AUTO.

Fixes: 5a3fa75a4d9cb ("nvmem: Add driver to expose reserved memory as nvmem")

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
---
 drivers/nvmem/rmem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index 80cb187f1481..752d0bf4445e 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -71,6 +71,7 @@ static int rmem_probe(struct platform_device *pdev)
 	config.dev = dev;
 	config.priv = priv;
 	config.name = "rmem";
+	config.id = NVMEM_DEVID_AUTO;
 	config.size = mem->size;
 	config.reg_read = rmem_read;
 
-- 
2.35.3

