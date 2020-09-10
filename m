Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DE4A2648CB
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 17:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731331AbgIJPdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 11:33:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731287AbgIJPcj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 11:32:39 -0400
Received: from mail-oi1-x262.google.com (mail-oi1-x262.google.com [IPv6:2607:f8b0:4864:20::262])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2150EC061371
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 08:26:19 -0700 (PDT)
Received: by mail-oi1-x262.google.com with SMTP id c13so6273041oiy.6
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 08:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Pf2v6K7fWr+bHCgGUrV3kke5q6+ZGtBMsavuxBjru5M=;
        b=SfjaHdsV2lxdGQvWKc7EZuSFskirebpOlxOzXblt3pwchrHV6C4K5BhXP0Gyhrblhy
         6Ox39WJo6pbiXDZEsDnFEqqe1G5RvOK4XY+7AeKH55DNxvUUYoTPEzZ0fQNbH9n6nX1J
         7wtyz9RrLUfN1MJ3ldJ7dUzPrBnOA4tGN2klg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Pf2v6K7fWr+bHCgGUrV3kke5q6+ZGtBMsavuxBjru5M=;
        b=l49C1erCVoTfdFBN5J+GWCQrjtcjAVU7keqTD6q5V7YC+iEpt32FfkUPe/ScPdy8pv
         WCyQSV29ABqmqw4oqNy/zvYmSEFW9TCrJWUH+tLwSBBtc3EHLNdzj11/bEjvvPUZAM14
         BoqgNgdNvGBeTk1rIvlM+dPEYRvJDj/VhoJF35FKh6vtjk5+IrxhrdEMds1vVJF89cos
         IHS8DYo/antIZyGk6Ls0MMIztGpnf1SYAzpXTtWFOMN8icZkcicSXQPsUgYXRHAuS7XI
         NRWpCnrOvz6Yxm5B4Ax6faXMN5atDzd/6dgOCJy7/w8vfBPOzOhsgFrJD52oL0OlCNAg
         wr1w==
X-Gm-Message-State: AOAM5326MLcs9rM7Z7mOkYreGjhXxznonOLErc/MLYfwrvKFXwG3ST03
        qWlpO5D2wwPLj/PlUO3p8vGbJgPNvSyyUmPMOdndJSht6OkW
X-Google-Smtp-Source: ABdhPJzTjwr55nx7RvuWPGr4A0Ppz+2wny0SQ9PbuZXKywFz6zRzamwR7UTzBzOpwY39BqVvHM2+KO4l8h9d
X-Received: by 2002:aca:5752:: with SMTP id l79mr349595oib.86.1599751578361;
        Thu, 10 Sep 2020 08:26:18 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp-relay.gmail.com with ESMTPS id h4sm943004oom.19.2020.09.10.08.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 08:26:18 -0700 (PDT)
X-Relaying-Domain: broadcom.com
From:   Ray Jui <ray.jui@broadcom.com>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Ray Jui <ray.jui@broadcom.com>
Subject: [PATCH 3/4] spi: bcm-qspi: Fix probe regression on iProc platforms
Date:   Thu, 10 Sep 2020 08:25:38 -0700
Message-Id: <20200910152539.45584-3-ray.jui@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200910152539.45584-1-ray.jui@broadcom.com>
References: <20200910152539.45584-1-ray.jui@broadcom.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

iProc chips have QSPI controller that does not have the MSPI_REV
offset. Reading from that offset will cause a bus error. Fix it by
having MSPI_REV query disabled in the generic compatible string.

Fixes: 3a01f04d74ef ("spi: bcm-qspi: Handle lack of MSPI_REV offset")
Link: https://lore.kernel.org/linux-arm-kernel/20200909211857.4144718-1-f.fainelli@gmail.com/T/#u
Signed-off-by: Ray Jui <ray.jui@broadcom.com>
---
 drivers/spi/spi-bcm-qspi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm-qspi.c b/drivers/spi/spi-bcm-qspi.c
index c5209b42b0d2..b78d47a4403c 100644
--- a/drivers/spi/spi-bcm-qspi.c
+++ b/drivers/spi/spi-bcm-qspi.c
@@ -1300,7 +1300,7 @@ static const struct of_device_id bcm_qspi_of_match[] = {
 	},
 	{
 		.compatible = "brcm,spi-bcm-qspi",
-		.data = &bcm_qspi_rev_data,
+		.data = &bcm_qspi_no_rev_data,
 	},
 	{
 		.compatible = "brcm,spi-bcm7216-qspi",
-- 
2.17.1

