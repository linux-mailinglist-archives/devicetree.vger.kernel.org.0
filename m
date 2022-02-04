Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 238F74A9CD6
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 17:19:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235805AbiBDQTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 11:19:32 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:55402
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1376485AbiBDQTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 11:19:30 -0500
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5703B3FE4B
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 16:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643991569;
        bh=SA2GI74r1s2vKFFmTBz68RYXjDaJW6xo6+qC9T4Rl88=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=VuRPzO4CKBxXIg9TQLSEWf3KuGjeCgWszadL5Pq3BT61zl1XlA3T1hx9bYxN25ip8
         ZLcZOH0rETFTe4wpp4KkmAx3LQwhGZVQtHaitTUchluC7heMHXNanaMgwWVmNMLeRy
         utohYhIBF4bUDuy16gRLcHZJ3Hx0SZPJPzcKROcK2dhtaBNMlFQM+4K6lL5Vz7f/It
         fDGs6riRJ6EzEPdd4e8xKrYkWP4mIxvIqpFnE3lwewZMSquY8GBbMvuiDzuEfVrDwl
         vzaEnw7EhjG32xU5marQWnISum9z9YQVlnKseuw1pSP9CxhiyUxDumKsrOlJkv0INs
         hjotsEfubMsLQ==
Received: by mail-ej1-f69.google.com with SMTP id qo24-20020a170907213800b006c7479720ddso39729ejb.2
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 08:19:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SA2GI74r1s2vKFFmTBz68RYXjDaJW6xo6+qC9T4Rl88=;
        b=GmdtYIoxYJmKNcxiRCHa6WqdloDZyCIdFBYFtFttqzXecX7in8Z0Y0wMc9KDIr7Mj+
         iazq3NRAx9gROIoGyOqxC2hEekoEXnVlUIMrbI1E40BRGd2EYLF2Fe2ZwKBCHba9jIOK
         8ZNttexeY5NQntyH35oHS9CWIUONyZZgccjUqf0I0tloE/8iBYOyHe9HGtPHucPMFxOs
         LqJVjtIfYTnFizhntU0ZG5FCpdrgEhRozUG7yvdhAk4NqMcHD9S+Uuk9uydwsr9ScBP5
         lJ/pTAg1N5sIEjCvGRnivW8qG9qAqWQDz6oEBfIPul/32ar8VJQEoP+chFqn43BYoLoi
         KuGw==
X-Gm-Message-State: AOAM531dEQTugu3J1/uwpapp+Ff9d1w6K3Evc40giTaCukDmRuBihxeb
        l2zXSuuyLk2KHvgMXdMiVl1YtV53ILCqxBjDdyqcpyt+LsOmFASslUJNSX6NWf7plYbIBU5xm2Z
        ymU4TXaFuLpJQ2kZ0BAGINT0+VwWvDs5AwyxjxR4=
X-Received: by 2002:a17:907:6096:: with SMTP id ht22mr3051340ejc.611.1643991569057;
        Fri, 04 Feb 2022 08:19:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxbQ81fKkhozb6vr0tFNLKJuKFnpvqMFAgH1d+q7WLhJu8H/EkVd5KWMt3yWUBheeTE4qicvw==
X-Received: by 2002:a17:907:6096:: with SMTP id ht22mr3051331ejc.611.1643991568849;
        Fri, 04 Feb 2022 08:19:28 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id w6sm1002195edd.50.2022.02.04.08.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 08:19:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Subject: [PATCH] MAINTAINERS: dt-bindings: Add Krzysztof Kozlowski
Date:   Fri,  4 Feb 2022 17:18:51 +0100
Message-Id: <20220204161851.138874-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Krzysztof Kozlowski as a second maintainer for the Devicetree
bindings, to share the Rob's workload and help in review.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

After talks with Rob.
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 49c897fa56af..94e697e36399 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14450,6 +14450,7 @@ F:	scripts/dtc/
 
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 M:	Rob Herring <robh+dt@kernel.org>
+M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
 L:	devicetree@vger.kernel.org
 S:	Maintained
 Q:	http://patchwork.ozlabs.org/project/devicetree-bindings/list/
-- 
2.32.0

