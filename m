Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3B1B39B39
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 07:05:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730056AbfFHFE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jun 2019 01:04:56 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:39832 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728913AbfFHFEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jun 2019 01:04:55 -0400
Received: by mail-pf1-f193.google.com with SMTP id j2so2290318pfe.6
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 22:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/tWSJUFjSOhBG56vNpbRR3VoGPfAIakWUqT6yAzGVtw=;
        b=ENM3lIjGpq9gvqZcJIOcNs1wRAoDEBKQDoLKHolMecedFrbImrvLix6O9/6mKte12G
         4LJ32LxVshedu+9dEUFxKDlRdW4EXYfVS7XfB057X+/t1pyq6nNGPeSbHxwoaK8RttHy
         BlazFFYBuRsZizYuXuqyu6pvXX0yp9Fz1kmGbjXRJLjVf+U/O19zBYVDcQjW7xsFHlfL
         b5Jsz2KaCqxugj7My7guojZI84CndsIEzlpE6v9V7/9TIxhCUiINf0z3DCdqutnO+1uN
         QA7l6Di62yYUC+Z9GizUiJ6aeUIJ8zxT2UQu/3CYpioDKhoOxKZaYFl4aHsUNGVcvANb
         qL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/tWSJUFjSOhBG56vNpbRR3VoGPfAIakWUqT6yAzGVtw=;
        b=S174BlbEFY2bf8AnkND344+zHkd2RNFCtA8/n34f1qsUfLXkjhcTyiHIhAi6NelHeS
         H4h96GLrdfDFquXgkEvz7QqO5nl2VMzydgNsX1vp+FL50k9Qg82JpRwak5cuu1qEP5EL
         UGBPVK8bCH/ox9lsftc8TwCkp1tanJneGc3pT5J/V7b7IjT5tDGHkk2dCq8wJCsqPkMz
         mVbH6iynR5bPFgNuyaVx9T9eASSUA5D6Ti4VWCgZK4QBDnFk3TwMpAzJf5A5XVNtArE0
         bZxKZINd4qj4s4/N5x+VtlckYpKJVmRLXrgTXDG6WNYVRmp9iSwf29uUd/+0aG/n4Woy
         g/Vw==
X-Gm-Message-State: APjAAAVcbl3mpU66+evi96f991a3Vr4CVV7Kigydr1YSTjOTWxfXyc4+
        n6Pz5uDC9Fuy4d4qYZSHlR9D1Q==
X-Google-Smtp-Source: APXvYqwYM0nTWGEUJuqbNR2Ol0GRiIcI6jReWaZLl9JyrkM+j/wR6/kCNl+1HA37QYpsLAZKhktOQQ==
X-Received: by 2002:a63:4c1c:: with SMTP id z28mr6037333pga.122.1559970294790;
        Fri, 07 Jun 2019 22:04:54 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id b8sm4522482pff.20.2019.06.07.22.04.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Jun 2019 22:04:54 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Pedro Sousa <pedrom.sousa@synopsys.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: [PATCH v3 1/3] scsi: ufs: Introduce vops for resetting device
Date:   Fri,  7 Jun 2019 22:04:48 -0700
Message-Id: <20190608050450.12056-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190608050450.12056-1-bjorn.andersson@linaro.org>
References: <20190608050450.12056-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some UFS memory devices needs their reset line toggled in order to get
them into a good state for initialization. Provide a new vops to allow
the platform driver to implement this operation.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
- New patch, to allow moving implementation to platform driver

 drivers/scsi/ufs/ufshcd.c | 6 ++++++
 drivers/scsi/ufs/ufshcd.h | 8 ++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 04d3686511c8..ee895a625456 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6191,6 +6191,9 @@ static int ufshcd_reset_and_restore(struct ufs_hba *hba)
 	int retries = MAX_HOST_RESET_RETRIES;
 
 	do {
+		/* Reset the attached device */
+		ufshcd_vops_device_reset(hba);
+
 		err = ufshcd_host_reset_and_restore(hba);
 	} while (err && --retries);
 
@@ -8322,6 +8325,9 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 		goto exit_gating;
 	}
 
+	/* Reset the attached device */
+	ufshcd_vops_device_reset(hba);
+
 	/* Host controller enable */
 	err = ufshcd_hba_enable(hba);
 	if (err) {
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 994d73d03207..cd8139052ed6 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -298,6 +298,7 @@ struct ufs_pwr_mode_info {
  * @resume: called during host controller PM callback
  * @dbg_register_dump: used to dump controller debug information
  * @phy_initialization: used to initialize phys
+ * @device_reset: called to issue a reset pulse on the UFS device
  */
 struct ufs_hba_variant_ops {
 	const char *name;
@@ -326,6 +327,7 @@ struct ufs_hba_variant_ops {
 	int     (*resume)(struct ufs_hba *, enum ufs_pm_op);
 	void	(*dbg_register_dump)(struct ufs_hba *hba);
 	int	(*phy_initialization)(struct ufs_hba *);
+	void	(*device_reset)(struct ufs_hba *);
 };
 
 /* clock gating state  */
@@ -1045,6 +1047,12 @@ static inline void ufshcd_vops_dbg_register_dump(struct ufs_hba *hba)
 		hba->vops->dbg_register_dump(hba);
 }
 
+static inline void ufshcd_vops_device_reset(struct ufs_hba *hba)
+{
+	if (hba->vops && hba->vops->device_reset)
+		hba->vops->device_reset(hba);
+}
+
 extern struct ufs_pm_lvl_states ufs_pm_lvl_states[];
 
 /*
-- 
2.18.0

