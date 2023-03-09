Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE3996B2552
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 14:28:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjCIN2M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 08:28:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230295AbjCIN2I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 08:28:08 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9AAD23C5E
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 05:28:04 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id az36so1153394wmb.1
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 05:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678368483;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N8+H5EEAbdvf52NcUpG/q5u48K7jDEZDyAtoMXnmBJw=;
        b=SFx61bo+Fyh+BYmf5aHoGWEFkTf24eoVuQbPrbC8Ds81glYkOkWj/TNrvnblnz8MKr
         IVSiFzWBG8suHpeideLbmWcnXcKGmxrZnVA7QG+81UJSC2J6/xcaHJTBPuKAV4YVZDHW
         h4LGyx9mUoBHneAQnI7fGTflcI/KheWKO4YILNdk0WWOBgHgbiZSsBQ6OAkb+6/uoPkG
         ZLvB7DMZp70oSrxa1psHv28FmIAC1ej9TG48Hkfh7+OvhChQpSLxAi3iMz6R/Uo5iRvI
         4Ccvz8dDKJ3kqy48UAB5imGBU5m5r26rI+DxV3+VawWDwSTTdh+y0naqyD0IF/NbqtJu
         2ADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678368483;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N8+H5EEAbdvf52NcUpG/q5u48K7jDEZDyAtoMXnmBJw=;
        b=BOrMl2HSIvP5oj05je6RmnzA94Syxkg2gQOO9CtXmHaX5whYfo0T0LewDaLUP5pokR
         bCWqs6EHNEB0Ai9RKCmPTXt46y7dBjTlzTRnltL0uxKlCjUdFeDNiebBqVuHE1gcaw3B
         6asYFmFKfePZs/qmmnk5ajtXNQf8APyp+em6mCJoS/R/BaCb4pgNQtgZYF/e4B8kTDdL
         W4NJ7x23LwHvBu2ZhrNWa87RMOtc9Mb1CQz+vKwseoRtR0EEy6D/g+n3f9+yqrGsMzW4
         vo/Usogi54etzZlpptS5qwV7tW1mtJqAyiCHtKxYVV5Og6GgwUDERQN/Vm1WBOdWQz6V
         M/UQ==
X-Gm-Message-State: AO0yUKVtWbacaqCDl9iGMTdSFOx//yOQXjO8k0QHqPOJKiS00/t4TrFd
        lO7iO2ecPkNRB+XWJ+EPLgwW3g==
X-Google-Smtp-Source: AK7set9sHwTBVocLJw3i9w4Dn/+0qkyu6knG6SsX3glGfGLzt1axEPnR4EdD+mYzF08U/p7KY9rHBA==
X-Received: by 2002:a05:600c:468e:b0:3eb:2e66:9 with SMTP id p14-20020a05600c468e00b003eb2e660009mr20227975wmo.30.1678368483280;
        Thu, 09 Mar 2023 05:28:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r7-20020a05600c458700b003eb966d39desm2926714wmo.2.2023.03.09.05.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 05:28:02 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Thu, 09 Mar 2023 14:27:53 +0100
Subject: [PATCH v3 02/12] dt-bindings: soc: qcom: qcom,pmic-glink: document
 SM8450 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230130-topic-sm8450-upstream-pmic-glink-v3-2-4c860d265d28@linaro.org>
References: <20230130-topic-sm8450-upstream-pmic-glink-v3-0-4c860d265d28@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v3-0-4c860d265d28@linaro.org>
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the SM8450 compatible used to describe the pmic glink
on this platform.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index cf863683c21a..a85bc14de065 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -25,6 +25,7 @@ properties:
           - qcom,sc8180x-pmic-glink
           - qcom,sc8280xp-pmic-glink
           - qcom,sm8350-pmic-glink
+          - qcom,sm8450-pmic-glink
       - const: qcom,pmic-glink
 
   '#address-cells':

-- 
2.34.1

