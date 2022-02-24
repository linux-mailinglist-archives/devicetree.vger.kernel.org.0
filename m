Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5B944C2D0D
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 14:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234975AbiBXNcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 08:32:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234978AbiBXNcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 08:32:14 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01BBA31926
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 05:31:44 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id j17so3127982wrc.0
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 05:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o+5vqkQXPirAu/1Sjt7YkAPFccDLqMMWnr+8F22imTk=;
        b=cveEpeC81vvyATlkuSNHZClxmN73VpdpV7cvx4KhuPNSXWLkSePXj8HvRs4Hzk5Xmn
         4Osni1BnGxlG/kqDZ/3sSnNKKtA20bo6ofouvDh4jP/B8pBvek21tXUjHYJBbOvf00Zj
         r6mvOQ9jEaxSzwJDpmHcYbPFUT24PJXftt0abfrKZnNScUbcDFowiikG0aS8qNi9iZvX
         wv5AMMVVg/71236+PkpaTnBlCc+7tAdhj7bW5uyEtZI2CtkDCdZeas4eb2mjWMDghITx
         dlW+57qXlU5uCPl5EfZH/R+5rKjlcb8Lwn5YX00zCpbG6goQmD+7WpDkAYX0qlT9xQho
         reow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o+5vqkQXPirAu/1Sjt7YkAPFccDLqMMWnr+8F22imTk=;
        b=EKA9KBIdj+G4Pbscm8a67L8GV/5fu9ZqjlhUgv6e05i+9UiIvDj4pqy9rnPKgnrc4n
         yE61iQuDeVpar6TvF5CKpQOOEzPac7K1qziShShxkO9tyjU9s4n0eqmbOqNJcxYAY9I8
         7N2nRHshSAKmUocYg3Hs9U0SR+isiLTKATWEp12l/GRK0QeZHHZa+5+aG/1+Bl5SHlIJ
         EJVyUdQ0dIW0+1asdpMD5Oogv91XzzKuBjnS8gVu6CdK1DS57EeCH6HzQhr/nBh1dgpc
         ia4QjcRUNmGB+nzGOoRdANjNleZ3zt55lmnUrCo5Nhd1LIKGHus6er7fs92mshNHOuAD
         MZkw==
X-Gm-Message-State: AOAM530nQVotQKSKFt2C+t+DGZG/OoNEKl+Qhc6iMPS6wU482oWZRBTd
        GLo/Ov3y3f/Kk+a9J6PTHcWOag==
X-Google-Smtp-Source: ABdhPJy3Isxl3JRAACJsHIBGlKSiYremn17jHDKeNcB+aafXuJygUeIR+72g6AjkXfnX8baSTfP+Jg==
X-Received: by 2002:a5d:5252:0:b0:1e3:7f5:8312 with SMTP id k18-20020a5d5252000000b001e307f58312mr2313128wrc.89.1645709502639;
        Thu, 24 Feb 2022 05:31:42 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id e33-20020a05600c4ba100b003810c690ba2sm2019142wmp.3.2022.02.24.05.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 05:31:42 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: soundwire: qcom: document optional wake irq
Date:   Thu, 24 Feb 2022 13:31:24 +0000
Message-Id: <20220224133125.6674-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220224133125.6674-1-srinivas.kandagatla@linaro.org>
References: <20220224133125.6674-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wake IRQ is optional interrupt that can be wired up on SoundWire controller
instances like RX path along with MBHC(Multi Button Headset connection).
Document this in bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/soundwire/qcom,sdw.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
index b93a2b3e029d..bade68f429b0 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
+++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
@@ -22,7 +22,7 @@ board specific bus parameters.
 - interrupts:
 	Usage: required
 	Value type: <prop-encoded-array>
-	Definition: should specify the SoundWire Controller IRQ
+	Definition: should specify the SoundWire Controller and optional wake IRQ
 
 - clock-names:
 	Usage: required
-- 
2.21.0

