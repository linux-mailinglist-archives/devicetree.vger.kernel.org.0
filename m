Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8686A4361F3
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 14:40:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230411AbhJUMmu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 08:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbhJUMmu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 08:42:50 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28220C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 05:40:34 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id o20so635742wro.3
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 05:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jFdTGkgZkLf00tvUnp17RfTsEUHHJhiknRtK2YvBISw=;
        b=GfMN12Kb0msIxKeO7aDO3rZ4tfxpuLl8OsCoaferKQwZeOwDv28J3Cr2m0bLDUjaUd
         xMAb3P3arrHDnaYCke3klEETVYG2NqJSVPgbCIn5kTndpI5ER3zgsLFV5ZS7UKR5Gz7/
         nXQ+NFVYiyYOmt6gZ3ifa3/5AQslqFaZ4J8Cli1f8BiB4RXTqfwzxTbAgGvIGdcdmsYx
         FoI/ui1/hfk63Tevrbg/ds2WipfuDL2nZxfSzUJs6H/unTKDrMTK7e2r9dQQHUCrL1OR
         XohgcdJ/BvEcyxOL34kLi+OZ2W5FG02fFxhTkmuiZMYl5G2eLmhfFejbUitXMJO8v5jd
         PVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jFdTGkgZkLf00tvUnp17RfTsEUHHJhiknRtK2YvBISw=;
        b=eionV21g3tBeQJf3K/TPjnIWkGQ1d3Z1T6FtGqMr0V3cvt8Li+9R/f4rhEOfYUVQIA
         B0bzzsVuW8Q3/tnZ6vhhsGAbrbnFSPhnkm1Jj5PkPcvwtkuG5FXy5YDjR1KH5UNaEGad
         ugKu6rEBujuIj7E129x+NcYp765CkRIR0sKwMJPT1dEhQkZxPnc/r/UMjkMb59zrIvUW
         SpCBs03d29soGuio2yTaaSyDBja1PmcyEzhjTKelL7EINfFS7daub5srAxV+cVXvzExi
         tJearW/6oqBKjyxAdqfph7DB3GpIrrcVkU5NvgDc8XgtGBw6lRmKqCURTszJZFOk0bc5
         IEkQ==
X-Gm-Message-State: AOAM532sqM/lpPpdWk7cASiWC9WN2yL+PuCOu4f5lpsuu1SdAe/zpXUc
        xJYYgIXwjw0QoTBcBECvCmsRqA==
X-Google-Smtp-Source: ABdhPJx/zFvawwQAt68SuNbqhUDjjGd9HhjTT4xx6cJ40HOUaxW0H3Xi0M8W04egPzq24H/8gpPP3A==
X-Received: by 2002:a5d:69cc:: with SMTP id s12mr7232765wrw.108.1634820032716;
        Thu, 21 Oct 2021 05:40:32 -0700 (PDT)
Received: from bismarck.berto.se (p54ac5892.dip0.t-ipconnect.de. [84.172.88.146])
        by smtp.googlemail.com with ESMTPSA id a127sm7886425wme.40.2021.10.21.05.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 05:40:32 -0700 (PDT)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Subject: [PATCH] schemas: graph: Fix reference to video-interfaces
Date:   Thu, 21 Oct 2021 14:40:26 +0200
Message-Id: <20211021124026.2494221-1-niklas.soderlund@ragnatech.se>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The video-interfaces documentation have been converted from text to
yaml, update the path in the graph schema.

Signed-off-by: Niklas Söderlund <niklas.soderlund@ragnatech.se>
---
 schemas/graph.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/schemas/graph.yaml b/schemas/graph.yaml
index 617bdc57676c42d4..3a2fc58c8d15333b 100644
--- a/schemas/graph.yaml
+++ b/schemas/graph.yaml
@@ -23,7 +23,7 @@ description: |
   may be described by specialized bindings depending on the type of connection.
 
   To see how this binding applies to video pipelines, for example, see
-  Documentation/devicetree/bindings/media/video-interfaces.txt.
+  Documentation/devicetree/bindings/media/video-interfaces.yaml.
   Here the ports describe data interfaces, and the links between them are
   the connecting data buses. A single port with multiple connections can
   correspond to multiple devices being connected to the same physical bus.
-- 
2.33.1

