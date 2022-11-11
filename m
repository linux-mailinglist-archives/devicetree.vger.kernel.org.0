Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9F69625538
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 09:27:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233206AbiKKI1u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 03:27:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233159AbiKKI1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 03:27:46 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78A7B7C8D7
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:27:42 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id l12so7306031lfp.6
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xx7LXGsQ1UybmGpbrTODqg39yWDhEchfX49PVTgfsiQ=;
        b=Dv2m87uGwk9M6MuktyNavmEClgVM+K6T3sS9jKf0PJuFe+TJsNESLx8l5EypLjRTpr
         0D86vIkiX8Tviw5NUYsMWvWu29TUXBbWc8N5ldKgMY2VAOBk7dbqLK+OEm+PBxKdU2zB
         0Bog737EpaHTQZ3aEwgXUt8PBsVzTdVQb3hN8eGZgxNStU5xqnjD7fd67b1Oj6jGlghz
         KT91ppeO2QWpKZ6ifxEAOvKFKlJb9ZbkrNHJc48YC00dnSl6/F724AP1PfRgPJTrKoQK
         75UFKfY06UJNT+Nol++auIGHm9bhCVFKetyVCZLMkshnmBM8aSgpi8wfm/dYhavmiPPL
         hBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xx7LXGsQ1UybmGpbrTODqg39yWDhEchfX49PVTgfsiQ=;
        b=pOYYlhnhU2Spog9gTlap7bSw8Ek+kwDQo2w0HfZr/SCXaGaGhpDcXook33Dt5rEbn6
         9uA0FNq7sm0pCCcs8c+zBgRIfPE3g23xIix+BwqkR9EtefIbSHf5ookGBOoJOLZYFjxw
         LM0KIfq7TyXm6ijAPkI5YvoyVHyJsywFB9G5CiSm2PZR5qnIkoo5dOM3nM/arEEDpJlG
         vqfPnrPQifBOuizDYijqvlKFneI7T+LBPfreAUETPK3e5EQk6KNageE/7bvUraZpdAJr
         bsV7PwhTK4viOz4bOGeFw6EK/+EZI9WLwJrf5BI8M5FOhv9ar85rtQrU+c9+CX0N6qXQ
         UzAw==
X-Gm-Message-State: ANoB5pnqy9FUBmt7bOUOeWL8e/Z9kOz60kTcH5zn5QW6DMl/nTGKft6c
        t140zu46oF4REyQfEOLc3QanGg==
X-Google-Smtp-Source: AA0mqf77hOpbW33UTEyrvrjdY4j8ukRUH+BixcU7n6vB6+hL3EoiEVloZPKw3opau7Dr7zr/Ft5tHw==
X-Received: by 2002:a19:8c1e:0:b0:4b4:6460:24d with SMTP id o30-20020a198c1e000000b004b46460024dmr378243lfd.386.1668155260865;
        Fri, 11 Nov 2022 00:27:40 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id k17-20020a2e6f11000000b0027754bdd667sm265888ljc.109.2022.11.11.00.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 00:27:40 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] dt-bindings: pinctrl: qcom,msm8660: convert to dtschema
Date:   Fri, 11 Nov 2022 09:27:37 +0100
Message-Id: <166815525483.8898.4129334640616218143.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221107185931.22075-1-krzysztof.kozlowski@linaro.org>
References: <20221107185931.22075-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 7 Nov 2022 19:59:30 +0100, Krzysztof Kozlowski wrote:
> Convert Qualcomm MSM8660 pin controller bindings to DT schema.  Keep the
> parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, their children with
> '-pins').
> 
> 

Applied, thanks!

[1/2] dt-bindings: pinctrl: qcom,msm8660: convert to dtschema
      https://git.kernel.org/krzk/linux-dt/c/aa191ab79a3e94d51a52155ad85fea40620c1dc8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
