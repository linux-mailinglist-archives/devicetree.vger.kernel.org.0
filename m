Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0450C12484C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 14:25:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727472AbfLRNYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Dec 2019 08:24:54 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:47009 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726942AbfLRNYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Dec 2019 08:24:00 -0500
Received: by mail-lj1-f195.google.com with SMTP id z17so2099304ljk.13
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2019 05:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=P72Y5udFHhnfLqxUCy8WtY2iwNO/ZT4H/0nL4IC4LCk=;
        b=qaUdXdAye10Dq5hnevMgeDvmMbOoh8JKSNgxzPVy7A9Y/6uTZ23+VFZDrSyyEAXlrs
         zJJa/RFwQdiT5gjyBF/cJwras2oWGcQHBT/DQaGWeZS3FzTLT7O0VG+56nG8bxY7ZAbR
         O3vF0oaBhJsouwkQxP9tgy7bJRMUayLwjzR9XTLb6WnkbJnqEmSyH6rLm6taW/CMeXem
         sBOgq9NCoYNmaKOx+8ZSkq6EEtpf3aKwNLKgB5zThtF8cBkOk7ygCgud1KtEa5nZNMKz
         C0NEyIV4K2brMdbfDeqaUkc3A7dBeJWhoCqPlcWipWIWMnZ5QU/2HDwj28p9gfmaYGov
         v9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=P72Y5udFHhnfLqxUCy8WtY2iwNO/ZT4H/0nL4IC4LCk=;
        b=DoSVRWEpvnp0Lfb+cPvJhJAKNQxqAxzjYHGPaPHdpFEoOLHt/LBjjo6nRcmSOhivvE
         8Y6fXKhLbRPa55Bmj4Hfo1ewr6pPzChSGpEVAabP5QmoUSzjHX1PwkV+hKmGYMxAj0Bh
         QUB+924vRiIJ+kRrMHFjnaVFYCuOdHEpxaB6jQAn2w35+ibChbLOsVxcH5hUx5m3m0+0
         WXEiNuQ2dAluz2qvEUJVa3XopdF/5/XwSIiYkPH1bKLa0vdRFEomseK1HEvxMw8jc1X3
         HIU4lhl7NoHk/DGB/qbtmkGE9k8w5OcAbexCVDAjIFKsSfs7xFs1daclWIAnltxg/xLt
         61nw==
X-Gm-Message-State: APjAAAWwvTrnGztrKRbLhTnXsBFuiDDCDR7LCKeg1VWwElB7cDNylMSE
        a2WGoJcRkwLBwAVrig8/Y5botA==
X-Google-Smtp-Source: APXvYqzY48Rn4B1tuzxRZ1zlbNZHw3B57oGrSKXIeYp8HoJqXNIfUt2MnFXDomkFsjMLmouPrRCcNA==
X-Received: by 2002:a2e:8797:: with SMTP id n23mr1702904lji.176.1576675438520;
        Wed, 18 Dec 2019 05:23:58 -0800 (PST)
Received: from localhost.localdomain ([37.157.136.193])
        by smtp.gmail.com with ESMTPSA id z7sm1440667lfa.81.2019.12.18.05.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2019 05:23:58 -0800 (PST)
From:   Stanimir Varbanov <stanimir.varbanov@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Vikash Garodia <vgarodia@codeaurora.org>, dikshita@codeaurora.org,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: [PATCH v2 03/12] venus: venc: blacklist two encoder properties
Date:   Wed, 18 Dec 2019 15:22:42 +0200
Message-Id: <20191218132251.24161-4-stanimir.varbanov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218132251.24161-1-stanimir.varbanov@linaro.org>
References: <20191218132251.24161-1-stanimir.varbanov@linaro.org>
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

