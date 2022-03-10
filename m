Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF93C4D4847
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 14:43:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238116AbiCJNoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 08:44:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235855AbiCJNoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 08:44:21 -0500
Received: from mxd2.seznam.cz (mxd2.seznam.cz [IPv6:2a02:598:2::210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F0314D73F
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 05:43:17 -0800 (PST)
Received: from email.seznam.cz
        by email-smtpc10b.ng.seznam.cz (email-smtpc10b.ng.seznam.cz [10.23.14.45])
        id 3cadcbdb67a39fb23d040785;
        Thu, 10 Mar 2022 14:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
        t=1646919767; bh=bURihk1BJ9DBqC4GxcjF9QaBinkfaCKVea25LTFyWG4=;
        h=Received:From:To:Cc:Subject:Date:Message-Id:X-Mailer:MIME-Version:
         Content-Transfer-Encoding:X-szn-frgn:X-szn-frgc;
        b=dqVzUyTigiC5/xJ1v/LEMdNXbNmg4Nl/n1+Ucp5+h8QubwVHl3sPHh1CEFVf5m2BJ
         wpM4jUATxHQyTrVeSnKbMxNzsyHkozGDSjiIYJagdIDF7o6zReZdSheSaPDCFO8Prk
         sUk38pAst+cYd5BLEQyPi2eZcmEfMD8sXSuKL0TQ=
Received: from localhost.localdomain (ip-111-27.static.ccinternet.cz [147.161.27.111])
        by email-relay27.ng.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
        Thu, 10 Mar 2022 14:42:45 +0100 (CET)  
From:   michael.srba@seznam.cz
To:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jean-Baptiste Maneyrol <jmaneyrol@invensense.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Michael Srba <Michael.Srba@seznam.cz>
Subject: [PATCH 0/2] iio: imu: inv_mpu6050: Add support for ICM-20608-D
Date:   Thu, 10 Mar 2022 14:39:36 +0100
Message-Id: <20220310133938.2495-1-michael.srba@seznam.cz>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-szn-frgn: <fb960f2c-0da2-49df-9b84-d5f1f54ebf8a>
X-szn-frgc: <0>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Srba <Michael.Srba@seznam.cz>

This series copies the invensense icm20608 support in the inv_mpu6050
driver for icm20608d, which is for all intents and purposes identical,
except for the inclusion of a DMP (Digital Motion Processor), which
is deemed significant enough to change the WHOAMI value, thereby making
the driver fail if the invensense,icm20608 compatible is specified.

Since the driver doesn't currently acknowledge that there is such thing
as a DMP core, all that is needed is to copy the icm20608 support and
change the WHOAMI value.

Michael Srba (2):
  dt-bindings: iio: imu: mpu6050: Document invensense,icm20608d
  iio: imu: inv_mpu6050: Add support for ICM-20608-D

 .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml  | 1 +
 drivers/iio/imu/inv_mpu6050/Kconfig                      | 4 ++--
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c               | 9 +++++++++
 drivers/iio/imu/inv_mpu6050/inv_mpu_i2c.c                | 6 ++++++
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h                | 2 ++
 drivers/iio/imu/inv_mpu6050/inv_mpu_spi.c                | 5 +++++
 6 files changed, 25 insertions(+), 2 deletions(-)

-- 
2.34.1

