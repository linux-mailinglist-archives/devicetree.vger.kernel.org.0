Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D00FD3A05E9
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 23:25:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234592AbhFHV0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 17:26:41 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:27582 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234616AbhFHV0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 17:26:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623187468;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Sgq7YpZfI377cjTuKzZzdMcYM8vZyb+R30zx+84A9yI=;
        b=aesv95Fzj7RXjeqKz2xQDZMQBMcOd1y6qd8CFBKBq4lPa0HYLQqb2Xw7wtubgxrhk38Opi
        TzTkwTDJS1ve2u/XvEsOxmJIkrx24z8XhdXI8bsd0qQzfmyubTeAJGSrz+W4QfYEXo04aN
        A+/ARvTtD7T0klj22UXl51+KJFtnyr8=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-6muWAvn8NIuwiRxTblUeIQ-1; Tue, 08 Jun 2021 17:24:26 -0400
X-MC-Unique: 6muWAvn8NIuwiRxTblUeIQ-1
Received: by mail-oo1-f70.google.com with SMTP id l13-20020a4aa78d0000b0290245c8f11ac2so14060545oom.11
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 14:24:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Sgq7YpZfI377cjTuKzZzdMcYM8vZyb+R30zx+84A9yI=;
        b=KSK5+KYO5dgyzbcWPmbO1Ss44LT258RQjxiJFSra0NThuk2CIR868r94dhQk0grnU2
         H0E3E0+qox0iz7y5QBbBzMtryEgwkpk91nwQOiTpHm8yL7johCbFYVlZPf4N5reTfVmi
         5uezHVRfAl9R1t15Q+eHWH1TMYyfZY1No0d1uWkIyDKTBJQL7tDygUw14c2BMddEmvqn
         TDKN6SSz3u5pHY0DK7eMkZ0YsmdiM6Sq6zniq33riFNf9iMT43a5Hws/y1g1k80nyX+X
         qW0rothLMZcP3Om3nHXNjTeLY626AsgKznDgd70JZ5u0NKJuPoWf+hU754nwhy5Fsn3o
         TfNA==
X-Gm-Message-State: AOAM531vAFjawZPcOC7DjNycmx7Dhw385XRP1xqIH45eDa/frPp4O0QG
        3k4wc2Y4B0SGNb+HrlBBYI/kkU5GD+PRQ6CLCMdXUs2NDJde4xJPdJWMK3aGAf+GgBrwyFZ2BCt
        z/9GP1+/zwsGlANwWBvbbyA==
X-Received: by 2002:aca:33d4:: with SMTP id z203mr4176762oiz.51.1623187465853;
        Tue, 08 Jun 2021 14:24:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysr+C3bZgIQEZy/8wCr9Q5uLj3VqD8M6xSNa0dsASWBdlkV/63bU+lwSL+xyqD9OEYmwRjzg==
X-Received: by 2002:aca:33d4:: with SMTP id z203mr4176741oiz.51.1623187465720;
        Tue, 08 Jun 2021 14:24:25 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id x199sm1954310oif.5.2021.06.08.14.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 14:24:25 -0700 (PDT)
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
Subject: [PATCH 10/11] fpga: stratix10-soc: change FPGA indirect article to an
Date:   Tue,  8 Jun 2021 14:23:49 -0700
Message-Id: <20210608212350.3029742-12-trix@redhat.com>
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
 drivers/fpga/stratix10-soc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/fpga/stratix10-soc.c b/drivers/fpga/stratix10-soc.c
index 657a70c5fc996..2aeb53f8e9d0f 100644
--- a/drivers/fpga/stratix10-soc.c
+++ b/drivers/fpga/stratix10-soc.c
@@ -271,7 +271,7 @@ static int s10_send_buf(struct fpga_manager *mgr, const char *buf, size_t count)
 }
 
 /*
- * Send a FPGA image to privileged layers to write to the FPGA.  When done
+ * Send an FPGA image to privileged layers to write to the FPGA.  When done
  * sending, free all service layer buffers we allocated in write_init.
  */
 static int s10_ops_write(struct fpga_manager *mgr, const char *buf,
-- 
2.26.3

