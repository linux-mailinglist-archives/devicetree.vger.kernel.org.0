Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB8CC46E80F
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 13:07:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237129AbhLIMKg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 07:10:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237095AbhLIMKd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 07:10:33 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA68C0617A1
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 04:06:59 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 77-20020a1c0450000000b0033123de3425so6425060wme.0
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 04:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QMAxu6THltYWLchCw9nsHQsbKoxrZaVufwyt4Anj+Rw=;
        b=pvhVgdgJNkG2YC0mg7aQCaNoBF3wZYpj3ZrcvXlKvxJoKmff8WgVu2Yf1/LtYgXn71
         a1yDRI7nj+91hDcEfm86joqMzl677CEun0CRUsVP8hnh2P+5cVrWQNnfViUQWWoM6usz
         wsGGFNq8+RGppBNPRJTMj6RYmHKXwMr8HtnebW6LaeYUCOIkAaS0/61jOMdGRVtQmBev
         a3jajhfjp6Gel54ZqjzziUsgSTMp2tV/YzZyIZy8fwzKM4cs8m2TNljEK9yvsrNhGqa9
         BCJr5kmrJD/tch13KtUUnsrRoecuKzGZySsVtLmjr8i92PFeLzURK8t+vT2C1ZM2ekuM
         XkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QMAxu6THltYWLchCw9nsHQsbKoxrZaVufwyt4Anj+Rw=;
        b=GXwQdHwRv68HBpC6ev7iL3/lvCp81L079qGUpLIoz3QAkKPtkDkkMn1l8IOuH+KNkk
         ZdIPKzyB5dQIY8U8VSfQZrmorC+FV1nhq2kICJ2KlyEHof/9MbZQH1ZF8QltIXGv2kAy
         GLtd5NS90FZ+MO51l/nHf0rWWfAtIkfRQ9DU9c3rNafGNO6OuvxO3QqFxmJCbmChisGl
         M6cyVQqYJGZXFbhFfFBIMq+c1LTalfW/GHexkZKVHaUawIGf5rDsP2Z9Jkg8egDuxVBt
         PwQwtuYLJut46AKw/EGzucPQtAMDj+bdGoykc2mxxezhXPCpnsg3D2UaGWq61PIG/l7L
         3yCQ==
X-Gm-Message-State: AOAM5312yunn+11TfvEz5DuQX1ZdGRVpQhza4gL4Un7XrMRkdEl+Fgyu
        /Q3XM2FyaqYAXOhuhtsqTo6pkg==
X-Google-Smtp-Source: ABdhPJz4cOkVVHWdVQ/CEluKwx9VmaZDIJ/8mfQwZiNQ/fbsKfXNlqPrlMxig83e8304dt+agA5vSA==
X-Received: by 2002:a7b:ce16:: with SMTP id m22mr6612045wmc.39.1639051618381;
        Thu, 09 Dec 2021 04:06:58 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id 4sm7513289wrz.90.2021.12.09.04.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 04:06:58 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        jeyr@codeaurora.org, bkumar@qti.qualcomm.com,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 2/8] misc: fastrpc: add remote process attributes
Date:   Thu,  9 Dec 2021 12:06:20 +0000
Message-Id: <20211209120626.26373-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211209120626.26373-1-srinivas.kandagatla@linaro.org>
References: <20211209120626.26373-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jeya R <jeyr@codeaurora.org>

Add fastrpc remote process attributes. These attributes are passed as
part of process create ioctl request.

Signed-off-by: Jeya R <jeyr@codeaurora.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 include/uapi/misc/fastrpc.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/uapi/misc/fastrpc.h b/include/uapi/misc/fastrpc.h
index 0a89f95463f6..b74407d19ed5 100644
--- a/include/uapi/misc/fastrpc.h
+++ b/include/uapi/misc/fastrpc.h
@@ -14,6 +14,23 @@
 #define FASTRPC_IOCTL_MUNMAP		_IOWR('R', 7, struct fastrpc_req_munmap)
 #define FASTRPC_IOCTL_INIT_ATTACH_SNS	_IO('R', 8)
 
+enum fastrpc_proc_attr {
+	/* Macro for Debug attr */
+	FASTRPC_MODE_DEBUG		= (1 << 0),
+	/* Macro for Ptrace */
+	FASTRPC_MODE_PTRACE		= (1 << 1),
+	/* Macro for CRC Check */
+	FASTRPC_MODE_CRC		= (1 << 2),
+	/* Macro for Unsigned PD */
+	FASTRPC_MODE_UNSIGNED_MODULE	= (1 << 3),
+	/* Macro for Adaptive QoS */
+	FASTRPC_MODE_ADAPTIVE_QOS	= (1 << 4),
+	/* Macro for System Process */
+	FASTRPC_MODE_SYSTEM_PROCESS	= (1 << 5),
+	/* Macro for Prvileged Process */
+	FASTRPC_MODE_PRIVILEGED		= (1 << 6),
+};
+
 struct fastrpc_invoke_args {
 	__u64 ptr;
 	__u64 length;
-- 
2.21.0

