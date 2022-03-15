Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60BEE4DA132
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 18:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350600AbiCORcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 13:32:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350606AbiCORcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 13:32:10 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 854CE58829
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:56 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id z16so110906pfh.3
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cjA9Pgga5rZGnibyV/ALGefunM9pdMNpp5H2Le+/evg=;
        b=nzMkvdSoPNssbbwgCiHAgltbHEnNoiAwMVZ1WqT5YJMPAwCHrIHq0+546eoqi7npuu
         /DaLVsHXksxVy6lSXd++2zZkifdbB+7l3OV0jklWZ4bPk/xtD7VDRw/zAUIsEmN/FhWw
         Vqnaf0XirhqSs2tM6aMzpMiLXhVXZ+MSB66m0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cjA9Pgga5rZGnibyV/ALGefunM9pdMNpp5H2Le+/evg=;
        b=yQHUMkKEFOGonqt17/A0FanyNW8EvW/wdqPFBIIgKlbJ5h9XAaN5T0gTperDln9hA4
         0/v/5aAMDmXRVwvgp3bxKqALgJiQr56xRuQDajiyrLOOzbI3sPII+39muYlzSDuShWff
         wxISeLBiyGnVSnL0eR3tpOXLDB1hihUdJDx6T6jSeTL89wQEDqEEwJkOYxr504iTTiH5
         Lxag46VJSKBfEObZyxXknKFujweKnuNBw7ZSrnoLyLLupyiKFCklpSkASPkuvnlv25Jl
         YWi7cQm0nXAvnE0MYaHOz1S12RPOHiI9N9LMye5z0VzLptRbScj92phZ1eMqUBvr5LST
         zpJg==
X-Gm-Message-State: AOAM532QhTAOENb1I/lbRObtrZtwFXV9uR4pFWBRyzK2QuXOUefuB7Hg
        IR2qsf0G+lFhDN/w9xwTex+PZQ==
X-Google-Smtp-Source: ABdhPJxWL+x/DHqioBc8iFNOJD6NIK6WVukCWKd3SIwuoI07F4yAGcF395iEb0T6QigzZCl3vmJwiA==
X-Received: by 2002:a65:554e:0:b0:34d:f721:7fef with SMTP id t14-20020a65554e000000b0034df7217fefmr25317508pgr.476.1647365455988;
        Tue, 15 Mar 2022 10:30:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:53f9:5c35:428f:83a1])
        by smtp.gmail.com with UTF8SMTPSA id l1-20020a17090aec0100b001bfa1bafeadsm3782902pjy.53.2022.03.15.10.30.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 10:30:55 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH 2/7] dt-bindings: iio: sx9324: Add precharge resistor setting
Date:   Tue, 15 Mar 2022 10:30:37 -0700
Message-Id: <20220315173042.1325858-3-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
In-Reply-To: <20220315173042.1325858-1-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow configure the resistance used during precharge.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
 .../bindings/iio/proximity/semtech,sx9324.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index b8a6ee16854ff..cd8ed50f2882a 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,input-precharge-resistor:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 4
+    description:
+      Pre-charge input resistance in kOhm.
+    minimum: 0
+    maximum: 30
+
 required:
   - compatible
   - reg
@@ -157,5 +165,6 @@ examples:
         semtech,ph01-proxraw-strength = <2>;
         semtech,ph23-proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,input-precharge-resistor = <2>;
       };
     };
-- 
2.35.1.723.g4982287a31-goog

