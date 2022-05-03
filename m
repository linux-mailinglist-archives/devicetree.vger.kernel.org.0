Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28F70517BA2
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 03:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiECBYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 21:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiECBYW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 21:24:22 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF0A344EF
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 18:20:50 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id v11so4137461pff.6
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 18:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wYFtzIrfueBMYkfnReff/T+IPaO8wkd6Eu3COpG1jyw=;
        b=ID3tXj1Uzg9g8JCj0ITrp9Wpw+TuEF/qu/STWO0fQaoemE/EQYBL/dFn0sJ2fonLXL
         A/rvUHwOoFGebEOKpPiP5frTx2F65JPrfGjRrl/tqgg9aqsv0us8Hp3FlU/ZNIdJgCn8
         ud7TkuEK3uOTyQFg070R4spw/3mMZd/jVI0AQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wYFtzIrfueBMYkfnReff/T+IPaO8wkd6Eu3COpG1jyw=;
        b=vItFby5GRBB/QsIlTF+ApF1+DEYU997qNtQ1Z7SILc9r8pwyQU6b6GIl06bT0aSm/V
         U2IOrlkYvoyEda7Ip6Kgc1OFCZ/Svk2pq/u2LA592urf3v7frDNHGW9KeC0cVg9qSm3J
         DMXbd1NK5CF+6TGirluXx6Pck8A27k3WfCx0iPr5Q+j114755j9vVOyIoF93ncDbWnbP
         M/5jgxJUwFXR0lfBh3Ak/XR9isEWdA7c5Fxwj0XrAUwT2SwH0lZv1KawET02PN7a8QiN
         kg2zRpca9irtDHU3eKtOZAt19eurdFzaMKtIPtTEmDmTC6DmE3TbuMjKPJJwyFenL9rh
         lIVQ==
X-Gm-Message-State: AOAM532fjIE2KUS1Zbj1qJtVsd7rCmJ1aa0ErtSbBOGTTdVl/sMkbWDf
        CWsnYRX8oRo4/No/7b1w27lsETBR5LyQ1w==
X-Google-Smtp-Source: ABdhPJzKVlYRARLnwIRKFb/PA/der9oV6KC/mTyJjBcp3p2GzSbu2BXrgotfzjLD+hU4yZnnbAMsJg==
X-Received: by 2002:a63:2c4a:0:b0:3c1:df82:cf0e with SMTP id s71-20020a632c4a000000b003c1df82cf0emr9971548pgs.474.1651538519296;
        Mon, 02 May 2022 17:41:59 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:15e:c760:9a04:7fbe])
        by smtp.gmail.com with ESMTPSA id i10-20020aa78b4a000000b0050dc7628177sm5258794pfd.81.2022.05.02.17.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 17:41:58 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: iio: sx9324: Add CS idle/sleep mode
Date:   Mon,  2 May 2022 17:41:55 -0700
Message-Id: <20220503004156.3559940-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220503004156.3559940-1-swboyd@chromium.org>
References: <20220503004156.3559940-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We need to configure the sleep and idle mode of the CS pins for this
device. Add a DT property to do this so pins are in a proper state
during sleep (either hi-z, grounded, or pulled up to vdd).

Cc: Gwendal Grignou <gwendal@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../devicetree/bindings/iio/proximity/semtech,sx9324.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index d265eb5258c8..6cec3481c8b2 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,cs-idle-sleep:
+    description:
+      State of CS pins during sleep mode and idle time.
+    enum:
+      - hz
+      - gnd
+      - vdd
+
   semtech,int-comp-resistor:
     description:
       Internal resistor setting for compensation.
-- 
https://chromeos.dev

