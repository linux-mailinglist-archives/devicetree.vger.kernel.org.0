Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 302EB65127D
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 20:13:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232271AbiLSTNX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 14:13:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232336AbiLSTMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 14:12:54 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD7D511A17
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671477123;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BJqVZEBbP7jwnL0etvHXrEIDyNJtoqDdiV434BPoorg=;
        b=VRtSX8GZE9bMivpViEEZZnVjQPsKPDBEiTyeNZGr26Y91hDaZQ1Z5PnM121l82zAYwPfeD
        1eDSXMP+Y/+GTs7Q7vlEVpC3PD9ISc2gcZo+uIsCIpuwVchrj0P/0CN69alJjaa/0CirmR
        QLioUAFIlpQpHHzjwpo/peZX+AZ5KAw=
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com
 [209.85.222.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-216-Jm4xds5eMuiyn7swEaKhzQ-1; Mon, 19 Dec 2022 14:12:02 -0500
X-MC-Unique: Jm4xds5eMuiyn7swEaKhzQ-1
Received: by mail-ua1-f69.google.com with SMTP id w18-20020ab05a92000000b00419da160be9so4086500uae.15
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:12:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BJqVZEBbP7jwnL0etvHXrEIDyNJtoqDdiV434BPoorg=;
        b=PsE2o9xezxMl4Nj3OZnITpvxGdrVlBWx5ryFU6F5PvtE/bz27+gwEDZ5D3BfCyayhv
         suQ9aVw5JrBz9q8ZXYFGq6JojelsPG1y5HgLPv3lUCWPkkHrRHqxv34laUM4cIc8GXzc
         nbf7IpRwFAifNNjdYkYeTLFueJqltI/O62nitqIDUf/VKpFgN4XHMAj5ha2cwkm+cEwy
         AGcL/Sx1vEpF/hT8eAk8aJchDiFloqMYZJ+Z5VcVNoJWgeagSPs3DZRCjVqLrGkDbTO2
         Gvx8qKWWg+8HJghBF3nx33MrWi62+WbUkXpZ2fT8SnhN8ONwXQUjGjDarXBEiCEkyMDw
         7Ibg==
X-Gm-Message-State: ANoB5pndIBLa8YOseMyrrhxIug/iICSSrCd9pq6aqBrIvtjBmJ2mjkDs
        Um2hY8jVWk8sxbieShMl+LG3oZuov0R28KRY2b9Iy6mlUCXE9mSmsplNliBYYaJMVDaGG6KFMKC
        u/9epMni7Kt5s7myl/qxP7A==
X-Received: by 2002:a05:6122:2215:b0:3bb:d05d:3374 with SMTP id bb21-20020a056122221500b003bbd05d3374mr27069820vkb.9.1671477121963;
        Mon, 19 Dec 2022 11:12:01 -0800 (PST)
X-Google-Smtp-Source: AA0mqf69HLE1HpwlVluNAhUqb3pB4S8wNQG4LIRjPh/c6/Hw4fDiIOztxZZKsF1NaxP4UOZ6kx3kKg==
X-Received: by 2002:a05:6122:2215:b0:3bb:d05d:3374 with SMTP id bb21-20020a056122221500b003bbd05d3374mr27069799vkb.9.1671477121713;
        Mon, 19 Dec 2022 11:12:01 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id c25-20020a05620a269900b006fc447eebe5sm7614948qkp.27.2022.12.19.11.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:12:01 -0800 (PST)
From:   Eric Chanudet <echanude@redhat.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>,
        Eric Chanudet <echanude@redhat.com>
Subject: [PATCH v4 1/4] arm64: dts: qcom: rename pm8450a dtsi to sa8540p-pmics
Date:   Mon, 19 Dec 2022 14:09:58 -0500
Message-Id: <20221219191000.2570545-2-echanude@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221219191000.2570545-1-echanude@redhat.com>
References: <20221219191000.2570545-1-echanude@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pm8450a.dtsi was introduced for the descriptions of pmics used on
sa8540p based boards. Rename the dtsi to make this relationship
explicit.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} | 0
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts                     | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} (100%)

diff --git a/arch/arm64/boot/dts/qcom/pm8450a.dtsi b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/qcom/pm8450a.dtsi
rename to arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index 6c547f1b13dc..77d499702ea8 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -10,7 +10,7 @@
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sa8540p.dtsi"
-#include "pm8450a.dtsi"
+#include "sa8540p-pmics.dtsi"
 
 / {
 	model = "Qualcomm SA8540P Ride";
-- 
2.38.1

