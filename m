Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FE6F417085
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 12:57:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244604AbhIXK7S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 06:59:18 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:53980
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S245674AbhIXK7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 06:59:15 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 24B8D40291
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 10:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632481061;
        bh=5qaBnFV4UUYxgISb8cWftr5quOXHWqv70CjWCUQzcvI=;
        h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
        b=cxrfGwxBIY0LvM2uq2ZZTmQgIfopl7PitPPMFu45KmVMFkAQrSlJofosDBrAZaXYp
         VMfvo+ms4gx9vky94gji0udutOSBD3BGqrTLN/pz/AFm96xMqpo1d4DQAuSjDO5V5E
         14J7I6vQJ3KjRRDPVngTzC+DAsztnG6EIQR0eOlq0FtP6DAtb/MEKfbrOUPXKhcLo5
         dR7oP4X6f1BdH1v1w3j6xDcxzlRfAG3pqD1+G3X8AZI346rJmLLHRrlteWtX1tgd4r
         5g7Yd6JAVx409hw/YU7Rv7kQFZhQVKI4IrF8UpIx2AapAq/4FZjmy9z8J8CBDXmmST
         4+72QWgEL7XwA==
Received: by mail-wr1-f70.google.com with SMTP id f11-20020adfc98b000000b0015fedc2a8d4so7794834wrh.0
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 03:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5qaBnFV4UUYxgISb8cWftr5quOXHWqv70CjWCUQzcvI=;
        b=UYcyFbEmLjrBJRs1VfK2hCwtKw1Qxewr+CWsUsmXQA/zdPkup5V7tvgrIcr4C4Sgit
         aOLo2IUwz0+E10dp18AnnISCKa/TZGysv6I//UW+PDfG/PEe6Flv5rD2YU/FCL53cUwG
         /NmBC4TcFt0kw98Hinkfb2+sjLXNDkzvfNQY9cBXmjj/oJ5vtarfWiuoPkWgtCcuzG9T
         W0RDKbcIuczsOxGuCYnO6/o33hXo2OXiAWOZDz0VsQL0HJz2LhXTbHn1I3Apn8r266kq
         8f8NlO9KlcaRpDWUL4fRlAWqae2TXLeWj3HbTHxQ5MSCO2s6qBCxK/xTdTY/Mq0tEMKy
         gv3Q==
X-Gm-Message-State: AOAM533D+cZO16kFjgyhOWBKF2b0FpMMLElEo/woEc4bGAUtFekfF23k
        gT7+DBpjyDzOmL3/Do80/rJ8wIn8xK2F48iI4ITKr0Ssu/1qvd7WkZTS52br+BBoy7sTK9XgSpI
        Ss43XyUlPZzE8wdksoHWHjZ4/DmkV1UOeNtHa0M0=
X-Received: by 2002:a7b:cb49:: with SMTP id v9mr1372345wmj.76.1632481060502;
        Fri, 24 Sep 2021 03:57:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDVTGZH5QCPK7kyu8GVnvvhqoDPEvq8MgewAmm21kiS/2XNKEsaKIMI9R6BZZAQ/A08Z3BPw==
X-Received: by 2002:a7b:cb49:: with SMTP id v9mr1372317wmj.76.1632481060111;
        Fri, 24 Sep 2021 03:57:40 -0700 (PDT)
Received: from localhost.localdomain (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id x17sm8188836wrc.51.2021.09.24.03.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 03:57:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] powerpc/powermac: add missing g5_phy_disable_cpu1() declaration
Date:   Fri, 24 Sep 2021 12:56:52 +0200
Message-Id: <20210924105653.46963-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

g5_phy_disable_cpu1() is used outside of platforms/powermac/feature.c,
so it should have a declaration to fix W=1 warning:

  arch/powerpc/platforms/powermac/feature.c:1533:6:
    error: no previous prototype for ‘g5_phy_disable_cpu1’ [-Werror=missing-prototypes]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v2:
1. Put declaration in powermac/pmac.h

Changes since v1:
1. Drop declaration in powermac/smp.c
---
 arch/powerpc/platforms/powermac/pmac.h | 2 ++
 arch/powerpc/platforms/powermac/smp.c  | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/platforms/powermac/pmac.h b/arch/powerpc/platforms/powermac/pmac.h
index 0d715db434dc..be528e0e507f 100644
--- a/arch/powerpc/platforms/powermac/pmac.h
+++ b/arch/powerpc/platforms/powermac/pmac.h
@@ -14,6 +14,8 @@ struct rtc_time;
 
 extern int pmac_newworld;
 
+void g5_phy_disable_cpu1(void);
+
 extern long pmac_time_init(void);
 extern time64_t pmac_get_boot_time(void);
 extern void pmac_get_rtc_time(struct rtc_time *);
diff --git a/arch/powerpc/platforms/powermac/smp.c b/arch/powerpc/platforms/powermac/smp.c
index 3256a316e884..5d0626f432d5 100644
--- a/arch/powerpc/platforms/powermac/smp.c
+++ b/arch/powerpc/platforms/powermac/smp.c
@@ -875,8 +875,6 @@ static int smp_core99_cpu_online(unsigned int cpu)
 
 static void __init smp_core99_bringup_done(void)
 {
-	extern void g5_phy_disable_cpu1(void);
-
 	/* Close i2c bus if it was used for tb sync */
 	if (pmac_tb_clock_chip_host)
 		pmac_i2c_close(pmac_tb_clock_chip_host);
-- 
2.30.2

