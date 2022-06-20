Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C64FA5524AD
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 21:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244927AbiFTTl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 15:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244665AbiFTTly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 15:41:54 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E47651C905
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:41:50 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id eo8so16577986edb.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=sEUI2YgJeyDPI47V6RGt0fYdsBueMJxQ+51x+bPWfXk=;
        b=t4uI+sFquTqOp8Ekf5vDFNUJIZQ2JiTt+PZKS4lhjldYnhigTwUmKYa/CLJJQGjipr
         cJtLZdqsy/zIP+EUpoU8fKSy61fQ+/X551Nep+Paroj8FB7c4obubL9X9I5qHI1SlEJp
         UIE6BPcW+tAPmwYMWGkqcMmAdQ2Spd5D44S4Pr4/wuc8TqzkmSwIYY+jlvFqpieMQlKM
         P6VCi60+oo1snCMBbYd8rlcwLqHgF6NP19BNyXhnI14Q18jKmx+QdlDu9oaW9U8YwC5s
         04lZHLFzIRzv6IGAEyjtY5rFKZC2ACP1id8364eECusOqKDMQDus2j/Lv9lXAVMGLyvf
         mVLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sEUI2YgJeyDPI47V6RGt0fYdsBueMJxQ+51x+bPWfXk=;
        b=ibyvxskFNmVUBbsJgcQRyqP57CxFEvBMwhV1StL8HdpYWLc7rhq/xTlfXSsqNyA7Bi
         G+N8AIUx+G8SgOTO+aXrDOXXpKhZkSEkQw6Ntia4RYEM94woJ7N6qHzkPfQhBfdPcYxf
         mo5wMj4FzwNiyUTTyXUAH/7/6OJp6GAuTOcobGf2L9zGsbXArY+nWY2tmQf3hFrY721t
         GUsDrno7/g0Sfu36FAxdlxwMZ092e+Z4Il6ENWxvFLfuCohS7pHH+0Z8PkEIWY7ouYsT
         PZBbIOssytRAEviMcQDxmZBy3Qp8Pjps77jvZm0i/1GHh2Uz/wXt8GxtXnLpXm4Z229n
         X64A==
X-Gm-Message-State: AJIora+Q/fIxTHyvS6SEnQTieHi9nuIINzDTJttBHqBaVIyHzNJVHWCG
        dBzMzLo0YK1u0Ix5krT8pAg89A==
X-Google-Smtp-Source: AGRyM1scAVu7vTSEgbiRLCuBIayZlj7HVQWoDuynLy+Uu1q2Kg8/F1hdn1mAdxVUHySH9O31TrhWkQ==
X-Received: by 2002:a50:fb9a:0:b0:435:6c0e:3342 with SMTP id e26-20020a50fb9a000000b004356c0e3342mr17380428edq.337.1655754109503;
        Mon, 20 Jun 2022 12:41:49 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o18-20020a056402439200b0042fbc23bfcesm11448549edc.46.2022.06.20.12.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:41:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     krzysztof.kozlowski@linaro.org, linux-kernel@vger.kernel.org,
        gregkh@linuxfoundation.org, bjorn.andersson@linaro.org,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, mgautam@codeaurora.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org
Subject: Re: (subset) [PATCH 01/13] dt-bindings: soc: qcom: aoss: document qcom,sm8450-aoss-qmp
Date:   Mon, 20 Jun 2022 21:41:42 +0200
Message-Id: <165575403865.144830.4698856147792054347.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220504131923.214367-2-krzysztof.kozlowski@linaro.org>
References: <20220504131923.214367-1-krzysztof.kozlowski@linaro.org> <20220504131923.214367-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 4 May 2022 15:19:11 +0200, Krzysztof Kozlowski wrote:
> Add compatible for qcom,sm8450-aoss-qmp with qcom,aoss-qmp as a
> fallback.  This fixes dtbs_check warnings like:
> 
>   sm8450-hdk.dtb: power-controller@c300000: compatible:0: 'qcom,sm8450-aoss-qmp' is not one of
>     ['qcom,sc7180-aoss-qmp', 'qcom,sc7280-aoss-qmp', 'qcom,sc8180x-aoss-qmp', 'qcom,sdm845-aoss-qmp',
>      'qcom,sm6350-aoss-qmp', 'qcom,sm8150-aoss-qmp', 'qcom,sm8250-aoss-qmp', 'qcom,sm8350-aoss-qmp']
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: soc: qcom: aoss: document qcom,sm8450-aoss-qmp
        https://git.kernel.org/krzk/linux-dt/c/cd3cd7d63543e4f963a0c823cd8fa29f4fe12f2a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
