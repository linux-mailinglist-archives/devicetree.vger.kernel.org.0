Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAC6F752707
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234349AbjGMP3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:29:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232154AbjGMP3R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:29:17 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9297F3586
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:28:57 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fbc12181b6so8210465e9.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262136; x=1691854136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q5Q9SaYaM9oyY279cgdEnWaQAhZx6bNnV7z6kEOcnaU=;
        b=myDdJzhqVejI7cNcTTS38opDr/tXPbxBp/tYBFadOrMbhrKMl2kGuCbcTy/IEA93Jh
         QU7uio1LBFgNHHlCqCxOr5SHuI6pZSpruqT5/y0E09x05Uah4smj2V2WrBeFNRWn42p9
         U3GFFgnnIbDm3epWAh0AQxrHpxChanb30GWGg3qMUXFkH6KBKqIi3mZDHuQA5XqCMdjP
         1IelvjPj0Uswz+lNj7c/pMNM0w+VgPKipgWEZ/UNX9Iaqwjr75wPeSFrEnl2fgKRm22n
         YzCThgS9ZGhxwpddyz/2/f24kFeacNvQkRo7JIkDNRwTAyBcwr/gmsLJwE0S7gOHRQRv
         Sqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262136; x=1691854136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q5Q9SaYaM9oyY279cgdEnWaQAhZx6bNnV7z6kEOcnaU=;
        b=W9z0aPMmvxzRj84aXdjwUHDSUjT85pIy8bJhgNlBV6aUtPCGLndAB0XAZ4F7REm6lt
         zHS12IQiKFJjjZ1MjNdSVDuwy+5lASWTiXE7I8U5TMT1AlwJi0tXBEYmltXwXK7anjc7
         Zt0pHEl2pmCbpmsOiSP8XbVFKyEkusvq/R7p9VVx5GMdXwQbXOdJt8VtHkg9T8S0Og/0
         MmJgHGkcwfKwAQdMBsGju9KG5KZf2U+j81X+QCgQ9RlKsfx64XmiGxZokmbtz1FOaxr2
         ZwSZI+dtsxStLD7txPPQD+p0pNLnRTXbRdxx6Lc02yd4/iUK+9j7IUM4PXqMRYHx0Y/G
         /WEw==
X-Gm-Message-State: ABy/qLbhBi5t3TIcASicBTqzcYakoJ5G7ebpuDA6YVNUWo0FRPQWEGza
        1DMKDqNfYOYVXG3C7zUdGqhslg==
X-Google-Smtp-Source: APBJJlE7gRxqi09jTbKnL6QIjAMk014wf89nKJ/jNRQU0hTWTtbPAWFgB+/0hDywWacLVQzqtJYJyg==
X-Received: by 2002:a7b:cb0c:0:b0:3fb:c990:3b2 with SMTP id u12-20020a7bcb0c000000b003fbc99003b2mr1689692wmj.34.1689262136026;
        Thu, 13 Jul 2023 08:28:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l22-20020a7bc456000000b003fbb5142c4bsm18563121wmi.18.2023.07.13.08.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:28:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Marek Vasut <marex@denx.de>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: memory-controllers: reference TI GPMC peripheral properties
Date:   Thu, 13 Jul 2023 17:28:47 +0200
Message-Id: <20230713152848.82752-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
References: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference the Texas Instruments GPMC Bus Child Nodes schema with
peripheral properties, in common Memory Controller bus
Peripheral-specific schema, to allow properly validate devices like
davicom,dm9000.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/memory-controllers/mc-peripheral-props.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml b/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml
index 5ff8cc26962a..8d9dae15ade0 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml
@@ -36,5 +36,6 @@ allOf:
   - $ref: st,stm32-fmc2-ebi-props.yaml#
   - $ref: ingenic,nemc-peripherals.yaml#
   - $ref: intel,ixp4xx-expansion-peripheral-props.yaml#
+  - $ref: ti,gpmc-child.yaml#
 
 additionalProperties: true
-- 
2.34.1

