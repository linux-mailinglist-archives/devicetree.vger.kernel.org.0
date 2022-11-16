Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C028F62B7A6
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:20:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236176AbiKPKUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233485AbiKPKUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:20:10 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 644AD21273
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:20:09 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id cl5so29107491wrb.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pcm4FzP5Zqll4vx+qLC4Zs+d3QrWbatabIiC6u6r60g=;
        b=kxws/zHmdiQFoJ0eF54UCY9nbuWQ9mbC4IGNSA5IcisVZ6M5MY0eJjRgoKDOYUZGym
         iIzr9SUaDi695Pbvz8Xy1rfbUY1tVLVTefUErWMIspw50cwFD4WhuhFcsaARZcEcI2Xd
         98iyUzINb+keCA5Tbb/0AIL55TNLylh/2WX9HlzpXZ9vZaQZnnfMSoGHHIVzRQw+hdU4
         Su5B1NdY+FtUfKFRqZ5VhPNPd+o1roQm5b5kIwarQ6/CwDbDp8iOUuwF8VW+F+SWWxso
         yUKgjQVt9IDuI0qW2Akh36oX87ER3t2Yv+wy6WD/C1y4+Mjmh4hJ0tvCV/DfHI04Mqcz
         am+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pcm4FzP5Zqll4vx+qLC4Zs+d3QrWbatabIiC6u6r60g=;
        b=Ni83muX4x6imoTyp3FcOO4wOeArYmbbTK1idL7nPA6XyjlOQM8JxPaHS0oBreZfOvV
         J+AyAy4VOp1u7c0DmkoX5qoaF3kcXt2xjweFomGxAgSotZWBAp4JsU/zWfGkBLCCjq+S
         1QNJU/1lu0uvS4WzKH/Y9vd/M3KqG+ok6RepvpFbM+KQk2dlG20AJQSKjVyUltVAME8h
         bM1E1O6lcWfKuVuGDLunqtef/tbcbEHdh1g4B/M4EgobxVpHxOdjYW+WHFDNYgM5peyD
         PuksQARZf31TXmzvSyRQAg6uLukkrjd4K/UulSseozYESXWlRP8fv4W/9joZXxUwHEWi
         Gw0w==
X-Gm-Message-State: ANoB5pnd9Oa1JFoImwQrgK0lFRGWrCaDCIHTuat2xZqduPcNYMMRmlz9
        FGH8OBxRed3tlf4VRh2HENPsnA==
X-Google-Smtp-Source: AA0mqf7OyflAEmqc6dCA8VV2BTVg5hL8XYlI7G/+OCSqOxDy+T3BLdadJXZXgwOKDU/Y47R45OBB4A==
X-Received: by 2002:adf:fbcd:0:b0:22e:304b:cf66 with SMTP id d13-20020adffbcd000000b0022e304bcf66mr13304375wrs.308.1668594007976;
        Wed, 16 Nov 2022 02:20:07 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id l18-20020a05600c4f1200b003c6f3f6675bsm1709900wmq.26.2022.11.16.02.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:20:07 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 16 Nov 2022 11:20:05 +0100
Subject: [PATCH 2/4] dt-bindings: misc: qcom,fastrpc: increase allowed iommus
 entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221114-narmstrong-sm8550-upstream-remoteproc-v1-2-104c34cb3b91@linaro.org>
References: <20221114-narmstrong-sm8550-upstream-remoteproc-v1-0-104c34cb3b91@linaro.org>
In-Reply-To: <20221114-narmstrong-sm8550-upstream-remoteproc-v1-0-104c34cb3b91@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>
Cc:     devicetree@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Abel Vesa <abel.vesa@linaro.org>

The fastrpc components on the SM8550 SoC can require up to 3 IOMMU
entries, this bumps the maxItems to 3 for this purpose.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
index d7576f8ac94b..1ab9588cdd89 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -79,7 +79,7 @@ patternProperties:
 
       iommus:
         minItems: 1
-        maxItems: 2
+        maxItems: 3
 
       qcom,nsessions:
         $ref: /schemas/types.yaml#/definitions/uint32

-- 
b4 0.10.1
