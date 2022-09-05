Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5969F5AD041
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 12:39:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235590AbiIEKhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 06:37:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbiIEKh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 06:37:29 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF082F64D
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 03:37:26 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id t14so3477079wrx.8
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 03:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VI4B7mmcq6Q3smkTsTKpCOJlZRwUBcOPUAzD1sYZxCE=;
        b=JyqPehizxeveGl2aXEy+CBjBaabYIvxdl31puYBqc3gtlJCLq3qFt0hdijKxbuFGVK
         AMg5HtDfCsuUTWS4wHQm/klZP81V+KM8GKjqV5VGk/Xn3DSUgPu7p9UD+tqFsM4FzLf7
         Vg8dg3w6UgEcxXX2xeXw/TSGwA1nQ1S7oP6BDS/WQQOy7+nVseYUt0coYiMQSfHoZWzu
         r9OMa/vaQyWkOf3nAExqae6zI9/qJKSgo1klouFcIjirvhC9yDcXZo0BaHf8PdBkhrWW
         U75zI0dOTYPWYNLrWy+ZKMnNwWzInw2g603YP9a0GhTUI0Lzua+VcGv+tYAJIBAhOOQX
         ujiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VI4B7mmcq6Q3smkTsTKpCOJlZRwUBcOPUAzD1sYZxCE=;
        b=WUNA+cSXzqKzoqNYiMkWa6m9ffNqBzUeWPp6tpMkItsSCVMtGWy2UvacfS9/VEhW4Z
         k2Lh6xqPDmV4zG9FqaIZHYJg0wJlRdplJb8AabrI3fT56biBcfOUgZsjQHMomaRS7a7u
         yapP9MhQ5VVW7TYCWI7UKV8aIr7P5M9zSg6ieZXbFsfHWzwpLmspaHvN3cLQqIV4/tQd
         /SClUgeh/l19re/cZBFNaDUmjszNZLVzsX8jcNbrpq3Au7GmLHdVX0hE19qgaApgNDBV
         /azSffJLky3JIomfMWK8oyZwxvHGDMESQfHwMcC4d1G61ho/lAbAX0JYGor1UWpwE78U
         iQsg==
X-Gm-Message-State: ACgBeo2cgBS2R9T78N9lNkzTCNc6AmPNLIXcFtg7/pEtDjjfWWr+twHc
        /3lx42yPbvekI4/JL5rqD/KpmQ==
X-Google-Smtp-Source: AA6agR5WyesUmbHHOtfIoJeaQwdtaZXuydLC4N1/liflEKJoqBCEs/yCceP9AfG4VX8BxR/VnCTUZg==
X-Received: by 2002:adf:eb02:0:b0:227:1c:e760 with SMTP id s2-20020adfeb02000000b00227001ce760mr9098694wrn.635.1662374244612;
        Mon, 05 Sep 2022 03:37:24 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id z7-20020a05600c0a0700b003a5c1e916c8sm31765894wmp.1.2022.09.05.03.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 03:37:23 -0700 (PDT)
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
Subject: [PATCH v6 2/2] MAINTAINERS: Update fastrpc documentation file from txt to yaml
Date:   Mon,  5 Sep 2022 13:37:15 +0300
Message-Id: <20220905103715.955786-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220905103715.955786-1-abel.vesa@linaro.org>
References: <20220905103715.955786-1-abel.vesa@linaro.org>
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

