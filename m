Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3FAF516FCC
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 14:52:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234103AbiEBMzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 08:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234790AbiEBMxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 08:53:53 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A9CC1147
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 05:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1651495823; x=1683031823;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3hywuZKJ2+h6iyUSgSnjiO0CWFPSIGhHCXXTjq3TsWQ=;
  b=PX1Z2sMMmjhYoFNj8R7NwkwJ2lUJIg4ndH6nu18sG38BORYmWEZqW32G
   lcDtvwITFcQLEdgkdR0p4j/jogrDMfToU5B7fI6q6isyMfIF1+mh1Ba2o
   f8DvDqgIO2yRkUiZnRXQ/Hhif87rvigC2iYXz0YbN8MBsHvmh6HDdtXGb
   CO4wPwlPUEfHlf0E5Q/t63N9+md+NS5dzDCAFZV9Q4p8bHfwDgHKN1lEs
   3zv4Nc6YAkpNd3Ywv9F1bgOWLf7mHa5SMIdYMfiKi9DkkxC4DvRcdWmys
   oaRfsNrFPb4sZt5MAkHLTV/M9ZocZrwv8ZXz+J/ngb7F8MsVXWL6fOh+D
   g==;
X-IronPort-AV: E=Sophos;i="5.91,192,1647273600"; 
   d="scan'208";a="303547579"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 02 May 2022 20:50:23 +0800
IronPort-SDR: xv4byJIc6mg3CrfbInmG2WiFsnbIT/OuS+/UYhueonEl9g1S1f+ywC+TBN4ZP4mosXwsv6mRNL
 k1Yyr8l+ImWx8fIWTx7doEenDaP8YRGFc9jnk8vMOKRK35RlceCU/4kojVxInbEG86lOzp8H6Z
 mCpME5FZ8n+ZAON2om4fXzhN2FWUscmK0V2uc48X2TSzGwpRtHI66No6X5rv9UHdzLGOwtKN5B
 qyzU3htJxocW0hYnGs3Ci/Aa1sO739/8Hez7jZ8czIBKP+7cpS3BBrxkmxpd0E/6cgeapVCbb4
 ObLCRsTs0jegBgXy9xS5WPaU
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 May 2022 05:20:28 -0700
IronPort-SDR: NGc8pX35onRnUiPC1RF4OqvdV9kCyibcwxkCLT0JZtFJIqpNakN7D1j/o4tX7M7fM+tkRkxQ5s
 b++Vx7FYlkkQF4rCFVG4kRLizdlLIivki1Wbup7ubNkSXlJAvPyXlcnHBhTaU7KWAHUuWBxU7x
 17RrAtCJTWCtQBV8A8ED86mxvlWnGQwxqVOzBUMk3rkzFTLa3iS3e/9uy/DTsNabRjnnMYMGdn
 2Wf70cqhR1/iFTDbJ1xbh2rNYIGTKal9L7Xw6DHe5bwgnZ6gYsY7ZzSltpfnKmWnNepqbuqNu4
 BCk=
WDCIronportException: Internal
Received: from unknown (HELO x1-carbon.lan) ([10.225.164.66])
  by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2022 05:50:22 -0700
From:   Niklas Cassel <niklas.cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Niklas Cassel <niklas.cassel@wdc.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: riscv: Add mmu-type riscv,sv57
Date:   Mon,  2 May 2022 14:50:13 +0200
Message-Id: <20220502125015.1345312-2-niklas.cassel@wdc.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502125015.1345312-1-niklas.cassel@wdc.com>
References: <20220502125015.1345312-1-niklas.cassel@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

sv57 is defined in the RISC-V Privileged Specification document.

Additionally, commit 011f09d12052 ("riscv: mm: Set sv57 on defaultly")
changed the default MMU mode to sv57, if supported by current hardware.

Add riscv,sv57 to the list of valid mmu-type values.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d632ac76532e..3100fa233ca4 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -61,6 +61,7 @@ properties:
       - riscv,sv32
       - riscv,sv39
       - riscv,sv48
+      - riscv,sv57
       - riscv,none
 
   riscv,isa:
-- 
2.35.1

