Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98753670BE0
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:44:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjAQWoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:44:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjAQWmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:42:51 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45DE95D924
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 14:30:17 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id tz11so14507399ejc.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 14:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7bEFoFbOUtsSE/6ZuuEBc3RCFNCiMzDE8TXDtdWn6U=;
        b=XeDsQQcWwPmi0pb4U7JUVvQaF/SuEoPvG+yj2lxCH1zA0apDK3k+1hy1JMp0WiPJv7
         8wdBBOeXm1/c45mVf44ES/yXhNsxb5orX1s6ogfKNX4VRz5oN5Iq2moKEE+xb8pmz4g7
         UNCNoyt1Fk8PL5zUcPCB7m93ks1jvFZnSN3eOerKDV+JqfmFMu4hIgkg1P/X8J6Es59g
         0GGlG+GVWtYHs+8QxZoDCOs9anqqDPhsp6Ulk9HHjwvGROob8o85qVMahiugpkCqruat
         UA7bVSpjGuSaTj1wlkT1SAhR56IZDlX3ORCWuGNcv8O0p+ybUwjNO41QWLJamZ7O/3lt
         ihqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N7bEFoFbOUtsSE/6ZuuEBc3RCFNCiMzDE8TXDtdWn6U=;
        b=s5qZtCbF+lQoMMOjd4bJuAN6XjqCfNatb3O+iDDkTrvTa4RhdndXVUebKZFQegiUUb
         Jqaf9eZaZmoN9TFjqm9Rt/sDsTwxHys9jAWUHYHndgvh/XDTt/uPSfibRXPlic+Qkkvk
         ry7x0tg7kSfTZloYgTATOLL0RczLNaApUYGz5xumyVN0yJcanC5kk/wwqhMSSX8p4sM2
         rU6+4QBgbFozEDgBSyUc7w1rwOmlt44AAhuJKcWjH1NJ1R95s7UAHhFSMZAJ6g7qFtL5
         hkr2Xxdri8Rf15HtOtm1yhOe6HhSY7gbObsdEoGkQZc2EdwDd6/EcQWtAHlAJH1bcaqb
         oE8w==
X-Gm-Message-State: AFqh2kqAQwV4ZtRcPBfl/WaewB0dY3nniHgHBZYVLu4iEr9uYYF3+XmB
        u3p8MIeiQCqgtrRre9znB3alNg==
X-Google-Smtp-Source: AMrXdXuGW7kOm7Q0K5Drssz2TXNa/0t0VkmEB96wiRTVFo/F7/KkA3siLMXKBe2AIG3hwIkRxvGrVA==
X-Received: by 2002:a17:906:eb8e:b0:871:6b9d:dbc with SMTP id mh14-20020a170906eb8e00b008716b9d0dbcmr4640462ejb.21.1673994615878;
        Tue, 17 Jan 2023 14:30:15 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id ec20-20020a170906b6d400b007c0f5d6f754sm13835189ejb.79.2023.01.17.14.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:30:15 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/6] dt-bindings: mailbox: qcom: add SDX55 compatible
Date:   Wed, 18 Jan 2023 00:30:08 +0200
Message-Id: <20230117223013.1545026-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230117223013.1545026-1-dmitry.baryshkov@linaro.org>
References: <20230117223013.1545026-1-dmitry.baryshkov@linaro.org>
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

The commit 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55
APCS") added SDX55 compatible string to one of clock-selection
conditions, but failed to add one to the main schema's compatible list.
Fix this omission.

Fixes: 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55 APCS")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 943f9472ae10..36deddca1524 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -39,6 +39,7 @@ properties:
               - qcom,msm8953-apcs-kpss-global
               - qcom,msm8994-apcs-kpss-global
               - qcom,qcs404-apcs-apps-global
+              - qcom,sdx55-apcs-gcc
           - const: syscon
   reg:
     maxItems: 1
-- 
2.39.0

