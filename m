Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17F86360077
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 05:30:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229818AbhDODa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 23:30:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbhDODa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 23:30:27 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 995A9C061574
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 20:30:04 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id kb13-20020a17090ae7cdb02901503d67f0beso699212pjb.0
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 20:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GvsX7qkA/jJYB/kaGhlB4f/SEwZSfr+xVJPIWqSWblQ=;
        b=XyR5JaiEjLdVLfe7kMSbUpCezlukHn1FRwXaQyTrO0KQGnVg+rpfAokH1d/3ttKGUz
         ZYPv90o5q/8NQl0Mu19Zodv61T3ggjfhnqvIa6vXUxaQa7dT/2JZI/qg8nDzwMBUOJ8K
         12AFdV62kVPPOhTfln7fqjdb0Ctcs6YSwrG7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GvsX7qkA/jJYB/kaGhlB4f/SEwZSfr+xVJPIWqSWblQ=;
        b=JZV3Uo3sHmSPoWTsdCKAHiYC/md+NXmBMPguQzERpLtmFseDADL3OHRYpk6mis7i50
         /z5SK/EZ0Awc3GpVrtXFZ84gWZEs70OKBFTQ6vzXOw/CnK9zVxJ7km2GYksUnHjdkWkp
         D1bbzqP+sod/3MaPpud6NTpmCazY/oQE1Vaq6lKO7GhGa9SMD9adGyc/lVOd34Qf78Fz
         LlnEqoh5ZK+C8yvCjkIS31DNqCcauKAFICdltSbK0/tzqIs4mRt+gAg75pEsPuRvzHHA
         SnE3bqvCkHwzvCwl46ibMgA96H732xVSPHdWEOg1dwsh1/yravRdFNVm+tPE2mJgaGpv
         5+CA==
X-Gm-Message-State: AOAM531sH7dgBcdOWcj/rMrdBmcfLaSrU6UaVAnA91lHbXe/H2vNTeIl
        hH0QqSvCEHqVx2GHL3G08W10Yg==
X-Google-Smtp-Source: ABdhPJxUUfiFPUBBzwmICMHwGDD2yHq20aF5+8gQd99wX9xkVxlGC41VTmQVGYHoqjvv3QdY0zUn4A==
X-Received: by 2002:a17:90a:dc07:: with SMTP id i7mr1500541pjv.16.1618457404133;
        Wed, 14 Apr 2021 20:30:04 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:b:2d50:863d:8932:d6bc])
        by smtp.gmail.com with ESMTPSA id n3sm351622pga.92.2021.04.14.20.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 20:30:03 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     linux-input@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Dmitry Torokhov <dtor@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Jiri Kosina <jikos@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/2] HID: google: add device tree bindings for Whiskers switch device
Date:   Thu, 15 Apr 2021 11:29:56 +0800
Message-Id: <20210415032958.740233-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device a tree binding for a "cros-cbas" switch device of
ChromeOS tablets with Whiskers base board.

Changes in v5:
 - Add missing blank lines and change the description property's position.
 - Add a note to description: "this device cannot be detected at runtime."

Changes in v4:
Define cros-cbase bindings inside google,cros-ec.yaml instead of
a separated binding document.

Ikjoon Jang (2):
  mfd: google,cros-ec: add DT bindings for a baseboard's switch device
  HID: google: Add of_match table to Whiskers switch device.

 .../bindings/mfd/google,cros-ec.yaml          | 20 +++++++++++++++++++
 drivers/hid/hid-google-hammer.c               | 10 ++++++++++
 2 files changed, 30 insertions(+)

-- 
2.31.1.295.g9ea45b61b8-goog

