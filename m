Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E21B6528D6
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 23:21:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234237AbiLTWVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 17:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230227AbiLTWUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 17:20:48 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34F4DD4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:20:45 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id i9so19593860edj.4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=04QaB/HS8ooY5ZKSOW7fTmCf5keggh3lSeQiSwB+iqc=;
        b=AwqkV0s7+HOHIO/KnzC+WOlXVBHG0hOmFSzbN0jr1yIm40v1zwhd9Ps3hpY0qqUdLr
         lR1Lv3HWmrWXFbHjq45Gw2grC0FjCakxkxgEf3J4k6pMSqDtXnUauSJL8ksHGituNnMf
         PwkBHznKmARO+B2nPLjJkRnOB8gkstysPoTzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04QaB/HS8ooY5ZKSOW7fTmCf5keggh3lSeQiSwB+iqc=;
        b=hLqlHwiLhH/5ImiyxyP6cVJIJF8kNWlX4pUuc33z0ofS9L0nkgwpEz5pz9SDJNiyQM
         Py7qyhoGQ/BcGlzGr5h/0omhYnLuBofka0ghTy94uhlCtQ8p9wel+v4c9WSD96tRUMZR
         JZxNbICIHwdhKRJPFxVgk8EjkLNtVyzv1dRa8uaeo65gqEp4pPpCmBuUrI7hSPN1GVBE
         q6fyvMTUf3N2+0vYuhwRiCjScjMgnwPSfv8vwj3jYch5xLAli98uVr4GwbcXAMMvWbje
         oo/rpzKKDiHFpoooUy0rAHYXbc0NCFFagZg519nUZkfWDdvuJKeHmEddsbUeMggVQjpv
         V80A==
X-Gm-Message-State: AFqh2kppVi4xxYZ3idEIofVfioa6uCZDs7UIT3Y+aTW7Jc8poISvlzw+
        TnwApge6KocoSm1Z4dyfXZwHxg==
X-Google-Smtp-Source: AMrXdXuqjREuf6lXuNYmYsaurTOuHtyBeFffIcyWpefiZThZssMS/tVsIE3GGShGbJOvW/kRxyecxw==
X-Received: by 2002:a05:6402:2b8e:b0:461:22bb:1ae4 with SMTP id fj14-20020a0564022b8e00b0046122bb1ae4mr3972707edb.17.1671574844304;
        Tue, 20 Dec 2022 14:20:44 -0800 (PST)
Received: from alco.roam.corp.google.com (80.71.134.83.ipv4.parknet.dk. [80.71.134.83])
        by smtp.gmail.com with ESMTPSA id f1-20020a17090631c100b007c07b23a79bsm6243545ejf.213.2022.12.20.14.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 14:20:43 -0800 (PST)
From:   Ricardo Ribalda <ribalda@chromium.org>
Date:   Tue, 20 Dec 2022 23:20:31 +0100
Subject: [PATCH 2/3] KVM: x86: Fix trivial typo
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221220-permited-v1-2-52ea9857fa61@chromium.org>
References: <20221220-permited-v1-0-52ea9857fa61@chromium.org>
In-Reply-To: <20221220-permited-v1-0-52ea9857fa61@chromium.org>
To:     kvm@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
        devicetree@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>,
        Joel Fernandes <joel@joelfernandes.org>,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.11.0-dev-696ae
X-Developer-Signature: v=1; a=openpgp-sha256; l=1531; i=ribalda@chromium.org;
 h=from:subject:message-id; bh=zSOi0LX8fXbYXAwYpRGT39p6SkmE8VPobah26uTEEi4=;
 b=owEBbQKS/ZANAwAKAdE30T7POsSIAcsmYgBjojU2hzEEgA5uTsusiMQlEj0HW+QD8b1ta/ly90My
 VI92iWSJAjMEAAEKAB0WIQREDzjr+/4oCDLSsx7RN9E+zzrEiAUCY6I1NgAKCRDRN9E+zzrEiDaiD/
 44aBfsLXTJFELd5DEIQoV9/t6dfaZAvhFdQRMpl4UImAgj3icaCwNmd4xegbaDb/up4cgLKPzARU0S
 atcUxeSKQsCeq9WeOCZPAjd6TZkkHAhFLxG5iop8sv6w8AlP1bgYFXYC5jfLwg6cFk43Ez7OoorkXJ
 1OktJFP7WqAhy6vdB0rZFG8kGAYOFp91DfP9iUNHJ7NfZXbYhGwmqhAsRqoFLgK99G5xb7oTWOH0/V
 egK0fDJO6P0rIgYy12um2uDYTlG9fFlH50Mr5AMI1Bej7vghfNbH97ap8AQMX5qdKFZix8xvYZFlKK
 vvzgsBjyifKlrJfT0K57+ZnznixCKKs9HKoHamOg3yLZvvmbdOMGDlDhI75By2JWIV/8uslXLXPmHA
 55pw0iV+KYd0+mLNsozZYltT7p8Tv1TC/eLWkeF93i+9+wZ/I1Ev6xlMKJN3JBbdP/fWrYNDCSNmX0
 F0Azd02gth2pGu1h7IvWoeRIcQyf2/w8wM69U5/ssu/jTz9QAEzvT1A98DFuTDtmmYyCXeAab2RJlh
 3/lUamRAy1rwD7a7KdKXvoKlgvrYhoi2EKkxje8I3/IzEPj5zJmPzfvkV3KxtSX+GZokdoo10o/MSS
 9eSjJsGOMYAasaOqW2UvzmTDYnqo4gRjsrMINdCxndexVr3mc6VCXmab4rFA==
X-Developer-Key: i=ribalda@chromium.org; a=openpgp;
 fpr=9EC3BB66E2FC129A6F90B39556A0D81F9F782DA9
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Permitted is spelled with two t.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 arch/x86/kvm/emulate.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
index 5cc3efa0e21c..56e1cf7c339e 100644
--- a/arch/x86/kvm/emulate.c
+++ b/arch/x86/kvm/emulate.c
@@ -2615,8 +2615,8 @@ static bool emulator_io_port_access_allowed(struct x86_emulate_ctxt *ctxt,
 	return true;
 }
 
-static bool emulator_io_permited(struct x86_emulate_ctxt *ctxt,
-				 u16 port, u16 len)
+static bool emulator_io_permitted(struct x86_emulate_ctxt *ctxt,
+				  u16 port, u16 len)
 {
 	if (ctxt->perm_ok)
 		return true;
@@ -3961,7 +3961,7 @@ static int check_rdpmc(struct x86_emulate_ctxt *ctxt)
 static int check_perm_in(struct x86_emulate_ctxt *ctxt)
 {
 	ctxt->dst.bytes = min(ctxt->dst.bytes, 4u);
-	if (!emulator_io_permited(ctxt, ctxt->src.val, ctxt->dst.bytes))
+	if (!emulator_io_permitted(ctxt, ctxt->src.val, ctxt->dst.bytes))
 		return emulate_gp(ctxt, 0);
 
 	return X86EMUL_CONTINUE;
@@ -3970,7 +3970,7 @@ static int check_perm_in(struct x86_emulate_ctxt *ctxt)
 static int check_perm_out(struct x86_emulate_ctxt *ctxt)
 {
 	ctxt->src.bytes = min(ctxt->src.bytes, 4u);
-	if (!emulator_io_permited(ctxt, ctxt->dst.val, ctxt->src.bytes))
+	if (!emulator_io_permitted(ctxt, ctxt->dst.val, ctxt->src.bytes))
 		return emulate_gp(ctxt, 0);
 
 	return X86EMUL_CONTINUE;

-- 
2.39.0.314.g84b9a713c41-goog-b4-0.11.0-dev-696ae
