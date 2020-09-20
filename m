Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08CB02716D8
	for <lists+devicetree@lfdr.de>; Sun, 20 Sep 2020 20:10:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726652AbgITSJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Sep 2020 14:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726333AbgITSJ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Sep 2020 14:09:56 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C766AC061755
        for <devicetree@vger.kernel.org>; Sun, 20 Sep 2020 11:09:55 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id t10so10465572wrv.1
        for <devicetree@vger.kernel.org>; Sun, 20 Sep 2020 11:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eWLNSIgbcx08j8Jnp6K7XcChlcRyHaGlF+YupaR6pks=;
        b=rP32QMdkJu96V7EwnmvD5+r/cuSjk16Hx2SXMn7ELQxeo/2I9cw3zBbSe+uWAk0+AI
         Dhw0nXbeMriQFuO6LcW3vU+T+KPDX4M9Fvi9ZyLSDyv92JHe4sfeFt4O3sbdZ0OBs8Xm
         6C/e3gVo/yD+HjhJu9OADafQhD9Ub177k3+vc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eWLNSIgbcx08j8Jnp6K7XcChlcRyHaGlF+YupaR6pks=;
        b=I5dgtDGELiBBgIcXfnN+kCEV/C5z0eSeD/PcoMY/11ikRLvVCJ/+0dmPEm0+OKaz/g
         pYQIXLQtaM9wfVKaDyFk9YhVlt+hsWiQkcrilz4d6JLCzXkCDgjkUPl0UAxNjfz20mmH
         VZM6bQ3HrwncYh+JXR/LLMzuhg6I3ZaZQBmZUa/Qv5pZWtmTelLLf52vAiC4U2Q4iprR
         X09wgOyb2chMD/mweQMUJlZPvAtTRDS1EB//Le+MXCSJNLjfvTU5x/ySew3UTeHmcnZ2
         fYi4+6lOoeDzo1zXXKVzAbnBQ+SXREPLWg25uSksi2Ucpp341dXCaYP2lU4yW3++VdOh
         VBCA==
X-Gm-Message-State: AOAM531iMiemBVExpBOK6YIUi4WhPRgV98p7R3MgNGXsOeu5mHwXoyag
        yT0GDgnkFHCyscHvoakIjJiGtw==
X-Google-Smtp-Source: ABdhPJxW7tYWFoaDM9xx7fQwBb/TJ933hlG7T8WqStYv4fD6R/wbIkdG8V6LzcI+dhe4bk31oM/OVg==
X-Received: by 2002:a5d:680b:: with SMTP id w11mr51651104wru.73.1600625394539;
        Sun, 20 Sep 2020 11:09:54 -0700 (PDT)
Received: from ar2.home.b5net.uk ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id h186sm15823702wmf.24.2020.09.20.11.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2020 11:09:53 -0700 (PDT)
From:   Paul Barker <pbarker@konsulko.com>
To:     Kamil Debski <kamil@wypas.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Paul Barker <pbarker@konsulko.com>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 0/1] Document multiple fan tach support in pwm-fan driver
Date:   Sun, 20 Sep 2020 19:09:39 +0100
Message-Id: <20200920180943.352526-1-pbarker@konsulko.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch updates the device tree bindings to match the changes I'm
about to send for the pwm-fan driver. Those changes will extend the
pwm-fan driver to support multiple fan tachometer inputs.

These changes can also be pulled from:

  https://gitlab.com/pbarker.dev/staging/linux.git
  tag: for-dt-next/pwm-fan_2020-09-20

Paul Barker (1):
  dt-bindings: hwmon: pwm-fan: Support multiple fan tachometer inputs

 .../devicetree/bindings/hwmon/pwm-fan.txt     | 28 +++++++++++++------
 1 file changed, 19 insertions(+), 9 deletions(-)


base-commit: 73f76a41c4ed7def5dc2ec7c33c7e9f94e601a20
-- 
2.28.0

