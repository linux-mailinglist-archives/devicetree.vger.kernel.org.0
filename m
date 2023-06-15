Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62FD37315DF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 12:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240508AbjFOK6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 06:58:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343683AbjFOK6d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 06:58:33 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 822B21FE4
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f649db9b25so10177874e87.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686826710; x=1689418710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JeevWcsSXn1CFxZQsMjVguw/C1vstGsj3+NDcrpF2Zk=;
        b=U7twVLe8SYHDAxvYUBWTfZuehTCtUiQG/9WHCrwVRdOwslE5ZuCSc7VA9iMSRP1eHK
         dgJUbAFyr1ylgdobeRTMvFgPDYCNqCqgRLIfr7/gKm1GZLSm71v+C69hTpLVNGOO0Uil
         rLv+B3hc9H6aqTkDT5AZIUIhVjmLcXIMJ9V3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686826710; x=1689418710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JeevWcsSXn1CFxZQsMjVguw/C1vstGsj3+NDcrpF2Zk=;
        b=MpXDmOv6lefQHggiPWp8CMP2nsZww1nTlNICCWh6KrSmdEqr2zqD9HTscEXk4l5+8S
         8hqkOg5LqFuhVjKQWJmjueiUS9VeDEMuz5lA3lZluKrT3p+VB2J1YhrT+TCYCqbhVjZT
         002aQtxg7EDXLfYriVTk0FLWdjBoXNbU5CZlEKGi77sP9xpwLHmiLSN7w0nRzZg4pYcE
         S6hhibE08lUOPbXWPR1aaKPIwjobCQMoyivZJz+8uV0aSgTUQ/8XUCzpxxAwRA3mV670
         oxIlltntjL/aU9paDonpIpvCLI9UK6xNPaXOhvMbWJYAqKbH0lGLnqvUegm7MUeb+DBx
         h9lw==
X-Gm-Message-State: AC+VfDzOPjrHQLctWtD0264Zk4CgZ8FyRV8emPE4z6Y5PRssH3ADjr/S
        NynDIdLio04S8o4cdKUaObFiLg==
X-Google-Smtp-Source: ACHHUZ6ZMekOIhXEQ866tI+/Ika9Omf5yyqZaBV7+xFTsK4w01rUJM6BfBs0U4PA0L0FEqV7P+jAGw==
X-Received: by 2002:a19:f20e:0:b0:4f6:54f1:ea36 with SMTP id q14-20020a19f20e000000b004f654f1ea36mr9743158lfh.43.1686826710616;
        Thu, 15 Jun 2023 03:58:30 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id h7-20020ac25967000000b004f13f4ec267sm165364lfp.186.2023.06.15.03.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 03:58:30 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/8] rtc: isl12022: battery backup voltage and clock support
Date:   Thu, 15 Jun 2023 12:58:18 +0200
Message-Id: <20230615105826.411953-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current handling of the low-battery bits in the status register is
wrong. The first six patches fix that and implement proper support for
RTC_VL_READ.

The last two patches allow describing the isl12022 as a clock
provider, for now just as a fixed 32kHz clock. They are also
tangentially related to the backup battery, in that when the isl12022
is not used as a clock source, one can save some power consumption in
battery mode by setting the FOx bits to 0.

v3 changes:

Patch 2: move the allOf block further down, add R-b [Krzysztof]

Patch 3: change to a single property with two values [Krzysztof]

Patch 4: adjust implementation accordingly

Patch 5: move initialization of 'user' variable inside switch case,
use 'if (ret)' instead of 'if (ret < 0)' for consistency within the
driver [Andy]

Patch 7: semantically identical to v2, just context changes due to
changes in 2/8 and 3/8

Patch 8: only do the clock registration when CONFIG_COMMON_CLK [kernel
test robot]

v2: https://lore.kernel.org/lkml/20230613130011.305589-1-linux@rasmusvillemoes.dk/
v1: https://lore.kernel.org/lkml/20230612113059.247275-1-linux@rasmusvillemoes.dk/

Rasmus Villemoes (8):
  rtc: isl12022: remove wrong warning for low battery level
  dt-bindings: rtc: Move isil,isl12022 from trivial-rtc.yaml into own
    schema file
  dt-bindings: rtc: isl12022: add bindings for battery alarm trip levels
  rtc: isl12022: add support for trip level DT binding
  rtc: isl12022: implement RTC_VL_READ ioctl
  rtc: isl12022: trigger battery level detection during probe
  dt-bindings: rtc: isl12022: add #clock-cells property
  rtc: isl12022: implement support for the #clock-cells DT property

 .../bindings/rtc/intersil,isl12022.yaml       |  64 +++++++++
 .../devicetree/bindings/rtc/trivial-rtc.yaml  |   2 -
 drivers/rtc/rtc-isl12022.c                    | 126 +++++++++++++++++-
 3 files changed, 184 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml

-- 
2.37.2

