Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33D2B255E52
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 18:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbgH1QAK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 12:00:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726033AbgH1P77 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 11:59:59 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E83C061232
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 08:59:59 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id nv17so699198pjb.3
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 08:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rS6Br+S3B2XheGYnh0vsVMxPhFR00mObbIJ1yAl3WW8=;
        b=pxyn0T1rQJWMeU4dPTHRaoMstKXjPxs5eFykfQCEmBJG0HX4+frfFAJZLWBTkS9C+7
         Wsou5DP4u79qFPrcRSG+A9+VopSIJrhoP8tWdblawb2YXaRrtXmLq/XPEDEvBV6RIwDl
         a9rxGq5QOon/H8Wn3xz7W43DXn29/yGUeLWNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rS6Br+S3B2XheGYnh0vsVMxPhFR00mObbIJ1yAl3WW8=;
        b=ZNVzQNFQjHmJsKWAIzNAnuG33EOifBaxcxb+EELAkt38hLO8MBwQbMClD61qpWc9ni
         qmTiNzvbb+O8EupCXt3YIJAPmmHkqqbes0+ivj2Lsu+tQG3aSbtex+kemx5P+WNJKgkF
         qTnnS6IbTtX4UBIwyGShkHBqMtgYhSI5TKsakM8IgTDUkRnup8mS8ecTvJQtvmT1yJpv
         1GWgvad8eNqSSOaa1Ko61tj7uYoZ5AB0/wtY9wN+TWYxXcaVDigWnB9CPuYPRIzu5S5J
         jBUqcezPE7yFfshCPk2PQeMUtiGD7crfh5YhSifT/2KK8mYSmMjigUMY3nvks9jpBZAo
         woRw==
X-Gm-Message-State: AOAM533i13TFjqkJgh6XKWTaGF54mO5O5ncBn4I3RjwUczeFI/cQJQg8
        ibtgGXZB4CKJNYWgKzzLNcaxAw==
X-Google-Smtp-Source: ABdhPJy/5TUe5e235Wok9fR13sAFnytXVToEAA8QjrE88j1Aha6sZZLEHW5tP98Pju1tC68/jWdUEg==
X-Received: by 2002:a17:90a:2bce:: with SMTP id n14mr1921558pje.20.1598630398312;
        Fri, 28 Aug 2020 08:59:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:8ce8:955b:ae1b:d6ef])
        by smtp.gmail.com with ESMTPSA id x13sm2195691pfr.69.2020.08.28.08.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2020 08:59:57 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Rob Herring <robh+dt@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/2] dt-bindings: display: simple: Add AM-1280800N3TZQW-T00H
Date:   Fri, 28 Aug 2020 21:29:37 +0530
Message-Id: <20200828155938.328982-1-jagan@amarulasolutions.com>
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

