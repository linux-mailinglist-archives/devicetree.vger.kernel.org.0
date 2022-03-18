Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0C14DD8DE
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 12:24:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231423AbiCRLZx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 07:25:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiCRLZw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 07:25:52 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC9A71717AC
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 04:24:33 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id u3so10974024ljd.0
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 04:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:organization
         :content-transfer-encoding;
        bh=BwAq/9DWweSDz7SB90g0DfPp47ebSW4xPRgfwpo9T8k=;
        b=BrU9LGTccZ6LD6r9z/zETTx2rU6DeswYgvIWSMeNRRb8/hODhZUwlhSqRJNCA7Qb79
         uWMTby1wAYIEuZZoc4l1yZ7PRZTpfYnmottHnAYOZCNQ8hzoKO1YyKrjsnPMFQz7tlpc
         XyVJNCwHwO7oMFiTyUE6YZb33SmYdcH/+U6gmhyj4AxBIPul95oNjzOyFPYDFTwi4hfz
         gXlWBm6uXJ8CvkdaL01IM4LnrWHPE07HtL282BnqAHvuAlpwsRk0L4X5JpdesAVpoVMH
         e4oAUB3UBoN64DE3mhmbSsnRLadEkfqSmNTZuPhKISNh/rrIZ+UlGsKCNPFkIh8g4/d8
         8XAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :organization:content-transfer-encoding;
        bh=BwAq/9DWweSDz7SB90g0DfPp47ebSW4xPRgfwpo9T8k=;
        b=2t/dwa3GHb53cBFzB239yipjKXFwZla2MjjzDwPr4qDrZMTx92eHpQLk1fmeUDrIQh
         FD//vK6qxF7RajL4oMxBh31r7QX9VYxKHe3HZblesxwGbOAJqpPk9/jqT1nYD981NQRw
         Om/+279GhZEDOcyL2HtNR7a6Nh0m+OszBFzXt3p/OOJguYnjYnpfJK9f/HRVJpvdImt8
         1eZipeuOq0QV5wI2eMu2hpaP6C6qlhTqSBK1jHmMEM8WwPySCGILTTYyvJ/Gk1BL8b1b
         JcypWSoyoHhfoPmgg5SZf14if0dVCuSVECE2QIhYH3D/GnbQRo5Oj1WSfCtT8j5+ds6O
         JVqg==
X-Gm-Message-State: AOAM531ArCa08TfPbUIRgtALDA4cyZcJs1UPWNabvYrECuWtaEQm0hY7
        +sVAoCzdicvvpmWSjFlto5M=
X-Google-Smtp-Source: ABdhPJyCZyuyEEmOJBkTolLbo4pNbnbFI3AVQp/A/sdI/w7JMk/l9J43lfN7xohFpZOsCEMos92bXw==
X-Received: by 2002:a2e:a788:0:b0:248:69c:16ef with SMTP id c8-20020a2ea788000000b00248069c16efmr5961030ljf.374.1647602671864;
        Fri, 18 Mar 2022 04:24:31 -0700 (PDT)
Received: from gimli.lan (h-98-128-229-222.NA.cust.bahnhof.se. [98.128.229.222])
        by smtp.gmail.com with ESMTPSA id i9-20020a2e6d09000000b00247ef729e93sm893418ljc.137.2022.03.18.04.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 04:24:30 -0700 (PDT)
From:   Joachim Wiberg <troglobit@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Joachim Wiberg <troglobit@gmail.com>
Subject: [PATCH 0/2] arm64: dts: Marvell CN9130-CRB fixes
Date:   Fri, 18 Mar 2022 12:24:16 +0100
Message-Id: <20220318112418.285312-1-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Addiva Elektronik
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

while testing out the CN9130-CRB in Buildroot we found a few minor
issues with the (otherwise great) device tree.

  - The 2.5 Gbps port did not work
  - The USB port did not register plugged in devices

The following patches address these issues.

Best regards
 /Joachim

Joachim Wiberg (2):
  arm64: dts: enable 2.5 Gbps port on CN9130-CRB
  arm64: dts: power on CN9130-CRB USB port on plug-in

 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.25.1

