Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 420715AB1B0
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 15:38:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237446AbiIBNi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 09:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237431AbiIBNhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 09:37:55 -0400
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3883125EA5
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 06:16:37 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id u18so2265889wrq.10
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 06:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=NdB5Eag8SJU/73u2oaBSVfu1iUfNn2HCQO16zSHjpzg=;
        b=j2HVVINs5SUWK2vZ9QoQTlNzGgy4k5poxJ8QlNOmNG3ULJ7KNBbd7VcVecud8t1ATu
         qS8G+ZyWDDtsHWNNIjFQgf5qWxADx1/y77s8nXZkbLiNh1F5JWDvxuTutW4u7nhSfZJp
         g+qTuE7POy+lY/G7OiZk1fEemcTIzLfIvQ5j1GoqYwg/LeL+bzaihesKYXZw/cHSBunA
         +1gQR1wPTaae8lzkri6qkOAQelQBiOpX/LvFH5iKhjjmQYLg4cHxQHLazC7ThCYjlLDF
         E451c7T2Ii+I6RG+QfSbBs16RelLiBlnI7ozPtwM0Z/RKa99eTnu7RjhRFGnOTsagWyC
         MFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NdB5Eag8SJU/73u2oaBSVfu1iUfNn2HCQO16zSHjpzg=;
        b=RV+SWwrqNCLisn7snCQnV8MIIP+GKaTo5CCxM/DYlzpadKuLEBXBbT+XP+UT3lC0nU
         BbufAYy4f4IbQv1xmk710balC+8bVzzKO2oNvqKng1Ys8g8hWl41+Tj6XfOV4Q3KR4W3
         VlvwzWDcJjQnrxrFrxh6dC99n9LmPoq5O4NGmQ/ApBQOjfrRbnxmJSP8gEZ0WwfFXZC/
         Ik+q5OHBrJ7wxa5T+8CGmCnGPWshBVSXFISmwSHJyzIaFJPJ8JSc9B3nkqJLdyFidBuz
         suAUAMjlWvQkAJDc28hZzdqOYCCfimgFaSWs+qD8Ny9PdXnwA4DsZkvwpt5YJdXRApPk
         f0ZA==
X-Gm-Message-State: ACgBeo2NeDs3ZuZcutb5M8QpJjf5+F0gFySDfbHLTDKRlH5Jj+bHNqd6
        O50B7TR/VDYG0IfEVQlODdPZlA==
X-Google-Smtp-Source: AA6agR73KElNyuraXPjontCL8mjzyqTHD/2hkc5ngtlZxbKaN9cUlR/crzqK6sdLN9SnzjjcMh7ZDw==
X-Received: by 2002:a05:6000:100a:b0:226:da75:5209 with SMTP id a10-20020a056000100a00b00226da755209mr13600368wrx.156.1662124466124;
        Fri, 02 Sep 2022 06:14:26 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020a5d43ce000000b002253fd19a6asm1766253wrr.18.2022.09.02.06.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 06:14:25 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorande@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Ekansh Gupta <ekangupt@qti.qualcomm.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 04/14] misc: fastrpc: Rename audio protection domain to root
Date:   Fri,  2 Sep 2022 16:13:34 +0300
Message-Id: <20220902131344.3029826-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902131344.3029826-1-abel.vesa@linaro.org>
References: <20220902131344.3029826-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AUDIO_PD will be done via static pd, so the proper name here is
actually ROOT_PD.

Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/misc/fastrpc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 58654d394d17..8d803ee33904 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -83,7 +83,7 @@
 #define FASTRPC_RMID_INIT_MEM_UNMAP    11
 
 /* Protection Domain(PD) ids */
-#define AUDIO_PD	(0) /* also GUEST_OS PD? */
+#define ROOT_PD		(0) /* also GUEST_OS PD? */
 #define USER_PD		(1)
 #define SENSORS_PD	(2)
 
@@ -1889,7 +1889,7 @@ static long fastrpc_device_ioctl(struct file *file, unsigned int cmd,
 		err = fastrpc_invoke(fl, argp);
 		break;
 	case FASTRPC_IOCTL_INIT_ATTACH:
-		err = fastrpc_init_attach(fl, AUDIO_PD);
+		err = fastrpc_init_attach(fl, ROOT_PD);
 		break;
 	case FASTRPC_IOCTL_INIT_ATTACH_SNS:
 		err = fastrpc_init_attach(fl, SENSORS_PD);
-- 
2.34.1

