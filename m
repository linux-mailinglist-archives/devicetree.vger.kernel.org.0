Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7C7F5F850B
	for <lists+devicetree@lfdr.de>; Sat,  8 Oct 2022 13:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiJHLkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Oct 2022 07:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbiJHLj6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Oct 2022 07:39:58 -0400
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7618EE09
        for <devicetree@vger.kernel.org>; Sat,  8 Oct 2022 04:39:52 -0700 (PDT)
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.53])
        by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Ml35348DLzlXbq;
        Sat,  8 Oct 2022 19:35:19 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 8 Oct 2022 19:39:49 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Sat, 8 Oct
 2022 19:39:48 +0800
From:   Yang Yingliang <yangyingliang@huawei.com>
To:     <devicetree@vger.kernel.org>
CC:     <robh+dt@kernel.org>, <frowand.list@gmail.com>,
        <yangyingliang@huawei.com>
Subject: [PATCH -next v2 0/2] of: introduce of_address_count() helper
Date:   Sat, 8 Oct 2022 19:56:15 +0800
Message-ID: <20221008115617.3583890-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce of_address_count() helper to count the IO resources, so
some drivers can use it instead of open-coding.

E.g. irq-orion and tegra194-cbb.

v1 -> v2:
  patch #1, make of_address_count() inline in of_address.h

Yang Yingliang (2):
  of/address: introduce of_address_count() helper
  of/platform: use of_address_count() helper

 drivers/of/platform.c      |  5 ++---
 include/linux/of_address.h | 11 +++++++++++
 2 files changed, 13 insertions(+), 3 deletions(-)

-- 
2.25.1

