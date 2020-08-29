Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2A13256911
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 18:33:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728403AbgH2Qdm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 12:33:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728310AbgH2Qdl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 12:33:41 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9FD3C061239
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 09:33:40 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id g29so1963629pgl.2
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 09:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mGoI0Ukde5f+T5RdhyoqC2Vyh2NxruRDSw/PCmJ5yyE=;
        b=Ytz4kozTp8JHB3Kr1KqCfEscAfIEhScIPQddPrKNmx3BJLEPqx6qHskUj7R340QrMj
         4iB//fZ+ipdcLk5SskpCsNXy1DQoIBw69MnclHtkZu0SWtlpQCkFJVmhfXBDPrUFjsrY
         LiXUo05Sy4ydXSgEkHxGnGgwxwkU0ITXXzkqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mGoI0Ukde5f+T5RdhyoqC2Vyh2NxruRDSw/PCmJ5yyE=;
        b=pzE2mBQCCs33Qh2wFwS9LDRxeAGD8160Htycfzh0JYL86kE5lOC6PAn1AMmSWQHasc
         aCtpELb829nzB8vu0T2sZUrYEM4pJF5TSvtcgeV7c4LtgsYtUqAyWGKCFsJd8PRNtZ5S
         TMvI3fvhjrSMJuJocO/o0/8VZQsYWzR1DOoAm32cUVPDdq8YW4FoWgJoCpqETXx4wODi
         pgQMKjROUkinuuft2fIR3xfchC/YGWIbKUqm3a29SHglAo6ntroKIc8LD1vaMOjF3DpR
         jeXFi0lVOyQQI4Yu2k+vxOfKvJtmzAnAAgUv0OXvTJPCcGooz5bhrdDzYJtkUHruLc62
         esJA==
X-Gm-Message-State: AOAM531h5vY+ELnFHnJAZsmr/lR+xaXAMxnRFdSao5iNn9zyqC6j5Qp7
        vgcfI5UQ+NSWJt6Iah9Uf+5qhA==
X-Google-Smtp-Source: ABdhPJxnRj9/9TzRPftUS0YznqkGB8zAJFCBjQNDnLh2OUsp9vVRDPJtX6C7whEEyjCG5VdhHXX6Tw==
X-Received: by 2002:a63:d14b:: with SMTP id c11mr420597pgj.64.1598718819609;
        Sat, 29 Aug 2020 09:33:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
        by smtp.gmail.com with ESMTPSA id o6sm2457934pju.25.2020.08.29.09.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 09:33:38 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Rob Herring <robh+dt@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add AM-1280800N3TZQW-T00H
Date:   Sat, 29 Aug 2020 22:03:27 +0530
Message-Id: <20200829163328.249211-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-bindings for 10.1" TFT LCD module from Ampire Co. Ltd.
as part of panel-simple.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index d6cca1479633..f629d04f7737 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -29,6 +29,8 @@ properties:
     # compatible must be listed in alphabetical order, ordered by compatible.
     # The description in the comment is mandatory for each compatible.
 
+        # Ampire AM-1280800N3TZQW-T00H 10.1" WQVGA TFT LCD panel
+      - ampire,am-1280800n3tzqw-t00h
         # Ampire AM-480272H3TMQW-T01H 4.3" WQVGA TFT LCD panel
       - ampire,am-480272h3tmqw-t01h
         # Ampire AM-800480R3TMQW-A1H 7.0" WVGA TFT LCD panel
-- 
2.25.1

