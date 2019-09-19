Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B0781B7179
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 04:18:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388264AbfISCSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 22:18:25 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:34729 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388251AbfISCSZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 22:18:25 -0400
Received: by mail-qt1-f196.google.com with SMTP id j1so2355190qth.1
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 19:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=eMoL+WWX1O3Mr1Rt4D8nfxQ68OPxFI2LpksFdwrwiPI=;
        b=MdALuVzFTvSx2saviYRgBg5S9c2sbaPoLc8vqx13RNuKSCpSSMtjL+s8zbn+SmBzjJ
         fni31MmFQbdVSlo983Ns41faBRzjgX9RGZrS5d5/023Vq/zxIjZfTBiCgm1i3pHNVA3b
         Y5kTHkjDXC4nRqC26TNaBT7flijBXYCaiN1+C2nUd0YDwMHhtZ2I/n9i/Xd4nByA7LR7
         8viYXIDA6AMurqdW9l26pVxmG7F9Q8rhGsvJiCfk+sJytVX+cXB6NNqXpRPnhxWFG+lf
         aYCaiklkmcwZAyD0Jzl9Eh+rmWVC0dYTfFN72OaPevO62Caa6F+1/FEL5fqNvWVj8ZRt
         maAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eMoL+WWX1O3Mr1Rt4D8nfxQ68OPxFI2LpksFdwrwiPI=;
        b=R4TbVzCtaCUvsSKyFcXwghjBKh8GFRd9DeGilsNgxqmvVsmo2JDcJnEG6kv1rBHgqS
         WBYO4rCmt/+2Gd98y1a7AtCFWRu01xgNPkWwb5aK45NRs16OWkvg9zRv4cdG9mAPM6em
         yjsbH0yg0heBDmw0lFDkVw6IlTzfhKtnZlsBFQT8uOjnrp0xfNjkmsnpt0IxpCt0Syrs
         iA6hW01xsFHjwO0tmkv0mu1yBS2pr9Dbytwzvmbllwt+Qv3OeLEFRduUbV2VnamYtMzw
         n2b+mGbrJbE+JOs//Bn5skmxUPqlYpTamrFrv5jOhHXHjqOBdgu+y/jRqBfQnmJDuNxi
         dcyA==
X-Gm-Message-State: APjAAAVJqN5vA5hQFtV/bNvG/ROZO6UU3oLQXRs+QmnjslPSEzPvvWUx
        IXV7GsUj69tDX3GYw4nFfyv5kuPk+LUghQ==
X-Google-Smtp-Source: APXvYqwJFUoPzG/PtZYrmV1PH6BUjNqVT10yYwHct/Nr7msy09vUchGl4OLWWgbHUSaCaZ3cdWRi5A==
X-Received: by 2002:ad4:528b:: with SMTP id v11mr6051296qvr.200.1568859504693;
        Wed, 18 Sep 2019 19:18:24 -0700 (PDT)
Received: from Thara-Work-Ubuntu.fios-router.home (pool-71-255-246-27.washdc.fios.verizon.net. [71.255.246.27])
        by smtp.googlemail.com with ESMTPSA id o52sm5261275qtf.56.2019.09.18.19.18.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Sep 2019 19:18:23 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org, vincent.guittot@linaro.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     amit.kucheria@verdurent.com, mark.rutland@arm.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] thermal: Introduce support for monitoring falling temperatures.
Date:   Wed, 18 Sep 2019 22:18:19 -0400
Message-Id: <1568859503-19725-1-git-send-email-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.1.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thermal framework today supports monitoring for rising temperatures and
subsequently initiating cooling action in case of a trip point being 
crossed. There are scenarios where a SoC needs some warming action to be
activated if the temperature falls below a cetain allowable limit.
Since warming action can be considered mirror opposite of cooling action,
most of the thermal framework can be re-used to achieve this.

To enable thermal framework to monitor falling temperature, a new parameter
is added to the thermal trip point binding in the device tree to indicate
the direction(rising/falling) of temperature monitoring. Thermal DT
driver is extended to capture this information from the device tree 
entries and to reflect it in the thermal framework as a new enum
variable in the thermal trip point structure.
As an initial attempt, step-wise governor is extended to support
bi-directional monitoring of temprature if a trip point is hit, depending
on the newly introduced enum variable. Finally thermal sysfs entries are
extended to indicate the trip point monitor direction.

Patch series introducing various resources that are used as warming devices
on Qualcomm sdm845:
https://lkml.org/lkml/2019/7/29/749 (already merged)

https://lkml.org/lkml/2019/9/10/727 (under review)


Thara Gopinath (4):
  dt-bindings: thermal: Introduce monitor-falling binding to thermal
    trip point description
  thermal: Thermal core and sysfs changes needed to support
    bi-directional monitoring of trip points.
  thermal: of-thermal: Extend thermal dt driver to support
    bi-directional monitoring of a thermal trip point.
  thermal: step_wise: Extend thermal step-wise governor to monitor
    falling temperature.

 .../devicetree/bindings/thermal/thermal.txt        |  8 +++
 drivers/thermal/of-thermal.c                       | 22 ++++++++
 drivers/thermal/step_wise.c                        | 59 +++++++++++++++------
 drivers/thermal/thermal_sysfs.c                    | 60 ++++++++++++++++++++--
 include/linux/thermal.h                            | 10 ++++
 include/uapi/linux/thermal.h                       |  2 +-
 6 files changed, 141 insertions(+), 20 deletions(-)

-- 
2.1.4

