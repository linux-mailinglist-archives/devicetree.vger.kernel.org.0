Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71EEC779C1F
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 02:47:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236537AbjHLArk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 20:47:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234296AbjHLArj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 20:47:39 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDEC230FD
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:47:38 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-26b0b4a7cccso1545333a91.1
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691801258; x=1692406058;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HmdmIvNh/weap9MCOBtwxIGhp4oicSDBRHV6ZK3T3dg=;
        b=QALbaU6x4orin16gFjGYFXKD8oGQjIw3f/9c1lDaQisRvcVGSdUeygN4poOY5EaTiT
         vIiSPPBWTXpu1GXMSz64WqbRy+39EBM4uHCRZZgFqrbl5GBBtBvKLBdPzy9yraK88DD2
         AdqZZgngOWqDcDaYszrnQFV+W5Xcx85sxgp/5gHJwelLFYd3TzNm2ekSrY74aRhPpzih
         0xYwwjIm4owYuFouxYnBT5OEQESo0gM7hq4Cxv6R+bHFhSQsuZTAFJpAiX7nimEOpOKC
         wIeV7CTAO2/cxcCFP0C6+xMvxVfKKFNXc0oNnx4ZZqkeEcPI5+9eMmsmjoD9LULyRGWr
         feuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691801258; x=1692406058;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmdmIvNh/weap9MCOBtwxIGhp4oicSDBRHV6ZK3T3dg=;
        b=hNCXbVSNUXK2DEaKeQQZIIOyAxBwBJ3O239xiD+faela5Rv9VU8sHbweuyaB7q3V+e
         GSS2ceGoLYruWBuEZfO0J0S2p3vfgBYmTdeanSYkHfpA2sWiLNrAlQwTSYsswUW8Ni7S
         A0mIurJ8iiW5v11vOa/kuwP4IEGwuvu+3phaWTlaDv23I5AMLD30XnQMZt7ddkD1kSuM
         DYpikslj9AZQmZehBhRIQqcpXIEdgQ+iR6p7YKOVNbSdmZZ666Z29EqNwfTx/+AfT48L
         e0lCkD+WASH7zFJEozLdiVun7AvqMiVzmWtFQ4mNCkaLP42e8mMk346eO9XC2yV97DA5
         nzRg==
X-Gm-Message-State: AOJu0YwPV7pqhAWdQCMI5HA/Z5KL5FxoVG88FtDyIDZDI8saIlQyh/xV
        NNVBg0ebf8pRGApodHC4kV283g==
X-Google-Smtp-Source: AGHT+IESs2XUKo+SiAONsY7RNLNHDIvsAKRSKpimxWRh15azy5U0zARIzqL0fSIXLqJ9NMuoZMuMeQ==
X-Received: by 2002:a17:90b:2350:b0:262:e6d2:2d6 with SMTP id ms16-20020a17090b235000b00262e6d202d6mr3034198pjb.47.1691801258387;
        Fri, 11 Aug 2023 17:47:38 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:5b85:b986:e090:9abc])
        by smtp.gmail.com with ESMTPSA id c11-20020a170902724b00b001b246dcffb7sm4559247pll.300.2023.08.11.17.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 17:47:38 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
Date:   Fri, 11 Aug 2023 17:47:16 -0700
Subject: [PATCH v3 1/2] dt-bindings: riscv: Add BeagleV Ahead board
 compatibles
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230811-ahead-dt-v3-v1-1-aef2294bed86@baylibre.com>
References: <20230811-ahead-dt-v3-v1-0-aef2294bed86@baylibre.com>
In-Reply-To: <20230811-ahead-dt-v3-v1-0-aef2294bed86@baylibre.com>
To:     Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Drew Fustini <dfustini@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691801256; l=1099;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=3zE3DAtWNRR0RNhye3g4EXsbaTzQt3JjGH1aItoKzE4=;
 b=omtPwIJKWc6olP3mETH19n3OvHpWkCCS9zbRPPpPd2NcvHtbTP4tQ3pYM0vJeQrTFlCGyHUVI
 lqqqwZdSxG9DCjl2nSY1KKXRyn2CO6LwGZ3uF034IbMQi7QOJKAqaBH
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible strings for the BeagleV Ahead board which uses
the T-Head TH1520 SoC.

Link: https://beagleboard.org/beaglev-ahead
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Guo Ren <guoren@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 Documentation/devicetree/bindings/riscv/thead.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/thead.yaml b/Documentation/devicetree/bindings/riscv/thead.yaml
index e62f6821372e..301912dcd290 100644
--- a/Documentation/devicetree/bindings/riscv/thead.yaml
+++ b/Documentation/devicetree/bindings/riscv/thead.yaml
@@ -17,6 +17,10 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: BeagleV Ahead single board computer
+        items:
+          - const: beagle,beaglev-ahead
+          - const: thead,th1520
       - description: Sipeed Lichee Pi 4A board for the Sipeed Lichee Module 4A
         items:
           - enum:

-- 
2.34.1

