Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC6B22B8C69
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:35:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725783AbgKSHcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:32:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgKSHcv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:32:51 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7F51C0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:32:51 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id m9so3456587pgb.4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=liG39SY6OCB57kKMVTK1rtUTWcyPIuivjnuH+kqMwss=;
        b=lLz9XPhTpOvyLrWiNaJO7JHEXIABHjsWTweFiH6vHa8Xn7a6gZfHtAQofwoakEmP2N
         fGDDeVwUx+UKYbmJKIHz06lulSZhsm8qdxLwxZ4bysm/Lh44KhKydYk/5BlLniSahuKI
         k0akbdG5YTqikm69F0ZiRNXD5qMrWeVb1ec5rtZuuE1kIR1gJOK8rIeuSd9StJWnjFUA
         MGayQ+JWfCletG8PMQGzeWR1qgFF9tsJBlWrjinprq5BYKo9ImM0AMgcxVJy/Kcthk7P
         /xyKptsRUDLSpSwQYoZvF/TaV9Kro3srNFKOnQk6+okar/dS9RwASoYM5WRv53EAwias
         VXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=liG39SY6OCB57kKMVTK1rtUTWcyPIuivjnuH+kqMwss=;
        b=XTCg7PENKE411+0EaSBS6/SCtNIUZRQHBFrTZlH8pGSJX8eK1S1JvoIyAqFpE912QJ
         snt/V5jhdOlOEWacV78AvU2AnjX5Wb6ZgT9jR+NKIqtVn12RbUhagjnDvJ3oxAvfULS0
         zPAp/jplKCEKm+Dp4E8O1NdyRApD1cWrXpl/+3ahgW4WfQet72svZfgaxLiPyN2yevs2
         1Rg2w6eVpMDFckWJPt/MNYL+/xueaaf/4GwAVFD2jgNp1vCMauwWHH3bjoUkdnOvF5Md
         5qw1Sng+qKTpljQL3aXjLii6T/JR5TS1PRQtQHKwqFwlT5sdYqP4S6GnejbwRtR8yw+x
         B39A==
X-Gm-Message-State: AOAM530d1h1m8BHjEq7Whq0cWX3kwD+fXocfNYQM51FZN6yCfsKyzIHJ
        sZP/iGaGt7T1PfHZ+DZkRag=
X-Google-Smtp-Source: ABdhPJyvfHqNEGTl5/oRTG9WBCgqU8ZDmpxUKl1rPZZW14SXfqAfCosJgntOTNn/KPjc88zvwdgtpA==
X-Received: by 2002:a17:90a:62c1:: with SMTP id k1mr3122301pjs.135.1605771171124;
        Wed, 18 Nov 2020 23:32:51 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.19])
        by smtp.gmail.com with ESMTPSA id h8sm6133647pjc.54.2020.11.18.23.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:32:50 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Mustatfa Shehabi <Mustafa.Shehabi@fii-na.com>,
        Mohaimen alsmarai <Mohaimen.alsamarai@fii-na.com>,
        Lancelot Kao <lancelot.kao@fii-usa.com>
Cc:     Vivekanand Veeracholan <vveerach@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: vendor-prefixes: Add FII
Date:   Thu, 19 Nov 2020 18:02:30 +1030
Message-Id: <20201119073230.123888-1-joel@jms.id.au>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds Foxconn Industrial Internet, who have submitted a BMC device tree.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2735be1a8470..a64e03e39e9c 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -377,6 +377,8 @@ patternProperties:
     description: Shenzhen Feixin Photoelectic Co., Ltd
   "^feiyang,.*":
     description: Shenzhen Fly Young Technology Co.,LTD.
+  "^fii,.*":
+    description: Foxconn Industrial Internet
   "^firefly,.*"
     description: Firefly
   "^focaltech,.*":
-- 
2.29.2

