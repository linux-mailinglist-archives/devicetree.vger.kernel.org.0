Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EBEE5267B9
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 18:59:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382555AbiEMQ7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 12:59:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352805AbiEMQ7q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 12:59:46 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 339E9DF71
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 09:59:45 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id v11so8183761pff.6
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 09:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2AgZWiDnfccUKA3OwEQAKus4Qo+rKb2hQK1i7GLxmw8=;
        b=CVYmgNe+9a+uCaaCVsW9H7CyjyFhEwNUa7ihbudBQHfG162jKe8sMPtnieG2d1QtxE
         l9vlBM1YtcicmqU6GjKySVfe+mPRtn0SCwtJLo+toUJqvs7j/D7iCrg9eHIsDleczjUH
         6aUG1WgB8ISEBE1nwN56kqY7Xqa4CdD3gbgUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2AgZWiDnfccUKA3OwEQAKus4Qo+rKb2hQK1i7GLxmw8=;
        b=kOqKgLYUpcgQl7g0HtEUs4qz4QOdaLi+I5vLkHxL7y4Jtnezw9SJErNgaolmxqGsTA
         4FosKr7i4UbYP50jjL3yqiDlV+p3lLWfFFjwg4ml1c/OYIu2aV6kge0LbMvxUMEPySs4
         MH9BZXv2QqHLSXbbG4/UEqDVmWXDJNViqb7V5lWgJ3S7ISOfywz2wOwQ7e5MG5BibeYL
         neHlecJm2NCyrPjVeWv8jn2T/obDUvTvoJuKOTj8B9vZkyGllXNrZ3wuDfiVeAhkpGiU
         ufy8K7M95Z0OR2VwHeTdNta+V7hFkvtvumfI0tS4xSORaCfmOLjL++XXELvXcYl1HitN
         vBZQ==
X-Gm-Message-State: AOAM5318sJ5+s/gME9mSNC0bQJizJef8PStdiAv4Jg/Og0O77yBGLbl3
        CkUuG1yj1BSSpS7uCC+R01Bxrg==
X-Google-Smtp-Source: ABdhPJzVWTA20vEKV9V4QJx2ATY9c+mQdG4XnARJDOapEYmFZYnd1atbSyOTCeenauGwT063N08BzQ==
X-Received: by 2002:a65:6e8b:0:b0:3ab:a3fb:e95a with SMTP id bm11-20020a656e8b000000b003aba3fbe95amr4713189pgb.433.1652461184707;
        Fri, 13 May 2022 09:59:44 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f334:6f80:82ed:5653])
        by smtp.gmail.com with ESMTPSA id m1-20020a17090a7f8100b001d97f7fca06sm1824548pjl.24.2022.05.13.09.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 09:59:44 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: Document how Chromebooks with depthcharge boot
Date:   Fri, 13 May 2022 09:59:17 -0700
Message-Id: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
X-Mailer: git-send-email 2.36.0.550.gb090851708-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This documents how many Chromebooks pick the device tree that will be
passed to the OS and can help understand the revisions / skus listed
as the top-level "compatible" in many Chromebooks.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- ("Document how Chromebooks with depthcharge boot") new for v2.

 .../devicetree/chromebook-boot-flow.rst       | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/chromebook-boot-flow.rst

diff --git a/Documentation/devicetree/chromebook-boot-flow.rst b/Documentation/devicetree/chromebook-boot-flow.rst
new file mode 100644
index 000000000000..84aeb0a17ee4
--- /dev/null
+++ b/Documentation/devicetree/chromebook-boot-flow.rst
@@ -0,0 +1,63 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+======================================
+Chromebook Boot Flow
+======================================
+
+Most recent Chromebooks that use device tree boot using the opensource
+depthcharge bootloader. Depthcharge expects the OS to be packaged as a "FIT
+Image" which contains an OS image as well as a collection of device trees. It
+is up to depthcharge to pick the right device tree from the FIT Image and
+provide it to the OS.
+
+The scheme that depthcharge uses to pick the device tree takes into account
+three variables:
+- Board name, specified at compile time.
+- Board revision number, read from GPIO strappings at boot time.
+- SKU number, read from GPIO strappings at boot time.
+
+For recent Chromebooks, depthcharge creates a match list that looks like this:
+- google,$(BOARD)-rev$(REV)-sku$(SKU)
+- google,$(BOARD)-rev$(REV)
+- google,$(BOARD)-sku$(SKU)
+- google,$(BOARD)
+
+Note that some older Chromebooks may use a slightly different list that may
+not include sku matching or may prioritize sku/rev differently.
+
+Note that for some boards there may be extra board-specific logic to inject
+extra compatibles into the list, but this is uncommon.
+
+Depthcharge will look through all device trees in the FIT image trying to
+find one that matches the most specific compatible. It will then look
+through all device trees in the FIT image trying to find the one that
+matches the _second most_ specific compatible, etc.
+
+When searching for a device tree, depthcharge doesn't care where the
+compatible falls within a given device tree. As an example, if we're on
+board "lazor", rev 4, sku 0 and we have two device trees:
+- "google,lazor-rev5-sku0", "google,lazor-rev4-sku0", "qcom,sc7180"
+- "google,lazor", "qcom,sc7180"
+
+Then depthcharge will pick the first device tree even though
+"google,lazor-rev4-sku0" was the second compatible listed in that device tree.
+This is because it is a more specific compatible than "google,lazor".
+
+It should be noted that depthcharge does not have any smarts to try to
+match board or SKU revisions that are "close by". That is to say that
+if depthcharge knows it's on "rev4" of a board but there is no "rev4"
+device tree that depthcharge _won't_ look for a "rev3" device tree.
+
+In general when any significant changes are made to a board the board
+revision number is increased even if none of those changes need to
+be reflected in the device tree. Thus it's fairly common to see device
+trees with multiple revisions.
+
+It should be noted that, taking into account the above system that the
+depthcharge has, the most flexibility is achieved if the device tree
+supporting the newest revision(s) of a board omits the "-rev{REV}"
+compatible strings. When this is done then if you get a new board
+revision and try to run old software on it then we'll at pick the most
+reasonable device tree. If it turns out that the new revision actually
+has no device-tree visible changes then we'll not only pick the most
+reasonable device tree, we'll pick the exact right one.
\ No newline at end of file
-- 
2.36.0.550.gb090851708-goog

