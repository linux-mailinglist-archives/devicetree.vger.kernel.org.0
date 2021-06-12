Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8EEC3A50A5
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 22:55:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231584AbhFLU4x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 16:56:53 -0400
Received: from mail-ej1-f51.google.com ([209.85.218.51]:34801 "EHLO
        mail-ej1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231315AbhFLU4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Jun 2021 16:56:51 -0400
Received: by mail-ej1-f51.google.com with SMTP id g8so9852116ejx.1
        for <devicetree@vger.kernel.org>; Sat, 12 Jun 2021 13:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mv3/cnpvRbvAJeQa0MiDYgvPXPyU1vXJHZuXEP0Ro0w=;
        b=lvhykrj8XeuOw/I8vR+vifVvDfEgyqY+T8z2eWHUIW7GB1uICnrTfzs254s+9tJt5T
         AuTRAtD0bIrOfu0iB8qKE4uaJSnGoofS0Xs73e5cLSowFBneNRguEQVD9LbNVHVbKMQK
         vu1FmvLDRMUyU9QQkd9uXvLY+vzJYDn+YGHWbDw2oC8biBOZombrwgCGI3gTYxlK8f+F
         I9G/Elf8cyzbGeYmNqwKTLhrpl0S+9rOwW+8iSGaSNtWWxE+7cJQcYUpVU/YlFQhgUs1
         Z4mog+Svmswr1mLcw/uKqPosS+GcBRrVhiG1J6c7jlceSi2jxYQTDwTqOUh7J8ypRmGh
         4VGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mv3/cnpvRbvAJeQa0MiDYgvPXPyU1vXJHZuXEP0Ro0w=;
        b=rZZxzlIqspoGL6GJUPxaw9bVWe9U3S/IWSm/lROc2EfVdLXFBTCB2Z5bPIiChsD6z8
         WKn1uNLLguCtYvOkCJemFpFLprR2QQpgarTTMfPsV7Rg9V8gYSdP8OgyoVdFjwCUnLtx
         4w0zdAwVC1GQ5Iul3jFjxnxVBSHtv/vGdxfNR9z7Z2c/qcO2OQQvAMSEGiw5Dio4o1uf
         Z+Khosoy8kSQmshkrItpbVMT4/5Qy1JzN0+g51TaqrzJLJHa1xI8Sport40907EvXB2X
         9z3a0SK15ofsZzm0Y6TReWsBhxmQdh/vP2C7NEINk1SDJf4li8x8TWguk5Y6R12tsZ0F
         QpTA==
X-Gm-Message-State: AOAM532SHzMhMu1gIRBvr4Ft3TLyF8f84SwyHU6PaAxU55N0LditopF+
        bMZYDhfMKraaNclbNxEnl0GHSA==
X-Google-Smtp-Source: ABdhPJxkYIoeEEqaY6OBy2UBJJuSKZHPbSXjyqfT6ueqR3X1U5RO+zM4UexRST61zS/G23rG6QyT1Q==
X-Received: by 2002:a17:907:33d0:: with SMTP id zk16mr8945400ejb.144.1623531230324;
        Sat, 12 Jun 2021 13:53:50 -0700 (PDT)
Received: from PackardBell (192038129059.mbb.telenor.dk. [192.38.129.59])
        by smtp.googlemail.com with ESMTPSA id a2sm3574362ejp.1.2021.06.12.13.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 13:53:49 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id 061171b6;
        Sat, 12 Jun 2021 20:53:45 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [RESEND PATCH v2 0/2] cpuidle: qcom: Add SPM register data for MSM8226
Date:   Sat, 12 Jun 2021 22:53:33 +0200
Message-Id: <20210612205335.9730-1-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SPM register data sequence for MSM8226 SoC and enable SAW2 power
controller for it.

Changes in v2:
 - Removed APQ8026 SoC support

Bartosz Dudziak (2):
  dt-bindings: arm: msm: Add SAW2 for MSM8226
  cpuidle: qcom: Add SPM register data for MSM8226

 .../devicetree/bindings/arm/msm/qcom,saw2.txt      |  1 +
 drivers/cpuidle/cpuidle-qcom-spm.c                 | 14 ++++++++++++++
 2 files changed, 15 insertions(+)

-- 
2.25.1

