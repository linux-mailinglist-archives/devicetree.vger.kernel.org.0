Return-Path: <devicetree+bounces-980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C45F7A43CF
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12CDF2818BE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47EA33EA;
	Mon, 18 Sep 2023 08:03:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A5D5382
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:03:42 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF88010E;
	Mon, 18 Sep 2023 01:03:20 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1bf1935f6c2so29574505ad.1;
        Mon, 18 Sep 2023 01:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695024200; x=1695629000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1h0mfMJN8y2Fpx6TXWBnY89WoQ3bNceAgBMQh6Df+ag=;
        b=BKGppC06v2V4qMLCVRSGzSDW5CFPqHW6OOBawFOzMQZo4JRb5yfSUUZm9uHDK3xZHb
         cdM7+6p+h4CG9ODZlU/1ucBsy9VMQeVRYNcXEsmqW1SkHsUnGBHaa3r1ON68U2elT3gd
         /GD9wHYjHnrYiPOJ3Teh+eOATEM/AJD/RbPSNGUi33jRJkBLOA4iXxtulrL1UtZXjGOv
         uJ9wfwpDT/TWh3Q/x49ZuxFBmk5BRKyPJ11na1jCNx5LSkh6RhPS+BbldGw8JmT88POe
         +Sh6nBITR7yvo9WUlR0+meFaYa/2WJjk6yN47iVUg7f6rzdguyh9ZGNpxRDNWcL160bk
         iGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695024200; x=1695629000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1h0mfMJN8y2Fpx6TXWBnY89WoQ3bNceAgBMQh6Df+ag=;
        b=q0opHk8+efDLhRTqtC92pD/z/KcSbz9+9KA+aFC4N9h7hw+uRIAAvOHTrihrRDFODI
         cp9N2KR9i+r/zavwmu46CzMRRK6vlt64D1eHpLIXQ2HEN6GRj2oqINwYqd8WAyHMqQUH
         Gc2/Hf7QcLFNKjztmLkAs6wZYuT4z2lkjSVQUAhiOFuCKDGjeR0ti4Eep+dirqHlbp7C
         YzfUhiuoYg9DvJME0+n/XIPi8QPJok70JclCb4KiASdfN6mm4PpUJ0nG1WEe5fp60+TF
         lsk5De0/PiZFO/SSDn5wpz3eHvPS1omj0l+EOakB6kmMkkNkSM1a95OWrrrJTa7ec93g
         /AfA==
X-Gm-Message-State: AOJu0YytOmKm8TNTHNlhtC7HAjVbVBlJC9TS9evHyPoc2Jh1MUtQlGWj
	zcPLUcRU+FZMPngGeOzwgZ2ox54ZPNrYMw==
X-Google-Smtp-Source: AGHT+IHKtvVlH0zspuk4ofmIKuRksz9pBIv0SaZIRH7QIKbwc54ZE0KsSgm4ClMv3uecaQoIdKjIeA==
X-Received: by 2002:a17:902:d2c1:b0:1bb:d586:d29a with SMTP id n1-20020a170902d2c100b001bbd586d29amr17077910plc.34.1695024199947;
        Mon, 18 Sep 2023 01:03:19 -0700 (PDT)
Received: from localhost.localdomain ([115.96.179.37])
        by smtp.gmail.com with ESMTPSA id w18-20020a1709029a9200b001bde877a7casm7716161plp.264.2023.09.18.01.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 01:03:19 -0700 (PDT)
From: Jagath Jog J <jagathjog1996@gmail.com>
To: jic23@kernel.org,
	andriy.shevchenko@linux.intel.com,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 0/2] iio: imu: Add driver and dt-bindings for BMI323
Date: Mon, 18 Sep 2023 13:33:12 +0530
Message-Id: <20230918080314.11959-1-jagathjog1996@gmail.com>
X-Mailer: git-send-email 2.20.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add dt-bindings and IIO driver for Bosch BMI323 a 6 axis IMU.

Jagath Jog J (2):
  dt-bindings: iio: imu: Add DT binding doc for BMI323
  iio: imu: Add driver for BMI323 IMU

 .../bindings/iio/imu/bosch,bmi323.yaml        |   81 +
 MAINTAINERS                                   |    7 +
 drivers/iio/imu/Kconfig                       |    1 +
 drivers/iio/imu/Makefile                      |    1 +
 drivers/iio/imu/bmi323/Kconfig                |   33 +
 drivers/iio/imu/bmi323/Makefile               |    7 +
 drivers/iio/imu/bmi323/bmi323.h               |  198 ++
 drivers/iio/imu/bmi323/bmi323_core.c          | 2260 +++++++++++++++++
 drivers/iio/imu/bmi323/bmi323_i2c.c           |  115 +
 drivers/iio/imu/bmi323/bmi323_spi.c           |  106 +
 10 files changed, 2809 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
 create mode 100644 drivers/iio/imu/bmi323/Kconfig
 create mode 100644 drivers/iio/imu/bmi323/Makefile
 create mode 100644 drivers/iio/imu/bmi323/bmi323.h
 create mode 100644 drivers/iio/imu/bmi323/bmi323_core.c
 create mode 100644 drivers/iio/imu/bmi323/bmi323_i2c.c
 create mode 100644 drivers/iio/imu/bmi323/bmi323_spi.c

-- 
2.20.1


