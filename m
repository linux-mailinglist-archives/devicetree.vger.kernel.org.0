Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECE9E72E390
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 15:01:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242374AbjFMNBJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 09:01:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242201AbjFMNBH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 09:01:07 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C5CAA6
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 06:01:03 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so6678575e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 06:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686661261; x=1689253261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aS6Gi7g7eDCDNQDvlHC7Us6sqghWhijHfehYSOZqtEM=;
        b=LisPTImd8VrrXfJGPqsS8XnzDrSA6+GXkT/WswM3qxx44bs7+F2raXKdHTDa6pYAc3
         1oLcDAAUrQ0qA7e7p4mJbuC2fl2eiNutGi0osmxNQwXp5kgO7wIsy5T7DmpwfTZfWomE
         C6rAwYmOSqJ2f0FAVrVrzeDq0qoth+0Q/ViRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686661261; x=1689253261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aS6Gi7g7eDCDNQDvlHC7Us6sqghWhijHfehYSOZqtEM=;
        b=T+ikXYQ62BEEPUOjQBDuWep1c07ZeZS51CQzEMj5x7q70xMN3z6wyUAp2OeuhKG4ht
         QLkhSAj7Ul/6CBEthcBUIiKxGwa5EoeCyUvuCFCSC3CVsnCGo+RxLbuT0SdWLdTnPQyz
         gEdq6/CXviYotM4RQmhTK17mCLyU3CsOpMJq7m5lB4sCPpREa6fl6IS5fyJrOxKxcdG0
         2FyKyjgvURimFe83PJZO9wgXjGmwkMt8gwjAB3R2QzvGcBqu9IB5bTMERl1YIVVIewFw
         HBQuzVQ//WDpeq1Yjhdtapukf8PPZzeOQsheIfoJft0Sn823uxrVI8PQngsXNwZUKjeG
         AUfQ==
X-Gm-Message-State: AC+VfDzdYhWPDYR8NpHMmsDrYj1vF6iQ26mRxVKvr8oqfiG/mLpp+D8e
        g6MUvqtlcnQs1hsD5sM0SUOhkg==
X-Google-Smtp-Source: ACHHUZ5D8hhEycvaYqYLCw5A9vJVXA3pfSM6VAKOzOBZL/76RnyB3jOrmCwHd9j72oN5pqEffCvi5w==
X-Received: by 2002:a19:791e:0:b0:4f6:29b3:8df3 with SMTP id u30-20020a19791e000000b004f629b38df3mr5823550lfc.20.1686661261174;
        Tue, 13 Jun 2023 06:01:01 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id u24-20020ac243d8000000b004f14ae5ded8sm1793786lfl.28.2023.06.13.06.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 06:01:00 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/8] rtc: isl12022: battery backup voltage and clock support
Date:   Tue, 13 Jun 2023 15:00:02 +0200
Message-Id: <20230613130011.305589-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
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

v2 changes:

Patch 2: add Alexandre as maintainer [Rob's bot].

Patch 4: On arm64, <linux/bitfield.h> apparently ends up being
included implicitly, but not so on arm [kernel test robot]. Use the
more common post-increment in for loops [Andy].

Patch 5: Drop RTC_VL_CLR, just do RTC_VL_READ [Alexandre].

Patch 6: Set the TSE bit to trigger a manual detection, but drop the
part reading the SR register and issuing a dev_warn() in case of low
battery [Alexandre].

Patch 7: (Hopefully) properly describe the "at most one of interrupts
and #clock-cells" [thanks Krzysztof].

Patch 8: Drop a useless dev_warn() in case clearing the FOx bits fails.


Rasmus Villemoes (8):
  rtc: isl12022: remove wrong warning for low battery level
  dt-bindings: rtc: Move isil,isl12022 from trivial-rtc.yaml into own
    schema file
  dt-bindings: rtc: isl12022: add bindings for battery alarm trip levels
  rtc: isl12022: add support for trip level DT bindings
  rtc: isl12022: implement RTC_VL_READ ioctl
  rtc: isl12022: trigger battery level detection during probe
  dt-bindings: rtc: isl12022: add #clock-cells property
  rtc: isl12022: implement support for the #clock-cells DT property

 .../bindings/rtc/intersil,isl12022.yaml       |  69 ++++++++++
 .../devicetree/bindings/rtc/trivial-rtc.yaml  |   2 -
 drivers/rtc/rtc-isl12022.c                    | 118 +++++++++++++++++-
 3 files changed, 181 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml

-- 
2.37.2

