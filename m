Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A155331433
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbhCHRKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:32 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33132 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbhCHRJ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:09:57 -0500
Received: from mail-wr1-f69.google.com ([209.85.221.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOG-0003Hc-M2
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:09:56 +0000
Received: by mail-wr1-f69.google.com with SMTP id n16so4017078wro.1
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:09:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ukC0JfJdbz8UciMbMC02R4iISKuzu012voJzqN/ruB0=;
        b=DaSMHcVehK+UlcgnvhH9modAwQ6S7SJi72ZdmITTiQ7W9P8MFIcYxSNZY5nNm2D4Hs
         nhCt6rukqcINT50xy9fOTe0gH/cJdOPD/mmDKsp32bwccVL7jOdMIBakgOWdgCKNjrux
         UnxfeovH8Z/d8gTZPXdqYk5AEofcvcHs3Qpq21kj2fmdX29sisnVNQMeiU1B1++Pc726
         4L0w+JwfNPhAhzu4JAwZxP5INyBUlZvl3iSbGX06aDSmKFLl9kBOM5BErjzLOZvMqHQM
         gvtBCKwspbK9kDc6i+BsE59xW6EmGAx5vrXKiXjUc7dX1vEnBIab3dr07VqGfEgvPK7Z
         ZBRg==
X-Gm-Message-State: AOAM531kBMS6L8RMOQC2nr4HtM5Ww9bBaoqUbiV+YAjf5OnBCeHXsdKn
        JRGmxXrUq3eSmvimbSGe43bN75njyCc/k05zaFmSSMXcnfqY/gkd6Nt5ZKR4zwd3AZ6eTGRySBn
        3lEdCjVNA9LqVC5w0TW8kWS7N8UEGpsbqug8ZIsM=
X-Received: by 2002:a1c:9a48:: with SMTP id c69mr22783956wme.157.1615223396350;
        Mon, 08 Mar 2021 09:09:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxg1tzEzl6V9B1Py+afG08QLfhRYQSYMhg4CheqNajHRwteoMi2lzjfEhuUWx8liPV8o2DNDw==
X-Received: by 2002:a1c:9a48:: with SMTP id c69mr22783934wme.157.1615223396161;
        Mon, 08 Mar 2021 09:09:56 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:09:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 01/10] dt-bindings: arm: intel,keembay: limit the dtschema to root node
Date:   Mon,  8 Mar 2021 18:09:36 +0100
Message-Id: <20210308170945.161468-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

The check for the board compatible should be limited only to the root
node.  Any other nodes with such compatible are not part of this schema
and should not match.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
---
 Documentation/devicetree/bindings/arm/intel,keembay.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,keembay.yaml b/Documentation/devicetree/bindings/arm/intel,keembay.yaml
index 69cd30872928..107e686ab207 100644
--- a/Documentation/devicetree/bindings/arm/intel,keembay.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,keembay.yaml
@@ -11,6 +11,8 @@ maintainers:
   - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
 
 properties:
+  $nodename:
+    const: '/'
   compatible:
     items:
       - enum:
-- 
2.25.1

