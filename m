Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5646418E28
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 18:30:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727414AbfEIQ3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 12:29:25 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:40412 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727391AbfEIQ3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 12:29:25 -0400
Received: by mail-wr1-f67.google.com with SMTP id h4so3918009wre.7
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 09:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2c6x2f6eeQDgR5pR9v6L40zLzoX5XJYrfYvIkaAjp04=;
        b=VxfFwifNwbqNi2XzCiT6xL1zwC5Abv0LgBZ2PPzyVD5t6T2sMYVCKVkPVeu8S33/Uc
         oDw3/LViauL4eGriZ8a6El5onMLvO0Q3WMu3DQnwnqdBKx4APhMrnNaCl/+m3pPyIKwn
         E05U+8mckVFQ36oriVIhhE2XEqThDMGCzRoPd/otk+V5sVRsGNpBSvlM6JbCc1z1aALV
         +9QkG6oqIs39hJDbq6E2nMiNImliQjj5frZSLPM8PmRYDI0gFw3Io2450Qyl3Na9ApCI
         4lWoaTuNTNfoOuG3Ta8JRgQ4d04USPVuDOsTIP/cQmx+IpKgxxjmAiayrns4BtMwMq8C
         coBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2c6x2f6eeQDgR5pR9v6L40zLzoX5XJYrfYvIkaAjp04=;
        b=ni7M2npH50bS2EjbFz8HT7OV7ZYQY3/x5hT/Aa3aFEj+HfjTwIFOHpwd6rmkCVLxDq
         HlAQ02chCOatPR+/6dYBwWRzf8c0eLdN6pRxaWRUldTxw0b/tfVWVytaZQrcck68NRsP
         3ESfC51D/iyXoOZbxIryb6wPa4FhO7RZT+Yd3vV4Xkh7eEXitZ4JcaWh6Wj901jNLhH4
         dpa4sJOYm6N8bULXF+BUNNugFl+fasW1gWimW/dxJ3mkz7GYz8MHFQ3UHDxHZuP+O5fU
         wnI/4eQM/389jVZlLAzBc6uf/aqk5a1rbabdPa72Z9W/LMKHXWuCXPp9Bq4XjALaYAh5
         7bEg==
X-Gm-Message-State: APjAAAW25sk28HQc+T2ErECoM/Lm8kryMWmyFkXbg/ENfkbY1mFMatST
        6iWtU/i1p6U+cWYvUl6niw4nBQ==
X-Google-Smtp-Source: APXvYqzVL8+3tvK+pyR0Yf8H/ohoHNF9R/2o0IP5EFUiAuUIeVNuMQCC7AQlvEtrp/uEtg6KXNR2Qg==
X-Received: by 2002:a5d:628d:: with SMTP id k13mr3878033wru.319.1557419363588;
        Thu, 09 May 2019 09:29:23 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home ([2a01:cb1d:379:8b00:1910:6694:7019:d3a])
        by smtp.gmail.com with ESMTPSA id k2sm4116297wrg.22.2019.05.09.09.29.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 09:29:23 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     linus.walleij@linaro.org, khilman@baylibre.com
Cc:     jbrunet@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/6] dt-bindings: pinctrl: add a 'drive-strength-microamp' property
Date:   Thu,  9 May 2019 18:29:15 +0200
Message-Id: <20190509162920.7054-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509162920.7054-1-glaroque@baylibre.com>
References: <20190509162920.7054-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property allow drive-strength parameter in uA instead of mA.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
index cef2b5855d60..84adce9f2a75 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
@@ -258,6 +258,7 @@ drive-push-pull		- drive actively high and low
 drive-open-drain	- drive with open drain
 drive-open-source	- drive with open source
 drive-strength		- sink or source at most X mA
+drive-strength-microamp	- sink or source at most X uA
 input-enable		- enable input on pin (no effect on output, such as
 			  enabling an input buffer)
 input-disable		- disable input on pin (no effect on output, such as
@@ -326,6 +327,8 @@ arguments are described below.
 
 - drive-strength takes as argument the target strength in mA.
 
+- drive-strength-uA takes as argument the target strength in uA.
+
 - input-debounce takes the debounce time in usec as argument
   or 0 to disable debouncing
 
-- 
2.17.1

