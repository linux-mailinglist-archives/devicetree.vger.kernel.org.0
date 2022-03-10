Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E411A4D4849
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 14:43:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235855AbiCJNoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 08:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240914AbiCJNoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 08:44:23 -0500
Received: from mxd2.seznam.cz (mxd2.seznam.cz [IPv6:2a02:598:2::210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 475BA14E947
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 05:43:20 -0800 (PST)
Received: from email.seznam.cz
        by email-smtpc21b.ng.seznam.cz (email-smtpc21b.ng.seznam.cz [10.23.18.27])
        id 53c50f1308cb5b7a526cc34d;
        Thu, 10 Mar 2022 14:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
        t=1646919767; bh=H16U88U9qwOYJ1qObY3eVF+PbXCsVAooVRAhpnNx9V4=;
        h=Received:From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:
         References:MIME-Version:Content-Transfer-Encoding:X-szn-frgn:
         X-szn-frgc;
        b=UfYWrNiWYkwLLtY1jlz42Cc4fzvvbVYFmHu7O7LConoBglTaH85ojMTTv6HptcucX
         A50FIq6d+OHBvCS8fvNhCLM1KS1JYXGnRI4XodsEjxWrnio5Xepvkdh4//uhjSyaEv
         kwQtA3D2JYQUC+LYb5btPzJjqH95e3KD8VOMTaA8=
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
Subject: [PATCH 1/2] dt-bindings: iio: imu: mpu6050: Document invensense,icm20608d
Date:   Thu, 10 Mar 2022 14:39:37 +0100
Message-Id: <20220310133938.2495-2-michael.srba@seznam.cz>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310133938.2495-1-michael.srba@seznam.cz>
References: <20220310133938.2495-1-michael.srba@seznam.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-szn-frgn: <fa777a89-00a3-440c-8004-02a5c5072678>
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

ICM-20608-D differs from the other ICM-20608 variants by having
a DMP (Digital Motion Processor) core tacked on.
Despite having a different WHOAMI register, this variant is
completely interchangeable with the other ICM-20608 variants
by simply pretending the DMP core doesn't exist.

Signed-off-by: Michael Srba <Michael.Srba@seznam.cz>
---
 .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
index d69595a524c1..6784cc140323 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - invensense,iam20680
       - invensense,icm20608
+      - invensense,icm20608d
       - invensense,icm20609
       - invensense,icm20689
       - invensense,icm20602
-- 
2.34.1

