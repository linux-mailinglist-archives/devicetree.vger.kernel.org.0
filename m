Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EDBF7496EF
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 10:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233208AbjGFIA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 04:00:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231592AbjGFIAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 04:00:25 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2306C121
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 01:00:24 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b69ed7d050so5055971fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 01:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688630422; x=1691222422;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/DNkwga6/1zv+vFjJEB0SiQmwB5Ncp/pmSfHFUcuS9M=;
        b=G7qX29I1jdpViSoQGgBbNX5C8dKhOdGzeZbvLWDR1rzLF7CVPQQd6GDia7C9VWs/1K
         v4w6+eXenU58ba8bcfw+DUQqbgXsSTg8cIOSY2GnoFyxw9PhHpzh7QwO+9NCEVbCNjN1
         LgoMqpsnok/1Bd9RtTBOC7xe+BShfRjwXOu1k0s0Fmd1t46rMNOTYZXxizv5qCga04lS
         uEhpPHTG5Iz+wAn0A101N3SmE6O2PYr60+JDNmBxywhXBSNwlMIeP+uZB5OUEXxToLSc
         zrGeIIDBs2XgQZmVVRExcPUkVPXn8+n0fEBO/u4dF0B8vbojWU7ROC4Ccag3sxDSRuUR
         rGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688630422; x=1691222422;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/DNkwga6/1zv+vFjJEB0SiQmwB5Ncp/pmSfHFUcuS9M=;
        b=JwrcP2x1Ofk2d+OO0eJo/LD4qyiNkMjewO8i/Qd1SJZF2fmBasbFOhr0L5AX7rSGjZ
         0k18diz7CSIinGXaoUCf/VgyEJTi81AOxRQTSFPfvCta/eZhD0MBwCsMcm+QX5DNwzST
         XepqmLP2osYX29L1DsPtUFEu5wF2v4GpBttGsbkExb5WqEas7jwQu+ao9xW04wBG8h8r
         T7e4EsSrQo4Jx6GpsIgo2VUazeLehZ1bjZh5HrQXqi5tYJtrc9LQgwyaTeaB/FeSl4TU
         nW2lI5GyzCNa3/UDME38IVyZI92k/YFokh5JJ8uD6mweOdcTGB+0oFaQUsEFArLYOP1X
         NnFQ==
X-Gm-Message-State: ABy/qLaV3zAXf/RqQTmTzbmxerQZfj9ufP0ZzKLhuT3gH8L2dH8pqbQm
        m64GWc99I8AqvuoR/lgXEscvfA==
X-Google-Smtp-Source: APBJJlEnXhY57vPXHaptivx2QID3UN3PcCRn5dL8PFd7YS6Al9ICw2IXkurEZoa0Pc8MfVmloyHkzQ==
X-Received: by 2002:a05:6512:10cf:b0:4f3:d682:7b1c with SMTP id k15-20020a05651210cf00b004f3d6827b1cmr1061597lfg.45.1688630422283;
        Thu, 06 Jul 2023 01:00:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b003fbb1ce274fsm5587375wmn.0.2023.07.06.01.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 01:00:21 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/3] arm64: meson: bunch of DT fixes, take 3
Date:   Thu, 06 Jul 2023 10:00:18 +0200
Message-Id: <20230706-topic-amlogic-upstream-dt-fixes-take3-v1-0-63ed070eeab2@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJJ0pmQC/x2M0QrCMAwAf2Xk2UBdYUV/RXzI2mwG3VqaToSxf
 1/w6TgObgflKqxw73ao/BWVvJpcLx3EF60zoyRz6F3vXXADtlwkIi2fPBu3oq0yLZgaTvJjxUZ
 v9himW/CJ2I0+gL1K5X+21eN5HCdo8is2dwAAAA==
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=885;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9h0g8V0w4EZoDM1hBdRwvYsmKbF4/IRNYRMwqyBNE84=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkpnST3ef3Co4BQAMsluEBGzZJtGLRbBpeHL0x8pHU
 3GCjLwOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZKZ0kwAKCRB33NvayMhJ0WJ0EA
 CQ4qXCQThfkl+Emmx3JFRIMpaWg6plyZsXdJDXQ/863MYrlAs8/E7y92jh+Z3zgLtht6RkS2P4SQ9w
 +ds1nUPxTRSKY18bkPqW1EbRR6wqTE6WusHxDsebA39Q7iDU4Q26/25RfKwv4EiT5awYGX0h6IHqPQ
 JVOLttScBO9oeqEEg7iBfGwWE6nC5Z4cBVEUnDduycnC9hbh9ryYY0uDjbJ3euyQaA6WKVc8PdAjks
 mwcS9Bdd2RHYoa/MpGdrJsebeIKbtK3dqktRmwjMBXdZqKRtLdlmX7De2FLov/GWh1pp3rIIMtqJHZ
 ZAF7BiwWRURsUS64JvAztfFmZhT492pa9wyDakwFzyrP0WrwDaUsKOp7G+M62IFFWF6dJLjgNQt5nm
 fWT8KdjdLQof6HZr11ymke8v/bU1flFAQB+5pgX5D3I35MeQBjGrqLHVriwucdYO7gaqg2U88056ly
 mzSq2DQDFDnMMp3kZYPadJOpOUjoNemlMwQoTHzedohzHyIn7G8iH1NwHZehcHj3zUmNPDwv41POWi
 dcHCTFcvFbVmkxtAcsKV6EbC/gvj196z/oBaTiCls6zFvcyIjnWwCCjxxBxCPtFE2i9o9Ct/zviutT
 4a8iLWD8s5L1mBJd5qIpyUjy5Nej6LO+Amy28RgWgfdqDB9sELuI1GPUMbHw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a bunch of fixes against the current applied and reviewed bindings.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (3):
      arm64: dts: amlogic: meson-g12b-odroid-n2: fix usb hub hog name
      arm64: dtb: amlogic: meson-g12-common: change aobus-pinctrl node name
      arm64: dts: amlogic: drop cooling-[min|max]-state from pwm-fan

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi     | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi  | 2 --
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts  | 2 --
 4 files changed, 2 insertions(+), 6 deletions(-)
---
base-commit: e1f6a8eaf1c271a0158114a03e3605f4fba059ad
change-id: 20230706-topic-amlogic-upstream-dt-fixes-take3-7f973dae0b37

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

