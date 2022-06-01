Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2811353AA6F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 17:49:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355794AbiFAPr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 11:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355711AbiFAPrs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 11:47:48 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67DBA3136D
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 08:47:47 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id y32so3435574lfa.6
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 08:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s1I1Lu6vDnv+FXCTPOWPHqa85mx5mVRb44SdNNE1HaQ=;
        b=5gR5CbreQ7srjG4Ym7Ultz+/q2nE9r/GfUDpbd3uPQOeB+iu3HtDcbNu0p5kZmpUVg
         fPsNMYipnB9IVUAWme2bDC4FLqYU/14GMYY6J4Y3SCThHAjhYedfsTWBDiDxtcIn9H49
         5qyC6kVfcQssWlVcxU/8uB8L8K503iFBC0fVZlOcVQZCQoXP1w1YMCTqkkvxjFUH7XjT
         k2NSE+lny5cnmbM8CvqoOxLSaP8P9QHuGLm7TzOLwct2gxHP/CHXtxvtLi9Rt9/vvAsO
         QPi7t527ylkC9oTqEyokrkmCuXLU8nBZZyCyqKVY0qN8ifyP6ypEoNYx8ZgRmj8LCmZL
         xi8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s1I1Lu6vDnv+FXCTPOWPHqa85mx5mVRb44SdNNE1HaQ=;
        b=JTmePGYBMDrx0UwuO49hUbAWsimom02VBcAsYnhpL40s6Bo9FYa1kX7BNyJS0NIKlI
         oE6THp9Pb0iKLKs9p93k2tpmF0UOEVSi5HbCZKEN3WU+HTF0ZJPk1kliE630O/6xCZa2
         0M6TU2Dg/x2HjOEbxP1XzbBikEJdTGofLYmNJV7J9O2E18pmNtrmz/Nfryg2dvZ4DkWv
         o+584DygW76VT7ta1fNf7MnaGeQx+LFeXKXWxuxeehrGuYcdscxJcJr7cVdgcxpDpIEh
         p0eiAXcvgjYP9eq0oVur6hBqBTTeFUkaCnyDyjw00wFC11m4k/Lb0yD+RS4WvUl/RqRI
         AZEw==
X-Gm-Message-State: AOAM531CMuWbe2ZqC7D5LQBSJNOOGnpHJwoam2948LMjKHRx+aLeZzQo
        dNF8abo8UmgcqLzd0DjA+K7IQQ==
X-Google-Smtp-Source: ABdhPJxDG73AD76s9kMvKtHwHRysyphsIohDnmLglBHeLvKPQfhd9oKlb71wR7C2XDycAqZr0Ev1hw==
X-Received: by 2002:a05:6512:6c9:b0:478:dc36:b25b with SMTP id u9-20020a05651206c900b00478dc36b25bmr13149300lff.369.1654098465821;
        Wed, 01 Jun 2022 08:47:45 -0700 (PDT)
Received: from panikiel.wifi.semihalf.net ([83.142.187.86])
        by smtp.gmail.com with ESMTPSA id f10-20020a19380a000000b00478ad871b25sm431219lfa.145.2022.06.01.08.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 08:47:45 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        amstan@chromium.org, upstream@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v2 5/5] dt-bindings: altera: Add Chameleon v3 board
Date:   Wed,  1 Jun 2022 17:46:47 +0200
Message-Id: <20220601154647.80071-6-pan@semihalf.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
In-Reply-To: <20220601154647.80071-1-pan@semihalf.com>
References: <20220601154647.80071-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Chameleon v3 to Arria 10 boards.

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 5e2017c0a051..400543fbe78d 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -26,6 +26,7 @@ properties:
           - enum:
               - altr,socfpga-arria10-socdk
               - enclustra,mercury-aa1
+              - google,chameleon-v3
           - const: altr,socfpga-arria10
           - const: altr,socfpga
 
-- 
2.36.1.255.ge46751e96f-goog

