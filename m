Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DF5801497CD
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2020 21:35:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726690AbgAYUfL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jan 2020 15:35:11 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:35174 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726454AbgAYUfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jan 2020 15:35:10 -0500
Received: by mail-lj1-f195.google.com with SMTP id q8so2405117ljb.2
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2020 12:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=18PPmbY6hPiGovJ5z5goIi7VokDaAvZuAdkPLRQyUjI=;
        b=Czn3kAjRf2v/csMfGRAjKgqpM7hw9JzVjU5ktPmxuz/R9pDPKXAuFpOdryQYgYJow0
         8brrI3pc5+tQoCbz1tNq0OSB7k8xlp1ZP32saK6uxpF8NQv2NkfS88Iq/7tDNT2LExHg
         Q4GeAnOtTAMwglVH0cpIOzxHp8kq/8x/2+YcEwxRP88z7UDJhM07NNu0xauTDU4Hi4zc
         HOavhgdU9mBO1tp2HR/0E/rczQV85r4V6q+OyFZozCBqPyM7LhoSA9/Zf5gAVFu77WK+
         CuL/dD7lJnuSLySM+bSBvCbgWXUux1jduYDuBI89rPUt0GB0Nuf9y56QiAgfuqOmFM1G
         BnSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=18PPmbY6hPiGovJ5z5goIi7VokDaAvZuAdkPLRQyUjI=;
        b=E6v9YlsW3US0RM+qHR5E+8A526FVmERIciQ0ORfh5R7QjryLOAfkkgkfyZ+awpc5jY
         no0asdOEsiHVj0QIGRibwm/7dQT1izrXjeSe/mnsDHhFGSXt6+51Cmy5V7tlGEA2NxSx
         c+kFWVOK0ApWeh49T2H+DxEpQ2QPYDiOU18uYwTXieRXY1x5UKRaX2hdnoZt7t9U/nGc
         cYQ5hU7LgFQ8+ObVifu0O4ohMV5tVFXtYhj5911DqUzlTqKmbBN60knW4/89rm0/9fSE
         Ek9syfllQN/80g67skQZwopJqxS+LXMyS5vc9fY6UNsxtjllulw8Y7OO9rlvIMjEfwKG
         cBmg==
X-Gm-Message-State: APjAAAUJZVRghorvUhpZuPMphughV0i33F2hbKQVLCxDb+eO5BQXlug2
        LcoGMBmxFCekT6cGNo46Z3U=
X-Google-Smtp-Source: APXvYqwLhPKl9twree9pXIPVv83eRpZtn00E6hqeV5l31ik+OJQkcaEEBeZR7/Ae46t/+EAe0uZvyg==
X-Received: by 2002:a2e:804b:: with SMTP id p11mr935608ljg.235.1579984508529;
        Sat, 25 Jan 2020 12:35:08 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
        by smtp.gmail.com with ESMTPSA id u17sm5393937ljk.62.2020.01.25.12.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2020 12:35:07 -0800 (PST)
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
        Maxime Ripard <mripard@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 0/3] dt-bindings: convert timing + panel-dpi to DT schema
Date:   Sat, 25 Jan 2020 21:34:51 +0100
Message-Id: <20200125203454.7450-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This set of patches convert display-timing.txt to DT schema.
To do that add a panel-timing.yaml file that include all the
panel-timing properties and use this in panel-common and in display-timings.

panel-dpi was also converted so we have no .txt users left of panel-timing
in panel/

Everything passed dt_binding_check - and the trivial errors I tried in
the examples was all catched during validation.

This work was triggered by a patch-set from Oleksandr Suvorov aiming
at updating panel-lvds to support panel-dpi too.
This will make it simple to add additional properties to panel-dpi.

Thanks for the quick responses on v2 and likewise the quick
feedback on the request for the license change!

Highlights from v2 - see individual patches for details.
- Got acks for the license change
- Simplfied panel-timings bindings
- panel-dpi can now be used without a panel specific compatible
  So panel-dpi can be used as a generic binding for dumb panels


Feedback welcome!

	Sam

Sam Ravnborg (3):
      dt-bindings: display: add panel-timing.yaml
      dt-bindings: display: convert display-timings to DT schema
      dt-bindings: display: convert panel-dpi to DT schema

 .../bindings/display/panel/display-timing.txt      | 124 +----------
 .../bindings/display/panel/display-timings.yaml    |  68 ++++++
 .../bindings/display/panel/panel-common.yaml       |   7 +-
 .../bindings/display/panel/panel-dpi.txt           |  50 -----
 .../bindings/display/panel/panel-dpi.yaml          |  71 +++++++
 .../bindings/display/panel/panel-timing.yaml       | 227 +++++++++++++++++++++
 6 files changed, 370 insertions(+), 177 deletions(-)


