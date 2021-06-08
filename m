Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC363A05BB
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 23:24:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234323AbhFHV0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 17:26:07 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:55987 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234250AbhFHV0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 17:26:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623187450;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/gBbRADva2K8JIEOGXkU5f6gFIRmDnT9Lnnhh5Tc3WE=;
        b=Wbl+uJV3h1hZBqGjKu+EiIz/TmSuvMXHgWOK6yz2DpzIjASInITgTnHpaZ3eGrROTVKpj9
        K91fk7O/PLUuO6QtFo4RuT8aWQoAriFehx+obibZWnNATTSohohRzq8yCbBqvRmh7Gc9rm
        pG7e0bPijdVes2twrID+5BbYybUGgDc=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-565-WZJHUwJzMvi-EbqGatS69w-1; Tue, 08 Jun 2021 17:24:07 -0400
X-MC-Unique: WZJHUwJzMvi-EbqGatS69w-1
Received: by mail-oo1-f71.google.com with SMTP id i3-20020a4a6f430000b0290248e8fe5cbcso11273249oof.5
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 14:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/gBbRADva2K8JIEOGXkU5f6gFIRmDnT9Lnnhh5Tc3WE=;
        b=XgpFVF7RY/loYXegZS4eGbqN0bofZhfrAoeZHgRDTQdjxSgPbUyshcpVoo5ut2H2Zb
         tvdn3vkCliW3k8mTXMs6Ok9w/KuTXdPfV66qJ2OmVNKiHwBd3w679/cJrtrAygsQOkxl
         zSCtEM6pQxsLbNSeneQd/yR5lTx/8veExrB7iZ2Z8hwKkEtyiJbyIlXQYrtYbv1NBlb6
         l/ll7UwyMrGYV/+Ei2wveXN8pbwGSWj9rcO4zonfRyOP+Yzr/L/+2eKw6RQ6fOiFttDS
         zAt3MtV/6TlOQXwpziw3PLQ9dStLgxNZEEk+HBUv6gkseNlja3OR4r8Nzau/Tg8dfjP8
         ap2g==
X-Gm-Message-State: AOAM5301dE33T5Qt3cBoqBCeM59jt7lmeptbRhns5abF6uymZJ9IH7Xe
        Q55c6gX5MktMgK4AnQRgA2OhURQIPTom3fb8Owmg/IbWC07Y8uKjmbT7r32f7AS4LxseOtnl2AG
        /9b79xT8+EP44IDzHo30lkQ==
X-Received: by 2002:a05:6808:14e:: with SMTP id h14mr586217oie.151.1623187446579;
        Tue, 08 Jun 2021 14:24:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRUvOvqRt0/CJtj2o0VyI4iVXsRLiR3szXaZyy3Js2xLbhN+wrCnNP4FBaFz2E4YlbUaXjZQ==
X-Received: by 2002:a05:6808:14e:: with SMTP id h14mr586213oie.151.1623187446440;
        Tue, 08 Jun 2021 14:24:06 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id x199sm1954310oif.5.2021.06.08.14.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 14:24:06 -0700 (PDT)
From:   trix@redhat.com
To:     mdf@kernel.org, robh+dt@kernel.org, hao.wu@intel.com,
        corbet@lwn.net, fbarrat@linux.ibm.com, ajd@linux.ibm.com,
        bbrezillon@kernel.org, arno@natisbad.org, schalla@marvell.com,
        herbert@gondor.apana.org.au, davem@davemloft.net,
        gregkh@linuxfoundation.org, Sven.Auhagen@voleatech.de,
        grandmaster@al2klimov.de
Cc:     linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-crypto@vger.kernel.org,
        linux-staging@lists.linux.dev, Tom Rix <trix@redhat.com>
Subject: [PATCH 02/11] Documentation: fpga: dfl: change FPGA indirect article to an
Date:   Tue,  8 Jun 2021 14:23:41 -0700
Message-Id: <20210608212350.3029742-4-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210608212350.3029742-1-trix@redhat.com>
References: <20210608212350.3029742-1-trix@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tom Rix <trix@redhat.com>

Change use of 'a fpga' to 'an fpga'

Signed-off-by: Tom Rix <trix@redhat.com>
---
 Documentation/fpga/dfl.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/fpga/dfl.rst b/Documentation/fpga/dfl.rst
index ccc33f199df2a..ef9eec71f6f3a 100644
--- a/Documentation/fpga/dfl.rst
+++ b/Documentation/fpga/dfl.rst
@@ -57,7 +57,7 @@ FPGA Interface Unit (FIU) represents a standalone functional unit for the
 interface to FPGA, e.g. the FPGA Management Engine (FME) and Port (more
 descriptions on FME and Port in later sections).
 
-Accelerated Function Unit (AFU) represents a FPGA programmable region and
+Accelerated Function Unit (AFU) represents an FPGA programmable region and
 always connects to a FIU (e.g. a Port) as its child as illustrated above.
 
 Private Features represent sub features of the FIU and AFU. They could be
@@ -311,7 +311,7 @@ The driver organization in virtualization case is illustrated below:
              | PCI PF Device |            |          | PCI VF Device |
              +---------------+            |          +---------------+
 
-FPGA PCIe device driver is always loaded first once a FPGA PCIe PF or VF device
+FPGA PCIe device driver is always loaded first once an FPGA PCIe PF or VF device
 is detected. It:
 
 * Finishes enumeration on both FPGA PCIe PF and VF device using common
-- 
2.26.3

