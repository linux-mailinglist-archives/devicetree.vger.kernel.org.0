Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E46273D964
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 10:16:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjFZIQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 04:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbjFZIQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 04:16:15 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B88DE4C
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 01:16:13 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-98bcc533490so358643766b.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 01:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1687767372; x=1690359372;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0Sg+rowk7YQU6D26avMM2mnTp+7zQM/aUn4xJJRcqRM=;
        b=dKr01c4FoPF8wLyp9qSzRl0nQcO6m6Fzqrvg5gka0E1P6yYCeJcrdJAp586ToDLyhc
         KaoAQWkB37G7NReFfsd0sTvjNXsWJmhfnn1nJKG0Sejc3Vunbx+Q5GyhQtzEy7LarALq
         XYkmCB399ETp566QbnveCJocLqaHNQp2wt1HL61sC13mFMKNKHZ2V890SOvmizL8VKDJ
         G/IKVt/DsF7Jj3PkiQzVO4Jk8N6CHGu6tPyYqIvTLjKhzxQ3+oZ3FSTf23DATTyCOyIb
         aCnk96PrtkjWMU0TLuN+4o2jradG15rB/53RpXYtSkgWGJVD1TZKU+N5fyCLE9Vze6MX
         UCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687767372; x=1690359372;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Sg+rowk7YQU6D26avMM2mnTp+7zQM/aUn4xJJRcqRM=;
        b=I9LBu5XrJ2p+YB/ts95xohASe/4O9+nLEcIFkIdlOK/BroVOf965w/zL0ApZ+eXxz2
         HlUZqoXqpRAQHYCxxPYEEHRjpAilOkRwUbc0e2r0kpdriNO8Hg1e3cZXgzaf/iXalQC4
         IcYVE8al1NYJBZdBTlF/p49jubrKXOdnQmSO1GIRLaNHM+xRrTWcqJMfktM+3Q3/sMHN
         q2jq4eXOvuhXnAm5ZzBPkQpIf1M+R6kKuPlqnxp2e0Q/LusDDGFs6n93so2pE7Isj/R0
         GVU3YOtTiusJzwwhBOvwX2USxX7/7xxSVN7Uw1nHzLasbrKE9GsAURsjFduqKfcNZD+l
         N5zQ==
X-Gm-Message-State: AC+VfDwwEe6hcg0qLVWnyEPHT1S2RUGdhTQQkShL4mSKzBIhgXw/hs1z
        YOaG56Puu/mX70XpRUYNBPQLww==
X-Google-Smtp-Source: ACHHUZ62fcn+7hGabVvX7AxeAb93qPTLNUwwA6J2CTmKTpGrsdx0ACTblLudngYrWsV9MryleNJjWg==
X-Received: by 2002:a17:907:3187:b0:96f:c0b0:f137 with SMTP id xe7-20020a170907318700b0096fc0b0f137mr23857596ejb.16.1687767371958;
        Mon, 26 Jun 2023 01:16:11 -0700 (PDT)
Received: from [172.16.240.113] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id bm4-20020a170906c04400b0094f07545d40sm2935617ejb.220.2023.06.26.01.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 01:16:11 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v4 0/3] Fix some issues in QCOM UFS bindings
Date:   Mon, 26 Jun 2023 10:15:56 +0200
Message-Id: <20221209-dt-binding-ufs-v4-0-14ced60f3d1b@fairphone.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADxJmWQC/33PyQrCMBAG4FeRnB1Jp0uMJ99DPKRZ2kBNJGkDU
 vruDh5Fe5oF/m+YlWWbvM3sclhZssVnHwMNzfHA9KjCYMEbmhlyxAq5BDND74PxYYDFZUAjXNc
 IKZxDRqFeZQt9UkGPFAvLNNFy9HmO6fU5Uioqt79eqYDD2bQcHbcVNVenfHqOMdiTjg92J67gP
 oFEGC0UbzopWyF/EfU+URPRSGnoq1rxWn8T27a9ASKRJKQ7AQAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Iskren Chernev <me@iskren.info>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Eric Biggers <ebiggers@google.com>,
        Iskren Chernev <me@iskren.info>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series has been pending for quite some time, please somebody pick
this up. Also has plenty of reviews by now (3-4 for each patch which
should be plenty).

Validation will fail without patch 1/5 from [0] so this depends on that
patch at least for the check.

[0] https://lore.kernel.org/linux-arm-msm/20230623113009.2512206-2-abel.vesa@linaro.org/

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v4:
- Pick up tags
- Rebase on linux-next (again)
- Link to v3: https://lore.kernel.org/r/20221209-dt-binding-ufs-v3-0-499dff23a03c@fairphone.com

Changes in v3:
- Drop applied patch
- Pick up sm6115 patch from v5 https://lore.kernel.org/all/20221030094258.486428-2-iskren.chernev@gmail.com/
- Rebase on linux-next
- Link to v2: https://lore.kernel.org/r/20221209-dt-binding-ufs-v2-0-dc7a04699579@fairphone.com

Changes in v2:
- Add new patch adding reg-names to sm6115 & rebase series on top of sm6115
  addition
- Fix binding example after sm8450 move, split this patch from original patch
  since it became too big
- Move reg-names definition to top-level
- Link to v1: https://lore.kernel.org/r/20221209-dt-binding-ufs-v1-0-8d502f0e18d5@fairphone.com

---
Iskren Chernev (1):
      dt-bindings: ufs: qcom: Add sm6115 binding

Luca Weiss (2):
      dt-bindings: ufs: qcom: Add reg-names property for ICE
      dt-bindings: ufs: qcom: Fix sm8450 bindings

 .../devicetree/bindings/ufs/qcom,ufs.yaml          | 61 ++++++++++++++++++++--
 1 file changed, 56 insertions(+), 5 deletions(-)
---
base-commit: 3178cc4b7c9de986d63383cb59ee6570347002db
change-id: 20221209-dt-binding-ufs-2d7f64797ff2

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>

