Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC8924CC24A
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 17:07:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234802AbiCCQIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 11:08:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234799AbiCCQIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 11:08:14 -0500
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFA5553B56
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 08:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1646323621;
        bh=D9W07+OUMPXR+k9aCYXbl5HFYe+LbU3RKRHJ4qCmUZs=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=AUl5B72MxoLUWFdMwnZ7l+X12NdvFwz2rYRZXJRrsnRTibYOr37GMhec0EKGe0hPV
         F0Vryvk81TDdnfaJjwOmOpjLg+jXZEbGHoruSgORGquaRF70SSdwk+f4Bgfbvn9l9G
         4VBjeF6JMyf9kUee8e3yYCZwHZz8Zh2yNiHmWVNg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.125] ([217.61.154.125]) by web-mail.gmx.net
 (3c-app-gmx-bs69.server.lan [172.19.170.214]) (via HTTP); Thu, 3 Mar 2022
 17:07:01 +0100
MIME-Version: 1.0
Message-ID: <trinity-e24fc9d8-680d-43e4-bc2a-9a3cc7d43138-1646323621559@3c-app-gmx-bs69>
From:   Frank Wunderlich <frank-w@public-files.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 3 Mar 2022 17:07:01 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220225075150.2729401-23-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:U5wBZdbza9VwWSnL2Fb/j5WKWmiu06uBo7QibEBguykIkwt7nMKuSqoQTfEekVKnR75KK
 qAtXS1kKXTbWjJXW/t/jjRrhq3gv/CeiVeIuYSvdcVoc7OzZk7GSUcIOvQZD5M1UT2xfVcrI0NPi
 9bCLXlld6yvNiefpjlqGrZnRa6GpXuVFXfdMgQqmAWUTvwy2EsZQb6eKSG/ZurDmP13S12aZGdwc
 L7S4d94Fm2Jdpz3VYvZQDp7Kufu/NS42cIOeYFlFfwN0paqnc0buptBlVcZlKPywFDP9g6LHgUiX
 K0=
X-UI-Out-Filterresults: notjunk:1;V03:K0:qf+KSkywVP0=:JpcIqLcBRZBQNiLw8+A4la
 tiqpbqm6gA5oF3Y0T++yP1jdH443sT//j7UKXJ/CF4m4jXwx61MDkQex5e0Z5BY2G1cIJWMJW
 Ww+ofziD4r3yUpD+uhNJJk3gTW4eswSpmLvY0cwvGe61LLf1lq0jCUJIAw9w/4wdQf0FToS/0
 CnurClPnc3A8qkz5t6TRdIiocPH5rVk9GOum6m7MtvekiRjtJ+6cZZOfQjgZPUpM2kIwaiB5B
 XzAny3uYO04ndJ6NnxwMQf66BvEaBc6g5CUxTXJCRlQJ0FXe7QWlmbxcCPZdjpCwoqy6UU9J+
 ipRjFAD+rqTiiSbIpdZOJT8efLdElV4PlEVKY9Ug1/gfNree7QrfDQQstk3UfJMHAuDqp0wOQ
 AVzZjG4+ir5/PmCsKirIwKjJVzELsK06t4ctIHrsV7cYUBuDQI4hOI+7Ktj+wjLrCBDewJycw
 NatU87zOZUyX7yMJjYXcjVrc4vyTVnHCC3y3p4U75FOgbqES2fbtUEIYZHRKp9DfKyJKZ+lEc
 xpdSh81+mThatPwn9qW9j4boQ8UPaM2+/H62weOFR8vAiL4Sv4K6dsNwG3bJjBtUmfSIx9Egv
 +bYlQrmYhwRNSXoiuRr0zA950wToiif/re86r8e7ecExmqHYte4MUhVky8AsZ5bGz8iDYmVtx
 6N+lZ/I+HLK2xSUdS8XQ7mpJDHZpzSswtONauWMKO+AOejB88T+pOZXyqZSp/9VhijBPTxQEt
 uWKbXg0GEtzWShS3loX/eVmHHvLOgWd7X56MhqeCsw8B/ye9V63ZvOMPQq2n3OQ8H+2Wzn9xN
 yYP1KlJ
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tested this Series on my rk3568 Bananapi R2 Pro v00

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank
