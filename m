Return-Path: <devicetree+bounces-897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7E27A3DC1
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 23:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4762281442
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 21:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A8C747D;
	Sun, 17 Sep 2023 21:11:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5A253AB
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 21:11:53 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DC2B12A;
	Sun, 17 Sep 2023 14:11:52 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b962c226ceso63381861fa.3;
        Sun, 17 Sep 2023 14:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694985110; x=1695589910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XbEVMpv7/YnbMGIp0/EmGv+3NIx0ZzAIlj2g9uMKIzw=;
        b=XNZ8gJHYbdi33zKhS2AjOYNEZJQrUqo2Nyv7Q2uduMa95ENAfwX+EB8ZWFNgmFxqEg
         8FE6py2p3Jrx57YPRqA1VqEROYN5BnFhDuAFOUv3vA20btVcnQnyFDWoa/n+PwjPPKqq
         m7nVgyVyNqZalF3qWuM8fBchfH8yov/LWbgwhnpBUA1250G3cd+Au1b52CyqDTr2SShZ
         cSGztab0vtyxY9MH9x/yjttIPej0us9lV56jc02Iv4/oeDBkB61CPAloiZJws+xAKhfK
         NcOGOLK5eAc1wOomnnppY6Tl78nhux84/7MvlVkhGUZmUdIzKUx0086x2eDgWabeAYMQ
         BNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694985110; x=1695589910;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XbEVMpv7/YnbMGIp0/EmGv+3NIx0ZzAIlj2g9uMKIzw=;
        b=maqbjd9trfmk4U+nwt41+StV9onj9VGVfuIs59CraSg4gWOSVOnmmYf9sdyc1EED/k
         tHFj7WnGCfRPNMJ29Sn3VYkMiaNUpLsj5oeBK1WoF3LvkjwtBKnSLUlf4d4HGpWUeMd6
         aqhQUQYQ2I/gWpje1Sg+8lSqBFdCvdSqbybM6YsV94KyeQZRtFyKjWlh28IYtis492Xe
         mcJ3dgl2AumFKZnPy2urA3+dLVhCnJKw/nKbLyGZos3qhZq58SOrjmI8ipR/FwHx6wFK
         4zWa7cEnpgFZUxNTYLDaspX2GWPAj3cDYRx5RSylGXVBytragIW+BBjLCBeKnCSBEFqM
         TQdQ==
X-Gm-Message-State: AOJu0YxtNiiIvklOBZU+VoLAye96wUCc2+WF5x8jUQ0BneUgZW7s9xFJ
	MGVGn07iid2G1s0LKmeYlR0=
X-Google-Smtp-Source: AGHT+IEf8R6jwvBheysbxOAQCkkhTFsqlPHuR6u5gZrsLlpxQSzA950B3ow020R3Z5PZSBF571ZSgA==
X-Received: by 2002:a2e:be28:0:b0:2c0:cd8:2bdc with SMTP id z40-20020a2ebe28000000b002c00cd82bdcmr1002933ljq.24.1694985110305;
        Sun, 17 Sep 2023 14:11:50 -0700 (PDT)
Received: from fr.lan ([46.31.31.48])
        by smtp.googlemail.com with ESMTPSA id p15-20020a2e740f000000b002bce3123639sm1766309ljc.98.2023.09.17.14.11.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 14:11:49 -0700 (PDT)
From: Ivan Mikhaylov <fr0st61te@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Ivan Mikhaylov <fr0st61te@gmail.com>
Subject: [PATCH 0/2] Add maxim max34408/34409 ADC driver and dts
Date: Mon, 18 Sep 2023 00:11:41 +0300
Message-ID: <20230917211143.7094-1-fr0st61te@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add Maxim max34408/34409 ADC driver and dts for it. Until now it
supports only current monitioring function without overcurrent
threshold/delay, shutdown delay configuration, alert interrupt.

Ivan Mikhaylov (2):
  dt-bindings: adc: provide max34408/9 device tree binding document
  iio: adc: Add driver support for MAX34408/9

 .../bindings/iio/adc/maxim,max34408.yaml      |  63 ++++
 drivers/iio/adc/Kconfig                       |  11 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/max34408.c                    | 334 ++++++++++++++++++
 4 files changed, 409 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
 create mode 100644 drivers/iio/adc/max34408.c

-- 
2.42.0


