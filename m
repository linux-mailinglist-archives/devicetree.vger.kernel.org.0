Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D29E74E38E5
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 07:26:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237115AbiCVG0z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 02:26:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237173AbiCVG0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 02:26:47 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4020833E8E
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:25:15 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id p17so14624446plo.9
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8H64PmBRnHx7HLvB9XS+QfSLLMLBzRrCI6hoIn6XP3o=;
        b=MbQ6bBh4t5fdIq3qRYHFOcqgL1Hm1v5FEe3MWsPZCABh0DMC8vPphvQNOZUbURnR6J
         ew0qmjdnQbKMsVHCatDdxdd8epVwGupewdoRCJxURYg+ykFrUMqeVS6Y3b1S1+BSamAG
         BAIocFlM1CNaE3SE3iPFOhlpxV7gyOUqHw2qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8H64PmBRnHx7HLvB9XS+QfSLLMLBzRrCI6hoIn6XP3o=;
        b=ePi+uqfoZVQ7NHDHhKixtnMyrsR928ANL4gVTI2YDFC7dgayNtyiTtjnulDWhSDhw0
         CSq5kIwJo9B5CJyVWx39AE6Y4O9EqQgGqymlBizaDQoDgiKOAaZHb4XWz/z1GZ8MaIgl
         O/B8vlkl0+m+a2zwfLP/bLtMs7HWQqWCvlsgVI4KjGChUqcmpDSZQ588jeFLkaIeN2RU
         JLTRz4lAWPGQY4YEHHK2p1PUjbaWphVVBcxdAjUsU4VdSxOosThRcRdDWjzp0hWJYT8Z
         zqP0icD+IoDQXS89inbSriBuCXbwXPDTqtGaXACYtxXqNRKur1d/QKgXdfKuMnmG3TKZ
         PGFQ==
X-Gm-Message-State: AOAM531NpVckz1/fU6/IKuKOgA0pKEXGq5DZ4n5hQxWJwCO6TLtByz/6
        JI2tGcy1EdPbxraacBIWDXao3G034eVxFQ==
X-Google-Smtp-Source: ABdhPJxqzCVP2ehVp3HGjvMfTUvuBhZn3b2o5B+ARRnP9/Gw/WkywbmYrisBwjjaQtegd0JdsM9+RQ==
X-Received: by 2002:a17:902:6a89:b0:153:7213:3841 with SMTP id n9-20020a1709026a8900b0015372133841mr16615072plk.74.1647930314583;
        Mon, 21 Mar 2022 23:25:14 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c016:a147:e7e:6836])
        by smtp.gmail.com with UTF8SMTPSA id y16-20020a637d10000000b00381268f2c6fsm16582428pgc.4.2022.03.21.23.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 23:25:14 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v2 5/8] dt-bindings: iio: sx9324: Add internal compensation resistor setting
Date:   Mon, 21 Mar 2022 23:25:01 -0700
Message-Id: <20220322062504.1019504-6-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220322062504.1019504-1-gwendal@chromium.org>
References: <20220322062504.1019504-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow setting the internal resistor used for compensation.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
Changes since v1:
- Suffix field with kOhms unit.

 .../bindings/iio/proximity/semtech,sx9324.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index 8fbea71823e76..b5f59038f9dd7 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,15 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,int-comp-resistor:
+    description:
+      Internal resistor setting for compensation.
+    enum:
+      - lowest
+      - low
+      - high
+      - highest
+
   semtech,input-precharge-resistor-kohms:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 4
@@ -165,6 +174,7 @@ examples:
         semtech,ph01-proxraw-strength = <2>;
         semtech,ph23-proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,int-comp-resistor = "lowest";
         semtech,input-precharge-resistor-kohms = <2>;
       };
     };
-- 
2.35.1.894.gb6a874cedc-goog

