Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C08612723
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 07:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726417AbfECFbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 01:31:43 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:43216 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725775AbfECFbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 01:31:43 -0400
Received: by mail-pl1-f196.google.com with SMTP id n8so2148650plp.10
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 22:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
        b=NfAt7TlYBcZ8Q5tKMBk2voI//3YAMOFFa7XGfmx+BhWuhARWaZjbkWNGgkq9G8p6UQ
         u0kiZStj8L0+SyBOGy3uMShfifPODyzMtk+t0I0LcDIiIW4UXtcLPVwXqiCOBfbUBDN1
         DuJoN7p2DjMbLUQ+g4HA58dJMuV8nO8WA34spCrn5Jcn+GqoVLgeo9+puGtORnzSkcJa
         GcRLRyHdBo6S3wWoYkjQD8Rd492P8MiWkAks7X9+zQ9oIYpCJw/NU15eDjVMv3Sv7faQ
         caiD+zPX7x+gleUDKJDKnsowuokZ5sLwLv9U0HGkcAZSf2ZI0yLO/so4RPHklq3EbkKc
         OXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
        b=NEvmdcU7ltQpV1DwZDn0QpKVE2Tgm6NJAFgaNS+VeGFE6bJlvUVkbOL/++v5/7OdWh
         n6CvzZCtBi507PPipN6aQ0KWdJqvCtZUf36yl9uKuUD/fX6SxC8jBv6cwlNxwNR2Yuf/
         3ppJeoQtR4RCOcGI4CUxqPXLnQmqvv1535ZrxP+C7losMpkzgbYERqkPOz/8xcBkLIMw
         o9/KOdVyXS4oeVs7eMRofTsNW3CkADO4L557S5yoXPSXbOarKZIZT+cxJwJj7dzgJoEt
         NOOxfAKCZO/u9CPu+JLfLs0VYi4U3JurlvOv6yGM0zYstC8+N6CrgaVUbBoKCGL4aR6q
         f5tA==
X-Gm-Message-State: APjAAAX94DIpV1ixCHbY8oL2v4DkFW8BDL+Uk2LTGSu2h2Y7makRs30E
        0zc2irYeyexx7MfYHpi0uTGs
X-Google-Smtp-Source: APXvYqx/FVvHZEajj3S63ojtZ+4apc82r5QUp3f7agjtxwzWnPlXgrRA0LNj6Lde8RF6sZUQ+Nn1Uw==
X-Received: by 2002:a17:902:e283:: with SMTP id cf3mr8159182plb.160.1556861502960;
        Thu, 02 May 2019 22:31:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72c7:3835:31df:f367:f70b:ed86])
        by smtp.gmail.com with ESMTPSA id l15sm1152226pgb.71.2019.05.02.22.31.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 22:31:42 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/3] dt-bindings: arm: stm32: Document Avenger96 devicetree binding
Date:   Fri,  3 May 2019 11:01:21 +0530
Message-Id: <20190503053123.6828-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document devicetree binding for Avenger96 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
index 6808ed9ddfd5..eba363a4b514 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
@@ -8,3 +8,9 @@ using one of the following compatible strings:
   st,stm32f746
   st,stm32h743
   st,stm32mp157
+
+Boards:
+
+Root node property compatible must contain one of below depending on board:
+
+ - Avenger96: "arrow,stm32mp157a-avenger96"
-- 
2.17.1

