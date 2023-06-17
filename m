Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F135873404C
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 12:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233938AbjFQKkM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 06:40:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjFQKkK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 06:40:10 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90E5518D
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 03:40:08 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5189f49c315so1994286a12.2
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 03:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686998407; x=1689590407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hOsJHagLYft+z1wRaat9rFw5ByTXGaxmjJRcBW6GsbM=;
        b=clyyqwGL+hvkDyAltf6JvZq0facG3pvstzj93VqpwkoMHOYtVVRb0On1aEjmf4aPpd
         t+DcGQ34tbi4rrFvuPOybtpy5Gh14Yp+y3RxtXl+Q+JGjkH9MHJ6c6y0PSOsX910nfr1
         QeJ56KljbWsfBPZd/L75QF1to9rF1k/b1xFaoKKQTLXHEmu5H5c/sqkl8FmSlFM3khwJ
         F3XtBY8Ad/WbKtH/dLgoSMIS/ScVpBvgBZWO9biEUjmhqcsvvqc/hZzAKJAcjWfQVw7S
         5Brab6fvL6sgEszZcmMvoZLyj9EzTge55ufqNzDwyqX7F9yfep+fyxMwxHBROvRsNYD+
         Z8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686998407; x=1689590407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOsJHagLYft+z1wRaat9rFw5ByTXGaxmjJRcBW6GsbM=;
        b=Jg90a1AlsEGeUJLsQS1JLryoSRwpNENHD4wxkBiWXfKQiU8inrh0N4f3KbYtmMgFN9
         82owJN9QOyg3yUFBEYuqbgheMfJLWSq+1Y3dtdcdNvOiAySOiQ1VzRicJ1ChqvhyT59B
         rMGvl7s0C6cUdKXA4iLywyIDNkkDZNkzuP/xm25sPXWF4YKlel0dSKrN6F09hfFoa3y0
         sp+uZ4iKHbE/JCgqOaFMDzcMErt+hFNll2Nm1CXzSmWIm/DmUYHbSRXVEL451FW0f8S1
         nEoryLEzvPZHDOTkpGrfqsdOE0U7PaozxOQINccpawGcbPWEr4oLSq+/F9Qd9vktkY3U
         DcGg==
X-Gm-Message-State: AC+VfDyzDa8wQC0Efw9neXLk159ioym16O7CHbxw5DW2MlzhISkm2Zu3
        k27VaWbdAwgHPdzVJBkttncI0g==
X-Google-Smtp-Source: ACHHUZ6gbEivtkVxVh1QVcQV93VueGb7L0+ilZxZ51YqtVMg61RQO8cCu0hUxWO4LtdLnc3Es2DdgA==
X-Received: by 2002:aa7:c7d7:0:b0:518:7437:bd9f with SMTP id o23-20020aa7c7d7000000b005187437bd9fmr3195769eds.24.1686998406995;
        Sat, 17 Jun 2023 03:40:06 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id g25-20020a50ee19000000b0050bfeb15049sm10677124eds.60.2023.06.17.03.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 03:40:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH 1/2] dt-bindings: iio: semtech,sx9310: reference common schema for label
Date:   Sat, 17 Jun 2023 12:36:57 +0200
Message-Id: <20230617103658.114453-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference iio.yaml schema from dtschema to allow already used
label property:

  sc7180-trogdor-homestar-r4.dtb: proximity@28: 'label' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Resending with ack as dependency (dtschema patch) was applied.
---
 .../devicetree/bindings/iio/proximity/semtech,sx9310.yaml    | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml
index 5de0bb2180e6..775555d147bf 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml
@@ -15,6 +15,9 @@ description: |
   Specifications about the devices can be found at:
   https://www.semtech.com/products/smart-sensing/sar-sensors/sx9310
 
+allOf:
+  - $ref: /schemas/iio/iio.yaml#
+
 properties:
   compatible:
     enum:
@@ -102,7 +105,7 @@ required:
   - reg
   - "#io-channel-cells"
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1

