Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 596AD753C15
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 15:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235872AbjGNNvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 09:51:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235794AbjGNNvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 09:51:42 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB42835AB
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 06:51:32 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51f7fb9a944so2318495a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 06:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1689342691; x=1691934691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=urifUudkEPyq2FzlaT1w1iDQxgnQEtIqwDDZrLy2t8E=;
        b=HoaYNMUc+3aRJuYOwNmUedlSGEpUBUGY6lxQ/zMGvOj9K2wQntSgnZkBPOSKVBU3n9
         JOvML0jRSQx9AFX+U5PqI7PKiQSTaXK1lU7Dy/gIxiq58+VImnTu2PfOsBg5IpZI7VsK
         q3ulnWZAbSdgguL2WOpDHUaXFDAJj0wjLYErKrHkU/vRdKd/ZCqrP0XfIsws61YnV9Vx
         xGpfr7pSgCyoguvUWuGLjnubcw/zm1ifpg/0MFj7sMwdRoA/yO5g2essZAU7CA/VYFIl
         8RzBub+t/S83+3GlRVYB1TLsoYZhmkHzYSA2vZs3sz4JGC2q3tg1JgEoPyaV+cs//2g1
         pYag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689342691; x=1691934691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=urifUudkEPyq2FzlaT1w1iDQxgnQEtIqwDDZrLy2t8E=;
        b=arz/TMG7aeXGS37BiePDEbSj0YtT2FgmOxxHXZQTa0O9iqvzACWnlRSAeJ3FHRbTJt
         Yb3AjklE9gKBHMZFh/Cwu09p/ieVTwRW7h823MjgFIS6yqriD4qYSHtfSZSRAwHlrOPh
         OExCnB25+LHKW0nAChqjdxIKh3TAiThCwqjpXupRWUnijP+LLRowk7j9XuawvEg7Vwha
         TURrt9eTBTLU8Sh1J/vZIxzEEE2ZY7RtM8c4T5hzcU64R7AINwCnhXlW8oVLDwwfjrRd
         37r9kFXtPfUeLy+fr/Ti942Ph2KPjnID45RHb3tbAdMEfey/bLn5SzOA45rwcox6XyWS
         gxPA==
X-Gm-Message-State: ABy/qLaeVrUC/2zBuF+aUGq+FSQqDIK423N53EIxOSP8cLaCK+5WwIjk
        vlWW3KaeN0k+mZkhZf9KISlMmzBViXpn6gUjiqiuKg==
X-Google-Smtp-Source: APBJJlGAmr0/UJAC8kytY2+fUeQfkDE7VGTOGWyv7yqIHO7IS3vrc7CDFjtiUckxYVrj8UVqqkr0DA==
X-Received: by 2002:a17:906:57c7:b0:991:fef4:bb7 with SMTP id u7-20020a17090657c700b00991fef40bb7mr3750894ejr.73.1689342691040;
        Fri, 14 Jul 2023 06:51:31 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id h21-20020a170906261500b0099236e3f270sm5405991ejc.58.2023.07.14.06.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 06:51:30 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/8] dt-bindings: trivial-devices: Add MPS MP2971 and MP2973
Date:   Fri, 14 Jul 2023 15:51:10 +0200
Message-ID: <20230714135124.2645339-2-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230714135124.2645339-1-Naresh.Solanki@9elements.com>
References: <20230714135124.2645339-1-Naresh.Solanki@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Patrick Rudolph <patrick.rudolph@9elements.com>

Add Monolithic Power Systems MP2971 & MP2973 to trivial devices.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 246863a9bc7e..f639618508a9 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -119,6 +119,10 @@ properties:
           - fsl,mpr121
             # Monolithic Power Systems Inc. multi-phase controller mp2888
           - mps,mp2888
+            # Monolithic Power Systems Inc. multi-phase controller mp2971
+          - mps,mp2971
+            # Monolithic Power Systems Inc. multi-phase controller mp2973
+          - mps,mp2973
             # Monolithic Power Systems Inc. multi-phase controller mp2975
           - mps,mp2975
             # Honeywell Humidicon HIH-6130 humidity/temperature sensor
-- 
2.41.0

