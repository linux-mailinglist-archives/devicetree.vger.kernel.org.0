Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD4AE21AC1D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 02:43:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726942AbgGJAnW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jul 2020 20:43:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726840AbgGJAnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jul 2020 20:43:08 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9503AC08C5DC
        for <devicetree@vger.kernel.org>; Thu,  9 Jul 2020 17:43:08 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 124so5114105ybb.5
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2020 17:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=PChTsD7+lOfYquQN6+h5WG1wyZRkuvc0gJ7VnIMPpcI=;
        b=eFBgkYUpUC19TYrSClaWnACSWhKB0k5jcDpo+PTCgNBUkAiDzm+ORJ7p+M7sjb66Ka
         lWtCn0H5by6dCE82W0iKV6mmx6kRgCqc+3AxVy8yWqUYQu43g026sorjNlQ0d1PDuQAZ
         29onMDkcy7/BpVBNOy1dwqDwjF+o8P8j+QhxUaXtj8tXYMCoJM0ZhcydfKpz4AB/eBDZ
         zWFSbDcHte5W/BvRP/taIxaEwuwcJY6eLjxsQH1s4riNeWuJGxvmV1zSQZqbBX2rVib5
         frgB94mh32Q9xz6rqcnyjrvx5EBbgbfZ2rBqxlsZnkuaxUTQnvF0rXIuSr1J4FI/Ark1
         2ZUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=PChTsD7+lOfYquQN6+h5WG1wyZRkuvc0gJ7VnIMPpcI=;
        b=N6pHh9SoKYUxonKyLYJCaLY6cOgDbkuQ/PBpXerZ/8YZUhAvOxnIndn5lKNOYQs9C2
         QnJdr2j5VyaU7OfypjiLTzifaeZX2q7ZH3nfbb1W33xmEom7K+2vcDx4rk2LNd/uw2B9
         EjWT00aB11DQQj4mZbFBXqVk4DQOxN4otA2jWY8dl5fEOdqpoUOeON9EB9Ga/6PF6Q9O
         9pLUHmJJbGYgY9UbxxzHvwXF2lnoj6NYRjjTd9t/xfO/bfsno7flWqtjVMzSdDMq1fSr
         GOBKUCXKYWzNbsZNQMAPtqWSr0xn1n4NrY3hn1kcXXI1MqVGEMEw+9+axzbkob03JPdU
         UK7A==
X-Gm-Message-State: AOAM53145h4aOfC9ykDzmZ+AQpxPJB63ulJqDnWMgzpLigihz8rxEWW8
        rruwU7y8uE0QATeHsoWk6a6l/zhXvTNrDmBZ
X-Google-Smtp-Source: ABdhPJw3ovj5xIgTKeUgsA84rILy0QjfSh1DlsEiwU5RWnjTdC3QlkA8ODLexpuSzMstbWzOEt5EKdjDztKvbJhN
X-Received: by 2002:a25:c547:: with SMTP id v68mr1490103ybe.508.1594341787646;
 Thu, 09 Jul 2020 17:43:07 -0700 (PDT)
Date:   Fri, 10 Jul 2020 00:42:58 +0000
Message-Id: <20200710004258.296017-1-linchuyuan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
Subject: [PATCH] dt-bindings: hwmon: adm1272: add adm1272-adm1275-temp1-en binding
From:   Chu Lin <linchuyuan@google.com>
To:     linux@roeck-us.net
Cc:     belgaied@google.com, jasonling@google.com, jdelvare@suse.com,
        linchuyuan@google.com, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        zhongqil@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Problem:
	adm1272 and adm1278 supports temperature sampling. The
current way of enabling it requires the user manually unbind the device
from the driver, flip the temperature sampling control bit and then bind
the device back to the driver. It would be nice if we can control this in a
better way by reading the dt.

Solution:
	Introducing device tree binding adm1272-adm1278-temp1-en. If the
flag is set, flip the temp1_en control bit on probing.

Testing:
make dt_binding_check

Signed-off-by: Chu Lin <linchuyuan@google.com>
---
 Documentation/devicetree/bindings/hwmon/adm1275.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/adm1275.txt b/Documentation/devicetree/bindings/hwmon/adm1275.txt
index 1ecd03f3da4d..4403fe30f005 100644
--- a/Documentation/devicetree/bindings/hwmon/adm1275.txt
+++ b/Documentation/devicetree/bindings/hwmon/adm1275.txt
@@ -15,6 +15,8 @@ Optional properties:
 
 - shunt-resistor-micro-ohms
 	Shunt resistor value in micro-Ohm
+- adm1272-adm1278-temp1-en
+	Enable temperature sampling. This is supported on adm1272 and adm1278
 
 Example:
 
@@ -22,4 +24,5 @@ adm1272@10 {
 	compatible = "adi,adm1272";
 	reg = <0x10>;
 	shunt-resistor-micro-ohms = <500>;
+	adm1272-adm1278-temp1-en;
 };
-- 
2.27.0.383.g050319c2ae-goog

