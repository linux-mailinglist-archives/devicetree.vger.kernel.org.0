Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A84F47228D
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 09:27:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232929AbhLMI12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 03:27:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232891AbhLMI1W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 03:27:22 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1F27C061D5E
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:27:20 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id z5so50075306edd.3
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=08eze2rwaywXTp2V8JYK1oiE8AMhHag/TyEXoCIH5q0=;
        b=kcvJIzHE/o7DaQiSYPzQcfis9udNFJUaquN22C4LbSVsynLTOQmcheO/5kXgxH3B7x
         PHHzUvuaDLFz16+uxW24Ckgqf2eqdlPOyYXWfRpj4lwsPYPCW9D7yHqteTPRqyMCFohU
         s1m0pF7vdm86vX1OvcV1asOpQd71GyRGKr2G+f4niAFsA8RvdhJg4f0MBuZWlsj8GPAQ
         j0UXikHsLZ6Sf2UM1SCXIuwbmb9UKbofOVU4XpkNYmHIPL35BcdKrkga59uPuZufo8JQ
         MBF3mq4tn15ENHPV8qs4V070o3jjqCCFll8KrBM3+rHxNASAUgdH8EqQiBKwOF5gn5Uo
         e6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=08eze2rwaywXTp2V8JYK1oiE8AMhHag/TyEXoCIH5q0=;
        b=GgyG6Wm82FSEJ9D44FESGoy5QdAbknGl+VBRAeWOpN4AVe9XWSfnq3DOm6HlXoDFmP
         JswuVOEscy+qP7cn09M4KGY+4g0uFjHvGHnO7uKze3i5c/5q6qyQt+FkmLIJLh1Y5LdT
         zf73RvzVU3gpm2pcEbPZdW38E0F9cugQ8uZSfklAXRMLcczM6ma7Fcz1acImkLx1ruP4
         1y5KoxsGjXk9dm4VkplFkO7+TnWwNg+fm5tiQ+kC6E7WCdH0XYun0QIEAS/we/3x76io
         qpwPnvHWKstVaN7Nhqrpa8cJ9mWu/jOWbZw4nhePVPQCTgnbS+fNS+JwF9wi7Udzs++F
         HKMw==
X-Gm-Message-State: AOAM530nSAyR12WCzNWVaqMyFPdiPC3DncP2Lz0pkelhHXdk7UmCrnge
        kwzvR0KraL/xm/f5NA1zdRepXA==
X-Google-Smtp-Source: ABdhPJzwJ9FrHxEIsZ8+/PDH6AbBUqNo+x5J+H+Oo6+4kQ5HkpGeQXt4H8IUlmFNYAIxfog//cgNiw==
X-Received: by 2002:a17:906:7954:: with SMTP id l20mr41211739ejo.143.1639384039575;
        Mon, 13 Dec 2021 00:27:19 -0800 (PST)
Received: from localhost.localdomain ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
        by smtp.gmail.com with ESMTPSA id b11sm6062432ede.62.2021.12.13.00.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 00:27:19 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 08/10] dt-bindings: arm: msm: Don't mark LLCC interrupt as required
Date:   Mon, 13 Dec 2021 09:26:09 +0100
Message-Id: <20211213082614.22651-9-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213082614.22651-1-luca.weiss@fairphone.com>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Newer SoCs like SM6350 or SM8250 don't provide an interrupt for LLCC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
index e12fc7999356..03882aac8d2d 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
@@ -45,7 +45,6 @@ required:
   - compatible
   - reg
   - reg-names
-  - interrupts
 
 additionalProperties: false
 
-- 
2.34.1

