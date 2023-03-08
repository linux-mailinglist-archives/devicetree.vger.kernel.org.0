Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249076B13F9
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 22:35:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbjCHVfs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 16:35:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjCHVfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 16:35:46 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2FCC9CBE2
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 13:35:39 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bi9so23153610lfb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 13:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678311338;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QDlHCsdatk7h5R3zUsXpTRiwKW19DDuLF4HKqV/q1bg=;
        b=osg1GpfiQPSnkCrXraQM+3UriA4cjKvMkix3J0/xqRUCIIoUUX4nnNhIrBmtBQiKnD
         gePP3GBZ6QMmX5q4kilek17tUpgbO1ASRe776L8tUVxqk3TmpwlNJzqKPURdyyHE/WMU
         BT3pPYibiXQlN6feiN2B+AInyVpl/Y9yXdo+9vMUnspdaubHww4SRB/18DqQen3eVzHC
         0R/KeD5QV4ZI4LWlIg13vyRz+4oGYnfF1Ft7AH4oyqClKnkCxy8OZpYDUBzSdZq9ZffP
         M36yfO0hKGomA91p8WSsOY/mwYDUjVFDlVVX1y5VPQYoTYtu4tpFVSIKTcJ10eENQ1qD
         tQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678311338;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDlHCsdatk7h5R3zUsXpTRiwKW19DDuLF4HKqV/q1bg=;
        b=EsuplI1BD/nmtOzzuU32/nKlCpMs9kb+1PR87GcAf+MWq3NhFjYH5Xvwy7FqNF0lmd
         PggDXPNh6KqtyM2/8Yym0FAJxKtIbiRfVFeNt52cAZMU2dF7mNuQveawXydk2szw/buz
         l9xD1TC/QMw1w65UhgrLzLakCgVTDthdYZvdbWfmmVaxGhy+wEzB1fwca7XHcWE+2llw
         cOGGaJpKz/SUaM10PWHi+JDby0pWV4Ys0DJST43efjkSSYoYiSs2U4KhFjQiv3pXCwQm
         bDY9WASWKuqSkIFNOcmIzodozjyw7N2iJW9U14C6dhoKC/idVx0mldOa8zwW6yIIzPWy
         dxHA==
X-Gm-Message-State: AO0yUKWAJQP2UnOsRyvN6O4J2WkQ0of1kci7g0fqncD8u9ai/nfuRKVR
        vpzv1r+n1xaIXG7s8oOqS1xYRg==
X-Google-Smtp-Source: AK7set9jKKS1d8eD16jz2TNullASEgcLm6DVH+d8w29UZNhGZI2EIfH5sDM7BrWWmTsnagUc8sH6Ag==
X-Received: by 2002:a05:6512:25b:b0:4dd:ab39:86e0 with SMTP id b27-20020a056512025b00b004ddab3986e0mr6214451lfo.27.1678311337931;
        Wed, 08 Mar 2023 13:35:37 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id u7-20020ac243c7000000b004dc4d26c324sm2467479lfl.143.2023.03.08.13.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 13:35:37 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 08 Mar 2023 22:35:17 +0100
Subject: [PATCH RFT v2 01/14] dt-bindings: clock: qcom,rpmcc: Add a way to
 enable unused clock cleanup
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-rpmcc_sleep-v2-1-ae80a325fe94@linaro.org>
References: <20230303-topic-rpmcc_sleep-v2-0-ae80a325fe94@linaro.org>
In-Reply-To: <20230303-topic-rpmcc_sleep-v2-0-ae80a325fe94@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678311334; l=2006;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kU+or0SIwjfCFe3CHtYMpTgzGECGUtYX8Fz74pRBjmw=;
 b=xakONkb1YLP0DXpf6jbByNh8PngvZtgp8nUR3XoamblbthS/l/94cTLlNZLqyAgOaLmx+zNacVua
 CppU+tiMDl4K7Y31exizgRwrFp/ZEBt95LxBUjQfHTTMDa5jS9yo
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Disabling RPMCC clocks can be a bit touchy. If we can't guarantee all
(or at least most) of the oneline peripherals ask the interconnect
framework to keep their buses online and guarantee enough bandwidth,
we're relying on bootloader defaults to keep the said buses alive through
RPM requests and rate setting on RPM clocks.

Without that in place, the RPM clocks are never enabled in the CCF, which
qualifies them to be cleaned up, since - as far as Linux is concerned -
nobody's using them and they're just wasting power. Doing so will end
tragically, as within miliseconds we'll get *some* access attempt on an
unlocked bus which will cause a platform crash.

On the other hand, if we want to save power and put well-supported
platforms to sleep, we should be shutting off at least some of these
clocks (this time with a clear distinction of which ones are *actually*
not in use, coming from the interconnect driver).

To differentiate between these two cases while not breaking older DTs,
introduce an opt-in property to correctly mark RPM clocks as enabled
after handoff (the initial max freq vote) and hence qualify them for the
common unused clock cleanup.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
index 2a95bf8664f9..386153f61971 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
@@ -58,6 +58,12 @@ properties:
     minItems: 1
     maxItems: 2
 
+  qcom,clk-disable-unused:
+    type: boolean
+    description:
+      Indicates whether unused RPM clocks can be shut down with the common
+      unused clock cleanup. Requires a functional interconnect driver.
+
 required:
   - compatible
   - '#clock-cells'

-- 
2.39.2

