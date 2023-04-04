Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD9C6D68B9
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 18:27:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235290AbjDDQ1N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 12:27:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232822AbjDDQ1K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 12:27:10 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78D7D3C3E
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 09:27:09 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id h3so5326017qtu.1
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 09:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1680625628;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7HrnhowNgiE1+gbqyK+2RSLtfcmG95NpGa/cB5EMTdY=;
        b=NKKXwqcHRYPgv5Pd+SYY2VvVn0ck7vIoWp+LpwvfZVCHR2io4e55HsTpauqx7DbZ6h
         T4KH7Dw07NXLAFH5xXAzHi8K3qeDsARwLAkKV6r7Eyuu4RqVYn/X6SAW8ycVdM0rfkBv
         cmLpN1dsN1l/gjGBsNoS0D0IEed8TlK1e9my7acAS3H0nV8c8GhRxGD5GdoU/rIAkkh0
         8aLB6j2ZT3ey6mOv9Pw85PG1HNfz3GeDQta+yy6NalFyjX3jkPvwfR6uMdiFgAk7Uh1o
         SKMxdiybC5extgDCLhMJD4zGwDkgdx3xaApFcDSVgEqtMw75Lp5KYHWGE7sa5M8Om/FF
         zNuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680625628;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7HrnhowNgiE1+gbqyK+2RSLtfcmG95NpGa/cB5EMTdY=;
        b=i4ptAQcToI1qjkZIzHBENZDhhHqC0QPIMPQddzSRCw935ueh/ggELx+OjYVa9TA1io
         PM2Vm2Ew9q0EdcqqQpX4y9PZrhig5VcZO/pEAfwkCUf0ZnLarB3mqkxS3DvFQ1hojrEu
         22QjocR5AYAp+vwk9nhXZdkTKYhk8W8kWNJIB2jtYJwcT8VHJFloqVZWNBz9cZFJUGDT
         Pyrc+PuYBY4P+cA1Ek1+uz+lNX3rQvh+scBTrpFRRKCkQpdTDtFb9gMLEgUMbZACr39g
         +iWCQpXN62tKWomoYEUJff+ideNhNcZx74uszC4SJucXlLKd2rhwpEOz9MdcSm++oSSC
         EVPg==
X-Gm-Message-State: AAQBX9flQRNpSFnY5wWP9sVeiOesVB/gCpTXnkcygIRcRqzsuqdpDrn3
        aA0VXDk2mmdL58S9lYs/G0YmUg==
X-Google-Smtp-Source: AKy350Yg1HldwZcfGd3do+IP4EHfj/rEnQKpjKV1ETZPnyMjTx/9w9SGusfvjQ2j6O84335oXIeFnw==
X-Received: by 2002:a05:622a:188:b0:3e4:eb8f:8a7b with SMTP id s8-20020a05622a018800b003e4eb8f8a7bmr35220544qtw.29.1680625628498;
        Tue, 04 Apr 2023 09:27:08 -0700 (PDT)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.gmail.com with ESMTPSA id m124-20020a375882000000b0073b8745fd39sm3699594qkb.110.2023.04.04.09.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 09:27:05 -0700 (PDT)
From:   Jonathan Cormier <jcormier@criticallink.com>
Subject: [PATCH v4 0/3] drm/bridge: tfp410: Add i2c support
Date:   Tue, 04 Apr 2023 12:26:47 -0400
Message-Id: <20230125-tfp410_i2c-v4-0-f983bcef2df8@criticallink.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMdPLGQC/3XOTQ7CIBAF4KsY1mKGgfq38h7GNEAHO1FbA7Wpa
 Xp3qW7t8k1432MUiSJTEsfVKCL1nLhtcjDrlfC1ba4kucpZIKAGhYXswtMoKBm91A534MAFTSB
 ywdlE0kXb+Hqu3Ll5DeXDpo5i+avNr56RAg/fyfMl55pT18b39we9mq9/x3olQW631lSG9AHc7
 uQjd+ztPe/cNr59iFnrcVnALLiAGEzlnSe7IOhlQWfB7ouqCBAKCOqPME3TB+BF13FVAQAA
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Williamson <michael.williamson@criticallink.com>,
        Bob Duke <bduke@criticallink.com>,
        Jonathan Cormier <jcormier@criticallink.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1737;
 i=jcormier@criticallink.com; h=from:subject:message-id;
 bh=MdA5jz1mbJArNJ3GmBlRLEMfCiFuPa4f15JhDcju/Zg=;
 b=owEBbQKS/ZANAwAKAdzX/S4LNuuqAcsmYgBkLE/YIfrGTEKcLNpCCAbK3f+fm0kwnL4hc80KV5ji
 C8xqxoSJAjMEAAEKAB0WIQT/MozqCeZtYxNnVN/c1/0uCzbrqgUCZCxP2AAKCRDc1/0uCzbrqsmqD/
 4+to8RvohqjmRCXM5udTTpozSqvn0FQGCNiDvZ9qUgFk91KMLSvcUubLPXGXt5VxCw29HVEeJDC+Xp
 HCQgAQbF6IYWMyR2DAdGC9aGVqXP1NUHbuZFvnX8fHXH2OAIgUsfC7Y9Dtfi0cb+Yh+4qX+ja1H0Xb
 81Tts9BC6HYE3oS9EsZi0lsW4N0xVi5YwZQGFO2Du+BYvMv5OxWoLy4LS99QGPjyvoEFIXMYfeK1rh
 fRr/zH6erfWrneeMMSPoeP7FLMehGikNxSCbmVAL4DPcVht+QHeilJUdsuInR/ECN9HBV8fECq7isN
 jSnzKhdCDjHSzmr0iwjiQ2WKgvStgqHzp6RX5eC3G36/SMw2qV0rYPOy/+ltcueHHHTYIbB37yUBYC
 blYtP6FyfxdZ2/c2OSXelXOxyTp/9T1CZRsQ3HNNGDefwOxc1dK2V3ylj/rHs5fGFJRWnpdQ9Q6RS8
 RLokhup99R1f4XSUD1ILVEkz8aKtP8Q2FVhSzXXMuoPmBFQY09yN60gP0mUihAl4ywtNa+0LJbf4PK
 s1hH6PQylvSRO675mF9aD6n3JJgsj2oAd9PcE+LrDcj8ldKd9wLOxs2/v7FwsEOiEPGICNIOg8fHnJ
 e4J4xbgrZZFurBm/7ZTg0la/eDAOCzQeuX94Wd7xCq//jpY6nh+WWb7gYOkw==
X-Developer-Key: i=jcormier@criticallink.com; a=openpgp;
 fpr=FF328CEA09E66D63136754DFDCD7FD2E0B36EBAA
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TFP410 driver does not support I2C.  As such, the device remains in
Power Down if the I2C is enabled by the bootstrap pins.

Add basic support for the I2C interface, and provide support to take
the device out of power down when enabled.  Also read the bootstrap mode
pins via the CTL_1_MODE register when using the I2C bus.

Also allow polling device to support hdmi/dvi hotplug detection.

Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
---
Changes in v4:
- Add Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
- Add Fixes: 5cafa0f1853b ("drm/bridge: tfp410: Replace manual connector handling with bridge")
- Link to v3: https://lore.kernel.org/r/20230125-tfp410_i2c-v3-0-a85d5f0f50f1@criticallink.com

Changes in v3:
- Drop dt-bindings i2c example
- Link to v2: https://lore.kernel.org/r/20230125-tfp410_i2c-v2-0-bf22f4dcbcea@criticallink.com

Changes in v2:
- Fix dt_binding_check errors
- Remove hdmi connector from binding example
- Fix compile warning. Unused variable and unsigned int instead of int for ret
- Fix commit titles
- Drop of_match_ptr change
- Link to v1: https://lore.kernel.org/r/20230125-tfp410_i2c-v1-0-66a4d4e390b7@criticallink.com

---
Michael Williamson (3):
      drm/bridge: tfp410: Support basic I2C interface
      drm/bridge: tfp410: Fix logic to configured polled HPD
      drm/bridge: tfp410: If connected, use I2C for polled HPD status.

 drivers/gpu/drm/bridge/ti-tfp410.c | 107 +++++++++++++++++++++++++++----------
 1 file changed, 80 insertions(+), 27 deletions(-)
---
base-commit: 93f875a8526a291005e7f38478079526c843cbec
change-id: 20230125-tfp410_i2c-3b270b0bf3e0

Best regards,
-- 
Jonathan Cormier <jcormier@criticallink.com>

