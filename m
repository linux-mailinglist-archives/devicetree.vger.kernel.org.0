Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A1B53D52B0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 06:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231537AbhGZELr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 00:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231598AbhGZELo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 00:11:44 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F41C0613CF
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 21:52:12 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so18007173pjb.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 21:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eK8DOqvzTIA+QnY/7E9eUfZzzNYH4fK9bj2nYZkAiVA=;
        b=SoRDc4f/lRhAl74xoIPjFbw7Dib8Di56QspJCEXHcsSsoeG2PeHGJBe7RwI/R3vTUE
         qM+bG+qGXc43mEFOcG+GGkFNDsJzFeTeLfbJOeJ2IvHxCxqqqu6BQcz0bika3Vl8I4BA
         Vi4felRcJuq3De1PlLHQxAPiHhG18JWn+YH1mIMh7dCzUTaba7W3bHHv55BEUPOgvlEP
         rezZd1ukuSYTrpRfZ1kJRxPqYBhZf8G4shxpmyUx7dxUp/Nh4tWnAy2nGbbWJx4j2q1v
         xojUc0myLSYEUrOuZ0j6rCHBwckaDzDSNBB1WDt84nMEbnG867niEdPx7BzOGqDna7pw
         YRdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eK8DOqvzTIA+QnY/7E9eUfZzzNYH4fK9bj2nYZkAiVA=;
        b=PkSFU0bO52ERdYA4fsyEqzP573lK8rnRNf5xGOn7rLD4PzvLTIJpSt7WUvUiyg8Kiw
         wAyiulp3r4689HP0j/xdJmMhberstVXSuLbUv0GuxHupG+MT/hyPUxGM36OVY/Tdp/2R
         xfwGuKdLbvtuesWiG8S1XHLr00KB1sO9ZUpYq0LjnzevFnwlbRyZ60MKX0x7L8uP3Xi9
         1LCUMK9Y1SlezbhZBsLTHOj03kCvYrZSeHuNjaYlAdTgYqRHfKXgMY5Ub99iecmonKeR
         ZBllg7GKGsahREgotVmIOBLqEWQMfomGaES7ZNxci39wP5peLZ6Wra3PyMiqRj2Gk8e3
         yNOQ==
X-Gm-Message-State: AOAM533SLIcg4JvjgULSxPHrNIC2EOakCzLatHt3gZVp7+gJVJ08b8zc
        Cw2Bcevcu0idkUETXJ6enZuoFA==
X-Google-Smtp-Source: ABdhPJyd4mgd3OPdX6e88ye0hFUu3QCPJP564ICYV8w64E0FtjTKjaHwg2AFqqamONRyDAfxaOfUNg==
X-Received: by 2002:a17:90b:609:: with SMTP id gb9mr7453554pjb.156.1627275132187;
        Sun, 25 Jul 2021 21:52:12 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id q19sm29598565pgj.17.2021.07.25.21.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jul 2021 21:52:11 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org
Subject: [PATCH V3 4/5] uapi: virtio_ids: Sync ids with specification
Date:   Mon, 26 Jul 2021 10:21:44 +0530
Message-Id: <9450f75be4d6fc6abd5f52c7ff75890f04303324.1627273794.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1627273794.git.viresh.kumar@linaro.org>
References: <cover.1627273794.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This synchronizes the virtio ids with the latest list from virtio
specification.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/uapi/linux/virtio_ids.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/uapi/linux/virtio_ids.h b/include/uapi/linux/virtio_ids.h
index 70a8057ad4bb..3c8e11820fdb 100644
--- a/include/uapi/linux/virtio_ids.h
+++ b/include/uapi/linux/virtio_ids.h
@@ -54,8 +54,20 @@
 #define VIRTIO_ID_SOUND			25 /* virtio sound */
 #define VIRTIO_ID_FS			26 /* virtio filesystem */
 #define VIRTIO_ID_PMEM			27 /* virtio pmem */
+#define VIRTIO_ID_RPMB			28 /* virtio rpmb */
 #define VIRTIO_ID_MAC80211_HWSIM	29 /* virtio mac80211-hwsim */
+#define VIRTIO_ID_VIDEO_ENCODER		30 /* virtio video encoder */
+#define VIRTIO_ID_VIDEO_DECODER		31 /* virtio video decoder */
+#define VIRTIO_ID_SCMI			32 /* virtio scmi */
+#define VIRTIO_ID_NITRO_SEC_MOD		33 /* virtio nitro secure module*/
+#define VIRTIO_ID_I2C_ADAPTER		34 /* virtio i2c adapter */
+#define VIRTIO_ID_WATCHDOG		35 /* virtio watchdog */
+#define VIRTIO_ID_CAN			36 /* virtio can */
+#define VIRTIO_ID_DMABUF		37 /* virtio dmabuf */
+#define VIRTIO_ID_PARAM_SERV		38 /* virtio parameter server */
+#define VIRTIO_ID_AUDIO_POLICY		39 /* virtio audio policy */
 #define VIRTIO_ID_BT			40 /* virtio bluetooth */
+#define VIRTIO_ID_GPIO			41 /* virtio gpio */
 
 /*
  * Virtio Transitional IDs
-- 
2.31.1.272.g89b43f80a514

