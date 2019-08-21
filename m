Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0270971B8
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727348AbfHUFz5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:55:57 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:43292 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUFz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:55:57 -0400
Received: by mail-pl1-f193.google.com with SMTP id 4so710137pld.10
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GU/N4Wt9Jhh2lg0lHSh02Sw8UrK6gO1IosLXs9dwpEE=;
        b=hoz2qoe3untu7b0I0pmk4wsv6BKU3ONXOAHIsaHWTD9rlV/P6qVSgSH6ykOljr5Ok2
         5/33JRU9j+tIizRAndWPCv5eJJSg7a0/NjSjtnrreaG/wf5YiePdJdKJJLcc8jDv96Iv
         joWkTQrxYsJEfPr8O8zDzdvO7Pyt7qexU9fkUDvjOrLphRVV6LXVi1FXR0rQCO8YWV5z
         3TEV9k+I6RIcfTj5vfjAvXcM9Ogl6ihYzXvutvBPnDFnOFEdVsbEqJzcX0kCbNqpto48
         nl/EG3gmFE13h4UpL2USBr0aUnM5SvwI7ttsD5YBJOzFfteDkax42w9dgHqipYzdNkW/
         rPag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=GU/N4Wt9Jhh2lg0lHSh02Sw8UrK6gO1IosLXs9dwpEE=;
        b=V2cdpz6AHzpOrAHZHDlTVWtm4Cr59J2CVjKNAYnaLZXw9aeNrLwXSRZhajZPW4/CN0
         YN7bNxpn/hcZBG7BVUw1iFELO8WIsKWMCm+Smt7oiqKukCC/E4zfTiqivaDK9S8TkCNw
         vazAvB5Jn+RwfZN3QouQQ/wn8xHJMBb12hIh3wPPdg9B9qVIEwzyWOnTs/ore+a0SuPF
         AjUesIFQb/fbQnDtSEjE1PpEolp6mf9UdMy0fR/u5WavURUNdrzGbhooTIXsEC9RpFKS
         B/boxedR5ZpFIM1ECwMqOMsG1WcaOaQ3obVeaacl3gF8oG+vzJAwjwzTVFQpRd+dHmAW
         RjdQ==
X-Gm-Message-State: APjAAAXU2aeSoaiJ4IEr55MBv+BHgTqVN/QBvk/VVNw/qEWMWU4F976Q
        pjXRjI7d2bRI+tD+GYSkKRz4UAl5sIA=
X-Google-Smtp-Source: APXvYqx/+74Ju52rJensxsSB8gavDnVTt9rl9lckMS8tlYydaxstjCH33nxjcMKNuuqbQIFLJXTY0Q==
X-Received: by 2002:a17:902:2ac7:: with SMTP id j65mr32562068plb.242.1566366956589;
        Tue, 20 Aug 2019 22:55:56 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:55:56 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 1/7] dt-bindings: arm: cpus: Add ASPEED SMP
Date:   Wed, 21 Aug 2019 15:25:24 +0930
Message-Id: <20190821055530.8720-2-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AST2600 SoC contains two CPUs and requires the operating system to
bring the second one out of firmware.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index aa40b074b864..727e0ffc702b 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -175,6 +175,7 @@ properties:
               - amlogic,meson8-smp
               - amlogic,meson8b-smp
               - arm,realview-smp
+              - aspeed,ast2600-smp
               - brcm,bcm11351-cpu-method
               - brcm,bcm23550
               - brcm,bcm2836-smp
-- 
2.23.0.rc1

