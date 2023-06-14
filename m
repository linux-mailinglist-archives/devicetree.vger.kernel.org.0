Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE040712F22
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 23:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237297AbjEZVuZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 17:50:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230326AbjEZVuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 17:50:24 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0BFEBC
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 14:50:22 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f6dbe3c230so12898485e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 14:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685137821; x=1687729821;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+Tv4SsP1cZoBd6AtNK+VIPLIXAUTTFa0RS4gFHrU37g=;
        b=ZpT5C4u1U2t+6wra9KuJHDz5O2uJnBA6tk4w35eHBErKM66mpSVpHpz6jnf36riPZR
         dpYR/hoCk5e4ENbJnP5t+i9HbYm55CPfWqzu9tDkxY51T1hctwqcaE48L2JRRubeoCdN
         +0gYQBoqavUfHp2cD9mz4ibkY4SAp29Fjt8A8Erhn/7RItbOPzKGV9dJNF70+YUREmHh
         yDDLRvXbFPtLdJMkyCoNAmFNt3zV8aFQfwwnaT1ncgEmPpEkz+KOqGc9xoSfp+gvMyz7
         4iCTs+a45zG4asdWxA2sms4S1gMOzCy9TLQPbhgSylz6hRAX93wg2c6nLiA/vQP5WxVA
         SNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685137821; x=1687729821;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Tv4SsP1cZoBd6AtNK+VIPLIXAUTTFa0RS4gFHrU37g=;
        b=diGJARTVKgl0ii7M0Y+oGuB8ydQjXEx+vtPWZhcoULbS0+5HQL4/Zt9B/yZKbmIuml
         tZbzIBNLgesXEj5gQGbQ8gxlGOnNWeYvF1TW2d1ytzojTVoqCW8AbKLBoKA+f9JUqbHh
         BNjpnGixV5EyZy/okJX761S2oL6NK8q+wGwcuwcc4j51LM6/fsZzqGsPGGLzz8RqckDI
         6YgrPOShgyen2mp1g2Hmx7jkLuq07ZipiYW5CfCClkiYXzNSGqT6/6FtaQNrJec3OvQ1
         TI51GYidk9Tggwoe0kuxlKaCt1Nlou/tcTKVuwLx7iBNUTmn9bcg3JRoow3LzASCeVcP
         l38A==
X-Gm-Message-State: AC+VfDz6srzx8+qItktZzFXH0vuzxt2y8EBu8if5eiyz+omeixeZPncd
        gFnh+qqwNrt8UNWw3VfI0PtOPw==
X-Google-Smtp-Source: ACHHUZ7sVBLPlpNPc46fEFPYd/bS4cnZ1kWbipyngwkj1jB9IYAw9yjBP1HUc+jvY/rp7rDhnuferg==
X-Received: by 2002:a05:6000:1001:b0:306:330e:bfe3 with SMTP id a1-20020a056000100100b00306330ebfe3mr2947066wrx.19.1685137821259;
        Fri, 26 May 2023 14:50:21 -0700 (PDT)
Received: from lion.localdomain (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id u4-20020adfdd44000000b003063176ef09sm6294314wrm.6.2023.05.26.14.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 May 2023 14:50:20 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v2 0/5] Enable PMI8998 charger on supported devices
Date:   Fri, 26 May 2023 22:50:19 +0100
Message-Id: <20230524-pmi8998-charger-dts-v2-0-2a5c77d2ff0c@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJspcWQC/32OSwqDMBRFtyIZ99mYj2hH3UdxEJOnBqqRFwkt4
 t4bXUCH5364d2cRyWNkj2JnhMlHH5YM4lYwO5llRPAuMxNcSK6FgnX2Tds2kF0akcBtESqhlRa
 ytigly83eRISezGKnsxvd3Ch9r0sFDtMZWAkH/7lmX13mycct0Pd6kapT/T+YKuAwtFIqM1ilu
 X6+/WIolIFG1h3H8QMID2hW2AAAAA==
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Joel Selvaraj <joelselvaraj.oss@gmail.com>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1882;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=xVMLmL6BW/BY5NZTqCV6aQV0RWm+1gDkidgGMW81XJQ=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBkcSmciV8OC06hYXxsM6HlQLo2iNJfEJBo6z4Vy
 +Bx0QoF0piJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZHEpnAAKCRAFgzErGV9k
 tguWEACAwB0WIVECK4tWwZthDwc2ZawkjdPbQpmYbw19EncrlA+HaEpzlhODJnSjte/zmVxV7PA
 S71Yo31BadRDdGDVAD4MpcFhpLuj3nBNpyylvmmOUcEsAZh5DnduE3iJzWkd0d9b9tcBcYDiQpw
 Bd0qh7oQV+uilwjndnN0/rC5MyEodH7u4E5IHNMLCkN0Sl/zc7lNGOcjfywCo+KaIkWtyjAQ8M3
 SrlU6q8UOOXypbOu90v0vzyodULc1Jr5flAaF0R9i1pM+auJO6OAyVJ1LmIJDm3DzNWw98mXHRI
 r65oox/01oKrLrqXDFq+nleEnqSIw+IVG5JBkVUfooIWi4GWl9rIMhHI7unFGPNlQq/bh0D4ux9
 8BssSNhHZ058tbKe7LD2pqynCjfdOeoqklpMKeX5z185ZMW9Z6kM5e0oUNb+nAVldfLGvv08SqP
 OUOps4txafMZfc62AcXdDKyPy4HVWU9cJX3LWUdVaVNd5AFd69Mp2vlPkSNpAAysyJtJ0CMq4GD
 B5fmv9ucrfd1B/IET3opjfMuxV9gP+eRCJODqeaXbikU/Z7QhLXOpdzAdBvE4JSACKZBKXyr7az
 oH+S4ypoeHfFwKtB/HO9IlVedJJlZp4OwT2RlygKoLbYWm1bghLpdV8twxiGf/IpWj6glq6gpE6
 kGpQcVRH3hhPzFA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These devices have been fairly heavily validated with the driver and are
known to not explode. Add the pmi8998_charger node to pmi8998 and enable
the charger for the OnePlus 6(T), PocoPhone F1 and SHIFT6mq.

The charger depends on the RRADC for the input voltage and current. The
RRADC was originally disabled by default, but there isn't really a need
for this as it's used by all devices. Let's take the opportunity to
enable it by default.

The associated driver and dt-bindings that this series depends on can be
found here:
https://lore.kernel.org/linux-arm-msm/20230524-pmi8998-charger-v9-0-cd7f6d03c0ab@linaro.org/

Changes since v1:
 * Squash qcom,spmi-pmic bindings patch into the driver series rather
   than add it here.
V1: https://lore.kernel.org/all/20230524-pmi8998-charger-dts-v1-0-f9334afc4505@linaro.org/

---
Caleb Connolly (4):
      arm64: dts: qcom: pmi8998: enable rradc by default
      arm64: dts: qcom: pmi8998: add charger node
      arm64: dts: qcom: sdm845-oneplus: enable pmi8998 charger
      arm64: dts: qcom: sdm845-shift-axolotl: enable pmi8998 charger

Joel Selvaraj (1):
      arm64: dts: qcom: sdm845-xiaomi-beryllium: enable pmi8998 charger

 .../boot/dts/qcom/msm8998-oneplus-common.dtsi      |  4 ----
 arch/arm64/boot/dts/qcom/pmi8998.dtsi              | 22 ++++++++++++++++++++--
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         |  4 ----
 .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi |  2 +-
 .../boot/dts/qcom/sdm845-oneplus-enchilada.dts     |  4 ++++
 arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts |  4 ++++
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts  | 10 ++++++++++
 .../dts/qcom/sdm845-xiaomi-beryllium-common.dtsi   | 16 +++++++++++++---
 8 files changed, 52 insertions(+), 14 deletions(-)
---
base-commit: cc054ff7ce5edcfeaf78d90b8d3e39be0c3eec5f

// Caleb (they/them)

