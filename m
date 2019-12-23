Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1CA4512951B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 12:33:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726903AbfLWLdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Dec 2019 06:33:49 -0500
Received: from mail-lf1-f66.google.com ([209.85.167.66]:36516 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726666AbfLWLdq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Dec 2019 06:33:46 -0500
Received: by mail-lf1-f66.google.com with SMTP id n12so12381755lfe.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2019 03:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=P72Y5udFHhnfLqxUCy8WtY2iwNO/ZT4H/0nL4IC4LCk=;
        b=JNPQuTGJntfRmCaIG7t6bulJZsUrPsoDQI3KgGUm2NNtuZcMdomnKkYzW20dCYyrb3
         XvsoDG743sudLkY8REoB1VMXE6g7ZuBzrshaNAnKpYGyws5MSZkxVUA+rM58z560Zato
         MGDxqnJqeTprbioNgEaTNtVBVIwJIB40yo1DQMwvQaf3HTOQt7bjyfmTt7AlAAy4suBV
         AwzU8Tzjuq7PwraTdcOG6kZ+ip4IrShlmgSYoAwjKVy24Y5ZysAXZC62N4JLxtprrTEj
         4G/u24IbWVOSzDOj8eprOg2lA8ycPUY/FZjRfcvSc1gt0mkKv652VvsQwl6Rl4q7k7l7
         9W1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=P72Y5udFHhnfLqxUCy8WtY2iwNO/ZT4H/0nL4IC4LCk=;
        b=TRKeEvBl9uECeK4XOLhSv4gdWyiFN1MGvmfuPsKpcbWfh/U/QdProC5Tsakhee0wHk
         th2B+1Q/9jIi14jDTD8EDZZ+TPKMqnSz2gFB/1MgOmu5lm2JxhtSjbA9gsNKKZz9MP2+
         pezqHWABLpf4iGhHlP/HeshqDLEukCaHA+0n+H2Q4BOIQSCCIFwW0pjSowx4Q8UE4CFb
         0r9qYsH4s579UysJJFLiOMb+rWJ/s7JxLsVOhDBOMSqUg/GpRYbzovDnaVT2/Jdbszzn
         /Lwa0rKIVtNMTdEWSOUXgPvRNraS/6BzKptuontsgo6A0HgHoevENfqcWcvrUHnsSYsD
         8rWA==
X-Gm-Message-State: APjAAAUKxCEX9SnZFVfN63btrQrgOlm/Ar9/BrTlHEURzg9aT8pPv5Qf
        58e4697TnGSdbpZVPf9ycLQQwA==
X-Google-Smtp-Source: APXvYqwFd++gedm7S49Pb52tPx6sI7YkMWZKbNCEvKEFEtxHk1H2TaKUKpZ9vP9loscyqy0mIEHNDg==
X-Received: by 2002:ac2:41c8:: with SMTP id d8mr16345702lfi.65.1577100825231;
        Mon, 23 Dec 2019 03:33:45 -0800 (PST)
Received: from localhost.localdomain ([37.157.136.193])
        by smtp.gmail.com with ESMTPSA id g15sm8381500ljk.8.2019.12.23.03.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2019 03:33:44 -0800 (PST)
From:   Stanimir Varbanov <stanimir.varbanov@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Vikash Garodia <vgarodia@codeaurora.org>, dikshita@codeaurora.org,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: [PATCH v3 03/12] venus: venc: blacklist two encoder properties
Date:   Mon, 23 Dec 2019 13:33:02 +0200
Message-Id: <20191223113311.20602-4-stanimir.varbanov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223113311.20602-1-stanimir.varbanov@linaro.org>
References: <20191223113311.20602-1-stanimir.varbanov@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Those two properties are not implemented for Venus v4 (sdm845),
thus don't set them to firmware.

Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
---
 drivers/media/platform/qcom/venus/hfi_cmds.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/hfi_cmds.c b/drivers/media/platform/qcom/venus/hfi_cmds.c
index 4f645076abfb..c67e412f8201 100644
--- a/drivers/media/platform/qcom/venus/hfi_cmds.c
+++ b/drivers/media/platform/qcom/venus/hfi_cmds.c
@@ -1207,6 +1207,8 @@ pkt_session_set_property_4xx(struct hfi_session_set_property_pkt *pkt,
 	case HFI_PROPERTY_CONFIG_VENC_MAX_BITRATE:
 	case HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER:
 	case HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE:
+	case HFI_PROPERTY_PARAM_VENC_SESSION_QP:
+	case HFI_PROPERTY_PARAM_VENC_SESSION_QP_RANGE:
 		/* not implemented on Venus 4xx */
 		return -ENOTSUPP;
 	default:
-- 
2.17.1

