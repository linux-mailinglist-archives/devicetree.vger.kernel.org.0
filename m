Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED101694715
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 14:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbjBMNdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 08:33:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbjBMNdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 08:33:03 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 891FE1ADD8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 05:32:59 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id n10so4951963ejc.4
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 05:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=17ACfK6sTFOIfyBcEI2Ei7NqcQ/n2vBuXZ8nBpxcwBk=;
        b=Xv3TxVFQx0Ak8N6vkHAj0ZXrs7q3g83mmjnxozCzuUfFFTvhwR4T4TZ8jTIW3JF4c7
         WPt9nfqzc6UpjoP1Ixg2tjWhmzXgI7HSiWuQ5L9rIkHAOMvfCPWlPQcXd4oUXhSctspA
         A/U9dtjTff6rmTZV34/mVEuEwFZ7m0FUEqbGQgtBBfVGYAnrJvmc8jKV+WKgSZ4qlK1e
         JKaDb9GzbU9MJWErlBj3yKnG+rnBhnoBxfzNCBtphsjymyv2kfrMn+3jDJm0oQPFcBvS
         pgusdFh8iMvCcNmgy4ceQbNk61HiTEHUcHL3PGmbafJ0zO/zRRmyayApGojis+x0++oH
         2OEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=17ACfK6sTFOIfyBcEI2Ei7NqcQ/n2vBuXZ8nBpxcwBk=;
        b=mYN2wfoA3SVwOJCNiDhEXgMIblncz32OR5n/Ec8hcyTZfI4mQ69zZ6svkAkyhADTUD
         3DU9Tov8lg64xZQV10E3rWKJmTNb5MTQxZSZY4McS3SVl/l7Qd9LMUOjCXZqvGx5nA0j
         qA4ddR3Bq/ZnDIDO3EC2tyrVJFW8C55pViv6epatqo9u2gER1WL0EUydKJa4ehJwT3XX
         We2wRM+cJf6dIEJxfbY3T30ZdmePGneF0qbuIUV/suqpps6sbbqxSTDzQjuE3Y5JIGlQ
         zAEA2bI1dmcJWIpTSP9ye8L1ncnJyVBh7ogwCO3eFOE9QFCrf4dk+yAK7kwlX9Uhihe0
         BVwg==
X-Gm-Message-State: AO0yUKXW3cmUDrbUitskVm3jFdIzoqSN+Oyj2K673whfAk2OWLy26Ik5
        xFcSuPCm/cSGkaJ6dGAA1/g0dA==
X-Google-Smtp-Source: AK7set95V1q5Z64dzDL7/jDECfxzM8SR8Szrpnkp27X+GLRAjfF1/w8jCVoZqUKtwDVuLAM1AGhulg==
X-Received: by 2002:a17:906:3857:b0:8aa:a7b6:1c4c with SMTP id w23-20020a170906385700b008aaa7b61c4cmr22062038ejc.21.1676295178181;
        Mon, 13 Feb 2023 05:32:58 -0800 (PST)
Received: from [172.16.220.87] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id h24-20020a170906829800b008aa0305dbe8sm6661180ejx.80.2023.02.13.05.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 05:32:57 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Enable remaining I2C busses on sm7225-fairphone-fp4
Date:   Mon, 13 Feb 2023 14:26:48 +0100
Message-Id: <20230213-fp4-more-i2c-v1-0-5be09dbb5ce6@fairphone.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJg66mMC/x2NQQrDMAwEvxJ0roqjmND2K6UHR5UbHeoYGdJAy
 N9j9zi7O+wORUylwKPbwWTVokuq0F864Dmkj6C+KwM5Ghz1A8bs8btYzYkx3h0zy82LH6EqUyi
 Ck4XEc5PadrwS/jS3NptE3f5nz9dxnI3o3Hh8AAAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first patch consolidate the two different styles where the status
property is placed in the dts, and the second patch enables all the I2C
busses used on the phone even if no subnode is added yet.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      arm64: dts: qcom: sm7225-fairphone-fp4: move status property down
      arm64: dts: qcom: sm7225-fairphone-fp4: enable remaining i2c busses

 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 59 ++++++++++++++++-------
 1 file changed, 42 insertions(+), 17 deletions(-)
---
base-commit: 09e41676e35ab06e4bce8870ea3bf1f191c3cb90
change-id: 20230213-fp4-more-i2c-f90ccce84e46

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>

