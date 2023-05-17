Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 575E67072C4
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 22:13:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjEQUN2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 16:13:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjEQUN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 16:13:28 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A0482D55
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 13:13:26 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f1411e8111so1450519e87.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 13:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684354405; x=1686946405;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j8zNciUotCZFGZmmeoYs6PB+hO/xdMZpncb+suPV0v4=;
        b=nuj8K7R911n7RkT8RkJaEmL36/d68fRCCswHJZCxgI3HjYRdzAM3WxK393QJgeAV+X
         pJloOFnnhW/LkApdjxji18zPquwof9plKBsbm+r3R8CwdHBTNr4QzJmqibDqqdkGFJh7
         3r6iEUjz230/JtWqo8mzXmtQMuuNLR9FL6dO7gqvqbNXxDxh9kJVYdTQvUOsh4sjo0Fc
         9y69bPmuk9we6w8TB0GK7KWsVip95KH1L08F7nxNR8sZDVWiOAFacHjcpGY+qk2/qcQG
         H9s26jEScDHDBG6bD0wzBmlqgUdPHuiUqqAypW4NKjp0FyyEDIx9v6lkCrM35ZGBJ7MK
         eGng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354405; x=1686946405;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j8zNciUotCZFGZmmeoYs6PB+hO/xdMZpncb+suPV0v4=;
        b=R6BTwW06amsiUVZiOjcTucjhoeJkwldK43ZtyrYYvrj4xOgFlcyjnvCOE80lrFhpIL
         PlQYMueYuUf6whxpTwFrPhae+WY5Q0qBQOrubHXndx/3R3OrB4TFmT3te/kkVanKzoEu
         MCMt5RWx/01fycqU8nX1ISmfbz2kQpMhBt+cR4QtCBi9ZQQdnEkkYMqJcinvYdVuU25P
         djNdZDJ+1Hq69QdAUOmSjaBKVnnddyV0QedfcM1QA+ncLXv1PCrnZFrOR0ZL44AtuNTL
         lIIQCCYxUYDKpbsbzivx6Hw0myeegd3ym2y4quCoZmnJoANSaUqO9CppxgvskgK5LjeG
         Oxyw==
X-Gm-Message-State: AC+VfDyHAtnlQjaHcgqQmIAw51RVmJpmh3B2n89o+P7zPEn4A0m9uW3H
        CP/RbKUoR1NXu0hlDlvN6RgSug==
X-Google-Smtp-Source: ACHHUZ6hZXfmDTggNIXdD+UDc6+YFjuQcMY90jPbd1B/yybgkm25lR0aoPSuNI8MBwg7D0a6GLAKCg==
X-Received: by 2002:ac2:4e45:0:b0:4f3:9f9b:ad09 with SMTP id f5-20020ac24e45000000b004f39f9bad09mr295093lfr.38.1684354404802;
        Wed, 17 May 2023 13:13:24 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id p27-20020ac246db000000b004f382ae9892sm1190899lfo.247.2023.05.17.13.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:13:24 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/3] More RPMhPD levels + sm8550
Date:   Wed, 17 May 2023 22:12:49 +0200
Message-Id: <20230517-topic-kailua-rpmhpd-v2-0-3063ce19c491@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEE1ZWQC/32NSw7CIBRFt9Iw9hk+rRpH7sN0QAHLiwjk0Taap
 nsXuwCH5+aenJUVR+gKuzYrI7dgwRQryEPDjNdxdIC2MpNcKt6JM0wpo4GnxjBroPzy2YKVrWl
 Npy5GaVbNQRcHA+lofHXjHEIdM7kHvvfUva/ssUyJPnt5Eb/1f2QRwMFYxYWy9aRPt4BRUzomG
 lm/bdsXlF8+XMwAAAA=
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1684354400; l=1109;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=y/8yQba7c0YgNiyzdx6r+Pdoy5eVlfG/LkgVILDNhfQ=;
 b=8YIcXny9pwsZB4YFtiHZxLqowMdE6UY+8QW+MB2bw1v0UNRlNfcGaZ40u3BJ/gn8Qpm2gzX8m
 xoYBUybja8aAnB8X6qlipMO0/7KH1zT04qnOds+rQIK93Z6SCMYWetU
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bring in missing RPMhPd levels from downstream and add ones we'll
need for GPU on SM8550.

Patch 1 adds the missing ones with an easy-to-read diff, patch 2
reformats the block and patch 3 adds the necessary levels to 8550 dt.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- pick up tags
- rename oppN to opp-<value of opp-level> to stop the renaming madness
- Link to v1: https://lore.kernel.org/r/20230517-topic-kailua-rpmhpd-v1-0-cd3013d051a6@linaro.org

---
Konrad Dybcio (3):
      dt-bindings: power: qcom,rpmpd: add missing RPMH levels
      dt-bindings: power: qcom,rpmpd: Format RPMh levels better
      arm64: dts: qcom: sm8550: Add missing RPMhPD OPP levels

 arch/arm64/boot/dts/qcom/sm8550.dtsi   | 40 +++++++++++++++++++++++++---------
 include/dt-bindings/power/qcom-rpmpd.h | 38 ++++++++++++++++++++------------
 2 files changed, 54 insertions(+), 24 deletions(-)
---
base-commit: 065efa589871e93b6610c70c1e9de274ef1f1ba2
change-id: 20230517-topic-kailua-rpmhpd-d24c4c538c3a

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

