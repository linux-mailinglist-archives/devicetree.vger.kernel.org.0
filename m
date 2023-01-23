Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05501677F4E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:16:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232525AbjAWPQe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:16:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232526AbjAWPQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:16:04 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 882C914489
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:46 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d14so7442868wrr.9
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f0uYFyBWfehvdfPUhzgczyrwyEwalo2faWLflMqRXeM=;
        b=cyJFF5XYn5Er9Wa52DqnrW9zXgNm0OeFTmjt/j/R0ZKS8oivaVfyCGRSYt+E86fg4o
         FFfdQSmdD2/9n5bRpSB+jJJBMa9w6EJIN5PqDLAJGS9LeKlpJWjW3Xv1OmljTNPcvq49
         961HkYs4WR7/0lgRVrCTznfZspJyVCvxkjvwr/dI+If9resaAu5IdR88EYYyMqKlSyx1
         KpJ+MV5UNdzwztRZwtE8w1AQ53TE7xiqIPjOYNPRVp0DfVF9bTeqwRsvnBwVlANDC42Y
         CDjyl46M3XQ5jmg0raSKKti4bstddWvOOHR9RtgBKBX82OHV3NHfmkp1RkBEYUU52ctE
         dS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f0uYFyBWfehvdfPUhzgczyrwyEwalo2faWLflMqRXeM=;
        b=rGhtgxQWlyFfqo1L0/I6SpIP7x9nZgjdPwonjr5JixjnFVgKbxMmChTz2O99pMSLYt
         lxE6BXfWyyReGoVmVjbri2cbZ6VuMJ698Aw4l9rREJ8yOZbGn+xebmoRC/Z0+8/LDwua
         a7tmX8t5VPQ61W5AM7N3XbNqvs7vEQpbMarJ0AKM7smTc67brvyjaLEaj0+o8Vm1xbGK
         LZbEPMwG8h6CPR82iqG4qRFffTPlwzFBOFQ30Jlmk1ECoiOP/Ox0zQTzoOpuAjg7MWlh
         Re0Y0hdU0WcZSfAsYf74vwE+ZzaBCv/M35zUBD4+6h0honKgpCu4JF3p43J1fthc+fPU
         8D9A==
X-Gm-Message-State: AFqh2kr3qiMngzojqBHQhQWqLpavH/dLKX7YZdgfJ+Il5aQ2gPXal8Jw
        fOgDQJJkJIyJ18wbISqkl2MtJw==
X-Google-Smtp-Source: AMrXdXsbAbk1BkwWOmduOFyhAo84/oZLdTAs6+ake40n4tMRFKzbhjkI16JICGtEE9PlBUsup5HGjA==
X-Received: by 2002:adf:ffc3:0:b0:2bb:ede4:5dd4 with SMTP id x3-20020adfffc3000000b002bbede45dd4mr33278813wrs.34.1674486942871;
        Mon, 23 Jan 2023 07:15:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h3-20020adfe983000000b002bdf5832843sm21726143wrm.66.2023.01.23.07.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:15:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jisheng Zhang <jszhang@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: synaptics: align UART node name with bindings
Date:   Mon, 23 Jan 2023 16:15:40 +0100
Message-Id: <20230123151540.369690-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings expect UART/serial node names to be "serial".

  berlin4ct-dmp.dtb: uart@d000: $nodename:0: 'uart@d000' does not match '^serial(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/synaptics/berlin4ct.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi b/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi
index 0949acee4728..dc12350b9fc8 100644
--- a/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi
+++ b/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi
@@ -289,7 +289,7 @@ portf: gpio-port@5 {
 				};
 			};
 
-			uart0: uart@d000 {
+			uart0: serial@d000 {
 				compatible = "snps,dw-apb-uart";
 				reg = <0xd000 0x100>;
 				interrupts = <8>;
-- 
2.34.1

