Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2311581B6
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 18:50:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727507AbgBJRuk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 12:50:40 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:35813 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726816AbgBJRuh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 12:50:37 -0500
Received: by mail-oi1-f193.google.com with SMTP id b18so10042427oie.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2020 09:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kopismobile-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version;
        bh=V32zSJvuwZW0sQ7+BEi24f7xdXL9W83fv79Z3HiobAI=;
        b=OihE4KgCvjfYq7v1iZQJoeEgpPkT68yCFBmEVtsKAOCNKF+iK5b0vLDlFDLlCnzLf4
         FJ0Ocm90z9mGQHkRfmbhGIaOAxFRsKlMzqogTKZI3Rg2pNpmQLdOftD+mU/PSQIyvuql
         T5Dqn+I5lhJdzy7lhqA3M4oKRNR8bGj1/cJTO4OtvuWjAODI2Cx/ZfS8f/W2iU6bofhH
         R41z6uB8UvNT7Mo91EeOi1a6RU4wmWZD7qgk6n2ktkb5IvVx0sVpT8I6sPOzFy4h5BfE
         YQdCKGpeResU4x4ulXKCUZbgA6gSeOFJpMEKgbr8dzSbmIwnO6/SqR97PoaTtcjJlQft
         QyBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version;
        bh=V32zSJvuwZW0sQ7+BEi24f7xdXL9W83fv79Z3HiobAI=;
        b=HWLn1Zumxq/8YGWoCAiXsRtawbhvQ6oahzyEVlQ3TZkZT7L8f3qHKsicZwguS1WACr
         sbhOx6sPqv4IlzINQp9Yk/4w0OBi7Dvca+RSW0jSNccC8Ke5AdViPNoUWIwEMQBUZ/Ti
         tC3Py7sF0jM3giQmfSjd7/JXTb4sGiv3tjPY6tQkwUooH4NCjCY+HbTSdRaepdnelqTL
         NoIiJzp66B0SJbrP2VjFKVbtVz0GTZB9iX9mrr6ZZHaFxIc4Jzqs2s0vV7Dx/E2qnK/C
         Kmy7ZFj0R1vZxcWRosVIxf0kGNTdJfeEon1igPruRq+Mjs6lWkYRpjtpx9+g7bnEX3L2
         BO2w==
X-Gm-Message-State: APjAAAUQKPsY/0e29/k2+z+NNomWYKacz0lxGNbTJuu23JpZuXSplRqk
        +xFtS1/y7WpFG0BuWiCUcF1c/ArlYxYMp1KggyTepZuQXp5s7Cll7TI4LcO+0PQMaWLRiR8odR1
        s+hLYPKeab8bnHnrfGIoemGA=
X-Google-Smtp-Source: APXvYqyZQTwhFMLIcyHQZWJJjvlmTmF8K9VxQoq9g/8gca7rrxoNg8/zDOhrkj5jzh5eJ+rKXAXGIA==
X-Received: by 2002:aca:1c01:: with SMTP id c1mr172004oic.18.1581357037179;
        Mon, 10 Feb 2020 09:50:37 -0800 (PST)
Received: from farregard-ubuntu.kopismobile.org (c-73-177-17-21.hsd1.ms.comcast.net. [73.177.17.21])
        by smtp.gmail.com with ESMTPSA id r205sm293189oih.54.2020.02.10.09.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 09:50:36 -0800 (PST)
From:   George Hilliard <ghilliard@kopismobile.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc:     George Hilliard <ghilliard@kopismobile.com>
Subject: [PATCH 1/2] dt-bindings: serial: document fsl,inverted-tx and -rx options
Date:   Mon, 10 Feb 2020 11:49:41 -0600
Message-Id: <20200210174942.14182-2-ghilliard@kopismobile.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210174942.14182-1-ghilliard@kopismobile.com>
References: <20200210174942.14182-1-ghilliard@kopismobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a description for the new fsl,inverted-tx and fsl,inverted-rx
options for the i.MX UART peripheral.

Signed-off-by: George Hilliard <ghilliard@kopismobile.com>
---
 Documentation/devicetree/bindings/serial/fsl-imx-uart.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/fsl-imx-uart.txt b/Documentation/devicetree/bindings/serial/fsl-imx-uart.txt
index 35957cbf1571..c8d677f9491f 100644
--- a/Documentation/devicetree/bindings/serial/fsl-imx-uart.txt
+++ b/Documentation/devicetree/bindings/serial/fsl-imx-uart.txt
@@ -8,6 +8,10 @@ Required properties:
 Optional properties:
 - fsl,dte-mode : Indicate the uart works in DTE mode. The uart works
                   in DCE mode by default.
+- fsl,inverted-tx , fsl,inverted-rx : Indicate that the hardware attached
+  to the peripheral inverts the signal transmitted or received,
+  respectively, and that the peripheral should invert its output/input
+  using the INVT/INVR registers.
 - rs485-rts-delay, rs485-rts-active-low, rs485-rx-during-tx,
   linux,rs485-enabled-at-boot-time: see rs485.txt. Note that for RS485
   you must enable either the "uart-has-rtscts" or the "rts-gpios"
-- 
2.25.0


-- 
CONFIDENTIALITY NOTICE: This email and any attachments are for the sole use 
of the intended recipient and may contain material that is proprietary, 
confidential, privileged or otherwise legally protected or restricted under 
applicable government laws. Any review, disclosure, distributing or other 
use without expressed permission of the sender is strictly prohibited. If 
you are not the intended recipient, please contact the sender and delete 
all copies without reading, printing, or saving.
