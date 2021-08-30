Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE48A3FAFE1
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 04:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235570AbhH3CkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 22:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236279AbhH3CkH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 22:40:07 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C87DEC06179A
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 19:39:14 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id q3so7673568plx.4
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 19:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VZWe9odMZgnt9mjtq2iv4uaqfnCxctrfiTl8at5lg+U=;
        b=H5JVPbTHC8SB8r/+TeRp4H245mDk6SyWLQnjgfEMHdAhlNV/mq4L5R5OVUT1A+px2E
         9k4RQmsdK8EjY8F/XWTekRCMfWyNMQkLrtF2uBaMaRH9b/4nR5u3vQ8chIh5pbV+gxvM
         cW1XDRcH3ABMFvihUp/VMVxbZr/M0RU85KKnFQyFOVwevLPn1O57O2ECc//J9MzbOJmU
         WthZaFTkf0SA7M/I9D5FzKm+pJIDPFEL+DZBJHj2YtfJ6jOHBAbXMNp6PPgJcfBMPIGD
         0CRLHlujjrFyWOICoDcacrvJD+h1qeFUNVv69/g8muXTHwq8LWUdPwpQDxBPLKqA7fCU
         Gm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VZWe9odMZgnt9mjtq2iv4uaqfnCxctrfiTl8at5lg+U=;
        b=jtPNMbdSCr9k4WeWZLWhZJydlVYPjPUn1ZhcmMY6K3hoLyl7EkPh54HqAazSz+Damh
         jecscnoBdHRgf05SOzr900P1jP3CifiimYuMs2Iz8XxVGyD6BlaGBGZ2wOk6KHHHSi1p
         DrS+Kh+NKig0G6T661iN/hjRBp1s2zlztqA3ZMrPU1/HFh0RBcPJVRBz1vs2HUylaLkX
         jabB1zbr/Hhk/bMmAmG2CBelKr2kA6MUOHAivDuu1Rz2vqKQqtBqk+w065lNEMgnKxD+
         DNg/8oHmjCEADCOG+u9JLhRnqT4STKK9/fGcJocxi+RY3D24Nkwm1N2BTX1jrj8TL3Xp
         ChMA==
X-Gm-Message-State: AOAM5327vALQ2HUpkooyw3mTx3pO4eXF5g31Q+/qDBq51PrK5u3p8toJ
        X5/Og0F3WL8lXnwXHBIcQz58WQ==
X-Google-Smtp-Source: ABdhPJyCt808VXD8pif69vuHIxZz9bz2CGJZPLiMhs3Yn7Mxjw9rlv0cHRIwrwSM44nC1ZLlM2qE3g==
X-Received: by 2002:a17:90a:598e:: with SMTP id l14mr36347757pji.28.1630291154320;
        Sun, 29 Aug 2021 19:39:14 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id g13sm906839pfi.176.2021.08.29.19.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 19:39:14 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>,
        Douglas Anderson <dianders@chromium.org>
Subject: [v4 4/4] dt-bindngs: display: panel: Add BOE and INX panel bindings
Date:   Mon, 30 Aug 2021 10:38:49 +0800
Message-Id: <20210830023849.258839-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210830023849.258839-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210830023849.258839-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for boe tv110c9m-ll3, inx hj110iz-01a panel.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index a7091ae0f791..45bd82931805 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -26,6 +26,10 @@ properties:
       - auo,b101uan08.3
         # BOE TV105WUM-NW0 10.5" WUXGA TFT LCD panel
       - boe,tv105wum-nw0
+        # BOE TV110C9M-LL3 10.95" WUXGA TFT LCD panel
+      - boe,tv110c9m-ll3
+        # INX HJ110IZ-01A 10.95" WUXGA TFT LCD panel
+      - inx,hj110iz-01a
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.25.1

