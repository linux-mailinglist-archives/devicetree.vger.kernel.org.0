Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6BDF5ACF4D
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 11:56:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236852AbiIEJzE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 05:55:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237324AbiIEJzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 05:55:02 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4103014D14
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 02:54:59 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id k9so10642061wri.0
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 02:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VI4B7mmcq6Q3smkTsTKpCOJlZRwUBcOPUAzD1sYZxCE=;
        b=uUemCtDvHDLKP1I6EGmgT1uPan+SKTXyynQZVdmfBSsNPUcJFalRuDdgOVWVqwyQfK
         KbG0nX6UV80C2aJK991PEfSjVKG0+dPiN2wPs3/3snBCKTXUvyvCNPxZHh58rmDBkg8u
         cMHFirOuqPYDSHVHFO2N+YPvl0zWjpQLml0OGAvFzUHK9wg+sYvoEKmQowF53jKyN5H5
         tLSAetRs0eY11XNOLFRVn4VT6D30keVVp7um+JTEbbnAly5aIK9d6rDeqFnZSExCVxGI
         OhYgeekwxA0M0bUvVWRrCEglDMvInS5dXhPiyzUDtIkSRykA/Beve6utQ4DX8T6jj+Zi
         JjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VI4B7mmcq6Q3smkTsTKpCOJlZRwUBcOPUAzD1sYZxCE=;
        b=vBCgMVU0p3UEYPOOOQcs1XDM438euOEpooxgUlogoHv3+ee7RlvowGR+s6hHZ3Bc1r
         qhuLV2F9PayJqvlF742JLl2SNJWNmjeU6zuQNt3uDdE/+aFr9Ws+PhGp/1hXGGg4UCxA
         AYgKQew+8+VahRCctMi/IXUst2utKoDAu5U8L11MSMIqh2fTRb+gLzB1S+ozdR41lZVv
         cZjoDW15dOIB6NQQfzHPytxpWRd5EdUAoQUgz3GIjTVWpbzxTZDM/SLDCZvbghEVymMn
         xu4a/kTG7QYPzZF8BtXit4U8EwOT/8cyghZei0nDrmyQegS2GDFyNlPwV4CsXmw3xgQC
         gUrg==
X-Gm-Message-State: ACgBeo2IWJZIA4gMVr/OFXXmsFN0oDeE4edivKtYv45NJdeYZIKqn//4
        8WrsZuijAEeBNqSxrqviEiKAEw==
X-Google-Smtp-Source: AA6agR6HqTWXO53iwYpqL64/OYpBnZOzYboOmwgNm8q4udBD9wVoGKZqqV7OA1+w+54XTjnUgfd7JA==
X-Received: by 2002:a5d:4a4f:0:b0:228:c256:3db6 with SMTP id v15-20020a5d4a4f000000b00228c2563db6mr780537wrs.576.1662371697574;
        Mon, 05 Sep 2022 02:54:57 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t8-20020adfe108000000b00225213fd4a9sm8497264wrz.33.2022.09.05.02.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 02:54:56 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 2/2] MAINTAINERS: Update fastrpc documentation file from txt to yaml
Date:   Mon,  5 Sep 2022 12:53:40 +0300
Message-Id: <20220905095340.902390-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220905095340.902390-1-abel.vesa@linaro.org>
References: <20220905095340.902390-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The documentation for fastrpc bingings is now YAML. So update the
MAINTAINERS file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 96f47a7865d6..ad697195fc59 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16863,7 +16863,7 @@ M:	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
 M:	Amol Maheshwari <amahesh@qti.qualcomm.com>
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
+F:	Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
 F:	drivers/misc/fastrpc.c
 F:	include/uapi/misc/fastrpc.h
 
-- 
2.34.1

