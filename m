Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 735A46C6EF7
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 18:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232459AbjCWRbl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 13:31:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231556AbjCWRb1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 13:31:27 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD8D29E24
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 10:31:23 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id j13so22123582pjd.1
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 10:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679592683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FoRlfx7CbmqnP3zURzbR63MNq645Q0jdEhms+74MeYc=;
        b=kAbV/I/7xnERMCRUryA9uRdH+3r0Gbql1oICa8dpLQkpw3nzC30aFv0O2WVZhad+Rg
         z/5TPz2pe2fz4w0QwV2aTcCxsSSCzZRWT4Rb7+IXKwSWE25W9HVRgq2ygsxETUMA6Yeu
         1bfWQmuHyrMczCGKRaLFy9bXJTz805huHOKHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679592683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FoRlfx7CbmqnP3zURzbR63MNq645Q0jdEhms+74MeYc=;
        b=de/K70/h5u6S55vJkihFxaSMQlgiLvC+9n/g+0XLldbX/QbLQFlyVEtwcpv88StKBM
         SKpXVLyiA8jUWiD+A5Vxbj+1jt3fR7AGjT7FgcYmus9OZ1Xw97avYIbX/g20pOrqnhQN
         le6+YScSLNkl96xtwXKxvCemyqimTFwP1jWwG4OZ1YuJvjFV6/LisLZQRq7hqQoVSpEg
         GrLR1DZ4tHWT0vK3QiRLT1hWYL9p4YW9TfpLWxF2CX6b6f5wo8UpAu6zhAfIvA8jKpZf
         /Kz1SvpsINKwtVnucaeU/b5BX/Ne8jqi4QW0R1PjbxmUfUk8RCne8Xpoa3HxfpPTNJRK
         H15Q==
X-Gm-Message-State: AO0yUKWGkQoW3V0mGWs9soLUuX3Z8XOMGySMjsHvWvGMRaHWF+AlBrGt
        4RCTQRw1R+m392D4zGJSDs+IGg==
X-Google-Smtp-Source: AK7set+wKfX/T8HiiMPPsgLGNmM1PcdDUUn5hrO5kvSgLUVSymrEOe8m2EhrenDZ8jrFoHqrR+7FrA==
X-Received: by 2002:a05:6a20:33a8:b0:d4:c605:4512 with SMTP id f40-20020a056a2033a800b000d4c6054512mr318424pzd.30.1679592683296;
        Thu, 23 Mar 2023 10:31:23 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16d3:ef20:206a:6521])
        by smtp.gmail.com with ESMTPSA id x13-20020a62fb0d000000b0061a6f4c1b2bsm12613546pfm.171.2023.03.23.10.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 10:31:21 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 06/14] dt-bindings: pinctrl: qcom: tlmm should use output-disable, not input-enable
Date:   Thu, 23 Mar 2023 10:30:10 -0700
Message-Id: <20230323102605.6.I291ce0ba2c6ea80b341659c4f75a567a76dd7ca6@changeid>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230323173019.3706069-1-dianders@chromium.org>
References: <20230323173019.3706069-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As evidenced by the Qualcomm TLMM Linux driver, the TLMM IP block in
Qualcomm SoCs has a bit to enable/disable the output for a pin that's
configured as a GPIO but _not_ a bit to enable/disable an input
buffer. Current device trees that are specifying "input-enable" for
pins managed by TLMM are either doing so needlessly or are using it to
mean "output-disable".

Presumably the current convention of using "input-enable" to mean
"output-disable" stems from the fact that "output-disable" is a "new"
property from 2017. It was introduced in commit 425562429d4f
("pinctrl: generic: Add output-enable property"). The "input-enable"
handling in Qualcomm drivers is from 2015 introduced in commit
407f5e392f9c ("pinctrl: qcom: handle input-enable pinconf property").

Given that there's no other use for "input-enable" for TLMM, we can
still handle old device trees in code, but let's encourage people to
move to the proper / documented property by updating the bindings.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../devicetree/bindings/pinctrl/qcom,tlmm-common.yaml          | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
index cb5ba1bd6f8d..5a815c199642 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
@@ -75,7 +75,8 @@ $defs:
       bias-pull-down: true
       bias-pull-up: true
       bias-disable: true
-      input-enable: true
+      input-enable: false
+      output-disable: true
       output-high: true
       output-low: true
 
-- 
2.40.0.348.gf938b09366-goog

