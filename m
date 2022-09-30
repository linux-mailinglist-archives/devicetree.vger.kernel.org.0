Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC1AF5F06DE
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 10:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbiI3Iwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 04:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbiI3Iwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 04:52:44 -0400
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED37166F27
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 01:52:42 -0700 (PDT)
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.57])
        by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Mf3nf6HDwzpVYt;
        Fri, 30 Sep 2022 16:49:42 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 16:52:38 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Fri, 30 Sep
 2022 16:52:37 +0800
From:   Yang Yingliang <yangyingliang@huawei.com>
To:     <devicetree@vger.kernel.org>
CC:     <robh+dt@kernel.org>, <frowand.list@gmail.com>,
        <yangyingliang@huawei.com>
Subject: [PATCH -next 0/2] of: introduce of_address_count() helper
Date:   Fri, 30 Sep 2022 17:08:43 +0800
Message-ID: <20220930090845.503815-1-yangyingliang@huawei.com>
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

Yang Yingliang (2):
  of/address: introduce of_address_count() helper
  of/platform: use of_address_count() helper

 drivers/of/address.c       | 11 +++++++++++
 drivers/of/platform.c      |  5 ++---
 include/linux/of_address.h |  7 +++++++
 3 files changed, 20 insertions(+), 3 deletions(-)

-- 
2.25.1

