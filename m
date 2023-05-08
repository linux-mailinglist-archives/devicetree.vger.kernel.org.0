Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8D3C6FB642
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbjEHSRT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:17:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233007AbjEHSRS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:17:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF9FB5FC3
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:17:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 372A461806
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 18:17:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D76CC433EF;
        Mon,  8 May 2023 18:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683569831;
        bh=VPla/phlxrLYHeG47Y11HycCuElwiwJdnJJp2FxR8K0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=nGQZz+lFtUgvsJNWM6Ro5wavaNIeeMU8SpIkcsNn8wBJMtajmC/SVvaTKx5gcZYSM
         MjIWhTdy9v46X10zxrgN7QlTCY6uhVRnC2iThRiIGhlNx0Nv+RFiFVFoaVWgYSYHZF
         Z5Q3ReMFSC5Di+U4HKI7uMNHCukrBYaAPztj51syjFQgePq35Mw77i0sXzwaaJJy87
         4aWx+Zi7UhejL5eFkouQ8ASVIhl8WVJw/LQyb8zIKPQ9Ia5hdPFVF5t4OqJ1s/m+IB
         wKR4GriB71PRcwfNnbfVIPlR18QLlUf8ALOCLtJk667MqFwjzA+QrJp/iH4rMQL594
         O7iX7bR4KTA9Q==
From:   Conor Dooley <conor@kernel.org>
To:     linux-riscv@lists.infradead.org
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
Subject: [RFC 5/6] RISC-V: drop a needless check in print_isa_ext()
Date:   Mon,  8 May 2023 19:16:25 +0100
Message-Id: <20230508-strenuous-mustiness-412fdf2402b0@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508-hypnotic-phobia-99598439d828@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=966; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=hjjIKmNmD+GCRsGjW4UHrUxkJuauuysQYic754s15ng=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmRNmWvdKZ9LdmaPeH493SOXR+ETn2+khdVoxVw79WiG zN0E5Smd5SyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAie9cyMlx8dVJwSlnFfslT 4UXnZDef5Zl9dEPkkVuPe5P+/N7+Y3cfI8NZdt4SzVb+l2bVsufq7+ydv89vwyWOu80PDmj7Vdf xzWQBAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

There'll always be elements in the array, even if none of the
optional bits of support are built into the kernel.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpu.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index c29643dca0f7..bc32207b7d86 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -176,15 +176,8 @@ arch_initcall(riscv_cpuinfo_init);
 #ifdef CONFIG_PROC_FS
 static void print_isa_ext(struct seq_file *f)
 {
-	int i = 0, arr_sz;
 
-	arr_sz = riscv_isa_extensions_count - 1;
-
-	/* No extension support available */
-	if (arr_sz <= 0)
-		return;
-
-	for (i = 0; i < arr_sz; i++) {
+	for (int i = 0; i < riscv_isa_extensions_count - 1; i++) {
 		if (!__riscv_isa_extension_available(NULL, riscv_isa_extensions[i].key))
 			continue;
 		if (riscv_isa_extensions[i].multi_letter)
-- 
2.39.2

