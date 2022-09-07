Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D63D5B0E8D
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 22:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbiIGUuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 16:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230211AbiIGUt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 16:49:58 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288A8402FA
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 13:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662583795;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=L9MgklvzpOudjdiKZlpMkkXwau8zREX7ev+fmxYPY5o=;
        b=C8nITB6ijffkOpAgi1jorte7R8teR8F44EfFH+p9gb9fIDYHDQaO/s4yNtDDGY6gIOJ/2q
        yyOZ35ODb6FJK5iNTb3QkTYD5IttL+2FS/UHlZpGMTA/bPa650ZPkwZocYy7j6Qmch1LJN
        ZMPh0rILGx7ge/EOiA/PUZSekE+3zDs=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-402-96bKnsf1NXyiCJYhh3usGQ-1; Wed, 07 Sep 2022 16:49:54 -0400
X-MC-Unique: 96bKnsf1NXyiCJYhh3usGQ-1
Received: by mail-qt1-f200.google.com with SMTP id ci6-20020a05622a260600b0034370b6f5d6so12862366qtb.14
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 13:49:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=L9MgklvzpOudjdiKZlpMkkXwau8zREX7ev+fmxYPY5o=;
        b=M/u4GCxMzKG5WRS/wsrWeH5T46SkKhTxLUOavDzgtcAV/z1u5RXJbdSqUCEYSZGCie
         4wwX5r/Iza2LLRqf7zNLxCbgEXlTz4mbOHdHxGE5gydKzzhicUgAI4pGVdjiZktyk8JL
         O/NyhfWNyoK++AdeHBnDMy2vkpIgs38SmiLAeekLSyhGVQXXpWLTkJ7Aq5jAln1J6QIZ
         D1FtWXhqxTsh519PEb3qWOf3KUKIfFOAbF9JT8umyi/KwxB4mDBDDHAlVhsTHj9AX2nH
         2c2zz/Q3NoTrgJ6DCSJlPUTmRS2zGWczFITUCDSD5vz5v6Kvd5LHesso6N35FP/6b/GZ
         1d1A==
X-Gm-Message-State: ACgBeo31ouPbWGUTHgdePV8wu0Z214FDdgLwQH4pXtQhQuADXpz+9OKP
        geFEkn2MaWOwhH7eCXHkUUw1WDDzw4lZ9XsmLayssLEpBQwG2CfY3SP+IqCTFMWrhIHQpUk2f2U
        VOpHWG8QbXLcWJX0eCwmeFA==
X-Received: by 2002:a05:620a:e15:b0:6bc:980:dbaf with SMTP id y21-20020a05620a0e1500b006bc0980dbafmr4067244qkm.315.1662583786942;
        Wed, 07 Sep 2022 13:49:46 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6Uvw6ERXn2n408EEsRhz6gdjgairFOEkZj2t3LD9zz3Z5jzRjbPNP12PjV8iIutge5yVDzbA==
X-Received: by 2002:a05:620a:e15:b0:6bc:980:dbaf with SMTP id y21-20020a05620a0e1500b006bc0980dbafmr4067227qkm.315.1662583786664;
        Wed, 07 Sep 2022 13:49:46 -0700 (PDT)
Received: from halaneylaptop.redhat.com ([2600:1700:1ff0:d0e0::a])
        by smtp.gmail.com with ESMTPSA id k18-20020ac81412000000b003445b83de67sm12599790qtj.3.2022.09.07.13.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 13:49:46 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        johan@kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Johan Hovold <johan+kernel@kernel.org>
Subject: [PATCH v3] regulator: dt-bindings: qcom,rpmh: Indicate regulator-allow-set-load dependencies
Date:   Wed,  7 Sep 2022 15:49:24 -0500
Message-Id: <20220907204924.173030-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For RPMH regulators it doesn't make sense to indicate
regulator-allow-set-load without saying what modes you can switch to,
so be sure to indicate a dependency on regulator-allowed-modes.

In general this is true for any regulators that are setting modes
instead of setting a load directly, for example RPMH regulators. A
counter example would be RPM based regulators, which set a load
change directly instead of a mode change. In the RPM case
regulator-allow-set-load alone is sufficient to describe the regulator
(the regulator can change its output current, here's the new load),
but in the RPMH case what valid operating modes exist must also be
stated to properly describe the regulator (the new load is this, what
is the optimum mode for this regulator with that load, let's change to
that mode now).

With this in place devicetree validation can catch issues like this:

    /mnt/extrassd/git/linux-next/arch/arm64/boot/dts/qcom/sm8350-hdk.dtb: pm8350-rpmh-regulators: ldo5: 'regulator-allowed-modes' is a dependency of 'regulator-allow-set-load'
            From schema: /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml

Where the RPMH regulator hardware is described as being settable, but
there are no modes described to set it to!

Suggested-by: Johan Hovold <johan+kernel@kernel.org>
Reviewed-by: Johan Hovold <johan+kernel@kernel.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

v2: https://lore.kernel.org/linux-arm-msm/20220906201959.69920-1-ahalaney@redhat.com/
Changes since v2:
  - Updated commit message to explain how this is a property of the
    hardware, and why it only applies to certain regulators like RPMH
    (Johan + Krzysztof recommendation)
  - Added Johan + Douglas' R-B tags

v1: https://lore.kernel.org/linux-arm-msm/20220902185148.635292-1-ahalaney@redhat.com/
Changes since v1:
  - Dropped first two patches in the series as they were user error
    (thanks Krzysztof for highlighting this!)
  - No change in the remaining patch

 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 9a36bee750af..92ff4d59ba20 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -99,12 +99,16 @@ properties:
     type: object
     $ref: "regulator.yaml#"
     description: BOB regulator node.
+    dependencies:
+      regulator-allow-set-load: ["regulator-allowed-modes"]
 
 patternProperties:
   "^(smps|ldo|lvs)[0-9]+$":
     type: object
     $ref: "regulator.yaml#"
     description: smps/ldo regulator nodes(s).
+    dependencies:
+      regulator-allow-set-load: ["regulator-allowed-modes"]
 
 required:
   - compatible
-- 
2.37.2

