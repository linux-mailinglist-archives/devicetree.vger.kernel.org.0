Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFD3470541C
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:39:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231389AbjEPQji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:39:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231437AbjEPQjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:39:36 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F7D19C
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:39:34 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bc456cc39so21091232a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684255173; x=1686847173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UNOX30EV1Js2RZLFPKUfHQyEV1SnkKyabV744JgYg6U=;
        b=ZEoXC633dLo7gTujehJ8ph0XdIQlNP5pZBgpUY46rekIYlEMFti/F42Dqt2ZFWZgR8
         Hi11mctbxCeBU19df4id83Rj+olBeePA3Iz8LDmiXi+e9ojV2qyYbmKRGPff+az+VyBl
         L1ddPDpbJMUL607JhXhASasN5mKXnJdzqdI4Q/W2bxAmeyBDdEPw/eppLTtNwx/zw/9a
         Kee6Ve8oPOEnBgjhar9rjBxl9M6wFpzBLQpP1TylaHoh0LIqnvAoPmvHTD42SxkyF0mO
         DJYtFEuuFEFtk3w2vgXltS9dlpToVbpbYX5Fex3VVcBH2/Yun+HIJdLO3bfNlacMt5Bn
         g2hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684255173; x=1686847173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UNOX30EV1Js2RZLFPKUfHQyEV1SnkKyabV744JgYg6U=;
        b=iuUDlvxfh8t8m3K+WTPKUM0bXPOjwJSVnKEStExzDsu2LWyFdCfAOTdOcpAof4KWlG
         3uR25X4u28t2Qb+a68OpribiKxbb5YzpYD/5mCQgqVQaxdoTcuNhdjk1h2uZ2Lk7zsRb
         wYxRa4ZQLdiiObMJ3P+86BEBuQIq9PosGicuAZZ70S9vX5+QeOaDFVFRz3VsGoOyx+tZ
         YhuGxtPUdYv2CDgHTj8DHaGZvoKyZrbzX8BjUkkWH+ZTDsYI/k5FIaDWtPBgSr75XdT3
         yRS0VccqY0qi1DAl+WnUFWGYALVBae8Mf55dnS3f74MUi7ma+9TjaPNa953NrbK4PjQ+
         m4DQ==
X-Gm-Message-State: AC+VfDy0G/QOFHjcX+UEItqerF8oaU5a8DIl/7bEB6SaeX00HN2IPhtn
        9cZXYFDFcizFl+v4eZREHwkXIw==
X-Google-Smtp-Source: ACHHUZ6G/Hd1GAChl6yQqDOuDuZuv5ICBZw8Msi61zqemj92/3t+nDbj2GJZDmXVIZQ0vdh9RKqS/Q==
X-Received: by 2002:aa7:ce0e:0:b0:50b:c584:527b with SMTP id d14-20020aa7ce0e000000b0050bc584527bmr32593307edv.29.1684255173348;
        Tue, 16 May 2023 09:39:33 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id d4-20020aa7c1c4000000b00504a356b149sm8278191edp.25.2023.05.16.09.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:39:32 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: hisilicon: add missing cache properties
Date:   Tue, 16 May 2023 18:39:23 +0200
Message-Id: <168425511042.243008.1168317105384741574.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230421223215.115666-1-krzysztof.kozlowski@linaro.org>
References: <20230421223215.115666-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat, 22 Apr 2023 00:32:14 +0200, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified properties to fix warnings like:
> 
>   hi3660-hikey960.dtb: l2-cache0: 'cache-unified' is a required property
> 
> 

Applied, thanks!

Please let me know if this should go through any other tree.

[1/1] arm64: dts: hisilicon: add missing cache properties
      https://git.kernel.org/krzk/linux-dt/c/a0936e9edf16750867b65c8f2017352f1ea3dea8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
