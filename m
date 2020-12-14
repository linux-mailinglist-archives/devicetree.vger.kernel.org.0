Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD022D9265
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 06:06:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725385AbgLNFGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 00:06:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726030AbgLNFGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 00:06:24 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D109C0613D3
        for <devicetree@vger.kernel.org>; Sun, 13 Dec 2020 21:05:44 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id z125so12629158ybb.15
        for <devicetree@vger.kernel.org>; Sun, 13 Dec 2020 21:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=4jvDXGubsRxhn2wRkLBIdD8iEb/d8966gxDD6ar7m8g=;
        b=KlDtMcMyuXTNxGUbetGWjtd3p7hpvDYcz1yB/r9pWRwYbw/uRunc0oLBIoTyedZka/
         +uuHMnhMMyBV7rLugg+K5pmhAH0HTPVj2ACp8VNveYiyt1bsViUM4EH5sbY46MFSXwBy
         gkSSUCqzVQeUMEG8jbZtx+UiCUAiJy/73YoqXfJA0oLwxQXS1Qv1d9081Dg4F162E95u
         XwQBFC5e5B18uSMlsZ+EUEcGl+d2tO6Y8wQSpjEl9ddpnAhw8OBOpVyYZNo+7VTezreg
         UVCGtaSnTN62Yf/xe9on+NX/47S1JMoMzXs4G20PMxuQkomLERygpELc1ZVfSv+Pn+sM
         60gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=4jvDXGubsRxhn2wRkLBIdD8iEb/d8966gxDD6ar7m8g=;
        b=OFhFPYaHqGbMCmcUhVaX5AVgOwYx7n3yEMA1nqgbkh3IoIa8OlYXHMDsetx4FERH5K
         qYK4zGEAGoRI1G5GXxVbQMLTOm5pqgxfIwTQZCt2eSvPDxdbyfGmkVciFyJk8bj3t+Na
         G/IwlWOH2UrCYfPHgbL/IGnnJCHEf8Ck3wn/o1/Wty0hh4J+3YA8qR+RPmNekJAsDzEj
         4QYC4gG8vdrWYhewS3myEtn67hNzGaSU/POkRZrn/4q+j/3R5iVUQI+NOt3u0E53vMx3
         WIGwxihTzgDWCw/704BsEmTKQtDPSGklIpQ1APIBI+Tlw9Kj8z9yoXVkZapnMKSeDz+V
         hvsQ==
X-Gm-Message-State: AOAM531MQ6Jyf4psapNZ+9ej64dJzicunCsmTkTv/Jxg1TpM30WObmKA
        znX3ylujJ4F59VvkRjbfJdyriHPq64Uz
X-Google-Smtp-Source: ABdhPJxUP6w2FBmL9+7gdOpsdC3JE0U//nSrm7jMotOm88ZfM8KsOD/SRblH+17axFBMDd5+7SSemS/Ft2pS
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a25:25c7:: with SMTP id
 l190mr4045475ybl.177.1607922343460; Sun, 13 Dec 2020 21:05:43 -0800 (PST)
Date:   Mon, 14 Dec 2020 13:05:19 +0800
Message-Id: <20201214050521.845396-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
Subject: [PATCH 0/2] remoteproc/mediatek: support L1TCM for MT8192 SCP
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series supports L1TCM which is a high performance memory region in
MT8192 SCP.

The 1st patch adds a new reg-name "l1tcm" for L1TCM.

The 2nd patch supports L1TCM in the firmware loader.  Note that MT8192
SCP is still under development.  The 2nd patch breaks early MT8192 SCP
firmware which should only break our development environment.

Tzung-Bi Shih (2):
  dt-bindings: remoteproc: mediatek: add L1TCM memory region
  remoteproc/mediatek: support L1TCM

 .../bindings/remoteproc/mtk,scp.txt           |  8 +--
 drivers/remoteproc/mtk_common.h               |  5 ++
 drivers/remoteproc/mtk_scp.c                  | 54 ++++++++++++++++++-
 3 files changed, 61 insertions(+), 6 deletions(-)

-- 
2.29.2.684.gfbc64c5ab5-goog

