Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 749CAD5FEF
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731388AbfJNKUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:20:47 -0400
Received: from mail-yw1-f74.google.com ([209.85.161.74]:38404 "EHLO
        mail-yw1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731123AbfJNKUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:20:46 -0400
Received: by mail-yw1-f74.google.com with SMTP id z14so13387924ywz.5
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=OjLdBxamMEBZoCWEKxvyfi3zlPS7sITB1tlY1PlFJZY=;
        b=eVRPf2rKgR0b8Na1dnuVjOtXmfbGYZwl4VqP3QxKcECdKXOoxlTz48u7APC+RWbHOP
         DFmgYXjsH3Lq/zIayx+kocIt92rT3kTuBrcarVlNG6TLb8STyyNtWyH6Raz4nU6/pWb1
         T+W3s4ZdUYNcNrT8U6hS/aiI0BEllbfG1QZ8ThZWgWj2bHZxD5Htx6fwC3qPPaxKYM/r
         8qwHg/2BsPSsjSolIcKqH2UN58FpZoh/LJ96A1q5PF2OLn2xfgMBGdd5leRkKduxQ9CA
         0pgr+/s1DHXcES8zswier67wDAXdUOOQlxaFBr1ZQhH0umfEaG6W6TqUErAN4ar19rX0
         pcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=OjLdBxamMEBZoCWEKxvyfi3zlPS7sITB1tlY1PlFJZY=;
        b=B6plZ7DLM5UpLvaXVFCIDkjJjTDYnm3CbyyKqA11wMW4avr7XKwuS3ItuQrJHXBF4R
         H6/wbrkrVNzKdYoQ+4dcDRCyELT3n6hxqPCeHNocXiW8BAxlqLNXaAUnI3SBHMBQXhvi
         9tNFQRzf0OXwB8h9zbbsxlGsGxzaLD3/zrpCd35FxOMPJ+hcrkDIPc+SqlcgW9WFzTCx
         lr4qwLA4jge8MvrrhTobFp9p7B7moOGt52+rk4dlHZSEUAx4hk3oihQJzdD45pbPX1mU
         BYVcFAiwyXyBp0UkN/WCnMhuQ2QfKTuc9xIkVZxlRg6X/k4cFEkJdPjcRd99urYMaUzv
         tfdA==
X-Gm-Message-State: APjAAAUfxUdi6aYfsJEquIB5TDVwR4E2ZSzqhrlMarwuMF2AYBOWNOgC
        ZtNYxnNzhU8IR+12T5zqH0MyUDFVXzy4
X-Google-Smtp-Source: APXvYqwpWgmqpyrmUa2wXckIz2VMz7v1JP5V+8C4UzQfkJmabm9Yn88YxlT1SHUJmolE6m4HsHNhhbbIoXZQ
X-Received: by 2002:a81:1b49:: with SMTP id b70mr11985099ywb.229.1571048444225;
 Mon, 14 Oct 2019 03:20:44 -0700 (PDT)
Date:   Mon, 14 Oct 2019 18:20:13 +0800
In-Reply-To: <20191014102022.236013-1-tzungbi@google.com>
Message-Id: <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
Mime-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v3 01/10] platform/chrome: cros_ec: remove unused EC feature
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove unused EC_FEATURE_AUDIO_CODEC.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 include/linux/platform_data/cros_ec_commands.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 98415686cbfa..43b8f7dae4cc 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -1277,8 +1277,6 @@ enum ec_feature_code {
 	 * MOTIONSENSE_CMD_TABLET_MODE_LID_ANGLE.
 	 */
 	EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS = 37,
-	/* EC supports audio codec. */
-	EC_FEATURE_AUDIO_CODEC = 38,
 	/* The MCU is a System Companion Processor (SCP). */
 	EC_FEATURE_SCP = 39,
 	/* The MCU is an Integrated Sensor Hub */
-- 
2.23.0.700.g56cf767bdb-goog

