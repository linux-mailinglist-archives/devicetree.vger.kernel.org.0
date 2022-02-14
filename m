Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C5A54B55C0
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:12:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356179AbiBNQKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:10:31 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356166AbiBNQKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:10:23 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D088A60ABA
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:13 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d27so23886773wrb.5
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bjIBqjzSOeDzcjHYyKEgBA6yLH4mKujvrbK8vjp/JEs=;
        b=v8ikxGgzEw4r/f6wRkB1LLs/I7iNUSt9c9k64kCa3IWq9HaQHmN6SxlH8iBu3Y2rVZ
         2ycld9cIN//uQ0s4cUl0X1Qxc5NShYKsqH7d9kzotM5fi7yWq0uF4cAaFO5J200Hl/u1
         Eu1Gn8Qdu66K4VobyEMGdwyh7cDZyaCDJ1WhiN/Av3J5Y/TbWvpEU3ibuSWMxbn5ikAq
         QRlbtzmbvEvtgTDBwxt3nowBdJWYXoj3eOwW9WkpyA/Lwj/4REC9fYNewC61Z12OKDLF
         xTbKH6ogC6PLmS/Fu+Chg+XITABDwPc4UuOus4IImJVUtJZOJiY+hHfmLsnaYQ5sZwcu
         hhAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bjIBqjzSOeDzcjHYyKEgBA6yLH4mKujvrbK8vjp/JEs=;
        b=VJZgA1oU+5JTHeC8hx7RsfXYo5YipD6IRgIz7qoM/QtftM1KVMi+rhQ866MSiwUyoH
         GkONdH7mKwrvPuPQeuK3hWIpg5EGRIB9mt+CqGUb3duPikHB9viuucxoNmgoSg0ydcjM
         YC6UgAAV6nAr/fbX6HPKjVZKpBywwq74neUcaPCx1+vmBaNr9MjHpkpGl466pzY0FmmR
         jfdQkq6EPtztVZtIPFnv8gQPmHkfSw/1kfgxg9dMITnwgNQExZ6knhQnYHYGPuF2EH43
         Qbzc/bimUaZ7PnpDucL5UdpirbkPdZXkipvnMG0qjk+ED25UjVt74cPGlqRKF3F+bN0i
         1AKA==
X-Gm-Message-State: AOAM530cC4Pnhy2W9iLfGJkLNIGjpJUUCFgKpPANTdZygSAMeBzVOkiR
        o+4B/FKtnSKpGfFGhLsMUPt0tA==
X-Google-Smtp-Source: ABdhPJxJvrJJtxqGvtKldDSZFRcJhJ/YhAJfLEYlTjVsw7/v6Qj2TqDIsz9TIpCBT5g7MPRLdiCDzg==
X-Received: by 2002:a05:6000:1847:: with SMTP id c7mr273113wri.103.1644855012086;
        Mon, 14 Feb 2022 08:10:12 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id k28sm13677022wms.23.2022.02.14.08.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 08:10:11 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        bkumar@qti.qualcomm.com, linux-kernel@vger.kernel.org,
        srini@kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org, Jeya R <jeyr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 04/12] dt-bindings: misc: add property to support non-secure DSP
Date:   Mon, 14 Feb 2022 16:09:54 +0000
Message-Id: <20220214161002.6831-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220214161002.6831-1-srinivas.kandagatla@linaro.org>
References: <20220214161002.6831-1-srinivas.kandagatla@linaro.org>
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

From: Jeya R <jeyr@codeaurora.org>

Add property to set DSP domain as non-secure.

ADSP/MDSP/SDSP are by default secured, where as CDSP can be either be
secured/unsecured.
non-secured Compute DSP would allow users to load unsigned process
and run hexagon instructions, but limiting access to secured hardware
within the DSP.

Based on this flag device nodes for secured and unsecured are created.

Signed-off-by: Jeya R <jeyr@codeaurora.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/misc/qcom,fastrpc.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt b/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
index 2a1827ab50d2..f9a01e2b4c96 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
@@ -17,6 +17,11 @@ other tasks.
 	Definition: should specify the dsp domain name this fastrpc
 	corresponds to. must be one of this: "adsp", "mdsp", "sdsp", "cdsp"
 
+- qcom,non-secure-domain:
+	Usage: required
+	Value type: <boolean>
+	Definition: Property to specify that dsp domain is non-secure.
+
 - #address-cells
 	Usage: required
 	Value type: <u32>
-- 
2.21.0

