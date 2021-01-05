Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE3E32EA9D0
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 12:26:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729514AbhAELZy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 06:25:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbhAELZx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 06:25:53 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F99DC06179F
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 03:24:37 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id v3so16182946plz.13
        for <devicetree@vger.kernel.org>; Tue, 05 Jan 2021 03:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RLWf2fFx1cy5EK+fZBXuAuxCvBkN0R7iJP0DH7tZe9g=;
        b=zetW+zTjdJu12fd74lr5e4RRjfbmu8PI4SolhsR42pguy3d5gX/TVL0c8ZQ/idamFj
         PFgv8cHzrOElJ/nz92E/bV4qYnvaBbHhi9aEky1qJTfxnjTVYtU0qJai53aiF4AsGVuB
         f91DJvfGVaOfRgey9kMWdVOPU7uPocSLIUShslcHpfCu42LGi5HBQFi55nDPEV3atZE4
         lCACEuFpsC24iNgT2E5rPJPCnnMVeslzwpaklNKYLz8/wBi7/Ftb+X26WLP5EgMoqclt
         YH23CreRWMe/6ZA0EkZyLYYDo1I+5n49xDWw4/7JdyndjJDJ5kpNbtwJhzbROcnTgU2l
         Ix8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RLWf2fFx1cy5EK+fZBXuAuxCvBkN0R7iJP0DH7tZe9g=;
        b=GCtgCVw/VbqHlkQzoO9MPTsLDTcC4thS0LybmkI3OkEeZj0k3x3z7xXHackwIiN2Lw
         3R39+yV8aSEYC5Oe27N+6CxTeQC0fqk1zvWNSst9Q0jT2xaxkLn7LCffrhuih0M1gpdX
         mRNFXFjlhNit4GEIYVBY7PTgGHoF0YnhZwhBmkShyZhrOxOhMbCr0macfWcri/gLXREP
         fJdni1cVk+cG5hmRZMPEZ/Fe4fSBkqGtHwOWrDv0Mb3oIY73dijbpqQEViHWkSjYu4E5
         2YZ30lOYx3SqgZ55ldhdyD1yO3L6VhCgHFCk9lpn1TcksxtXLQKHhtr3a0MCMbX31hzo
         O5Tg==
X-Gm-Message-State: AOAM5318ASWdXN4E7+fLQSAkkHTIVB4T64boFqJojDtDBGoLPbNQ3O8l
        AjQCNalWXVQyNzXc0uU8IBYX6w==
X-Google-Smtp-Source: ABdhPJw02OCUGTpHRRYI2C9tQQQ1oADxysvci8SMJAXynHIlon/KDN7jgwDeIiAm+9EiUJJd9FHzQA==
X-Received: by 2002:a17:902:a983:b029:dc:2564:91f2 with SMTP id bh3-20020a170902a983b02900dc256491f2mr48248465plb.46.1609845877204;
        Tue, 05 Jan 2021 03:24:37 -0800 (PST)
Received: from localhost ([122.172.20.109])
        by smtp.gmail.com with ESMTPSA id o123sm56762264pfd.197.2021.01.05.03.24.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 03:24:36 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>, tero.kristo@gmail.com
Subject: [RFC 2/2] scripts: dtc: Handle outform dtbo
Date:   Tue,  5 Jan 2021 16:54:17 +0530
Message-Id: <7aa70809eff3f32d821761d2a763e4fb72ecc8fb.1609844956.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1609844956.git.viresh.kumar@linaro.org>
References: <cover.1609844956.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update dtc compiler to accept dtbo as an outform.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

---
I feel that this needs to go directly to
https://git.kernel.org/pub/scm/utils/dtc/dtc.git

Right ? I will send it separately if the idea is accepted here.
---
 scripts/dtc/dtc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/dtc/dtc.c b/scripts/dtc/dtc.c
index bdb3f5945699..40fa7128b3d6 100644
--- a/scripts/dtc/dtc.c
+++ b/scripts/dtc/dtc.c
@@ -357,6 +357,8 @@ int main(int argc, char *argv[])
 #endif
 	} else if (streq(outform, "dtb")) {
 		dt_to_blob(outf, dti, outversion);
+	} else if (streq(outform, "dtbo")) {
+		dt_to_blob(outf, dti, outversion);
 	} else if (streq(outform, "asm")) {
 		dt_to_asm(outf, dti, outversion);
 	} else if (streq(outform, "null")) {
-- 
2.25.0.rc1.19.g042ed3e048af

