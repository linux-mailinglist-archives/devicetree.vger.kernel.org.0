Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A574710FB8E
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 11:15:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726469AbfLCKPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 05:15:43 -0500
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34429 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726365AbfLCKPm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 05:15:42 -0500
Received: by mail-pf1-f193.google.com with SMTP id n13so1635999pff.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2019 02:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=la8F/ukOCmlxZOPSk03ZdEI5AybzNjyoXK4eemJfXxE=;
        b=G226RTXHw3qcB+VS063+Ay6A/MbQWClSU74oKAEWlESOOxPKzIsw6XIGv1bELVqcNg
         jmYzwjk2ghqoJSwOP6SlpYxj33qgOQyzC2jq3UkuNRyXEsJNFzg0z+zIMQ9IZJ448EZd
         ctOO2I5biTxKUYaUd8ePhb5JWZ4NK5eJwEbOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=la8F/ukOCmlxZOPSk03ZdEI5AybzNjyoXK4eemJfXxE=;
        b=ZGlvf6/YX7iOZCeV14rCtTgGIZYMhA6+6yeawVvwSwKGWGuX9cYd4gUa1lqXXGI3Td
         QAAQgGxslyuOllbth1zm3ihHaXQwuuBForExydISo/y08ED5GJxHBybsGk6IUfFPBozF
         BY432YIaBTzNfrBmFe/EPpsNFP9K+JbbbJ5OZ+Zx/Mfi8mua50vCeCBlVIUdE50psA02
         81xe9GoQwRSWE//6Bf1qnCN4Z/xGoVcrM7KPOOfLMz5Ewj3A3A0x7TR6muxP5Gswn7DE
         Dg4iPvB88REDT8UFPMIDxoSp+ok1/LBVb4qpmGT/QupYfhCOX/TO2qFRZCmlHES2PRhf
         Inww==
X-Gm-Message-State: APjAAAUBze+Ct2oh9tSDBqu4EgNcG03Vr7w0bAYCTESW9M8MAnQlbnjH
        s1XbquriVFt5SXlkI0AAwDZJUWMnBWyDpw==
X-Google-Smtp-Source: APXvYqxi6mHP/CPl92Tl/wfPvYWI3JtJFadHEo9LlGyht/c7K25YTpYXkaeEZu0Y3pG5p+MUZJWu0Q==
X-Received: by 2002:a62:b504:: with SMTP id y4mr3894348pfe.251.1575368141054;
        Tue, 03 Dec 2019 02:15:41 -0800 (PST)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:254e:2b40:ef8:ee17])
        by smtp.gmail.com with ESMTPSA id x11sm2943131pfn.53.2019.12.03.02.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 02:15:40 -0800 (PST)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     GregKroah-Hartman <gregkh@linuxfoundation.org>,
        RobHerring <robh+dt@kernel.org>,
        MarkRutland <mark.rutland@arm.com>,
        AlanStern <stern@rowland.harvard.edu>,
        SuwanKim <suwan.kim027@gmail.com>,
        "GustavoA . R . Silva" <gustavo@embeddedor.com>,
        IkjoonJang <ikjn@chromium.org>, JohanHovold <johan@kernel.org>,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        drinkcat@chromium.org
Subject: [PATCH v4 1/2] dt-bindings: usb: add "hub,interval" property
Date:   Tue,  3 Dec 2019 18:15:36 +0800
Message-Id: <20191203101536.199222-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add "hub,interval" property to usb-device, so hub device can override
endpoint descriptor's bInterval.

When we know reducing autosuspend delay for built-in HIDs is better for
power saving, we can reduce it to the optimal value. But if a parent hub
has a long bInterval, mouse lags a lot from more frequent autosuspend.
So this enables overriding bInterval for a hard wired hub device only
when we know that reduces the power consumption.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---
 Documentation/devicetree/bindings/usb/usb-device.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-device.txt b/Documentation/devicetree/bindings/usb/usb-device.txt
index 036be172b1ae..44bef2ff2704 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.txt
+++ b/Documentation/devicetree/bindings/usb/usb-device.txt
@@ -66,6 +66,9 @@ Required properties for host-controller nodes with device nodes:
 - #size-cells: shall be 0
 
 
+Optional properties for hub nodes
+- hub,interval: bInterval of status change endpoint. The range is 1-255.
+
 Example:
 
 &usb1 {	/* host controller */
@@ -75,6 +78,7 @@ Example:
 	hub@1 {		/* hub connected to port 1 */
 		compatible = "usb5e3,608";
 		reg = <1>;
+		hub,interval = <8>;
 	};
 
 	device@2 {	/* device connected to port 2 */
-- 
2.24.0.393.g34dc348eaf-goog

