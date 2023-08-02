Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 694E476CCE8
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 14:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234558AbjHBMic (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 08:38:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234528AbjHBMia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 08:38:30 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CAD02711
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 05:38:22 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9a828c920so106341711fa.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 05:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690979900; x=1691584700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p8ibCsCefa6ZAWVplZiGBVLhq2a/cqsLVlyXMZQI290=;
        b=L/WAhGYg89vCGvKJ01xmKEj/kAYomwjtqchmRnAljmrzypWGf1ExVNCPvP2t84Fa+H
         5nhcRtEoiypv+ORz4oZa7O//4OxFXX1xNzhCgTtBF3ndTp5N4VfY59H6yXfwNvmBF4L0
         oMSEts9C/Ju6pwtv9v/tZXD9XCCBhS0Gv2KVlcdai7CllO6imkWoZA/Y4ooniHZkF4VX
         HmkILrPsPmVPSoBpgDFNqEXzZwYKyGURbINqnijylTODT57GlOv8VinWfMeQuC8ixDnh
         uRFr7ESBxePYuwdQN+k+RTwxiKDVZnXdlSKkvbft5LX1teVY5mkkdE2EuXo/i5I+vT6O
         YkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690979900; x=1691584700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p8ibCsCefa6ZAWVplZiGBVLhq2a/cqsLVlyXMZQI290=;
        b=KIArT0w3r6uEaK/MBN7YqQpoqrpwvQJP5/CB/EH49wATFZYMobSnMkMlNEREpHOsyZ
         uQ74NINeJhK8iFpDQ4ySYiCJfZ+b2TopkdynHweomOtEmJrGxrxDW87Y9O2Hi873TqEP
         ml21h5FRAIIiffnyrDXyeL6jUbR0wplcYEIACiGlpHtALNISM1WAoYCkChGPmZpXOC0J
         y+NPjgOKzhnxZ6AKSz5eDe8j7AR73QJaAMZLUlHavq12I/dHuBFGvqMfhCXo4E04c09V
         rvHycBNcosbB/WCtXRBiLD2PROmTlINS9heqK5DLomIwXm5WYoqFP4YL1XyDs/yuCv4C
         RdoQ==
X-Gm-Message-State: ABy/qLaXl8wkGgdsPr0cf8vYSoGX5pi2Go4mtcqHV2tyKz3uP8uwKIe0
        fH0X0UHN2KaLXaCFcxWbjQh9tib2dRKBqs5vzkHkig==
X-Google-Smtp-Source: APBJJlE6ARDEmy21WU3r29vh2B5ymlpRBSIrn0DFyx0h3brX5raOWVzzM4WVWqe1ZERvyRqSv+SJuQ==
X-Received: by 2002:a2e:3307:0:b0:2b6:ba54:cc8 with SMTP id d7-20020a2e3307000000b002b6ba540cc8mr4884185ljc.30.1690979900741;
        Wed, 02 Aug 2023 05:38:20 -0700 (PDT)
Received: from [192.168.1.101] (abyk53.neoplus.adsl.tpnet.pl. [83.9.30.53])
        by smtp.gmail.com with ESMTPSA id h8-20020a2e9ec8000000b002b9e5fe86dasm1897050ljk.81.2023.08.02.05.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 05:38:20 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 02 Aug 2023 14:37:43 +0200
Subject: [PATCH v13 03/10] dt-bindings: opp: v2-qcom-level: Document CPR3
 open/closed loop volt adjustment
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230217-topic-cpr3h-v13-3-d01cff1c54cf@linaro.org>
References: <20230217-topic-cpr3h-v13-0-d01cff1c54cf@linaro.org>
In-Reply-To: <20230217-topic-cpr3h-v13-0-d01cff1c54cf@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Niklas Cassel <nks@flawful.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1690979891; l=1556;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=1PU66HaoulFU/Wo7HNKJEIXnou7x9T43KX25qUVEdMs=;
 b=l6lqMVeLONCbszDhY3T5E0D1mbsBcY/OrtcjDOXJH7657zxZ58AWWw/XkxmTXe9bkCyinjJlt
 BS3oS28U+1OAnL6wInr9zNUYwqUYsKemAIvGlsroPFO+qkgLuMT7VlN
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CPR3 and newer can be fed per-OPP voltage adjustment values for both
open- and closed-loop paths to make better decisions about settling
on the final voltage offset target. Document these properties.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/opp/opp-v2-qcom-level.yaml         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
index a30ef93213c0..b203ea01b17a 100644
--- a/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
+++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
@@ -34,6 +34,20 @@ patternProperties:
         minItems: 1
         maxItems: 2
 
+      qcom,opp-cloop-vadj:
+        description: |
+          An array of per-thread values representing the closed-loop
+          voltage adjustment value associated with this OPP node.
+        $ref: /schemas/types.yaml#/definitions/int32-array
+        maxItems: 2
+
+      qcom,opp-oloop-vadj:
+        description: |
+          An array of per-thread values representing the open-loop
+          voltage adjustment value associated with this OPP node.
+        $ref: /schemas/types.yaml#/definitions/int32-array
+        maxItems: 2
+
     required:
       - opp-level
       - qcom,opp-fuse-level

-- 
2.41.0

